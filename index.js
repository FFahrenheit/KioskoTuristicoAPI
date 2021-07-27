const express = require('express'),
    app = express(),
    port = 3300;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

const placesRoutes = require('./api/routes/places.routes');
const routesRoutes = require('./api/routes/routes.routes');
const stationRoutes = require('./api/routes/station.routes');
const stationsRoutes = require('./api/routes/stations.routes');

app.use((req, res, next )=>{
    console.log([req.method, req.originalUrl, new Date()]);
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,PATCH,OPTIONS');
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
    next();
});

placesRoutes(app);
routesRoutes(app);
stationRoutes(app);
stationsRoutes(app);

app.listen(port,()=>{
    console.clear();
    console.log('Server running on port ' + port);
});