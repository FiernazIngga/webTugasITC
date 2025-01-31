const fs = require('fs');
const sessions = {};

function ambilSesiId(req){
    const cookies = req.headers.cookie;
    return cookies ? cookies.split('=')[1] : null;
}

function buatIdSessions() {
    return (Math.random()*49 + 1).toString();
}

function cekKuki(req){
    const cookies = req.headers.cookie;
    const sessionsId = cookies ? cookies.split('=')[1] : null;
    return sessionsId && sessions[sessionsId] ? true : false;
}

// Fungsi untuk membaca file HTML
const routingHtml = (filePath, res) => {
    fs.readFile(filePath, (err, data) => {
        res.writeHead(200, { 'Content-Type': 'text/html' });
        res.write(data);
        res.end();
    });
};

const routingStatic = (filePath, contentType, res) => {
    fs.readFile(filePath, (err, data) => {
        if (err) {
            res.writeHead(302, { 'Content-Type': 'text/html' });
            res.end(`
                <html>
                    <head>
                        <script>
                            window.location.href="/error"
                        </script>
                    </head>
                </html>
                `)
        } else {
            res.writeHead(200, { 'Content-Type': contentType });
            res.write(data);
            res.end();
        }
    });
};

const getContentType = (extname) => {
    if (extname === 'css') {
        return 'text/css';
    } else if (extname === 'js') {
        return 'application/javascript';
    } else if (extname === 'png') {
        return 'image/png';
    } else if (extname === 'jpg') {
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