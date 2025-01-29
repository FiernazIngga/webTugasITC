function hapusBuku(res,req,db,url){
    let sql = 'DELETE FROM buku WHERE idBuku = ?';
    let id = url.split('/')[4];
    db.query(sql,[id],err => {
        if (!err) {
            res.writeHead(302,{'Location':'/admin/editbukuadmin'});
            res.end();
        }
    })
}

module.exports = {hapusBuku}