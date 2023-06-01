function authMiddleware(req,res,next){

    if (!req.session.phone) {
        return res.status(401).json({ success: false, message: 'Not authorized. Please login' });
    }

    next();
}

module.exports = authMiddleware