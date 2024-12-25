const { request } = require('express');
const express = require('express');
const router = express.Router();
const userModel = require('../models/userModel');

/**
 * Route to create a new user or sign in existing user depending on request body.
 */
router.post('/', async (req, res) => {
    try {
        const createParams = ['username', 'password', 'first_name', 'last_name', 'email', 'phone'];
        const signInParams = ['username', 'password'];

        const missingCreateParams = createParams.filter(param => !req.body[param]);
        const missingSignInParams = signInParams.filter(param => !req.body[param]);

        if (missingCreateParams.length == 0) {
            const user = await userModel.createUser(req.body);
            res.status(201).json({ user_id: user, message: 'User created successfully' });
        } else if (missingSignInParams.length == 0) {
            const user = await userModel.signIn(req.body);
            res.status(200).json({ sessionKey: user, message: 'User signed in successfully' });
        } else {
            res.status(400).json({
                message: 'Missing required parameters to sign in: ' + missingSignInParams.join(', ')
                    + ' or create a new user: ' + missingCreateParams.join(', ')
            });
        }
    } catch (err) {
        res.status(400).json(err);
    }
});