const Sequelize = require('sequelize')
const allConfigs = require('../configs/sequelize')

const DirectorsModel = require('./directors')
const EpisodesModel = require('./episodes')
const ShowDetailsModels = require('./showDetails')
const EpisodeSeasonNumsModels = require('./episodeSeasonNums')

const environment = process.env.NODE_ENV || 'development'
const config = allConfigs[environment]

const connection = new Sequelize(config.database, config.username, config.password, {
  host: config.host, dialect: config.dialect
})

const ShowDetails = ShowDetailsModels(connection, Sequelize)
const Directors = DirectorsModel(connection, Sequelize)
const EpisodeSeasonNums = EpisodeSeasonNumsModels(connection, Sequelize)
const Episodes = EpisodesModel(connection, Sequelize, Directors, EpisodeSeasonNums)

Episodes.belongsTo(Directors)
Directors.hasMany(Episodes)

Episodes.belongsTo(EpisodeSeasonNums)
EpisodeSeasonNums.hasMany(Episodes)

module.exports = {
  Directors,
  Episodes,
  ShowDetails,
  EpisodeSeasonNums,
  Op: Sequelize.Op
}

