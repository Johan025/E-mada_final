const menu=document.querySelector('.icone_menu');
const nav=document.querySelector('.header_contain');
const header=document.querySelector('#header');
const ul=document.querySelector('#ul');

menu.addEventListener('click', ()=>{
        nav.classList.toggle('hideshow');
        header.style.zIndex='100';   
        ul.classList.toggle('h2');
});