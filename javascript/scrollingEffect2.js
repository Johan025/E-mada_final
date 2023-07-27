function ratio2(){

    const ratio= .58;
  
    const options={
      root:null,
      rootMargin:'0px',
      threshold:ratio,
    }
  
    const handleIntersect= function (entries,observer) {
      entries.forEach(function (entry){
        console.log(entry.intersectionRatio );
        if (entry.intersectionRatio > ratio){ 
          entry.target.classList.add('show_1');
      
        }
  
        else   if (entry.intersectionRatio < ratio){ 
          entry.target.classList.remove('show_1')
      
        }
  
        
      })
    }
    const observer= new IntersectionObserver(handleIntersect,options)
   document.querySelectorAll('.hide_1').forEach(function(h){
  observer.observe(h);
    })
  }
  ratio2();
  
  