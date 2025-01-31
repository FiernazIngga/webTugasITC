const {buatIdSessions} = require('../../script_js/function')

function loginUser(req,res,db, sessions){
    let dataLogin = '';
    req.on('data', chunk => dataLogin += chunk);
    req.on('end', () => {
        const dataLoginUser = JSON.parse(dataLogin);
        const sqlLogin = "SELECT * FROM user WHERE username = ? AND password = ?"; 
        db.query(sqlLogin, [dataLoginUser.username, dataLoginUser.passUser], (err, results) => {
            if (results.length === 1) {
                const sessionsId = buatIdSessions();
                sessions[sessionsId] = dataLoginUser.username;
                console.log(sessions[sessionsId], 'ini sessions')
                res.setHeader('Set-Cookie', `sessionsId=${sessionsId}; Path=/; HttpOnly; Max-Age=3600`);
                res.writeHead(200, { 'Content-Type': 'application/json' });
                res.end(JSON.stringify({
                    sukses: "user"
                }));
            } else {
                if (dataLoginUser.username === 'admin' && dataLoginUser.passUser === '123') {
                    res.writeHead(200, { 'Content-Type': 'application/json' });
                    res.end(JSON.stringify({
                        sukses: "admin"
                    }));
                } else {
                    res.writeHead(200, { 'Content-Type': 'application/json' });
                    res.end(JSON.stringify({
                        sukses: "tidakAda"
                    }));
                }
            }
        });
    });
}

module.exports = {loginUser};