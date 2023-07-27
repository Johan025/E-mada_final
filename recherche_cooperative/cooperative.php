<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-MADA VISIT/Recherche Hotel</title>
    <link rel="stylesheet" href="recherche_cooperative.css">
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">

</head>
<body>
<?php
$bdPDO= new PDO('mysql:host=localhost;dbname=connexion','root','');


$bdPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
if (isset($_GET['submit'])){//déclenchement des boutons

$depart=$_GET['depart'];
$arrivee=$_GET['arrivee'];

if (!empty($depart) && !empty($arrivee)){
$requete2=$bdPDO->prepare ("SELECT * FROM listecooperative WHERE depart='$depart' AND arrivee='$arrivee' ");
$requete2-> execute();

if ($requete2->rowCount()>0){
$requetex=$bdPDO->prepare("SELECT nom_cooperative FROM listecooperative WHERE (depart='$depart' AND arrivee='$arrivee') ");
$requetex-> execute();
$cooperative= $requetex->fetchAll();
}

else{
echo("erreur nous n' avons pas trouvé la ville");
}
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
                <h1 class="h1"> Rechercher un taxi-brousses pour votre voyage
                </h1>

                <form action="" method="get" onSubmit="handleSubmit(event)">
                <div class="contain_">
                      <h3 class="p1">Recherche d' hotel</h3>

                      <h1 class="ddesc">Entrer le nom de la ville où vous vous trouvez</h1>

                      <h3 class="p2">Résultat de votre Recherche</h3>

                      <h1 class="ddesc2">Liste des cooperatives correspondant à votre recherche pour "..."</h1>


                      <input type="text" name="depart" id="depart" placeholder="Point de départ">
                      <input type="text" name="arrivee" id="arrivée" placeholder="Arrivée">

                            <textarea id="affichage_">
                            <?php
                    if (isset($cooperative)){
                    foreach($cooperative as $value): ?>

   <?= $value["nom_cooperative"]; ?>

                <?php endforeach;}
                    else 
   echo "Pas d' hotel pour ".$depart." à ".$arrivee.""
                ?>  
                            </textarea>

                      <input type="submit" name="submit" value="Rechercher" name="search" class="rechercher" id="button_search">
            
          

                      <h1 id="or" class="or">- OU - </h1>
            
                    <a href="./../recherche_hotel/hotel.php"> <button class="cooperative">rechercher des hotels</button></a>
                
                </div>

            </form>

                <div class="contain_1">
                     
                </div>


                </div>

      </div>
<script src="./../javascript/menuEffect.js"></script>
     
   
     
</body>
</html>