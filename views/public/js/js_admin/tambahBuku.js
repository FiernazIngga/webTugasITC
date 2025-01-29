const kembali = document.querySelector('.kembali');
const tambah = document.querySelector('.tambah');

kembali.addEventListener('click', function(){
    const konfirm = confirm('Apakah anda akan kembali?')
    konfirm ? window.location.href = '/admin/editbukuadmin' : window.location.href = '/admin/tambahBuku';
})

tambah.addEventListener('click', function(){
    const konfirmasiTambah = confirm('Apakah data yang anda masukkan sudah benar??')
    if (konfirmasiTambah) {
        event.preventDefault()

        const judul = document.querySelector('#judul').value
        const genre = document.querySelector('#genre').value
        const penulis = document.querySelector('#penulis').value
        const penerbit = document.querySelector('#penerbit').value
        const tahun = document.querySelector('#tahun').value
        const isi = document.querySelector('#isi').value
        
        const tambahBuku = {
            judul,genre,penulis,penerbit,tahun,isi
        }

        fetch('/mysql/admin/tambah',{
            method: 'POST',
            headers: {'Content-Type':'application/json'},
            body: JSON.stringify(tambahBuku)
        })
        .then(respons => respons.json())
        .then(respon => {
            if (respon.message === 'error') {
                alert('Gagal Menambah Buku')
            } else {
                const konfirmBerhasil = confirm('Anda berhasil menambah buku, apakah anda ingin tetap dihalaan?')
                konfirmBerhasil ? window.location.href = '/admin/tambahBuku' : window.location.href = '/admin/editbukuadmin'
            }
        })
    }
})