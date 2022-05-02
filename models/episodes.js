const Episodes = (connection, Sequelize, EpisodeSeasonNums, Directors) => {
  return connection.define('episodes', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    seasonEpisodeId: { type: Sequelize.INTEGER, references: { model: EpisodeSeasonNums, key: 'id' } },
    episodeTitle: { type: Sequelize.STRING },
    directorId: { type: Sequelize.INTEGER, references: { model: Directors, key: 'id' } },
    synopsis: { type: Sequelize.STRING }
  }, { paranoid: true })
}

module.exports = Episodes
