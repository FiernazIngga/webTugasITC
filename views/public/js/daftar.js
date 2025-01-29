const form = document.querySelector('#formDaftar')
form.addEventListener('submit', function() {
    event.preventDefault()

    const nama_lengkap = document.querySelector('#namaLengkap').value
    const email_user = document.querySelector('#email').value
    const username = document.querySelector('#username').value
    const password_user = document.querySelector('#password').value

    const dataUser = { 
        nama_lengkap, 
        email_user, 
        username,
        password_user
    }

    fetch('/mysql/user/daftar', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(dataUser)
    })
    .then(respon => respon.json())
    .then(responData => {
        console.log(responData)
        if(responData.bool_user){
            alert(`Halo Kakkk ${responData.pesan_user}`)
            window.location.href = '/login';      
        } else {
            alert(`Halo Kakkk ${responData.pesan_user}`)
        }
    })
})