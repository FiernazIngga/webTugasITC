const mysql = require('mysql')

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'belajar',
})

db.connect((err) => {
    if (err) {
        console.error('Gagal terhubung dengan database ' + err.stack)
    } else {
        console.log('Database berhasil terhubung')
    }
})

module.exports = db