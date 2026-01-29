<?php
session_start();
include "library/config.php";

if( empty($_SESSION['username']) or empty($_SESSION['password']) ){
 header('location: login.php');
}

echo '<h3 class="page-header">Daftar Ujian</h3>';

//Cek jumlah ujian pada tanggal sekarang
$tgl = date('Y-m-d');
$qujian = mysqli_query($mysqli, "SELECT * FROM ujian WHERE tanggal='$tgl' AND id_periode='$_SESSION[id_periode]'");
$tujian = mysqli_num_rows($qujian);
$rujian = mysqli_fetch_array($qujian);

//Jika tidak ada ujian aktif tampilkan pesan
if($tujian < 1){
 echo '<div class="alert alert-info">Belum ada ujian yang aktif saat ini. Silahkan hubungi operator!</div>';
}

//Jika ada satu ujian aktif arahkan ke halaman berikutnya
else if($tujian == 1){
 echo '<script> show_detail('.$rujian['id_ujian'].'); </script>';
}

//Jika ada dua atau lebih ujian aktif tampilkan pada tabel
else{
 echo '<table class="table table-striped"><thead>
 <tr>
 <th>No</th>
 <th>Nama Mapel</th>
 <th>Periode</th>
 <th>Jml. Soal</th>
 <th>Waktu</th>
 <th>Nilai</th>
 <th>Aksi</th>
 </tr></thead><tbody>';

 $qujian = mysqli_query($mysqli, "SELECT * FROM ujian a JOIN mapel b ON(a.id_mapel=b.id_mapel) JOIN periode c ON(a.id_periode=c.id_periode) WHERE a.tanggal='$tgl' AND a.id_periode='$_SESSION[id_periode]'");

 $no = 1;
 while($r = mysqli_fetch_array($qujian)){
  $qnilai = mysqli_query($mysqli, "SELECT * FROM nilai WHERE id_ujian='$r[id_ujian]' AND nis='$_SESSION[nis]'");
  $tnilai = mysqli_num_rows($qnilai);
  $rnilai = mysqli_fetch_array($qnilai);

  echo'<tr>
  <td>'.$no.'</td>
  <td>'.$r['nama_mapel'].'</td>
  <td>'.$r['nama_periode'].'</td>
  <td>'.$r['jml_soal'].'</td>
  <td>'.$r['waktu'].' menit</td>';
  if($tnilai>0 and $rnilai['nilai'] != ""){
    echo '<td><b>'.$rnilai['nilai'].'</b></td>';
  }
  else{
    echo '<td>Belum ada Nilai</td>';
  }
  echo'<td>';

//Jika nilai sudah ada tampilkan tombol Sudah Mengerjakan, jika belum ada tampilkan tombol Kerjakan

  if($tnilai>0 and $rnilai['nilai'] != "") {
    echo '<a class="btn btn-danger">Sudah Mengerjakan</a>';
  }
  else echo '<a onclick="show_detail('.$r['id_ujian'].')" class="btn btn-success"><i class="glyphicon glyphicon-edit"></i> Kerjakan</a>';
  echo '</td>
  </tr>';
  $no++;
}

echo '</tbody></table>';
}
?>
