const express = require('express');

const app = express();
const mysql = require('mysql2');
const cors = require('cors');
app.use(cors());
app.use(express.urlencoded({extended:true}));
app.use(express.json());

const config = {
    host: "localhost",
    user: "muhammad",
    database: "employee_directory",
    password: "muhammad"
};

var server = app.listen(8081, function () {
    var host = server.address().address 
    var port = server.address().port

    console.log("сервер доступен по url http://%s:%s", host, port)
});


//получение всех сотрудников, поиск по имени
app.get('/users', function (req, res) {
    const connection = mysql.createConnection(config);
        const sortName = req.query.sortName || '';
        const name = req.query.name || '';
        const str = "SELECT `users`.id AS `key`, `users`.name, `users`.account,`users`.email, `groups`.name AS `groups`, `users`.number FROM `users` LEFT OUTER JOIN `groups` on `users`.id_groups = `groups`.id_group WHERE `users`.name LIKE '%" + name + "%' ORDER BY `users`.name " + sortName;
        connection.query(str, function(err, data) {
        if(err) return console.log(err);
            res.json(data); // результат в формате JSON
            connection.close(); 
      });
});


//получение групп
app.get('/groups', function (req, res) {
    const connection = mysql.createConnection(config);
        const str = "SELECT * FROM `groups`"
        connection.query(str, function(err, data) {
        if(err) return console.log(err);
            res.json(data); // результат в формате JSON
            connection.close(); 
      });
});



//добавление нового сотруника
app.post('/users/', function (req, res) {
        const connection = mysql.createConnection(config);
        const {name,account,email,number,groups} = req.body;
        const group = groups ? `'${groups}'`: null;
        const user = `'${name}','${account}','${email}',${group},'${number}'`;
        const str = "INSERT INTO `users` (`name`,`account`,`email`,`id_groups`,`number`) VALUES(" + user + ")"
        connection.query(str, function(err, data) {
            if(err) return console.log(err);
                res.status(201).send(`Сотрудник добавлен `);
                connection.close(); 
            })
})