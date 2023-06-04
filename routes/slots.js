const express = require('express');
const router = express.Router();
const authMiddleware = require('../middleware/auth')
const {slotbook , getbookedlots, myslots} = require('../controllers/slotbookcontroller')

//Book slots using points
router.post('/bookslots' ,authMiddleware, slotbook )

//get all booked slots to current date
router.get('/getbookedlots' ,authMiddleware, getbookedlots )

//get user booked slots
router.get('/myslots' ,authMiddleware, myslots )


module.exports = router;