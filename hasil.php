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
        <div class="row">
          <div class="col-12">
            <h1>Output Pembuatan Surat</h1>
            <div class="container mt-3">
              <div class="row">
                <?php
                    $ambil = $con->query("SELECT * FROM surat join jenis_surat USING(id_surat) ORDER BY id DESC");
                    while ($data = $ambil->fetch_assoc()) { 
                  ?>
                <div class="col-md-4">
                  <a href="detail-surat.php?id=<?= $data['id']; ?>" style="text-decoration: none">
                    <div class="card text-center mb-3 shadow-sm p-3 mb-5 bg-white rounded">
                      <img class="card-img-top img-fluid" style="height: 100px;" src="images/output.svg">
                      <div class="card-body">
                        <h5 class="card-title"><?php echo $data['nama_surat'] ?></h5>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins
                            ago</small></p>
                      </div>
                    </div>
                  </a>
                </div>
                <?php 
                    }
                  ?>
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