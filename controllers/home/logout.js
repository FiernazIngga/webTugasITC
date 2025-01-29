function logOutUser(res){
    res.setHeader('Set-Cookie', `sessionsId=; Path=/; HttpOnly; Max-Age=0`);
    res.writeHead(200,{'Location':'/login'});
    res.end()
}

module.exports = {logOutUser};