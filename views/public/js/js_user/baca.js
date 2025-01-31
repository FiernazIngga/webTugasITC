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

fetch('/user/action/baca')
.then(respon => respon.json())
.then(respon => {
    console.log(respon, 'Ini respon dari server untuk baca buku')
    const tbody = document.querySelector('.tbody')
    respon.forEach(dataBuku => {
        let judul1 = dataBuku.judul.split(' ')[0]
        let judul2 = dataBuku.judul.split(' ')[1]
        judul2 = judul2 ? dataBuku.judul.split(' ')[1]+'.........' : ''
        let genre = dataBuku.genre.split(' ')[0]
        let penulis = dataBuku.penulis.split(' ')[0]
        let tr = `
        <tr>
            <td>${judul1 + ' ' + judul2}</td>
            <td class="genre">${genre}</td>
            <td class="penerbit">${penulis}</td>
            <td>${dataBuku.penerbit}</td>
            <td class="tahunTerbit">${dataBuku.tahun}</td>
            <td class="tdbaca">
                <div class="baca">
                    <a href="/user/action/bacaBuku/${dataBuku.idBuku}" >Baca</a>
                </div>
                <p>|</p>
                <div class="baca">
                    <a href="/user/action/kembalikanBuku/${dataBuku.idBuku}" >Kembalikan</a>
                </div>
            </td>
        </tr>
        `;
        tbody.innerHTML += tr;
    });
})


logoutBtn.addEventListener('click', function(){
    const log = confirm('Apakah anda yakin ingin log out?');
    log ? logout() : alert('Anda tidak jadi logout');
})

import {logout} from '../logout.js';