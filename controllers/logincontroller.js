const express = require('express');
const axios = require('axios');
const connection = require('../database')
const session = require('express-session')
const { v4: uuidv4 } = require('uuid');


const login = (req , res) =>{

    if (req.session.phone) {
        res.json({ success: true, message: 'already logged in' });
        return;
    }

    const phone = req.body.phone;
    const token = req.body.token;
    const api_key = 'AIzaSyCCifumMfBcy8ugxcED55JZdDcuSh35HgM';
    const url = `https://identitytoolkit.googleapis.com/v1/accounts:lookup?key=${api_key}`;
    const requestData = {
        idToken: token,
    };


    axios
        .post(url, requestData)
        .then((response) => {

            if (response.data.users[0].phoneNumber == phone) {

                console.log('Phone number matches');

                const q = "SELECT * from user WHERE phonenumber = ?"
                connection.execute(q , [phone] , (err,result)=>{

                    if(err){
                        res.status(401).json({ success: false, message: 'Something went wrong' });
                    }

                    if(result.length < 1) {

                        const userId = uuidv4();
                        const q = "INSERT INTO user (uuid, phonenumber, userbalance) VALUES (?, ?, ?)";
                        const values = [userId, phone, 0];

                        connection.execute(q, values, (err, result)=>{
                            if (err) {
                                res.status(400).json(err);
                            } else {
                                console.log('new user added');
                                req.session.phone = phone
                                req.session.uuid = userId
                                res.status(200).json({ message: "Login successful", user: phone, uuid: userId });
                            }
                        });
                    } else {

                        req.session.phone = phone
                        req.session.uuid = result[0].uuid
                        res.status(200).json({ message: "Login successful", user: result[0].phonenumber, uuid: result[0].uuid });
                    }

                })

            } else {
                res.status(401).json({ success: false, message: 'Something went wrong' });
            }
        })
        .catch((error) => {
            res.status(401).json({ success: false, message: 'Something wrong with phone number & Token' });
        });
}

const logout = (req,res)=>{

    res.send('hello')
}

module.exports = {login,logout}