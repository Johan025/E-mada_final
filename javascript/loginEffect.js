
const ratio= .6;
  
const options={
  root:null,
  rootMargin:'0px',
  threshold:ratio,
}

const handleIntersect= function (entries,observer) {
  entries.forEach(function (entry){
    console.log(entry.intersectionRatio );
    if (entry.intersectionRatio > ratio){ 
      entry.target.classList.add('effect')
  
    }

    else   if (entry.intersectionRatio < ratio){ 
     entry.target.classList.remove('effect')
  
    }

    
  })
}
const observer= new IntersectionObserver(handleIntersect,options)
document.querySelectorAll('.hideshow').forEach(function(h){
observer.observe(h);
})




const bouton=document.querySelector('.button_inscription');
const sign=document.querySelector('.signup');
const connect=document.querySelector('.login');
const retour=document.querySelector('.button_connecter');
const cache=document.querySelector('.erreur');
const sign_=document.querySelector('#sign');
const login_=document.querySelector('#login');

bouton.addEventListener('click', ()=>{
 sign.style.display="block";
  connect.style.display="none";
  login_.style.display="block";
  sign_.style.display="none";
 
});

retour.addEventListener('click', ()=>{
  sign.style.display="none";
  connect.style.display="block";
  login_.style.display="none";
  sign_.style.display="block";
});




