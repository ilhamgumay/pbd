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
       <link rel="stylesheet" href="css/style3.css">
           <link rel="stylesheet" href="css/until.css">
           

  
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
    <li><a href="curd.php">curd</a></li>
    <li><a href="contact.php">contact</a></li>
    <li><a href="about">about</a></li>
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
   
 <?php
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
 case "list":
 read_data();
 break;
 case "input":
 input_data();
 break;
 case "edit":
 edit_data($id);
 break;
 case "hapus":
 hapus_data($id);
 break;
 default:
 read_data();
 break;
}
mysqli_close($hub);
?>

<?php
function read_data() {
global $hub;
$query= "select * from prodi";
$result = mysqli_query($hub, $query);
?>

<h2>Read Data Program Studi</h2>
<table border=1 cellpadding=2>
<tr><td colspan="4">
<a href="curdprodi.php?a=input">INPUT</a>
</td></tr>
<tr>
  <td>ID</td>
  <td>NAMA PRODI</td>
  <td>AKREDITASI</td>
<td>TAHUN BERDIRI</td>
<td>ID JENJANG</td>

</tr>

<?php
while($row = mysqli_fetch_array($result))
{
?>
<tr>
<td><?php echo $row['idprodi']; ?></td>
<td><?php echo $row['nmprodi']; ?></td>
<td><?php echo $row['akreditasi']; ?></td>
<td><?php echo $row['thn_berdiri']; ?></td>
<td><?php echo $row['idjenjang']; ?></td>
<td><a href="curdprodi.php?a=edit&id=<?php echo $row['idprodi'];?> "> EDIT </a></td>
<td><a href="curdprodi.php?a=hapus&id=<?php echo $row['idprodi'];?> "> HAPUS </a></td>
</tr>
<?php
}
?>
</table>
<?php
}
?>

<?php
function input_data() {
$row = array(
 "nmprodi" => "",
 "akreditasi" => "-",
 "thn_berdiri" => "-",
 "idjenjang" => "-");
?>
<h2>Input Data Program Studi</h2>
<form action="curdprodi.php?a=list" method="post">
<input type="hidden" name="sql" value="create">

<br>


Nama Prodi
<input type="text" name="nmprodi" maxlength="70" size="70" value="<?php
echo trim($row["nmprodi"]) ?>" />

<br>

Akreditasi Prodi
<input type="radio" name="akreditasi" value="-" <?php if($row["akreditasi"]=='-'
|| $row["akreditasi"]=='') { echo "checked=\"checked\""; } else {echo ""; } ?>> -
<input type="radio" name="akreditasi" value="A" <?php
if($row["akreditasi"]=='A') {echo "checked=\"checked\""; } else {echo ""; } ?> > A
<input type="radio" name="akreditasi" value="B" <?php
if($row["akreditasi"]=='B') {echo "checked=\"checked\""; } else {echo ""; } ?> > B
<input type="radio" name="akreditasi" value="C" <?php
if($row["akreditasi"]=='C') {echo "checked=\"checked\""; } else {echo ""; } ?> > C
<br>

Tahun Berdiri
<input type="text" name="thn_berdiri" maxlength="6" size="6" value="<?php echo
trim($row["thn_berdiri"]) ?>" />
<br>

Id Jenjang
<input type="text" name="idjenjang" maxlength="4" size="4" value="<?php echo
trim($row["idjenjang"]) ?>" />
<br>

<input type="submit" name="action" value="Simpan"><br>
<a href="curdprodi.php?a=list">Batal</a>
</form>
<?php
}
?>




<?php
function edit_data($id){
global $hub;
$query = "select * from prodi where idprodi = $id";
$result = mysqli_query($hub, $query);
$row = mysqli_fetch_array($result);
?>
<h2>Edit Data Program Studi</h2>
<form action="curdprodi.php?a=list" method="post">
<input type="hidden" name="sql" value ="update">
<input type="hidden" name="idprodi" value="<?php echo trim($id)?>">

Nama Prodi
<input type="text" name="nmprodi" maxlength="70" size="70" value="<?php echo trim ($row["nmprodi"])?>"><br>
Akreditasi Prodi
<input type="radio" name="akreditasi" value="-" <?php if($row["akreditasi"]=='-'
|| $row["akreditasi"]=='') { echo "checked=\"checked\""; } else {echo ""; } ?>> -
<input type="radio" name="akreditasi" value="A" <?php
if($row["akreditasi"]=='A') {echo "checked=\"checked\""; } else {echo ""; } ?> > A
<input type="radio" name="akreditasi" value="B" <?php
if($row["akreditasi"]=='B') {echo "checked=\"checked\""; } else {echo ""; } ?> > B
<input type="radio" name="akreditasi" value="C" <?php
if($row["akreditasi"]=='C') {echo "checked=\"checked\""; } else {echo ""; } ?> > C
<br>

Tahun Berdiri
<input type="text" name="thn_berdiri" maxlength="6" size="6" value="<?php echo
trim($row["thn_berdiri"]) ?>" />
<br>

Id Jenjang
<input type="text" name="idjenjang" maxlength="4" size="4" value="<?php echo
trim($row["idjenjang"]) ?>" />
<br>



<input type="submit" name="action" value="Simpan"><br>
<a href="curdprodi.php?a=list">Batal</a>
</form>
<?php
}
?>

<?php
function hapus_data($id){
global $hub;
$query = "select * from prodi where idprodi = $id";
$result = mysqli_query($hub, $query);
$row = mysqli_fetch_array($result);
?>
<h2> Hapus Data Program Studi</h2>
<form action="curdprodi.php?a=list" method="post">
<input type="hidden" name="sql" value="delete">
<input type="hidden" name="idprodi" value="<?php echo trim($id)?> ">
<table>

<tr><td> Nama Prodi </td><td> <?php echo trim($row["nmprodi"])?></td></tr>
<tr><td> Akreditasi </td><td> <?php echo trim($row["akreditasi"])?></td></tr>
<tr><td width="100"> Tahun berdiri</td><td><?php echo trim($row["thn_berdiri"])?></td></tr>
<tr><td width="100"> Kode </td><td><?php echo trim($row["idjenjang"])?></td></tr></table>
<br> <input type="submit" name="action" value="hapus"><br>
<a href="curdprodi.php?a=list">Batal</a>
</form>
<?php
}
?>


<?php
function create_prodi()
{
 global $hub;
 global $_POST;
 $query = "insert into `prodi` (`nmprodi`, `akreditasi`, `thn_berdiri`, `idjenjang`) values ";
 $query .= " ('" .$_POST["nmprodi"]."', '".$_POST["akreditasi"]."',
'".$_POST["thn_berdiri"]."',
'".$_POST["idjenjang"]."')";
 mysqli_query($hub,$query) or die(mysqli_error());
}

function update_prodi(){
global $hub;
global $_POST;
$query = "update prodi";
$query .= " SET nmprodi = '".$_POST["nmprodi"]."',akreditasi='".$_POST["akreditasi"]."',thn_berdiri='".$_POST["thn_berdiri"]."',idjenjang='".$_POST["idjenjang"]."'";
$query.="where idprodi =".$_POST["idprodi"];
mysqli_query($hub,$query) or die(mysqli_error());
}

function delete_prodi(){
global $hub;
global $_POST;
$query = "DELETE from `prodi`";
$query .="where idprodi =".$_POST["idprodi"];
mysqli_query($hub,$query) or die(mysqli_error());
}
?>




</html>
