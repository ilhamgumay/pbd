<!DOCTYPE html>
<html lang="en" >

<?php
  require ("header.php");
  ?>

 
  <?php 
  if(isset($_GET['pesan'])){
    if($_GET['pesan']=="gagal"){
      echo "<div class='alert'>Username dan Password tidak sesuai !</div>";
    }
  }
  ?>

 <link rel="stylesheet" href="css/style2.css">
  <div class="kotak_login">
    <p class="tulisan_login">Silahkan login</p>
 
    <form action="cek_login.php" method="post">
      <label>Username</label>
      <input type="text" name="username" class="form_login" placeholder="Username .." required="required">

      <br/>
      <br/>
 
      <label>Password</label>
      <input type="password" name="password" class="form_login" placeholder="Password .." required="required">
 
      <input type="submit" class="tombol_login" value="LOGIN">
 
      <br/>
      <br/>
      <center>
        <a class="link" href="index.php">kembali</a>
      </center>
    </form>
    
  </div>


<?php
  require ("footer.php");
  ?>

</html>
