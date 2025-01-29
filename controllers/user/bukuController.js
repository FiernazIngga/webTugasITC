function bukulib(req, res, db, sessions, ambilSesiId){
    let sql = 'SELECT * FROM buku'
    db.query(sql,(err,results) => {
        res.writeHead(200,{'Content-Type':'application/json'})
        res.end(JSON.stringify(results))
    })
}

module.exports = {bukulib}