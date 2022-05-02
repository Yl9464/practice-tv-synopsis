const models = require('../models')

const getAllDirectors = async (request, response) => {
  try {
    const directors = await models.Directors.findAll({
      attributes: ['directorName'],
      include: [{
        model: models.Episodes,
        attributes: ['episodeTitle']
      }]
    })

    return directors
      ? response.send(directors)
      : response.sendStatus(404)
  } catch (error) {
    console.log(error)
  }
}

module.exports = {
  getAllDirectors
}
