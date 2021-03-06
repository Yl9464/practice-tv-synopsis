const Directors = (connection, Sequelize) => {
  return connection.define('directors', {
    id: { type: Sequelize.INTEGER, autoIncrement: true, primaryKey: true },
    directorName: { type: Sequelize.STRING },
  }, { paranoid: true })
}

module.exports = Directors
