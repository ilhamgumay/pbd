<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Polinela</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link href='https://fonts.googleapis.com/css?family=Nunito:400,300,700|Righteous' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">
           <link rel="stylesheet" href="css/style3.css">

  
</head>

<body>

  <header class="header">
    <div class="container">
      <h1 class="site-title">SBDPolinela</h1>
    <span class="site-tagline">Sistem Basis Data</span>
  </div>
</header>
<nav class="main-nav">
  <div class="container">
    <ul>
      <li class="mobile-button"><a href="#">Menu</a></li>
    <li><a href="index.php">home</a></li>
    <li><a href="view.php">view</a></li>
    <li><a href="contact.php">contact</a></li>
    <li><a href="about.php">about</a></li>
    <li><a href="logout.php">logout</a></li>
  </ul>
  </div>
</nav>
</br>

<?php
require("koneksi.php");
$hub=$koneksi;
?>
 

  <?php 
  session_start();
 
  // cek apakah yang mengakses halaman ini sudah login
  if($_SESSION['level']==""){
    header("location:index.php?pesan=gagal");
  }  elseif($_SESSION['level']=="dosen"){
    header("location:pagedosen.php");
  }elseif($_SESSION['level']=="admin"){
    header("location:pageadmin.php");
  }

read_data()


  ?>




<?php
function read_data() {
global $hub;
$query= "select * from mahasiswa ";
$query.="where npm ='".$_SESSION["username"]."'";
$result = mysqli_query($hub, $query);
?>
<?php
while($row = mysqli_fetch_array($result))
{
?>

<span class="login100-form-title p-b-70">
            Welcome <?php echo $row['nama']; ?> </br>
          </span></br></br>

<span class="login100-form-avatar">
            <img src="image/avatar-01.jpg" alt="AVATAR">
          </span>
</br></br></br>
<span class="login100-form-titlee ">
            nama = <?php echo $row['nama']; ?>
          </span></br>
<span class="login100-form-titlee ">
            TTL = <?php echo $row['tmpt_lahir']; echo $row['tgl_lahir']; ?>
          </span></br>
<span class="login100-form-titlee ">
            Jenis Kelamin  = <?php echo $row['sex']; ?>
          </span></br>
<span class="login100-form-titlee ">
            tahun masuk = <?php echo $row['thn_masuk']; ?>
          </span></br>
<span class="login100-form-titlee ">
            level = <?php echo $_SESSION['level']; ?>
          </span></br>
<span class="login100-form-titlee ">
            
<a href="PAGEMahasiswa.php?a=edit&id=<?php echo $row['idprodi'];?> "> EDIT </a>
          </span>




<?php
}

}
?>





 
 


  
 
 
  <br/>

 
  <br/>
  <br/>




 
 
  <br/>
  <br/>








<?php
  require ("footer.php");
  ?>

</html>
