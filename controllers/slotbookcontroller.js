const express = require('express');
const authMiddleware = require('../middleware/auth')
const connection = require('../database')
const axios = require('axios');
const getSriLankaDateTime = require('./datecontroller')


// slot book function
const slotbook = (req,res) => {



// Example usage: Get current date and time in Sri Lanka
    getSriLankaDateTime().then(result => {
        if (result) {
            const { date, time, timestamp, mysqlTimestamp } = result;
            const currentHour = parseInt(time.slice(0, 2), 10);

        //Data cannot be added after 7pm
        if (isNaN(currentHour) || currentHour >= 19) {
            console.log ("current hour" +  currentHour)
            res.status(401).json({success: false, message: 'Data cannot be added after 7 PM' });
            return;
        }

        //get data from JSON post & session

            const inputData = req.body;
        console.log(inputData)


        const uuid = req.session.uuid

        console.log(uuid)
            const { lotteryTypeId, data } = inputData;
            

            let totalPointsNeeded = data.length * 200; // Calculate the total points needed

            //check if numbers are already picked

            const idsToCheck = data.map(item => item.id);

            console.log(idsToCheck.join(','))

            const idsToCheckPlaceholders = idsToCheck.map(() => "?").join(",");
            const q2 = `SELECT purchasedNo FROM usertickets WHERE purchasedNo IN (${idsToCheckPlaceholders}) AND date = ?`;
            const values2 = [...idsToCheck, date];
            
            connection.execute(q2, values2, (err, result) => {

                if(err){

                    res.status(400).json({success:false, message: "error accessing the database" + err})
                 }else if(result.length > 0) {
                    res.status(400).json({success:false, message: "Numbers are already picked"})

                }else {

                    // Retrieve the user's points from the database based on the UUID
                    connection.query(
                        'SELECT userbalance FROM user WHERE uuid = ?',
                        [uuid],
                        (error, results, fields) => {
                            if (error) {
                                res.status(500).json({success: false, message: 'Error retrieving user points' });
                                return;
                            }

                            const userPoints = results[0].userbalance;

                            // start add records if points sufficient
                            if (userPoints >= totalPointsNeeded) {
                                let successfulInserts = 0;
                                let failedInserts = 0;
                                // add records to database if points are enough
                                data.forEach(item => {
                                    const { id } = item;

                                    connection.query(
                                        'INSERT INTO usertickets (uid, purchasedNo, date, timestamp, lotteryTypeId) VALUES (?, ?, ? , ?, ?)',
                                        [uuid, id, date, mysqlTimestamp, lotteryTypeId],
                                        (error, results, fields) => {
                                            if (error) {
                                                failedInserts++;
                                            } else {
                                                successfulInserts++;
                                            }

                                            if (successfulInserts + failedInserts === data.length) {
                                                if (failedInserts > 0) {
                                                    res.status(401).json({success: false, message: 'Something Went Wrong' });
                                                    return;
                                                } else {
                                                    // Reduce the points from the userbalance column
                                                    const updatedUserPoints = userPoints - totalPointsNeeded;
                                                    connection.query(
                                                        'UPDATE user SET userbalance = ? WHERE uuid = ?',
                                                        [updatedUserPoints, uuid],
                                                        (error, results, fields) => {
                                                            if (error) {
                                                                res.status(400).json({ message: 'Error updating user points' });
                                                                return;
                                                            } else {
                                                                console.log('Records inserted successfully:', successfulInserts);
                                                                res.status(200).json({success: true, message: 'Records inserted successfully' });
                                                            }
                                                        }
                                                    );
                                                }
                                            }
                                        }
                                    );
                                });
                            } else {
                                res.status(401).json({success: false, message: 'Insufficient points for all records' });
                            }

                            // end add records if points sufficient
                        }
                    );
                    //check if points sufficient end
                }
            })



            //timestap end
        } else {
            res.status(500).json({ success: false, message: 'Error retrieving Sri Lanka date, time, and timestamp' });
        }

        });

}

//get all booked slots to current data

const getbookedlots = (req,res)=>{


    getSriLankaDateTime().then(result => {
        if (result) {
            const {date} = result;



            const q = "SELECT * from usertickets WHERE date=(?)"
            const values = [date ]
            connection.execute(q,values, (err, result)=> {

                if(err) {
                    res.status(400).json({success:false, message: 'Error getting booked slots for current date'})
                }else {

                    const purchasedNo = result.map((row)=>{

                        return row.purchasedNo
                    })

                    res.status(200).json(purchasedNo )
                }
            })




        }else {
            res.status(500).json({ success: false, message: 'Error retrieving Sri Lanka date, time, and timestamp' });
        }


    })

}

//get all booked slots to a user

const myslots = (req,res)=>{



    getSriLankaDateTime().then(result => {
        if (result) {
            const {date} = result;

            const uuid = req.session.uuid
            console.log('my slots ' + uuid )

            const q = "SELECT * from usertickets WHERE date=(?) AND uid=(?)"
            const values = [date, uuid ]
            connection.execute(q,values, (err, result)=> {

                if(err) {
                    res.status(400).json({success:false, message: 'Error getting booked slots for current date'})
                }else {

                    const purchasedNo = result.map((row)=>{

                        return row.purchasedNo
                    })

                    const q = "SELECT userbalance FROM user WHERE uuid=(?)"
                    const values = [uuid]
                    connection.execute(q,values,(err, result)=>{

                        if(err) {
                            res.status(400).json({success:false, message: 'database error'})

                        }else {
                            const balance = result[0].userbalance
                            res.status(200).json({success: true, data :purchasedNo, date:date, balance:balance, uuid:uuid} )
                        }
                    })



                }
            })


        }else {
            res.status(500).json({ success: false, message: 'Error retrieving Sri Lanka date, time, and timestamp' });
        }


    })
}

const historybook = (req,res)=>{

    res.send('hello')
}

const lotterytypes = (req,res)=>{

    const q = "SELECT id,name FROM lotterytypes"
    connection.execute(q,(err,result)=>{

        if(err){
            res.status(400).json({success:false, message: 'database error'})
        } else {

            res.status(200).json({success:true, data: result})
        }
    })
}

module.exports = {slotbook , getbookedlots, myslots, historybook, lotterytypes}
