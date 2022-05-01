const ShowDetails = (connection, Sequelize) => {
  return connection.define('showDetails', {
    id: { type: Sequelize.INTEGER, autoIncremnt: true, primaryKey: true },
    showTitle: { type: Sequelize.STRING },
    developers: { type: Sequelize.STRING },
    starts: { type: Sequelize.STRING },
  }, { paranoid: true })
}

module.exports = ShowDetails
