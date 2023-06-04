const express = require('express');
const authMiddleware = require('../middleware/auth')
const connection = require('../database')
const axios = require('axios');


// slot book function
const slotbook = (req,res) => {

    async function getSriLankaDateTime() {
        try {
            const response = await axios.get('http://worldtimeapi.org/api/timezone/Asia/Colombo');
            const { datetime } = response.data;

            const serverDateTime = new Date(datetime);

            const date = serverDateTime.toLocaleDateString('en-US');
            const time = serverDateTime.toLocaleTimeString('en-US', { timeZone: 'Asia/Colombo', hour12: false });
            const timestamp = serverDateTime.getTime();

            const year = serverDateTime.getFullYear();
            const month = ('0' + (serverDateTime.getMonth() + 1)).slice(-2);
            const day = ('0' + serverDateTime.getDate()).slice(-2);
            const hours = ('0' + serverDateTime.getHours()).slice(-2);
            const minutes = ('0' + serverDateTime.getMinutes()).slice(-2);
            const seconds = ('0' + serverDateTime.getSeconds()).slice(-2);

            const mysqlTimestamp = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;

            return { date, time, timestamp, mysqlTimestamp };
        } catch (error) {
            console.error('Error retrieving Sri Lanka date, time, and timestamp:', error.message);
            return null;
        }
    }

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
                                        } else {
                                            // Reduce the points from the userbalance column
                                            const updatedUserPoints = userPoints - totalPointsNeeded;
                                            connection.query(
                                                'UPDATE user SET userbalance = ? WHERE uuid = ?',
                                                [updatedUserPoints, uuid],
                                                (error, results, fields) => {
                                                    if (error) {
                                                        res.status(400).json({ message: 'Error updating user points' });
                                                    } else {
                                                        console.log('Records inserted successfully:', successfulInserts);
                                                        res.status(200).json({ message: 'Records inserted successfully' });
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
                }
            );

            //timestap end
        } else {
            res.status(500).json({ success: false, message: 'Error retrieving Sri Lanka date, time, and timestamp' });
        }

        });

}

//get all booked slots to current data

const getbookedlots = (req,res)=>{

    async function getSriLankaDateTime() {
        try {
            const response = await axios.get('http://worldtimeapi.org/api/timezone/Asia/Colombo');
            const { datetime } = response.data;
            const serverDateTime = new Date(datetime);
            const date = serverDateTime.toLocaleDateString('en-US');

            return { date };
        } catch (error) {
            console.error('Error retrieving Sri Lanka date, time, and timestamp:', error.message);
            return null;
        }
    }

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

    async function getSriLankaDateTime() {
        try {
            const response = await axios.get('http://worldtimeapi.org/api/timezone/Asia/Colombo');
            const { datetime } = response.data;
            const serverDateTime = new Date(datetime);
            const date = serverDateTime.toLocaleDateString('en-US');

            return { date };
        } catch (error) {
            console.error('Error retrieving Sri Lanka date, time, and timestamp:', error.message);
            return null;
        }
    }

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

                    res.status(200).json(purchasedNo )
                }
            })




        }else {
            res.status(500).json({ success: false, message: 'Error retrieving Sri Lanka date, time, and timestamp' });
        }


    })
}

module.exports = {slotbook , getbookedlots, myslots}
