<?php 
error_reporting();
include_once('config.php');

?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <script src="https://cdn.ckeditor.com/4.8.0/full-all/ckeditor.js"></script>
  <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
  <link rel="stylesheet" href="css/style.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
  <link rel="stylesheet" href="style.css">
  <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <title>Buat Surat</title>
</head>


<body class="hero-anime">
<?php include_once('navbar.php'); ?>
  <div class="con mt-5">
    <div class="container mt-5">
      <h1>Buat Surat</h1>
      <form action="" method="post">
        <?php 
        if (isset($_POST['submit'])) {
          $title       = $_POST['nama_surat'];
          $description = $_POST['isi_surat'];
          if (trim(!empty($title)) && trim(!empty($description))) {
          $sql = "Insert into surat (id, id_surat, isi_surat) values ('','$title', '$description')";
          $masuk = $con->query($sql);
              header("location:surat.php?sukses");
          } else {
              header("location:surat.php?error");
          }
        }
        ?>
        <!-- //kode pesan error dan sukses -->
        <?php if (isset($_GET["error"])) { ?>
        <div id="error" class="wow swing">
          <h4>Tidak boleh kosong.</h4>
          <meta http-equiv="refresh" content="2; url=surat.php">
        </div>
        <?php } else if (isset($_GET["sukses"])) { ?>
        <div id="sukses" class="wow swing">
          <meta http-equiv="refresh" content="2; url=surat.php">
          <h4>Surat berhasil dibuat.</h4>
        </div>
        <?php } ?>
        <!-- <input type="text" name="nama" placeholder="Title" class="in"> -->
        <select class="form-control mt-4 mb-4" name="nama_surat">
          <?php
            // query untuk menampilkan semua mata pelajaran dari tabel 
            // $query = "SELECT * FROM jenis_surat";
            $hasil = mysqli_query($con, "SELECT * FROM jenis_surat");
            while ($data = mysqli_fetch_array($hasil))
            {
            echo "<option value='".$data['id_surat']."'>".$data['nama_surat']."</option>";
            }
          ?>
        </select>
        <textarea name="isi_surat" id="editor"></textarea>
        <input type="submit" name="submit" value="submit" class="mt-4 submit">
      </form>
    </div>
  </div>

  
  <script src="js/config-editor.js"></script>

  <script src="https://cdn.ckeditor.com/4.7.3/standard/ckeditor.js"> </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"> </script>
  <script>
    new WOW().init();
  </script>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js">
  </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js">
  </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js">
  </script>

  <script src="js/main.js"></script>
</body>

</html>