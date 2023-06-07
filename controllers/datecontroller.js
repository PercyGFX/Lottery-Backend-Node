const express = require('express');
const axios = require('axios');

async function getSriLankaDateTime() {
    try {
        const response = await axios.get('http://api.timezonedb.com/v2.1/get-time-zone', {
            params: {
                key: '2VF6AOIGN3ZC',
                format: 'json',
                by: 'zone',
                zone: 'Asia/Colombo'
            }
        });

        const { formatted } = response.data;
        const [date, time] = formatted.split(' ');
        const mysqlTimestamp = formatted;

        return { date, time, mysqlTimestamp };
    } catch (error) {
        console.error('Error retrieving Sri Lanka date, time, and timestamp:', error.message);
        return null;
    }
}

module.exports = getSriLankaDateTime