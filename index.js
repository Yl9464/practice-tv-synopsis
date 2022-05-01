const express = require('express')
const { getAllDirectors } = require('./controllers/directors')

const app = express()


app.get('/', getAllDirectors)


app.all('*', (request, response) => {
  return response.status(404).send('Sorry, this page does not exists')
})

app.listen(1337, () => {
  console.log('listening on port 1337')
})
