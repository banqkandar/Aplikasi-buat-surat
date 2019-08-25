<?php 
error_reporting();
include_once('config.php');
?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="css/style.css">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

  <title>Buat Surat</title>
</head>

<body class="hero-anime">
  <?php include_once('navbar.php'); ?>
  <div class="section full-height">
    <div class="absolute-center">
      <div class="section">
        <div class="container">
          <div class="row">
            <div class="col-12">
              <div class="card shadow p-3 mb-5 bg-white rounded">
                <div class="card-body">
                  <h1>Template Surat</h1>
                  <div class="row d-flex justify-content-center">
                    <div class="col-md-6">
                      <select class="form-control mt-4" name="nama_surat">
                        <?php
                          // query untuk menampilkan semua mata pelajaran dari tabel 
                          $hasil = mysqli_query($con, "SELECT * FROM jenis_surat");
                          while ($data = mysqli_fetch_array($hasil))
                          {
                          echo "<option value='".$data['id_surat']."'>".$data['nama_surat']."</option>";
                          }
                        ?>
                      </select>
                    </div>
                  </div>
                  <p>or <a href="surat.php">buat template surat</a></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="row">
    <div class="col-12">
      <div class="jumbotron">
        <h1>Feature</h1>
        <div class="container mt-3">
          <div class="row">
            <div class="col-md-6">
              <div class="card text-center mb-3 shadow-sm p-3 mb-5 bg-white rounded">
                <img class="card-img-top img-fluid mt-2" style="height: 100px;" src="images/edit.svg">
                <div class="card-body">
                  <h5 class="card-title">Online view, edit and save</h5>
                  <p class="card-text">This card has a regular title and short paragraph of text below it.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6">
              <div class="card text-center shadow-sm p-3 mb-5 bg-white rounded">
                <img class="card-img-top img-fluid mt-2" style="height: 100px;" src="images/document.svg">
                <div class="card-body">
                  <h5 class="card-title">Word template customization</h5>
                  <p class="card-text">This card has a regular title and short paragraph of text below it.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php include_once('footer.php'); ?>


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