function daftarUser(req,res,db){
    let data = '';
    req.on('data', chunk => data += chunk);
    req.on('end', () => {
        const dataUser = JSON.parse(data);
        let queryAdd = "INSERT INTO user ( namaLengkap, emailUser, username, password ) VALUES (?,?,?,?)";
        let querySelect = "SELECT * FROM user WHERE username = ?"
        db.query(querySelect,[dataUser.username],(err, results) => {
            if (err) {
                console.log(err); 
                res.writeHead(500, { 'Content-Type': 'application/json' });
                res.end(JSON.stringify({ 
                    bool_errorB: false,
                    pesan_error: 'Server Error'
                }));
                return;
            }
            if (results.length === 0) {
                res.writeHead(200, {'Content-Type':'application/json'});
                res.end(JSON.stringify({
                    bool_user: true,
                    pesan_user: 'Daftar Anda Berhasill!!'
                })); 
                db.query(queryAdd, [
                    dataUser.nama_lengkap,
                    dataUser.email_user,
                    dataUser.username,
                    dataUser.password_user
                ]);                 
            } else {
                res.writeHead(200, {'Content-Type':'application/json'});
                res.end(JSON.stringify({
                    bool_user: false,
                    pesan_user: 'Username Telah Dipakai, Gunakan Username Yang Lain!!'
                }));
            }
        })
    });
}

module.exports = {daftarUser}