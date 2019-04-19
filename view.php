
<?php

 require ("header.php");

require("koneksi.php");
$hub=$koneksi;
$a = @$_GET["a"];
$id = @$_GET["id"];
$sql = @$_POST["sql"];
switch ($sql) {
 case "create":
 create_prodi();
 break;
 case "update":
 update_prodi();
 break;
 case "delete":
 delete_prodi();
 break;
}
switch ($a) {
 case "listdosen":
 read_datadosen();
 break;
 case "listmahasiswa":
 read_datamahasiswa();
 break;
 case "listprodi":
 read_dataprodi();
 break;
 default:
 read_data();
 break;
}
mysqli_close($hub);
?>

<?php
function read_dataprodi(){
  global $hub;
  $query = "select * from prodi";
  $result = mysqli_query($hub,$query);
?>

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/util.css">

  <div class="limiter">
    <div class="container-table100">
      <div class="wrap-table100">
        <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column2">Id Prodi</th>
                  <th class="cell100 column1">Nama Prodi</th>
                  <th class="cell100 column3">Akreditasi</th>
                  <th class="cell100 column1">Tahun Berdiri</th>
                  
                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <table>
              <tbody>
                <tr class="row100 body">
                <?php 
while ($row = mysqli_fetch_array($result)) {
?>
  <td class="cell100 column2"><?php echo $row['idprodi']; ?></td>
  <td class="cell100 column1"><?php echo $row['nmprodi']; ?></td>
  <td class="cell100 column1"><?php echo $row['akreditasi']; ?></td>
  <td class="cell100 column1"><?php echo $row['thn_berdiri']; ?></td>
 
</tr>
<?php
}
?>
</table>
<?php
}
?>


<?php
function read_datadosen(){
  global $hub;
  $query = "select * from dosen";
  $result = mysqli_query($hub,$query);
?>

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/util.css">

  <div class="limiter">
    <div class="container-table100">
      <div class="wrap-table100">
        <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column2">Id dosen</th>
                  <th class="cell100 column1">Nama dosen</th>
                  <th class="cell100 column2">gelar</th>
                  <th class="cell100 column2">tempat lahir</th>
                  <th class="cell100 column2">tanggal lahir</th>



                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <table>
              <tbody>
                <tr class="row100 body">
                <?php 
while ($row = mysqli_fetch_array($result)) {
?>
  <td class="cell100 column2"><?php echo $row['iddosen']; ?></td>
  <td class="cell100 column1"><?php echo $row['nmdosen']; ?></td>
  <td class="cell100 column2"><?php echo $row['gelar']; ?></td>
  <td class="cell100 column2"><?php echo $row['tmpt_lahir']; ?></td>
  <td class="cell100 column2"><?php echo $row['tgl_lahir']; ?></td>

</tr>
<?php
}
?>
</table>
<?php
}
?>



<?php
function read_datamahasiswa(){
  global $hub;
  $query = "select * from mahasiswa";
  $result = mysqli_query($hub,$query);
?>

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/util.css">

  <div class="limiter">
    <div class="container-table100">
      <div class="wrap-table100">
        <div class="table100 ver1 m-b-110">
          <div class="table100-head">
            <table>
              <thead>
                <tr class="row100 head">
                  <th class="cell100 column2">NPM</th>
                  <th class="cell100 column4">Nama Mahasiswa</th>
                  <th class="cell100 column2">tempat lahir</th>
                  <th class="cell100 column4">Tanggal lahir</th>
                  <th class="cell100 column5">jenis kelamin</th>
                </tr>
              </thead>
            </table>
          </div>

          <div class="table100-body js-pscroll">
            <table>
              <tbody>
                <tr class="row100 body">
                <?php 
while ($row = mysqli_fetch_array($result)) {
?>
  <td class="cell100 column2"><?php echo $row['npm']; ?></td>
  <td class="cell100 column4"><?php echo $row['nama']; ?></td>
  <td class="cell100 column2"><?php echo $row['tmpt_lahir']; ?></td>
  <td class="cell100 column4"><?php echo $row['tgl_lahir']; ?></td>
  <td class="cell100 column5"><?php echo $row['sex']; ?></td>
</tr>
<?php
}
?>
</table>
<?php
}
?>


<?php
function read_data(){
  
?>


 <article class="post"> 
    <div class="container">
    
    <h3>menu view</h3>
    
    <div class="columns thirds">
      <div class="item"> <h4 class="item-title"><a href="view.php?a=listmahasiswa">view mahasiswa</a></h4>
          <img  src="image/31894464_228319244597568_676488410323484672_n.jpg" alt="Sample Image" class="item-image" />
        <p>list mahasiswa dari berbagai program studi yang terdaftar di politeknik negeri lampung.</p>   
        
     </div>
      
      <div class="item">
          <h4 class="item-title"><a href="view.php?a=listdosen">view dosen</a></h4>
        <p>list dosen dari berbagai program studi yang terdaftar di politeknik negeri lampung..</p>
         <p><img src="image/1.png" alt="Sample Image" class="item-image" />
        </p>
     </div>

      <div class="item">
        
          <h4 class="item-title"><a href="view.php?a=listprodi">view prodi</a></h4>
         <img src="https://polinela.ac.id/wp-content/uploads/2019/02/images_jurusan_ekonomi_dan_bisnis.jpg" alt="Sample Image" class="item-image" />
        <p>list semua  program studi yang terdaftar di politeknik negeri lampung.</p>
     </div>




<?php

}
?>