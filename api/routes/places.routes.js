const Places = require('../controllers/places.controller');

module.exports = (app) =>{
    app.route('/puntos')
    .get(Places.getPlaces);
}