const express = require('express');
const router = express.Router();
const authMiddleware = require('../middleware/auth')
const {slotbook , getbookedlots} = require('../controllers/slotbookcontroller')

router.post('/bookslots' ,authMiddleware, slotbook )

router.get('/getbookedlots' /*,authMiddlewar*/, getbookedlots )

module.exports = router;