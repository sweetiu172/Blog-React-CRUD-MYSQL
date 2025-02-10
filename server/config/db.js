const mysql = require('mysql2')

const db = mysql.createConnection({
    host: "mysql8",
    port: 3305,
    user: "root",
    password: "root",
    database:"blog_posts" 
})

module.exports = db;