function tampBacaBuku(req, res, db, sessions, ambilSesiId, url){
    let idBukuUser = url.split('/')[4]
    let sql = 'SELECT * FROM buku WHERE idBuku = ?';
    db.query(sql,[idBukuUser],(err,result) => {
        res.writeHead(302,{'Content-Type':'text/html'})
        res.end(`
            <!DOCTYPE html>
            <html lang="en">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link rel="stylesheet" href="/styletes.css">
            </head>
            <body>
                <div class="pemberitahuan">
                    <h1>Genre: <span>${result[0].genre}</span></h1>
                    <h1>Penulis: <span>${result[0].penulis}</span></h1>
                    <h1>Penerbit: <span>${result[0].penerbit}</span></h1>
                    <h1>Tahun Terbit: <span>${result[0].tahun}</span></h1>
                </div>
                <div class="kembali">
                    <a href="/user/baca">Kembali</a>
                </div>
                <div class="isiBuku">
                    <h1>${result[0].judul}</h1>
                    <p>${result[0].isi}</p>
                </div>
            </body>
            </html>
            `)
    })
}

module.exports = {tampBacaBuku}