const express = require('express')
const { getShowDetails } = require('./controllers/showDetails')
const { getAllEpisodes, getEpisodeByTitle, getEpisodesBySeasonNum } = require('./controllers/episodes')

const app = express()

app.get('/details', getShowDetails)
app.get('/episodes', getAllEpisodes)
app.get('/episodes/:title', getEpisodeByTitle)
app.get('/episodes/:seasonNum', getEpisodesBySeasonNum)

app.all('*', (request, response) => {
  return response.status(404).send('Sorry, this page does not exists')
})

app.listen(1337, () => {
  console.log('listening on port 1337')
})
