const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const SearchController = require('./search')

app.use(bodyParser.json())

app.get('/search', SearchController)

app.listen(3000, () => console.log('SERVER STARTED ::: Listening on port 3000'))