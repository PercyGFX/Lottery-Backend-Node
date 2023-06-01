const express = require('express');
const authMiddleware = require('../middleware/auth')
const connection = require('../database')
const axios = require('axios');


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
    getSriLankaDateTime().then(({ date, time, timestamp, mysqlTimestamp }) => {
        const currentHour = parseInt(time.slice(0, 2), 10);

        //Data cannot be added after 7pm
        if (isNaN(currentHour) || currentHour >= 19) {
            res.status(401).json({success: false, message: 'Data cannot be added after 7 PM' });
            return;
        }

        //get data from JSON post & session
            const uuid = req.session.uuid
            const inputData = req.body;
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
        });

}

module.exports = slotbook