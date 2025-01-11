const mysql = require('mysql2')

const db = mysql.createConnection({
    host: "localhost",
    port: 3305,
    user: "root",
    password: "root",
    database:"blog_posts" 
})

module.exports = db;