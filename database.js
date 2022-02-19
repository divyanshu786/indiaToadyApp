var mysql = require('mysql');
require('dotenv').config()
var conn = mysql.createConnection({
  host: process.env.localhost, // Replace with your host name
  user: process.env.username,      // Replace with your database username
  password:  process.env.password,      // Replace with your database password
  database:  process.env.database // // Replace with your database Name
}); 
 
conn.connect(function(err) {
  if (err) throw err;
  console.log('Database is connected successfully !');
});
module.exports = conn;