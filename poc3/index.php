<Doctype html>
<meta charset="utf-8">
 <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="Naïm G, Maxence Z">
        

       <title>Pepsi-2-Coca</title>

        <link href="assets/main.css" rel="stylesheet">
        <link href="assets/style.css" rel="stylesheet">
<script>
function readURL(input) {
  if (input.files && input.files[0]) {

    var reader = new FileReader();

    reader.onload = function(e) {
      $('.image-upload-wrap').hide();

      $('.file-upload-image').attr('src', e.target.result);
      $('.file-upload-content').show();

      $('.image-title').html(input.files[0].name);
    };

    reader.readAsDataURL(input.files[0]);

  } else {
    removeUpload();
  }
}

function removeUpload() {
  $('.file-upload-input').replaceWith($('.file-upload-input').clone());
  $('.file-upload-content').hide();
  $('.image-upload-wrap').show();
}
$('.image-upload-wrap').bind('dragover', function () {
        $('.image-upload-wrap').addClass('image-dropping');
    });
    $('.image-upload-wrap').bind('dragleave', function () {
        $('.image-upload-wrap').removeClass('image-dropping');
});
</script>

    </head>

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

        <body>

<div class="intro">
    <p>
    &nbsp
</p>
<p>&nbsp</p>

<center><h3><p>Partager vos fichiers</p></h3></center>
<center><h3><p>anonymement et gratuitement sur Pepsi-Coca</p></h3></center>
<p>
    &nbsp
</p>
<p>&nbsp</p>

<!-- APPEL DU WEB SERVICE -->


</div>

<script class="jsbin" src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<div class="file-upload">
    <form enctype="multipart/form-data" action="upload.php" method="POST">
    <p></p>
    
 


  <div class="image-upload-wrap">
    <input class="file-upload-input" name="uploaded_file" type='file' onchange="readURL(this);" accept="image/*" value="Upload" />
    <div class="drag-text">
      <h3>Drag & Drop here</h3>
    </div>
  </div>
  <div class="file-upload-content">
    <img class="file-upload-image"/>
    <div class="image-title-wrap">
    </div>
  </div>
  <button class="file-upload-btn" type="submit" value="Upload">Uploader un fichier</button>
</div>

 </form>


</body>

<footer>
    <font color="white">&copy PepsiCoca 2021</font>
    <p>&nbsp</p>
      <p>&nbsp</p>

</footer>
