<?php
require 'vendor/autoload.php';

use Picqer\Barcode\BarcodeGeneratorPNG;
error_reporting(0);
include('admin/include/dbconnection.php');

function generateBarcode($text){
  $generator = new BarcodeGeneratorPNG();
  $barcode_image = $generator->getBarcode($text, $generator::TYPE_CODE_128);
  return $barcode_image;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> FNB Barcode</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/heroic-features.css" rel="stylesheet">

  <style>
    .modal {
        display: none; /* Hidden by default */
        position: fixed; /* Stay in place */
        z-index: 1; /* Sit on top */
        padding-top: 100px; /* Location of the box */
        left: 0;
        top: 0;
        width: 100%; /* Full width */
        height: 100%; /* Full height */
        overflow: auto; /* Enable scroll if needed */
        background-color: rgb(0,0,0); /* Fallback color */
        background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
    }

    .modal-content {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
    }
    .caption {
        margin: auto;
        display: block;
        width: 80%;
        max-width: 700px;
        text-align: center;
        color: #ccc;
        padding: 10px 0;
        height: 150px;
    }
    .modal-content, .caption {  
        -webkit-animation-name: zoom;
        -webkit-animation-duration: 0.6s;
        animation-name: zoom;
        animation-duration: 0.6s;
    }

    @-webkit-keyframes zoom {
        from {-webkit-transform:scale(0)} 
        to {-webkit-transform:scale(1)}
    }

    @keyframes zoom {
        from {transform:scale(0)} 
        to {transform:scale(1)}
    }
    .close {
        position: absolute;
        top: 15px;
        right: 35px;
        color: #f1f1f1;
        font-size: 100px;
        font-weight: bold;
        transition: 0.3s;
    }

    .close:hover,
    .close:focus {
        color: #bbb;
        text-decoration: none;
        cursor: pointer;
    }
  </style>

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" >
    <div class="container">
      <a class="navbar-brand" href="index.php"> EC FNB Barcode</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     <!-- <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="admin/">Admin Login
              <span class="sr-only">(current)</span>
            </a>
          </li>
     
        </ul>
      </div> -->
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
<form name="search" method="post" action="searchdata.php">
    <!-- Jumbotron Header -->
       <div class="card my-4">
          <h5 class="card-header">Search By Item Barcode or Name </h5>
          <div class="card-body">
            <div class="input-group">
              <input type="text" class="form-control" name="searchdata" placeholder="Search for..." required="true">
              <span class="input-group-btn">
                <button class="btn btn-secondary" type="submit">Go!</button>
              </span>
            </div>
          </div>
        </div>
</form>


    <!-- Page Features -->
  
    <div class="row text-left">
<?php
$ret=mysqli_query($con,"select * from tbldirectory where  (Status=1)");
$num=mysqli_num_rows($ret);
if($num>0){
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
      <div class="col-lg-6 col-md-6 mb-4">
        <div class="card h-100">
          <div class="card-body">
          

  <table class="table table-bordered">
    <tr>
        <th colspan="2">  <h4 class="card-title" align="center"><?php  echo $row['ItemBarcode'];?></h4></th>
      </tr> 
           <tr>
        <th>Item Barcode Image</th>
        <td><span><?php echo "<img src='data:image/png;base64," . base64_encode(generateBarcode(!empty($row['ItemBarcode']) ? $row['ItemBarcode'] : 'none')) . "' width='auto'>";?></span></td>


      </tr>

           <tr>
        <th>Item Name</th>
        <td><?php  echo $row['ItemName'];?></td>
      </tr>


           <tr>
        <th>Item Description</th>
        <td><?php  echo $row['ItemDesc'];?></td>
      </tr>

        
    </table>

          </div>
        </div>
      
      </div>
    <?php } }?>

      

    </div>
    <!-- /.row -->

  </div>
  <!-- /.container -->

  <!-- The Modal -->
  <div id="myModal" class="modal">
    <span class="close">&times;</span>
    <img class="modal-content" id="img01">
    <div class="caption" id="caption"></div>
  </div>

  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">   <span>EC FNB 2024</span></p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script>
    // Get the modal
    var modal = document.getElementById("myModal");

    // Get the image and insert it inside the modal - use its "alt" text as a caption
    var images = document.querySelectorAll('.zoomable-image');
    var modalImg = document.getElementById("img01");
    var captionText = document.getElementById("caption");

    images.forEach(function(img) {
        img.onclick = function(){
            modal.style.display = "block";
            modalImg.src = this.src;
            captionText.innerHTML = this.alt;
        }
    });

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() { 
        modal.style.display = "none";
    }
  </script>
</body>

</html>
