const express = require('express')
const app = express()

const routes = require('./creating_databases_and_tables/routes')

const jsonParser = require('body-parser').json
const logger = require('morgan')

app.use(logger('dev'))
app.use(jsonParser())

app.use('/cats', routes)

app.use((req, res, next) => {
	const err = new Error('Not Found')
	err.status = 404
	next(err)
})

app.use((err, req, res, next) => {
	res.status(err.status || 500)
	res.json({
		error: {
			message: err.message
		}
	})
})

const port = process.env.PORT || 3000

app.listen(port, () => {
	console.log('Express server is listening on port', port)
})
