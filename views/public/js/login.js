document.querySelector('#formLogin').addEventListener('submit', function(){
    event.preventDefault()
    const username = document.querySelector('#username').value
    const passUser = document.querySelector('#password').value

    const dataUser = {username, passUser}

    fetch('/mysql/user/login', {
        method: 'POST',
        headers: {
            'Content-Type':'application/json',
        }, body: JSON.stringify(dataUser)
    })
    .then(respon => respon.json())
    .then(responData => {
        console.log(responData, "ini respon data")
        if(responData.sukses === 'user'){
            localStorage.setItem(`user_${username}`, JSON.stringify(responData.userLogin));
            console.log(localStorage.getItem(`user_${username}`), "ini local storage")
            window.location.href = '/user/dasbord';     
        } else if (responData.sukses === 'admin') {
            localStorage.setItem(`user_${username}`, JSON.stringify(responData.userLogin));
            console.log(localStorage.getItem(`user_${username}`), "ini local storage")
            window.location.href = '/admin/dasbordadmin'; 
        } else {
            alert(`Halo Kakkk Username atau Password kakak salah!!`)
        }
    })
})