const hamburger = document.querySelector(".menuAktif");
const hamAtas = document.querySelector(".hatas");
const hamBawah = document.querySelector(".hbawah");
const hamTengah = document.querySelector(".htengah");
const navBar = document.querySelector(".menuHp");
const navigasi = document.querySelector(".navigation");
const bgNavMob = document.querySelector('.navigation .container .box-navigation .box:nth-child(2)');
const fiturbtn = document.querySelector('#btnpenghilang');
const munculFitur = document.querySelector('#munculFitur');
const preloader = document.querySelector(".preloader");
const h1preloder = document.querySelector('.iniPreloaderh1');

window.addEventListener('DOMContentLoaded', function(){
  setTimeout(() => {
    h1preloder.style.opacity = '1';
  }, 100);
  setTimeout(() => {
    h1preloder.style.transition = 'all 1s';
    h1preloder.style.opacity = '0';
  }, 2000);
  setTimeout(() => {
    preloader.style.transform = 'translate(0%, -100%)';
  }, 3000);
  setTimeout(() => {
    document.querySelector('.gambarGerakHome img').style.opacity = '1';
    document.querySelector('.h1Home').style.opacity = '1';
    document.querySelector('.h1Home').style.transform = 'translateX(0)';
    document.querySelector('.h2Home').style.opacity = '1';
    document.querySelector('.h2Home').style.transform = 'translateX(0)';
  }, 3000);
  const abouts = document.querySelectorAll('.about'); 
  function cekAbout() {
    abouts.forEach(about => {
      const cekabout = about.getBoundingClientRect();
      if (cekabout.top >= 0 && cekabout.bottom <= window.innerHeight) {
        document.querySelector('.about1').style.opacity = '1';
        document.querySelector('.about1').style.transform = 'translateY(0)';
        document.querySelector('.about2').style.opacity = '1';
        document.querySelector('.about2').style.transform = 'translatex(0)';
        document.querySelector('.about3').style.opacity = '1';
        document.querySelector('.about3').style.transform = 'translatex(0)';
      }
    });
  }
  window.addEventListener('scroll', cekAbout);
  const fiturs = document.querySelectorAll('.fiturr');
  function cekFitur(){
    fiturs.forEach(fitur => {
      const cekfitur = fitur.getBoundingClientRect();
      if (cekfitur.top >= 0 && cekfitur.bottom <= innerHeight) {
        document.querySelector('.judulFitur').style.opacity = '1';
        document.querySelector('.judulFitur').style.transform = 'translateY(0)';
        document.querySelector('.fitur1').style.opacity = '1';
        document.querySelector('.fitur1').style.transform = 'translateX(0)';
        document.querySelector('.fitur2').style.opacity = '1';
        document.querySelector('.fitur2').style.transform = 'translateX(0)';
        document.querySelector('.fitur3').style.opacity = '1';
        document.querySelector('.fitur3').style.transform = 'translateX(0)';
        document.querySelector('.fitur4').style.opacity = '1';
        document.querySelector('.fitur4').style.transform = 'translateX(0)';
        document.querySelector('.fitur5').style.opacity = '1';
        document.querySelector('.fitur5').style.transform = 'translateX(0)';
        document.querySelector('.fitur6').style.opacity = '1';
        document.querySelector('.fitur6').style.transform = 'translateX(0)';
      }
    })
  }
  window.addEventListener('scroll', cekFitur);
})

let hGerak = false;


hamburger.addEventListener("click", function() {
  navBar.classList.toggle("menuActive");
  hGerak = !hGerak;
  hGerak ? hamAtas.style.transform = "rotate(35deg)" : hamAtas.style.transform = "rotate(0deg)";
  hGerak ? hamBawah.style.transform = "rotate(-35deg)" : hamBawah.style.transform = "rotate(0deg)";
  hGerak ? hamTengah.style.opacity = "0" : hamTengah.style.opacity = "1";
});

document.addEventListener("click", function(event) {
  if (!navBar.contains(event.target) && !hamburger.contains(event.target) && hGerak) {
    navBar.classList.toggle("menuActive");
    hGerak = false;
    hamAtas.style.transform = "rotate(0deg)";
    hamBawah.style.transform = "rotate(0deg)";
    hamTengah.style.opacity = "1";
  }
});

fiturbtn.addEventListener('click', function() {
  munculFitur.classList.toggle("displayFitur");
  fiturbtn.style.display = "none";
});
