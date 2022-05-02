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

const getEpisodeByTitle = async (request, response) => {
  try {
    const { title } = request.params

    const episodeTitle = await models.Episodes.findOne({
      where: { episodeTitle: { [models.Op.like]: `%${title}%` } },
    })

    return episodeTitle
      ? response.send(episodeTitle)
      : response.sendStatus(404)
  } catch (error) {
    console.log(error)
  }
}


module.exports = {
  getAllEpisodes,
  getEpisodeByTitle
}
