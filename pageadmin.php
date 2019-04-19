<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Polinela</title>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<link href='https://fonts.googleapis.com/css?family=Nunito:400,300,700|Righteous' rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<meta name="curdport" content="width=device-width">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="css/style.css">
           

  
</head>

<body>

  <header class="header">
    <div class="container">
      <h1 class="site-title">SBDPolinela</h1>
    <span class="site-tagline">Halaman Admin</span>
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
 
<?php 
  session_start();
 
  // cek apakah yang mengakses halaman ini sudah login
  if($_SESSION['level']==""){
    header("location:index.php?pesan=gagal");
  }  elseif($_SESSION['level']=="mahasiswa"){
    header("location:pagemahasiswa.php");
  }elseif($_SESSION['level']=="dosen"){
    header("location:index.php?pesan=gagal");
  }
 
 
  ?>
  <h3><p>Halo <b><?php echo $_SESSION['username']; ?></b> Anda telah login sebagai <b><?php echo $_SESSION['level']; ?></b>.</p></h3>
  
 
 <article class="post"> 
    <div class="container">
    
    <h3>menu curd</h3>
    
    <div class="columns thirds">
      <div class="item"> <h4 class="item-title"><a href="#">curd mahasiswa</a></h4>
          <img  src="http://lorempixel.com/400/100/nature" alt="Sample Image" class="item-image" />
        <p>list mahasiswa dari berbagai program studi yang terdaftar di politeknik negeri lampung.</p>   
        
     </div>
      
      <div class="item">
          <h4 class="item-title"><a href="#">curd dosen</a></h4>
        <p>list dosen dari berbagai program studi yang terdaftar di politeknik negeri lampung..</p>
         <p><img src="http://lorempixel.com/400/100/cats" alt="Sample Image" class="item-image" />
        </p>
     </div>

      <div class="item">
        
          <h4 class="item-title"><a href="curdprodi.php">curd prodi</a></h4>
         <img src="http://lorempixel.com/400/100/nature" alt="Sample Image" class="item-image" />
        <p>list semua  program studi yang terdaftar di politeknik negeri lampung.</p>
     </div>
      <div class="columns thirds">
      <div class="item"> <h4 class="item-title"><a href="#">curd jenjang</a></h4>
          <img  src="http://lorempixel.com/400/100/nature" alt="Sample Image" class="item-image" />
        <p>list mahasiswa dari berbagai program studi yang terdaftar di politeknik negeri lampung.</p>   
        
     </div>
      
      <div class="item">
          <h4 class="item-title"><a href="#">curd pendidikan</a></h4>
        <p>list dosen dari berbagai program studi yang terdaftar di politeknik negeri lampung..</p>
         <p><img src="http://lorempixel.com/400/100/cats" alt="Sample Image" class="item-image" />
        </p>
     </div>

      <div class="item">
        
          <h4 class="item-title"><a href="#">curd user</a></h4>
         <img src="http://lorempixel.com/400/100/nature" alt="Sample Image" class="item-image" />
        <p>list semua  program studi yang terdaftar di politeknik negeri lampung.</p>
     </div>








</html>
