through = require 'through'
split = require 'split'
lower = false
change_case = through (buf) -> @queue((if (lower = !lower) then buf.toLowerCase() else buf.toUpperCase()) + '\n')
process.stdin.setEncoding('utf8')
process.stdin.pipe(split()).pipe(change_case).pipe(process.stdout)
