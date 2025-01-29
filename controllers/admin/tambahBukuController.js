function tambahBuku(req,res,db){
    let data = ''
    req.on('data', buku => {
        data += buku
    })
    req.on('end', () => {
        const dataBuku = JSON.parse(data)
        const perintahSql = 'INSERT INTO buku ( judul, genre, penulis, penerbit, tahun, isi ) VALUES (?,?,?,?,?,?)';
        db.query(perintahSql,[
            dataBuku.judul,
            dataBuku.genre,
            dataBuku.penulis,
            dataBuku.penerbit,
            dataBuku.tahun,
            dataBuku.isi
        ], (err) => {
            if (err) {
                res.writeHead(200, {'Content-Type':'application/json'})
                res.end(JSON.stringify({message: 'error'}))
            } else {
                res.writeHead(200,{'Content-Type':'application/json'})
                res.end(JSON.stringify({message: 'ga error'}))
            }
        })
    })
}

module.exports = {tambahBuku}