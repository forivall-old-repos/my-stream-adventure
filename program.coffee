through = require 'through'
upper = through (buf) -> @queue(buf.toUpperCase())
process.stdin.setEncoding('utf8')
process.stdin.pipe(upper).pipe(process.stdout)
