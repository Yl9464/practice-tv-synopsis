const EpisodeSeasonNums = (connection, Sequelize) => {
  return connection.define('episodeSeasonNums', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    seasonNum: { type: Sequelize.INTEGER },
    episodeNum: { type: Sequelize.INTEGER },
  }, { paranoid: true })
}

module.exports = { EpisodeSeasonNums }
