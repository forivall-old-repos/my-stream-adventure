// Generated by CoffeeScript 1.6.3
var change_case, lower, split, through;

through = require('through');

split = require('split');

lower = false;

change_case = through(function(buf) {
  return this.queue(((lower = !lower) ? buf.toLowerCase() : buf.toUpperCase()) + '\n');
});

process.stdin.setEncoding('utf8');

process.stdin.pipe(split()).pipe(change_case).pipe(process.stdout);
