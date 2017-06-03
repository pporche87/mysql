const express = require('express')
const mysql = require('mysql')
const router = express.Router()

const options = {
	host: 'localhost',
	user: 'root',
	password: 'password',
	database: 'cat_app'
}

const connection = mysql.createConnection(options)

router.get('/', (req, res) => {
	connection.query('SHOW TABLES', (error, results, fields) => {
		console.log(results)
		res.send(results)
	})
})

router.get('/columns', (req, res) => {
	connection.query('SHOW COLUMNS FROM cats', (error, results, fields) => {
		console.log(results[0])
		res.send(results[0])
	})
})

router.delete('/delete', (req, res) => {
	connection.query('DROP TABLE cats', (error, results, fields) => {
		console.log('Table Dropped')
	})
})

module.exports = router
