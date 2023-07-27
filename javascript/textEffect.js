const i1=document.querySelector(".i1");
const item1=document.getElementById('item_1');
const St1=document.querySelector('.St1');

const i2=document.querySelector(".i2");
const item2=document.getElementById('item_2');
const St2=document.querySelector('.St2');
function item_1(){
item1.addEventListener('mouseover', ()=>{
    
   i1.style.display="block";
   item1.style.filter = "brightness(60%)";
   item1.style.filter = "blur(0.9px)";
   St1.style.display="block";
   i1.style.filter = "brightness(150%)";
   item1.style.width="31vw";
   item1.style.height="26rem";

})

item1.addEventListener('mouseout', ()=>{
    item1.style.filter = "none";
    i1.style.display="none";
    St1.style.display="none";
    item1.style.width="24vw";
    item1.style.height="25rem";
 
 })

 St1.addEventListener('mouseover', ()=>{
   St1.style.background="yellow";
   i1.style.display="block";
   item1.style.filter = "brightness(60%)";
   item1.style.filter = "blur(1px)";
   St1.style.display="block";
   i1.style.filter = "brightness(150%)";
   item1.style.width="31vw";
})

St1.addEventListener('mouseout', ()=>{
 St1.style.background="white";
 i1.style.display="block";
 item1.style.filter = "brightness(60%)";
 item1.style.filter = "blur(1px)";
 St1.style.display="block";
 i1.style.filter = "brightness(150%)";
 item1.style.width="24vw";

})
}
item_1();

function item_2(){
 item2.addEventListener('mouseover', ()=>{
    i2.style.display="block";
    item2.style.filter = "brightness(10%)";
    item2.style.filter = "blur(1px)";
    St2.style.display="block";
    i2.style.filter = "brightness(150%)";
    item2.style.width="31vw";
    item2.style.height="26rem";
 
 })
 
 item2.addEventListener('mouseout', ()=>{
     item2.style.filter = "none"; 
     i2.style.display="none";
     St2.style.display="none";
     item2.style.width="24vw";
     item2.style.height="25rem";
  
  })

  St2.addEventListener('mouseover', ()=>{
     
     i2.style.display="block";
     item2.style.filter = "brightness(60%)";
     item2.style.filter = "blur(1px)";
     St2.style.display="block";
     i2.style.filter = "brightness(150%)";
     item2.style.width="31vw";
  })

  St2.addEventListener('mouseout', ()=>{
   
   i2.style.display="block";
   item2.style.filter = "brightness(60%)";
   item2.style.filter = "blur(1px)";
   St2.style.display="block";
   i2.style.filter = "brightness(150%)";
   item2.style.width="24vw";
})

 
 
}
item_2();
 