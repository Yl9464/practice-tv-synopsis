const Episodes = (connection, Sequelize, Directors) => {
  return connection.define('episodes', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    seasonEpisode: { type: Sequelize.STRING },
    episodeTitle: { type: Sequelize.STRING },
    directorId: { type: Sequelize.INTEGER, references: { model: Directors, key: 'id' } },
    synopsis: { type: Sequelize.STRING }
  }, { paranoid: true })
}

module.exports = Episodes
