<?php
session_start();
include "library/config.php";
include "library/function_antiinjection.php";

$username = antiinjeksi($_POST['username']);
$password = antiinjeksi(md5($_POST['password']));

$cekuser = mysqli_query($mysqli, "SELECT * FROM user a JOIN siswa b ON(a.id_user=b.id_user) WHERE a.username='$username' AND a.password='$password'");
$jmluser = mysqli_num_rows($cekuser);
$data = mysqli_fetch_array($cekuser);
if($jmluser > 0){
  if($data['status'] == "off"){
   $_SESSION['username']     = $data['username'];
   $_SESSION['nama_siswa']   = $data['nama_siswa'];
   $_SESSION['password']     = $data['password'];
   $_SESSION['nis']          = $data['nis'];
   $_SESSION['id_periode']   = $data['id_periode'];

   echo "<script>alert('Hai $_SESSION[nama_siswa], Anda Berhasil Login!');</script>";
   echo "<meta http-equiv='refresh' content='0; url=index.php'>";

   mysqli_query($mysqli, "UPDATE siswa SET status='login' WHERE nis='$data[nis]'");
   echo "ok";
}
else{
   echo "Siswa sedang <b>Login</b>. Hubungi admin untuk mereset login!";
}
}else{
  echo "<b>Username atau Password yang Anda Masukan Salah!!!";
}
?>