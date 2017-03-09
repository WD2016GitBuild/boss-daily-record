module.exports = function(app){
	app.get('/',function(req,res){
    	res.render('index', { title: 'Express' });
  	});
  	app.get('/reg', function(req, res) {
	    res.render('reg', {
      		title: '用戶注册',
    	});
  	});
};