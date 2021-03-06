// Generated by CoffeeScript 1.7.1
(function() {
  var fs, http, server, through, toUpper;

  http = require('http');

  fs = require('fs');

  through = require('through');

  toUpper = function(buf) {
    return this.queue(buf.toUpperCase());
  };

  server = http.createServer(function(req, res) {
    var upper;
    req.setEncoding('utf8');
    if (req.method === 'POST') {
      upper = through(toUpper, function() {
        return res.end();
      });
      return req.pipe(upper).pipe(res);
    }
  });

  server.listen(process.argv[2]);

}).call(this);
