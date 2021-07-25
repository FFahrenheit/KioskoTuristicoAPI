const Places = require('../controllers/places.controller');

module.exports = (app) =>{
    app.route('/puntos')
    .put(Places.editPoint)
    .get(Places.getPlaces);
}