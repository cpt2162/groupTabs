const pgp = require('pg-promise')();
const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '../.env') });

const user = process.env.DB_USER;
const password = process.env.DB_PASSWORD;
const host = process.env.DB_HOST;
const port = process.env.DB_PORT;
const dbName = process.env.DB_NAME;

const db = pgp(`postgres://${user}:${password}@${host}:${port}/${dbName}`);

module.exports = db;