var express = require('express');


var app = express();

app.configure(function () {
    app.use(express.cookieParser('Passphrase used to encrypt cookie'));
});


app.get('/', function (req, res) {
    if (req.cookies.beenHereBefore === 'yes') {
        res.send('You have been here before');
    } else {
        res.cookie('beenHereBefore','yes');
        res.send('It is your first time here');
    }
});

app.get('/clear', function (req, res) {
   res.clearCookie('beenHereBefore');
   res.redirect('/');
});

app.listen(3000);