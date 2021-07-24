const Estaciones = require('../controllers/stations.controller');

module.exports = (app) =>{
    app.route('/estaciones')
    .get(Estaciones.getStations);
}