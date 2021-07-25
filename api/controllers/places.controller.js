const Sql = require('../db/sql');

exports.editPoint = async(req, res) =>{
    try{
        console.log(req.body);
        const newName = req.body.newName;
        const oldName = req.body.currentName;

        let query = `SELECT punto_de_interes FROM puntos_de_interes
        WHERE punto_de_interes = '${ newName }'`;

        let result = await Sql.query(query);

        if(result.length > 0){
            return res.json({
                ok: false,
                error: 'No se puede asignar el mismo nombre a dos puntos diferentes o poner el mismo nombre'
            });
        }

        query = `UPDATE puntos_de_interes SET punto_de_interes = '${ newName }'
        WHERE punto_de_interes = '${ oldName }'`;
        
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