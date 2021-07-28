const Sql = require('../db/sql');

exports.getLines = async(req, res)=>{
    try{
        const query = `SELECT id_linea,
        (SELECT estacion FROM kiosco as k1 WHERE k1.id_linea = k0.id_linea AND k1.id_estacion = 0) as origen,
        (SELECT estacion FROM kiosco as k2 WHERE k2.id_linea = k0.id_linea AND 
         k2.id_estacion = (SELECT MAX(id_estacion) FROM kiosco WHERE id_linea = k0.id_linea)) as destino
        FROM kiosco as k0
        GROUP BY k0.id_linea
        ORDER BY k0.id_linea`;
        
        const lineas = await Sql.query(query);

        return res.json({
            ok: true,
            lineas
        });
    }catch(e){
        console.log(e);
        return res.status(500).send({
            ok: false,
            error: e
        });
    }
}

exports.getStops = async(req, res) =>{
    try{
        const query = `SELECT DISTINCT estacion AS 'nombre',
                0 AS 'tipo'
                FROM kiosco
                WHERE estatus = 0
            UNION
        SELECT DISTINCT punto_de_interes AS 'nombre',
                1 as 'tipo'
                FROM puntos_de_interes, kiosco
                WHERE puntos_de_interes.id_kiosco = kiosco.id_kiosco
                AND kiosco.estatus = 0`;
        
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