concat = require 'concat-stream'
process.stdin.setEncoding('utf8')
process.stdin.pipe concat (buf) ->
  process.stdout.write [].slice.apply(buf).reverse().join('')
