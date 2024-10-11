const xlsx = require('xlsx');
const fs = require ('fs');
const mysql = require('mysql');
const { createConnection } = require('net');


const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: 'ptspl123',
    database: 'RStechOffice'

});

connection.connect(function(err){
    if (err) throw err;
    console.log('Databace is connected');
    });



connection.query('Select * from  employees', function(err, results, fields) {
    if(err) throw err;
    console.log('query run successfully', results);


const worksheet = xlsx.utils.json_to_sheet(results);

const work = xlsx.utils.book_new();

xlsx.utils.book_append_sheet(work, worksheet, 'Data');

xlsx.writeFile(work, 'employees.xlsx');


connection.end( function(err){
    if(err) throw err;
    console.log('program run successfully');

});  // Close the connection

});

