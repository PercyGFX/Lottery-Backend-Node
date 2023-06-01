const express = require('express');
const router = express.Router();
const authMiddleware = require('../middleware/auth')
const connection = require('../database')
const axios = require('axios');

router.post('/bookslots',authMiddleware , (req,res)=> {


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
    getSriLankaDateTime()
        .then(({ date, time, timestamp, mysqlTimestamp }) => {




    const uuid = req.session.uuid
    const inputData = req.body;
    const { lotteryTypeId, data } = inputData;

    let totalPointsNeeded = data.length * 200

            

            let successfulInserts = 0;
            let failedInserts = 0;

            data.forEach(item => {
                const { id } = item;

                connection.query(
                    'INSERT INTO usertickets (uid, purchasedNo, date, timestamp, lotteryTypeId) VALUES (?, ?, ? , ?, ?)',
                    [uuid, id, date, mysqlTimestamp,lotteryTypeId ],
                    (error, results, fields) => {
                        if (error) {
                            res.status(401).json({ message: 'Something Went Wrong' });
                            failedInserts++;
                        } else {
                            successfulInserts++;
                        }

                        if (successfulInserts + failedInserts === data.length) {
                            console.log('Records inserted successfully:', successfulInserts);
                            res.status(200).json({ message: 'Records inserted successfully' });
                        }
                    }
                );
            });

        });

} )

module.exports = router;