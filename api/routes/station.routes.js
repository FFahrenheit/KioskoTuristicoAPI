const Estacion = require('../controllers/station.controller');

module.exports = (app) =>{
    app.route('/estacion')
    .get(Estacion.getStation)
    .post(Estacion.editStation)
    .put(Estacion.toggleEstacion);
}