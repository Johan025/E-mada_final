<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-MADA VISIT/Recherche Hotel</title>
    <link rel="stylesheet" href="./recherche_hotel.css">
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">

</head>
<body>

<?php
$bdPDO= new PDO('mysql:host=localhost;dbname=connexion','root','');

$bdPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); 
if (isset($_GET['search'])){//déclenchement des boutons

    $nomVille=$_GET['ville'];
   
    if (!empty($nomVille)){
$requete=$bdPDO->prepare("SELECT * FROM liste_hotel WHERE localisation='$nomVille'");

// $requete->bindvalue(":localisation",$nomVille);
$requete-> execute();
$BDexist=$requete ->rowCount();



if ($BDexist>0){

    $requete1=$bdPDO ->prepare("SELECT nom FROM liste_hotel WHERE localisation=? ");
    $requete1-> execute(array ($nomVille));
     $hotelTana = $requete1->fetchAll();
}

else{
    echo("erreur nous n' avons pas trouvé la ville");
}
}

else{
    echo"case vide";
}
}
?> 

    <header id="header" class="header">
        <div class="header_contain">
        <ul id="ul">
            <li><a href="./../menu/menu.php"  target="_self"><i class="fa fa-home"></i> ACCUEIL</a></li>
            <!-- <li><a href="#c" target="_self" id="circuit">Nos services</a></li> -->
              <li><a href="../menu/menu.php#circ"  target="_self" id="circuit">NOS DESTINATIONS</a></li>
            <li><a href="../menu/menu.php#blog" target="_self" id="circuit">BLOG</a></li>
            <li><a href="../menu/menu.php#propos" target="_self"><i class="fa fa-info">  A PROPOS</i></a></li>
            <li><a  target="_self" class="a1" ><i class="fa fa-search" id="search"> Rechercher</i></a></li>
            <li><a href="../menu/menu.php#contact"  class="contact"> Contact</a></li>
        </ul>
        </div>
        <div class="icone_menu"><i class="fa fa-bars"></i></div>
        <div class="logo"> <img src="../menu/assets/image/logo_.png" alt=""> E-MADA <span>VISIT</span></div>
      </header>

      <img src="./image/hotel.jpg" alt="" class="couverture">

      <div class="contain">
                <img src="./../image_itineraire/itineraire.png" alt="" class="affichage">
                <h1 class="h1"> Rechercher un hotel depuis la ville où vous êtes
                </h1>

      
          <form action="" method="get" onSubmit="Submit(event)">
                <div class="contain_">
                    <h3 class="p1">Recherche d' hotel</h3>

                    <h1 class="ddesc">Entrer le nom de la ville où vous vous trouvez</h1>

                    <h3 class="p2" id="result">Résultat de votre Recherche</h3>
                    
                    <h1 class="ddesc2">Liste des hotels correspondant à votre recherche pour "<?php echo "$nomVille"?>"</h1>
                    

                    <input type="text" name="ville" id="champ_recherche" placeholder="Entrez nom ville">
                
                    <a href="#affichage_"><input type="submit" value="Rechercher" name="search" class="rechercher" id="button_search"> </a>

                    <h1 id="or" class="or">- OU - </h1>

                  <a href="./../recherche_cooperative/cooperative.php"> <button class="cooperative">rechercher des  taxi- brousses</button></a>

            <textarea id="affichage_" id="" cols="30" rows="10">
                                            
                <?php
                    if (isset($hotelTana)){
                    foreach($hotelTana as $value): ?>

        <?= $value["nom"]; ?>    
                <?php endforeach;}
                else 
echo "Pas d' hotel pour ".$nomVille.""
                ?> 
                        
                        </textarea>

                       
                </div>

        </form>

      </div>

     <cript src="./script.js"></cript> 
     <script>
        const button=document.querySelector('.rechercher');
const back=document.querySelector('.back');
const p1=document.querySelector('.p1');
const p2=document.querySelector('.p2');
const desc1=document.querySelector('.ddesc');
const desc2=document.querySelector('.ddesc2');
const affichage=document.querySelector('#affichage_');
const champ=document.querySelector('#champ_recherche');
const button_search=document.querySelector('#button_search');
const or=document.querySelector('#or');
const cooperative=document.querySelector('.cooperative');




//    button.addEventListener('click', ()=>{
       
//    })

function handleSubmit(event){

 event.preventDefault();
 p1.style.display="none";
 p2.style.display="block";
 desc1.style.display="none";
 desc2.style.display="block";
 affichage.style.display="block";
 champ.style.display="none";
 button_search.style.display="none";
 or.style.display="none";
 cooperative.style.display="none";
 back.style.display="block";
}



      </script>
  

</body>
</html>