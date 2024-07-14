<?php
session_start();
error_reporting(0);
include('include/dbconnection.php');
if (strlen($_SESSION['pdaid']==0)) {
  header('location:logout.php');
  } else{

if(isset($_POST['submit']))
  {
    $itembarcode=$_POST['itembarcode'];
    $itemname=$_POST['itemname'];
    $itemdesc=$_POST['itemdesc'];
    $pdid=$_GET['editid'];
    $stats=$_POST['status'];

    $query=mysqli_query($con, "update tbldirectory set ItemBarcode='$itembarcode',ItemName='$itemname',ItemDesc='$itemdesc',Status='$stats' where ID=$pdid");
    if ($query) {
    $msg="Record has been updated.";
  }
  else
    {
      $msg="Something Went Wrong. Please try again";
    }

  
}
  ?>



<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>EC FNB BARCODE</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body id="page-top">

  
    <!-- Navbar -->
    
<?php include('include/header.php');?>
  <div id="wrapper">

    <!-- Sidebar -->
    <?php include('include/sidebar.php');?>

    <div id="content-wrapper">

      <div class="container-fluid">

        <!-- Breadcrumbs-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">Dashboard</a>
          </li>
          <li class="breadcrumb-item active">Edit Directory</li>
        </ol>
 <p style="font-size:16px; color:red" align="center"> <?php if($msg){
    echo $msg;
  }  ?> </p>
        <!-- Icon Cards-->
        
        <!-- Area Chart Example-->
        
<?php
 $pdid=$_GET['editid'];
$ret=mysqli_query($con,"select * from tbldirectory where ID='$pdid'");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>

        <!-- DataTables Example -->
        <form name="directory" method="post">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="itembarcode" name="itembarcode" class="form-control"  required="required" autofocus="autofocus" value="<?php echo $row['ItemBarcode'];?>">
                  <label for="item Barcode">Item Barcode</label>
                </div>
              </div>
              <div class="col-md-6">
                <div class="form-label-group">
                  <input type="text" id="itemname" name="itemname" class="form-control"  required="required" value="<?php echo $row['ItemName'];?>">
                  <label for="Item Name">Item Name</label>
                </div>
              </div>
            </div>
          </div>
         
          <div class="form-group">
            <div class="form-row">
              
              
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              <input type="item description" id="itemdesc" name="itemdesc" class="form-control"  required="required" value="<?php echo $row['ItemDesc'];?>">
              <label for="itemdecription">Item Description</label>
            </div>
          </div>
          
          <div class="form-group">
            <div class="form-label-group">
              <select name="status" class="form-control wd-450" required="true" >
                <?php if($row['Status']=="1")
{?>
     <option value="1" selected="true">Public</option>
     <option value="0" >Private</option>
     
     <?php } if($row['Status']=="0")
{?>
     <option value="1" >Public</option>
     <option value="0" selected="true">Private</option>
     <?php }?>
   
   </select>
              
            </div>
          </div>

          <?php } ?>
         <p style="text-align: center; "><button type="submit" name="submit" class="btn btn-info btn-min-width mr-1 mb-1">Update</button></p>
        </form>

      </div>
      <!-- /.container-fluid -->

      <!-- Sticky Footer -->
      <?php include('include/footer.php');?>

    </div>
    <!-- /.content-wrapper -->

  </div>
  <!-- /#wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="logout.php">Logout</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Page level plugin JavaScript-->
  <script src="vendor/chart.js/Chart.min.js"></script>
  <script src="vendor/datatables/jquery.dataTables.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin.min.js"></script>

  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <!-- <script src="js/demo/chart-area-demo.js"></script> -->

</body>

</html>
<?php }  ?>