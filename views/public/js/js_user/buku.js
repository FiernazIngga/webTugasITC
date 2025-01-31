const nama = document.querySelector('.nama');
const hamburger = document.querySelector('.container-nav .hamburger');
const menu = document.querySelector('.container-nav div:nth-child(2) ul');
const hamAtas = document.querySelector(".atas");
const hamBawah = document.querySelector(".bawah");
const hamTengah = document.querySelector(".tengah");
const logoutBtn = document.querySelector('#logout');
const submit = document.querySelector('#cari');
const filter = document.querySelector('.filter');
const lihat = document.querySelectorAll('.lihat');
const iniLihat = document.querySelector('.iniLihat');
const kembali = document.querySelector('.kembali');

let cek = false;

hamburger.addEventListener('click', function() {
    cek = !cek;
    !cek ? menu.style.maxHeight = '0em':menu.style.maxHeight = '14em';
    cek ? hamAtas.style.transform = "rotate(35deg)" : hamAtas.style.transform = "rotate(0deg)";
    cek ? hamBawah.style.transform = "rotate(-35deg)" : hamBawah.style.transform = "rotate(0deg)";
    cek ? hamTengah.style.opacity = "0" : hamTengah.style.opacity = "1";
})

fetch('/user/action/buku')
.then(respons => respons.json())
.then(respons => {
    console.log(respons)
    const bodyCard = document.querySelector('.containerBuku')
    respons.forEach(bukuData => {
        let genre1 = bukuData.genre.split(' ')[0]
        let koma = genre1.replace(',',' ')
        let penulis = bukuData.penulis.split(' ')[0]
        let card = `
        <div class="cardBuku">
            <div class="dotfitur">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
            <div class="cardImage">
                <h1>${bukuData.judul}</h1>
            </div>
            <div class="keteranganBuku">
                <h1>${koma}</h1>
                <div class="garisBuku"></div>
                <h1>${penulis}</h1>
            </div>
            <div class="aksiBuku">
                <a href="/user/action/pinjam/${bukuData.idBuku}" type="menu" class="pinjam">Pinjam</a>
            </div>
        </div>
        `;
        bodyCard.innerHTML += card;
    })
})


logoutBtn.addEventListener('click', function(){
    const log = confirm('Apakah anda yakin ingin log out?');
    log ? logout() : alert('Anda tidak jadi logout');
})

import {logout} from '../logout.js';