const Episodes = (connection, Sequelize, Directors) => {
  return connection.define('episodes', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    seasonNum: { type: Sequelize.INTEGER },
    episodeNum: { type: Sequelize.INTEGER },
    episodeTitle: { type: Sequelize.STRING },
    directorId: { type: Sequelize.INTEGER, references: { model: Directors, key: 'id' } },
    synopsis: { type: Sequelize.STRING }
  }, { paranoid: true })
}

module.exports = Episodes
