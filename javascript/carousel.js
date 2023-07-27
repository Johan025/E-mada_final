var myIndex = 0;
carousel();

function carousel() {
  var i;
  let prev=document.querySelector('.prev');
  let next=document.querySelector('.next');
  let item = document.getElementsByClassName("mySlides");
      
         prev.addEventListener("click", ()=>{
          console.log("ok")
          for (i = 0; i < item.length; i++) {
            item[i].style.transform="translateX(00%)";  
          }
          myIndex++;
         });
        
         next.addEventListener("click", ()=>{
          console.log("ok")
          for (i = 0; i < item.length; i++) {
            item[i].style.transform="translateX(-120%)";   
          }
          myIndex++;
         });

  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
 
}