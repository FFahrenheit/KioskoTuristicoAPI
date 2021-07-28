const Routes = require('../controllers/routes.controller');

module.exports = (app) =>{
    app.route('/paradas')
    .get(Routes.getStops)
    
    app.route('/lineas')
    .get(Routes.getLines);
}