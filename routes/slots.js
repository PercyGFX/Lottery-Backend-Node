const express = require('express');
const router = express.Router();
const authMiddleware = require('../middleware/auth')
const {slotbook , getbookedlots, myslots, historybook, lotterytypes} = require('../controllers/slotbookcontroller')

//Book slots using points
router.post('/bookslots' ,authMiddleware, slotbook )

//get all booked slots to current date
router.get('/getbookedlots' ,authMiddleware, getbookedlots )

//get user booked slots
router.get('/myslots' ,authMiddleware, myslots )

//get user history booked slots
router.get('/historybook' ,authMiddleware, historybook )

//get lottery types

router.get('/lotterytypes' ,authMiddleware, lotterytypes )

module.exports = router;