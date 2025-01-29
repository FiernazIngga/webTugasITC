const nama = document.querySelector('.nama');
const hamburger = document.querySelector('.container-nav .hamburger');
const menu = document.querySelector('.container-nav div:nth-child(2) ul');
const hamAtas = document.querySelector(".atas");
const hamBawah = document.querySelector(".bawah");
const hamTengah = document.querySelector(".tengah");
const logoutBtn = document.querySelector('#logout');

let cek = false;

hamburger.addEventListener('click', function() {
    cek = !cek;
    !cek ? menu.style.maxHeight = '0em':menu.style.maxHeight = '14em';
    cek ? hamAtas.style.transform = "rotate(35deg)" : hamAtas.style.transform = "rotate(0deg)";
    cek ? hamBawah.style.transform = "rotate(-35deg)" : hamBawah.style.transform = "rotate(0deg)";
    cek ? hamTengah.style.opacity = "0" : hamTengah.style.opacity = "1";
})

fetch('/user/action/dasbord')
.then(respon => respon.json())
.then(respon => {
    nama.innerHTML = respon.namaLengkap;
})


logoutBtn.addEventListener('click', function(){
    const log = confirm('Apakah anda yakin ingin log out?');
    log?logout():alert('Anda tidak jadi logout');
})

import {logout} from '../logout.js';