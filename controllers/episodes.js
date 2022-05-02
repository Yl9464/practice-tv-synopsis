const models = require('../models')

const getAllEpisodes = async (request, response) => {
  try {
    const episodes = await models.Episodes.findAll({
      attributes: ['seasonNum', 'episodeNum', 'episodeTitle', 'directorId', 'synopsis']
    })

    return episodes
      ? response.send(episodes)
      : response.sendStatus(404)
  } catch (error) {
    console.log(error)
  }
}

module.exports = {
  getAllEpisodes
}
