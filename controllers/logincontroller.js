const express = require('express');
const axios = require('axios');
const {connection} = require('../database')


const login = (req , res) =>{

    const phone = req.body.phone;
    const token = req.body.token;

    res.send(phone + token)
}

module.exports = login