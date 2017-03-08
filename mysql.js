var mysql = require('mysql');
var connection = mysql.createConnection({
	host:'localhost',
	user:'root',
	password:'root',
	database:'order'
});

exports.query = function(sql) {
	connection.connect();
	connection.query(sql, function(err, rows) {
		if (err) 
			throw err;
		for (var i in rows) {
			console.log(rows[i]["_name"]);
		}
		return rows
	});
	connection.end();
}