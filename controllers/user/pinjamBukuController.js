function pinjamBuku(req, res, db, sessions, ambilSesiId, url){
    const sqlPinjam = 'INSERT INTO pinjambuku (idUser,idBuku) VALUES (?,?)';
    const sqlUser = 'SELECT id FROM user WHERE username = ?';
    let idBuku = url.split('/')[4]
    console.log(idBuku, 'ini id buku')
    db.query(sqlUser,[sessions[ambilSesiId(req)]],(err,results) => {
        console.log(results[0].id, 'ini id user')
        idUser = results[0].id;
        db.query('SELECT * FROM pinjambuku WHERE idUser = ? AND idBuku = ?',[idUser,idBuku],(err,results) => {
            if (results.length >= 1) {
                res.writeHead(302,{'Content-Type':'text/html'})
                res.end(`
                    <html>
                        <head>
                            <title>Sudah Pinjam</title>
                            <script>
                                alert('Anda sudah meminjam buku tersebut, pinjam buku yang lain!!')
                                window.location.href="/user/buku"
                            </script>
                        </head>
                    </html>
                    `)
            } else {
                db.query(sqlPinjam,[idUser,idBuku],(err) => {
                    if (!err) {
                        res.writeHead(302,{'Content-Type':'text/html'})
                        res.end(`
                            <html>
                                <head>
                                    <title>Pinjam Buku</title>
                                    <script type="text/javascript">
                                        alert("Buku berhasil dipinjam!");
                                        window.location.href = '/user/buku';
                                    </script>
                                </head>
                            </html>
                            `)
                    }
                })
            }
        })
    })
}

module.exports = {pinjamBuku}