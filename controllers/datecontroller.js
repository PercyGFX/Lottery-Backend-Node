const express = require('express');
const axios = require('axios');

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

module.exports = getSriLankaDateTime