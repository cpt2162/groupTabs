const db = require('../config/db.config.js');
const crypto = require('crypto');
const { QueryFile } = require('pg-promise');
const path = require('path');

const userQueries = {
    create: new QueryFile(path.join(__dirname, '../sql/userSQL/create.sql')),
    signIn: new QueryFile(path.join(__dirname, '../sql/userSQL/signIn.sql')),
};

async function createUser(user) {
    user.password = await hashPW(user.password);
    return db.one(userQueries.create, [
        user.username, user.password, user.first_name, user.last_name, user.email, user.phone
    ]);
}

async function signIn(user) {
    user.password = await hashPW(user.password);
    const sessionKey = crypto.randomBytes(16).toString('hex');
    return db.one(userQueries.signIn, [
        user.username, user.password, sessionKey
    ]);
}

async function hashPW(pw) {
    return crypto.createHash('sha512').update(pw).digest('hex');
}