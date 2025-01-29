function tamProfilUser(req, res, db, sessions, ambilSesiId){
    db.query('SELECT * FROM user WHERE username = ?', [sessions[ambilSesiId(req)]], (err, results) => {
        if (err) {
            res.writeHead(500, {'Content-Type': 'application/json'});
            res.end(JSON.stringify({ error: 'Terjadi kesalahan saat mengambil data pengguna' }));
        } else {
            res.writeHead(200, {'Content-Type': 'application/json'});
            res.end(JSON.stringify(results[0]));
        }
    });
}

module.exports = {tamProfilUser}