const express = require('express');
const router = express.Router();
const authMiddleware = require('../middleware/auth')
const slotbook = require('../controllers/slotbookcontroller')

router.post('/bookslots' ,authMiddleware, slotbook )

module.exports = router;