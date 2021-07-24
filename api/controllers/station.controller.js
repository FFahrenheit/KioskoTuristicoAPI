const Sql = require('../db/sql');

exports.getStation = async(req,res) =>{
    let resp = await Sql.query('SELECT * FROM kiosco');
    return res.json({
        ok: true,
        resp
    });
}