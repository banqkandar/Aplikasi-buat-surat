<?php
// buka koneksi dengan MySQL
  include("config.php");
  session_start();

  //mengecek apakah di url ada GET id
  if (isset($_GET["id"])) {
    // menyimpan variabel id dari url ke dalam variabel $id
    $id = $_GET["id"];

    //jalankan query DELETE untuk menghapus data
    $query = "DELETE FROM jenis_surat WHERE id_surat='$id' ";
    $hasil_query = $con->query($query);

    //periksa query, apakah ada kesalahan
    if ($con->errno) {
      echo 'window.alert("Anda gagal menghapus.");';
    }else{
      echo 'window.alert("Anda berhasil menghapus surat ini.");';
    }
  }
  // melakukan redirect ke halaman index.php
  header("location:index.php");
?>
