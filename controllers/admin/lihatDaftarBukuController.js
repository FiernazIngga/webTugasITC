function lihatDaftarBukuController(res,req,db){
    let sql = 'SELECT * FROM buku';
    db.query(sql,(err,results) => {
        if (results) {
            res.writeHead(200,{'Content-Type':'application/json'})
            res.end(JSON.stringify(results))
        } else {
            res.writeHead(200,{'Content-Type':'application/json'})
            res.end(JSON.stringify({error: 'Terjadi kesalahan'}))
        }
    })
}

module.exports = {lihatDaftarBukuController}