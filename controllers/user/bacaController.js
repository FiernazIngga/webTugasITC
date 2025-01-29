function bacaBuku(req, res, db, sessions, ambilSesiId, url){
    const sql = 'SELECT id FROM user WHERE username = ?';
    let username = sessions[ambilSesiId(req)]
    db.query(sql,[username],(err,result) => {
        let idUser = result[0].id
        const buku = 'SELECT  b.idBuku ,b.judul, b.genre, b.penulis, b.penerbit, b.tahun FROM buku b JOIN pinjambuku p ON p.idBuku = b.idBuku WHERE p.idUser = ?';
        db.query(buku,[idUser], (err,results) => {
            console.log(results, 'ini hasil query join')
            res.writeHead(200,{'Content-Type':'application/json'})
            res.end(JSON.stringify(results))
        })
    })
}

module.exports = {bacaBuku}