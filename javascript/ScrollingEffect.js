function ratio1(){

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
        entry.target.classList.add('show_');
    
      }

      else   if (entry.intersectionRatio < ratio){ 
        entry.target.classList.remove('show_')
    
      }

      
    })
  }
  const observer= new IntersectionObserver(handleIntersect,options)
 document.querySelectorAll('.hide_').forEach(function(h){
observer.observe(h);
  })
}
ratio1();

