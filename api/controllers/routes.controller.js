const Sql = require('../db/sql');

exports.getStops = async(req, res) =>{
    try{
        const query = `SELECT DISTINCT estacion AS 'nombre',
                0 AS 'tipo'
                FROM kiosco
            UNION
        SELECT DISTINCT punto_de_interes AS 'nombre',
                1 as 'tipo'
                FROM puntos_de_interes`;
        
        const paradas = await Sql.query(query);

        return res.json({
            ok: true,
            paradas
        });
    }catch(e){
        console.log(e);
        return res.status(500).send({
            ok: false,
            error: e
        });
    }
}