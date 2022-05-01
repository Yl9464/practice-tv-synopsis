const models = require('../models')

const getAllDirectors = async (request, response) => {
  const directors = await models.Directors.findAll()

  return response.send(directors)
}

module.exports = { getAllDirectors }
