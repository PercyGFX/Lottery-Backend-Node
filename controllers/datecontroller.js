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

        const { formatted, timestamp } = response.data;

        const serverDateTime = new Date(formatted);

        const date = serverDateTime.toLocaleDateString('en-US');
        const time = serverDateTime.toLocaleTimeString('en-US', { timeZone: 'Asia/Colombo', hour12: false });

        const mysqlTimestamp = formatted;

        return { date, time, timestamp, mysqlTimestamp };
    } catch (error) {
        console.error('Error retrieving Sri Lanka date, time, and timestamp:', error.message);
        return null;
    }
} 

module.exports = getSriLankaDateTime