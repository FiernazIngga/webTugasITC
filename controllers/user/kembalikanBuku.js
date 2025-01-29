function kembalikanBuku(req, res, db, sessions, ambilSesiId, url){
    const sqlUser = 'SELECT id FROM user WHERE username = ?';
    let username = sessions[ambilSesiId(req)]
    db.query(sqlUser,[username],(err,result) => {
        const kembalikan = 'DELETE FROM pinjambuku WHERE idUser = ? AND idBuku = ?';
        let buku = url.split('/')[4]
        db.query(kembalikan,[result[0].id,buku], (err) => {
            if (!err) {
                res.writeHead(302,{'Content-Type':'text/html'})
                res.end(`
                    <html>
                        <head>
                            <script>
                                alert('Buku berhasil di kembalikan')
                                window.location.href="/user/baca"
                            </script>
                        </head>
                    </html>
                    `)
            } else {
                res.writeHead(302,{'Content-Type':'text/html'})
                res.end(`
                    <html>
                        <head>
                            <script>
                                alert('Buku gagal di kembalikan')
                                window.location.href="/user/baca"
                            </script>
                        </head>
                    </html>
                    `)
            }
        })
    })
}

module.exports = {kembalikanBuku}