const models = require('../models')

const getShowDetails = async (request, response) => {
  try {
    const details = await models.ShowDetails.findAll()

    return details
      ? response.send(details)
      : response.sendStatus(404)
  }
  catch (error) {
    console.log(error)
  }
}

module.exports = { getShowDetails }
