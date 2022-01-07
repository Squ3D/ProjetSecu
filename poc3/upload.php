<Doctype html>
<meta charset="utf-8">
 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
     

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Naïm G, Maxence Z">

       <title>Pepsi-2-Coca</title>

        <link href="assets/main.css" rel="stylesheet">
        <link href="assets/style.css" rel="stylesheet">




    <div id="wrap">
        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                       <font color="white"><img src="https://www.adweek.com/core/wp-content/uploads/files/news_article/coke-v-pepsi-hed-2016.png" width="100px" height="60px"></font></a>
                </div>
            </div>
        </div>

        

<div class="intro">
    <p>

&nbsp
    &nbsp
    &nbsp
</p>
<h3><center>Upload réussi, merci d'avoir utiliser Pepsi Coca.
Vous allez être redirigé dans quelques secondes ...
</center></h3>

<center><img src="https://www.gif-maniac.com/gifs/5/4729.gif"></center>

</div>
<?PHP
  if(!empty($_FILES['uploaded_file']))
  {
    
    $path = "temp/";
    $passo = "temp/";
    $path = $path . basename( $_FILES['uploaded_file']['name']);
    $jesus = basename( $_FILES['uploaded_file']['name']);
    $ext = pathinfo($path, PATHINFO_EXTENSION);
    $filename = $_FILES['uploaded_file']['name'];
    

 

    if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $path)) {
        
        
        if ($ext == "png") {
        
      echo "The file ".  basename( $_FILES['uploaded_file']['name']). 
      " has been uploaded";
      $myfile = fopen("a.txt", "a") or die("Unable to open file!");
      fwrite($myfile,$jesus);
      fwrite($myfile,"\r\n");
      fclose($myfile);

        }
        
       if ($ext == "jpg") {
        
      echo "The file ".  basename( $_FILES['uploaded_file']['name']). 
      " has been uploaded";
      $myfile = fopen("a.txt", "a") or die("Unable to open file!");
      fwrite($myfile,$jesus);
      fwrite($myfile,"\r\n");
      fclose($myfile);
}
        
      
      if ($ext == "zip") {
          $target_path = "temp/".$filename;
          $zip = new ZipArchive();
		  $x = $zip->open($target_path);
		  $zip->extractTo("temp/"); 
		  $zip->close();
		  foreach(glob($log_directory.'temp/*.*') as $file) {
		      
	  $myfile = fopen("a.txt", "a") or die("Unable to open file!");
      fwrite($myfile,$file);
      fwrite($myfile,"\r\n");
      fclose($myfile);
       
		  }
		
          
      }
      
    } else{
        echo "Erreur d'upload, veuillez réessayer";
    }
    
    
    
    
  }
?>