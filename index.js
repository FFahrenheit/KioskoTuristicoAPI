const express = require('express'),
    app = express(),
    port = 3300;

app.use(express.urlencoded({ extended: true }));
app.use(express.json());

const stationRoutes = require('./api/routes/station.routes');
const stationsRoutes = require('./api/routes/stations.routes');

app.use((req, res, next )=>{
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE,PATCH,OPTIONS');
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');
    next();
});

stationRoutes(app);
stationsRoutes(app);

app.listen(port,()=>{
    console.clear();
    console.log('Server running on port ' + port);
});