<?php
session_start();

require_once "config.php";


if (isset($_POST['Matricule']) && isset($_POST['password'])) {
    $matricule = $_POST['Matricule'];
    $password = $_POST['password'];

    $query = $conn->prepare("SELECT COUNT(*) FROM employe WHERE password ='$password' AND Num_Matricule ='$matricule' ");

    $query->execute();
    $count = $query->fetchColumn();
    if ($count == "1") {
        $_SESSION['Matricule'] = $matricule;
        echo '<meta http-equiv="refresh" content="0;URL=./Panel/google.php">';
    } else {
        if ($count != "1") {
            echo "<p>";
            echo "<font color=red>Combinaison Matricule/Mots de passe incorrect</font>";

            echo "</p>";
        }
    }
}
?>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js">
    
    $("#button").click(function() {
  $("#fn").show();
  $("#ln").show();
});
</script>



<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="./CSS/style.css" rel="stylesheet">
<title>Login</title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->

        <!-- Icon -->
        <div class="fadeIn first">
            <img src="./logo.png" width="50px" height="60px" alt="User Icon"/>
        </div>

        <!-- Login Form -->
        <form method="post">
            <input type="text" id="login" class="fadeIn second" name="Matricule" placeholder="Matricule">
            <input type="password" id="password" class="fadeIn third" name="password" placeholder="Mot de Passe">
            <input id="button" type="submit" class="fadeIn fourth" value="Connexion">
            <br>
<div id="fn" hidden>First Name :
  <input type="text" />
</div>
<br>
<div id="ln" hidden>Last Name :
  <input type="text" />
</div>
        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
            <a class="underlineHover" href="#">Mot de passe oublié ?</a>
        </div>

    </div>
</div>