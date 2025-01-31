const db = require('./script_js/db');
const http = require('http');
const path = require('path');
const port = 8080;
const fs = require('fs')

const {daftarUser} = require('./controllers/home/daftarController')
const {loginUser} = require('./controllers/home/loginController')
const {getContentType, cekKuki, routingHtml, routingStatic, sessions, ambilSesiId} = require('./script_js/function')
const {tampDasbordUser} = require('./controllers/user/dasbord')
const {tamProfilUser} = require('./controllers/user/profil')
const {bukulib} = require('./controllers/user/bukuController')
const {bacaBuku} = require('./controllers/user/bacaController')
const {pinjamBuku} = require('./controllers/user/pinjamBukuController')
const {kembalikanBuku} = require('./controllers/user/kembalikanBuku')
const {tampBacaBuku} = require('./controllers/user/tampBacaBuku')
const {logOutUser} = require('./controllers/home/logout')
const {tambahBuku} = require('./controllers/admin/tambahBukuController')
const {lihatDaftarBukuController} = require('./controllers/admin/lihatDaftarBukuController')
const {hapusBuku} = require('./controllers/admin/hapusBukuController')

http.createServer((req, res) => {
    const url = req.url;
    console.log(url, 'ini url')
    let ekstensi = url.split('.');

    if (url === '/') {
        routingHtml('./index.html', res);
    } else if (url === '/error') {
        routingHtml('./error.html', res);
    } else if (url === '/login') {
        routingHtml('./views/sign/login.html', res);
    } else if (url === '/daftar') {
        routingHtml('./views/sign/daftar.html', res);
    } else if (url === '/user/dasbord') {
        cekKuki(req) ? routingHtml('./views/sign/user/dasbord.html', res) : (res.writeHead(302, {'Location': '/login'}), res.end());
    } else if (url === '/user/buku') {
        cekKuki(req) ? routingHtml('./views/sign/user/buku.html', res) : (res.writeHead(302, {'Location': '/login'}), res.end());
    } else if (url === '/user/baca') {
        cekKuki(req) ? routingHtml('./views/sign/user/baca.html', res) : (res.writeHead(302, {'Location': '/login'}), res.end());
    } else if (url === '/user/profil') {
        cekKuki(req) ? routingHtml('./views/sign/user/profilUser.html', res) : (res.writeHead(302, {'Location': '/login'}), res.end());
    } else if(url.includes('/user/action')) {
        let action = url.split('/')[3];
        switch (action) {
            case 'dasbord':
                tampDasbordUser(req, res, db, sessions, ambilSesiId);
                break;
            case 'profil':
                tamProfilUser(req, res, db, sessions, ambilSesiId);
                break;
            case 'logout':
                logOutUser(res);
                break;
            case 'buku':
                bukulib(req, res, db, sessions, ambilSesiId);
                break;
            case 'pinjam':
                pinjamBuku(req, res, db, sessions, ambilSesiId, url);
                break;
            case 'baca':
                bacaBuku(req, res, db, sessions, ambilSesiId, url);
                break;
            case 'bacaBuku':
                tampBacaBuku(req, res, db, sessions, ambilSesiId, url);
                break;
            case 'kembalikanBuku':
                kembalikanBuku(req, res, db, sessions, ambilSesiId, url);
                break;
        }
    } else if (url === '/admin/dasbordadmin') {
        routingHtml('./views/sign/admin/dasbordAdmin.html', res);
    } else if (url === '/admin/editbukuadmin') {
        routingHtml('./views/sign/admin/editBukuAdmin.html', res);
    } else if (url === '/admin/tambahBuku') {
        routingHtml('./views/sign/admin/tambahBuku.html', res);
    } else {
        if (url.includes('/mysql/user')) {
            let aksi = url.split('/')[3]
            if (aksi === 'daftar' && req.method === 'POST') {
                daftarUser(req,res,db);
            } else if (aksi === 'login' && req.method === 'POST'){
                loginUser(req, res, db, sessions);
            }
        } else if(url.includes('/mysql/admin')) {
            let aksiAdmin = url.split('/')[3]
            if (aksiAdmin === 'tambah' && req.method === 'POST') {
                tambahBuku(req,res,db);
            } else if (aksiAdmin === 'lihatDaftarBuku') {
                lihatDaftarBukuController(res,req,db);
            } else if (aksiAdmin === 'hapus') {
                hapusBuku(res,req,db,url);
            }
        } else {
            let filePath = '';
            let file = ekstensi[1];
            console.log(file, 'ini file')
            if (file === 'jpeg' || file === 'jpg' || file === 'png') {
                file = 'gambar';
            }
    
            switch (file) {
                case 'css':
                    filePath = path.join(__dirname, '/views/public/css' , url);
                    console.log(filePath, 'ini css');
                    break;
                case 'js':
                    filePath = path.join(__dirname, '/views/public/js' , url);
                    break;
                case 'gambar':
                    filePath = path.join(__dirname, '/views/public/gambar' , url);
                    break;
            }
            const contentType = getContentType(file);
            routingStatic(filePath, contentType, res);
        }
    }
}).listen(port, () => {
    console.log(`Server berjalan di http://localhost:${port}`);
});
