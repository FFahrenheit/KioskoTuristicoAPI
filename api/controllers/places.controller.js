const Sql = require('../db/sql');

exports.getPlaces = async(req, res) =>{
    try{
        const query = `SELECT id_puntos_de_interes as id_puntos,
        id_linea,
        punto_de_interes, kiosco.id_kiosco, kiosco.estacion 
        FROM kiosco, puntos_de_interes
        WHERE kiosco.id_kiosco = puntos_de_interes.id_kiosco`;
        
        const puntos = await Sql.query(query);

        return res.json({
            ok: true,
            puntos
        });
    }catch(e){
        console.log(e);
        return res.status(500).send({
            ok: false,
            error: e
        });
    }
}