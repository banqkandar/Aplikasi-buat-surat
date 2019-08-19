<?php 
error_reporting();
include_once('config.php');
?>
<div class="navigation-wrap bg-light start-header start-style">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <nav class="navbar navbar-expand-md navbar-light">

          <a class="navbar-brand" href="index.php"><img src="images/logo.svg" alt=""></a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto py-4 py-md-0">

              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                <a class="nav-link" href="index.php">Home</a>
              </li>
              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                <a class="nav-link" href="document-editor.php">Demo</a>
              </li>
              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                <a class="nav-link" href="hasil.php">Surat</a>
              </li>
              <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
                  aria-expanded="false">Services</a>
                <div class="dropdown-menu">
                  <a href="" class="dropdown-item" data-toggle="modal" data-target="#exampleModaladd">
                    Tambah Jenis Surat</a>
                  <a href="" class="dropdown-item" data-toggle="modal" data-target="#exampleModaldel">
                    Hapus Jenis Surat</a>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      </div>
    </div>
  </div>
</div>

<!-- Modal add -->
<div class="modal fade" id="exampleModaladd" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form method="POST" action="">
        <?php 
        if(isset($_POST['asd'])){
          $nama = $_POST['nama'];

          $tambah = "insert into jenis_surat values('','$nama')";
          $masuk = $con->query($tambah); 
          if($masuk){
              echo '<div class="alert alert-success">Anda telah berhasil menambahkan nama surat.</div>';
              echo '<meta http-equiv="refresh" content="2; index.php "> ';
          }else{
              echo '<div class="alert alert-danger">Anda Gagal menambah nama surat.</div>';
          }
        }
        ?>
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Tambah Jenis Surat</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-group row">
            <label for="nama" class="col-sm-3 col-form-label">Nama Surat</label>
            <div class="col-sm-9">
              <input type="text" class="form-control" id="nama" name="nama" required>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" name="asd">Buat</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal del -->
<div class="modal fade" id="exampleModaldel" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <form method="POST" action="">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLongTitle">Hapus Jenis Surat</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <?php
          // query untuk menampilkan semua mata pelajaran dari tabel 
          $query = "SELECT * FROM jenis_surat";
          $hasil = mysqli_query($con, "SELECT * FROM jenis_surat");
          while ($data = mysqli_fetch_array($hasil))
          { 
          echo "<div class='shadow-sm p-2 mb-2 bg-white'>".$data['nama_surat']."<a href='hapus.php?id=".$data['id_surat']."'><span
            class='badge badge-pill badge-danger float-right'>hapus</span></a></div>";
        }
        ?>
    </div>
    </form>
  </div>
</div>
</div>