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

const getDirectorByName = async (request, response) => {
  try {
    const { name } = request.params

    const directorName = await models.Directors.findOne({
      where: { directorName: { [models.Op.like]: `%${name}%` } },
      attributes: ['directorName'],
      include: [{
        model: models.Episodes,
        attributes: ['episodeTitle']
      }]
    })

    return directorName
      ? response.send(directorName)
      : response.sendStatus(404)
  } catch (error) {
    console.log(error)
  }
}

module.exports = {
  getAllDirectors,
  getDirectorByName,
}
