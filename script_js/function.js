const fs = require('fs');
// Membuat sessions
const sessions = {};

// Fungsi untuk mengambil sessionsId dari cookie dan mengecek apakah sessionsId valid
function ambilSesiId(req){
    const cookies = req.headers.cookie;
    return cookies ? cookies.split('=')[1] : null;
}

// Membuat sebuah id session secara unik
function buatIdSessions() {
    return (Math.random()*49 + 1).toString();
}

// Fungsi untuk mengambil sessionsId dari cookie dan mengecek apakah sessionsId valid
function cekKuki(req){
    const cookies = req.headers.cookie;
    const sessionsId = cookies ? cookies.split('=')[1] : null;
    return sessionsId && sessions[sessionsId] ? true : false;
}

// Fungsi untuk membaca file HTML
const routingHtml = (filePath, res) => {
    fs.readFile(filePath, (err, data) => {
        if (err) {
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.write('<h1>File Not Found</h1>');
        } else {
            res.writeHead(200, { 'Content-Type': 'text/html' });
            res.write(data);
        }
        res.end();
    });
};

// Fungsi untuk membaca file statis (CSS, JS, Gambar)
const routingStatic = (filePath, contentType, res) => {
    fs.readFile(filePath, (err, data) => {
        if (err) {
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.write('<h1>File Not Found</h1>');
        } else {
            res.writeHead(200, { 'Content-Type': contentType });
            res.write(data);
        }
        res.end();
    });
};

// Fungsi untuk menentukan Content-Type berdasarkan ekstensi file
const getContentType = (extname) => {
    if (extname === '.css') {
        return 'text/css';
    } else if (extname === '.js') {
        return 'application/javascript';
    } else if (extname === '.png') {
        return 'image/png';
    } else if (extname === '.jpg') {
        return 'image/jpeg';
    }
    return 'text/html'; 
};

module.exports = {
    ambilSesiId,
    buatIdSessions,
    cekKuki,
    routingHtml,
    routingStatic,
    getContentType,
    sessions
};