const Sql = require('../db/sql');

exports.getStations = async(req, res) =>{
    try{
        const query = "SELECT * FROM kiosco";
        
        const estaciones = await Sql.query(query);

        return res.json({
            ok: true,
            estaciones
        });
    }catch(e){
        console.log(e);
        return res.status(500).send({
            ok: false,
            error: e
        });
    }
}