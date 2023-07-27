const item=document.querySelector('.in_1');
const item1=document.querySelector('.in_2');
const item2=document.querySelector('.in_3');

item.style.cursor="pointer";
item1.style.cursor="pointer";
item2.style.cursor="pointer";

item.addEventListener('mouseover', ()=>{
      item.style.marginTop = "-11.2rem";
      item.style.transition="All 0.8s";

})

item.addEventListener('mouseout', ()=>{
    item.style.marginTop = "-4.1rem";
    item.style.transition="All 0.4s";
})

//item1
item1.addEventListener('mouseover', ()=>{
    item1.style.marginTop = "-11.2rem";
    item1.style.transition="All 0.8s";

})

item1.addEventListener('mouseout', ()=>{
  item1.style.marginTop = "-4.1rem";
  item1.style.transition="All 0.4s";
})

//item2
item2.addEventListener('mouseover', ()=>{
    item2.style.marginTop = "-11.2rem";
    item2.style.transition="All 0.8s";

})

item2.addEventListener('mouseout', ()=>{
  item2.style.marginTop = "-4.1rem";
  item2.style.transition="All 0.4s";
})