const Sequelize = require('sequelize')
const allConfigs = require('../configs/sequelize')

const DirectorsModel = require('./directors')
const EpisodesModel = require('./episodes')
const ShowDetailsModels = require('./showDetails')

const environment = process.env.NODE_ENV || 'development'
const config = allConfigs[environment]

const connection = new Sequelize(config.database, config.username, config.password, {
  host: config.host, dialect: config.dialect
})

const ShowDetails = ShowDetailsModels(connection, Sequelize)
const Directors = DirectorsModel(connection, Sequelize)
const Episodes = EpisodesModel(connection, Sequelize, Directors)

Episodes.belongsTo(Directors)
Directors.hasMany(Episodes)

module.exports = {
  Directors,
  Episodes,
  ShowDetails,
  Op: Sequelize.Op
}

