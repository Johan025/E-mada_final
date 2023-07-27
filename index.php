<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../font-awesome-4.7.0/css/font-awesome.min.css">
    <title>login to E-MADA VISITE</title>
    <link rel="stylesheet" href="login/index.css">
</head>

<body>

<?php  
session_start();

$bdPDO= new PDO('mysql:host=localhost;dbname=connexion','root','');

$bdPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

if (isset($_POST['login'])){//déclenchement des boutons

    $nom=$_POST['userName'];
    $email=$_POST['email'];
    $password=$_POST['password'];

    if (!empty($nom)  && !empty($password) && !empty($email)){


$maildb=$bdPDO->prepare("SELECT * FROM login WHERE adresse_email=?");
$maildb->execute(array ($email));
$mailexist=$maildb->rowCount();

if ($mailexist == 0 ){
  $requete=$bdPDO->prepare('INSERT INTO login(nom,adresse_email,mdp) VALUES(:nom, :adresse_email, :mdp)');
  $_SESSION['nom_utilisateur'] = $nom;
  $requete->bindvalue(':nom', $nom);
  $requete->bindvalue(':adresse_email', $email);
  $requete->bindvalue(':mdp', $password);

$result=$requete->execute();
echo" <script type=\"text/javascript\">alert ('Félicitations ".$nom." vous etes bien bien inscrits, Bienvenue sur E -MADA VISITE')</script>";
  header("location:menu/menu.php");
}

else{
  echo" <script type=\"text/javascript\">alert ('Ce mail a déja été utilisé')</script>";

}

}
    else 

    {
        echo "les champs sont requis";
    }
}

if (isset($_POST['login1'])){//déclenchement des boutons

  $email1=$_POST['email1'];
  $password1=$_POST['password1'];

 




  if (!empty($password1) && !empty($email1)){
$maildb1=$bdPDO->prepare("SELECT * FROM login WHERE adresse_email=?");
$bd1=$bdPDO->prepare("SELECT * FROM login WHERE mdp=?");
$requetex =$bdPDO->prepare("SELECT nom FROM login WHERE mdp=? ");
$maildb1->execute(array ($email1));
$bd1->execute(array($password1));
$requetex->execute(array($password1));
$check= $requetex->fetch();



$mailexist1=$maildb1->rowCount();
$bd1exist=$bd1->rowCount();

 
if ($mailexist1 != 0 and $bd1exist!=0){
  echo" <script type=\"text/javascript\">alert ('Félicitations ".$nom1." vous etes bien bien inscrits, Bienvenue sur E -MADA VISITE')</script>";
header("location:menu/menu.php");
$_SESSION['nom_utilisateur'] = $check['nom'];
  
}

else{
    if ($mailexist1 == 0){
  $erreur="veuillez reverifier votre  email";
echo"<p class='erreur cacher'>".$erreur."</p>";
    }

    else if ($bd1exist==0){
      $erreur="veuillez reverifier votre mot de passe ";
echo"<p class='erreurpassword'>".$erreur."</p>";
    }

    else if($mailexist1 == '' ||  $bd1exist=='' ){
      $erreur2="veuillez reverifier votre email et votre mot de passe";
echo"<p class='erreur2'>".$erreur2."</p>";

        }

}

}
  else 

  {
      echo "les champs sont requis";
  }
}

if (isset($_SESSION['nom_utilisateur'])){
  header("location:menu/menu.php");
}

?> 

<img src="./login/allée des baobab.png" class="i1"alt="">
<img src="./menu/assets/image/allée des baobab responsive.jpg" class="i2" alt="">

<div class="desc">
      <h1 class="hide_">Bienvenue sur E-MADA VISIT </h1>
      <p class="hide_1">Un site web qui vous montrera la beauté de l ' île de Madagascar</p>
      <button id="sign"class="hide_1">Commencer</button>
     
    </div>
</div>

<form action="" method="post" onSubmit="handleSubmit(event)">
  <div class="login hideshow">
 
    <h1>Se connecter</h1>
    <input type="email" name="email1" class="email" placeholder="User@gmail.com"/>
    <input type="password"  name="password1" class="password" placeholder="........"/>
<button type="submit" name="login1" CLASS="login">Se connecter</button>
<p>Vous n' avez pas encore de compte?</p>
<a class="button_inscription">S ' inscrire</a>
</div>
</form>

<form  action="" method="POST" onSubmit="handleSubmit(event)">
  <div class="signup">
    <h1 class="inscription">S' INSCRIRE</h1>
    <input type="text" name="userName" class="userName" placeholder="Nom d' utilisateur"/>
    <input type="email" name="email" class="email2" placeholder="email"/>
    <input type="password"  name="password" class="password2" placeholder="mot de passe"/>
<button type="submit" name="login" CLASS="login2">S' inscrire</button>
<p>Vous avez déja  de compte?</p>
<a class="button_connecter">Se connecter</a>
</div>

</div>
</form> 
<script src="./javascript/loginEffect.js"></script>
<script src="./javascript/ScrollingEffect.js"></script>
<script src="./javascript/scrollingEffect2.js"></script>

</body>
</html>