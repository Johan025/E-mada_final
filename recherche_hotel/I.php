<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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

<form action="" method="get" onSubmit="handleSubmit(event)">
                <div class="contain_">
                      <h3>Recherche d' hotel</h3>
                      <h1 class="ddesc">Entrer le nom de la ville où vous vous trouvez</h1>
                    
       

                      <input type="text" name="ville" id="champ_recherche" placeholder="Entrez nom ville">
                      <input type="submit" value="Rechercher" class="rechercher" name="search">
            
           

                      <textarea id="affichage_" id="" cols="30" rows="10">
                            
                            <?php
                            if (isset($hotelTana)){
                            foreach($hotelTana as $value): ?>
                        <?= $value["nom"]; ?>
        
                            <?php endforeach;}?> 
                              </textarea>
        
            
                     <button>rechercher des  taxi- brousses</button>
                
                </div>

</body>
</html>