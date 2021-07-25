const Sql = require('../db/sql');

exports.editStation = async(req, res) =>{
    try{
        console.log(req.body);
        const nombre = req.body.name;
        const estacion = req.body.station;

        let query = `SELECT estacion FROM kiosco
        WHERE estacion = '${ nombre }'`;

        let result = await Sql.query(query);

        if(result.length > 0){
            return res.json({
                ok: false,
                error: 'No se puede asignar el mismo nombre a dos estaciones diferentes o poner el mismo nombre'
            });
        }

        query = `UPDATE kiosco SET estacion = '${ nombre }'
        WHERE estacion = '${ estacion }'`;
        
        await Sql.query(query);

        return res.json({
            ok: true
        });
    }catch(e){
        console.log(e);
        return res.status(500).send({
            ok: false,
            error: e
        });
    }
}

exports.toggleEstacion = async(req, res) =>{
    try{
        console.log(req.body);
        const estatus = req.body.state;
        const estacion = req.body.station;

        const query = `UPDATE kiosco SET estatus = ${ estatus }
        WHERE estacion = '${ estacion }'`;

        // console.log(query);
        
        await Sql.query(query);

        return res.json({
            ok: true
        });
    }catch(e){
        console.log(e);
        return res.status(500).send({
            ok: false,
            error: e
        });
    }
}

exports.getStation = async(req,res) =>{
    try{
        let resp = await Sql.query('SELECT * FROM kiosco');
        return res.json({
            ok: true,
            resp
        });
    }catch(e){
        console.log(e);
        return res.status(500).send({
            ok: false,
            error: e
        });
    }
}