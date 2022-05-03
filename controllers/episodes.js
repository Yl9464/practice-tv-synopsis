const models = require('../models')

const getAllEpisodes = async (request, response) => {
  try {
    const episodes = await models.Episodes.findAll({
      attributes: ['seasonEpisode', 'episodeTitle', 'directorId', 'synopsis'],
      include: [{
        model: models.Directors,
        attributes: ['directorName']
      }]
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
      attributes: ['seasonEpisode', 'episodeTitle', 'directorId', 'synopsis'],
      include: [{
        model: models.Directors,
        attributes: ['directorName']
      }]
    })

    return episodeTitle
      ? response.send(episodeTitle)
      : response.sendStatus(404)
  } catch (error) {
    console.log(error)
  }
}

const getBySeasonEpisode = async (request, response) => {
  try {
    const { seasonEpisode } = request.params

    const seasonEpisodeNum = await models.Episodes.findOne({
      where: { seasonEpisode: { [models.Op.like]: `%${seasonEpisode}%` } },
      attributes: ['seasonEpisode', 'episodeTitle', 'directorId', 'synopsis'],
      include: [{
        model: models.Directors,
        attributes: ['directorName']
      }]
    })

    return seasonEpisodeNum
      ? response.send(seasonEpisodeNum)
      : response.sendStatus(404)
  } catch (error) {
    console.log(error.message)
  }
}

module.exports = {
  getAllEpisodes,
  getBySeasonEpisode,
  getEpisodeByTitle
}
