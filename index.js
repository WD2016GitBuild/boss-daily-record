var mysql = require('./mysql.js');
var express = require('express');
var app = express();

// 静态化资源
app.use(express.static('public'));

// 首页
app.get('/', function (req, res) {
   console.log("主页 GET 请求");
   res.send('Hello GET');
})

// 列表
app.get('/list', function (req, res) {
   var mysql = require('mysql');
	var connection = mysql.createConnection({
		host:'localhost',
		user:'root',
		password:'root',
		database:'order'
	});

	connection.connect();
	var datas = null;
	connection.query("select * from _order", function(err, rows) {
		if (err) 
			throw err;
  		res.end(JSON.stringify({result:rows}));
		connection.end();
	});
})

var server = app.listen(3000, function () {
  var host = server.address().address
  var port = server.address().port
  console.log("应用实例，访问地址为 http://%s:%s", host, port)
})


