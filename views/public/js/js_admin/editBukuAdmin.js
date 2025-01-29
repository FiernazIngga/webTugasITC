const hamburger = document.querySelector('.hamburger');
const gAtas = document.querySelector('.garisAtas');
const gTengah = document.querySelector('.garisTengah');
const gBawah = document.querySelector('.garisBawah');
const home = document.querySelectorAll('.home');
const navbar = document.querySelector('#navbar');
const logoutBtn = document.querySelector('#logout');
const tambah = document.querySelector('.tambah');



let burger = true
hamburger.addEventListener('click', function(){
    burger = !burger

    burger ? hamburger.style.transform = 'translateX(5px)' : hamburger.style.transform = 'translateX(12em)';
    burger ? gAtas.style.transform = 'rotate(0deg)' : gAtas.style.transform = 'rotate(40deg)';
    burger ? gTengah.style.opacity = '1' : gTengah.style.opacity = '0';
    burger ? gBawah.style.transform = 'rotate(0deg)' : gBawah.style.transform = 'rotate(-40deg)';
    for (let i = 0; i < home.length; i++) {
        burger ? home[i].style.width = '2.2em' : home[i].style.width = '13.5em';
    }
    burger ? navbar.style.width = '3.6em' : navbar.style.width = '15em';
})

logoutBtn.addEventListener('click', function(){
    const log = confirm('Apakah anda yakin ingin log out?');
    log? window.location.href = '/login' : alert('Anda tidak jadi logout');

})

tambah.addEventListener('click', function(){
    window.location.href = '/admin/tambahBuku'; 
})

fetch('/mysql/admin/lihatDaftarBuku')
.then(respons => respons.json())
.then(respon => {
    console.log(respon)
    const tabelBodi = document.querySelector('.bodiTabel')

    respon.forEach(dataBuku => {
        const tr = `
        <tr>
            <td>${dataBuku.judul}</td>
            <td class="genre">${dataBuku.genre}</td>
            <td class="penerbit">${dataBuku.penulis}</td>
            <td>${dataBuku.penerbit}</td>
            <td>${dataBuku.tahun}</td>
            <td class="hapus">
                <a id="iniHapus" href="/mysql/admin/hapus/${dataBuku.idBuku}" >Hapus</a>
            </td>
        </tr>
        `;
        tabelBodi.innerHTML += tr
    });
})