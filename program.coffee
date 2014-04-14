http = require 'http'
fs = require 'fs'
through = require 'through'
toUpper = (buf) -> @queue(buf.toUpperCase())
server = http.createServer (req, res) ->
  req.setEncoding('utf8')
  if req.method is 'POST'
    upper = through toUpper, -> res.end()
    req.pipe(upper).pipe(res)
server.listen(process.argv[2])
