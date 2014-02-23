http = require('http')
http.createServer((req, res) ->
	res.writeHead 200, {'Content-Type': 'text/plain'}
	res.end 'Node...'
	return
).listen 3000, '127.0.0.1'