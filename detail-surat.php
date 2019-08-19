<?php
error_reporting();
include_once('config.php');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/fontawesome.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/fontawesome.min.css">

    <script src="https://cdn.ckeditor.com/4.8.0/full-all/ckeditor.js"></script>
    <script src="ckeditor/ckeditor.js" type="text/javascript"></script>
    <title>Detail Surat</title>
</head>

<body>
    <?php
    if (isset($_POST['tekan'])) {

        $description = $_POST['isi_surat'];
        $ubah = $con->query(" update surat set 
                isi_surat = '$description' 
            where 
                id = '$_GET[id]'   
                ");
        if ($ubah) {
            echo '<div class="alert alert-success">Anda telah berhasil mengubah surat.</div>';
            echo '<meta http-equiv="refresh" content="2; hasil.php "> ';
        } else {
            echo '<div class="alert alert-danger"> Anda gagal mengubah surat.</div>';
        }
    } ?>

    <div class="container">
        <div class="row mt-4">
            <div class="col-md-7">
                <?php
                $id = $_GET['id'];
                $ambil = $con->query("SELECT * FROM surat join jenis_surat USING(id_surat) WHERE id = '$id' ");
                $hasil = $ambil->fetch_assoc();
                ?>
                <a href="hasil.php" class="badge badge-pill badge-dark">back</a>
                <!-- <a href="hapus-detail.php?id=<?= $hasil['id']; ?>" class="btn btn-sm btn-danger float-right ml-2"><i
                        class="fas fa-eye fa-lg"></i> hapus</a> -->
                <a href="" class="btn btn-sm btn-danger float-right ml-2" data-toggle="modal" data-target="#exampleModalHapus">
                    hapus</a>
                <a href="" class="btn btn-sm btn-info float-right" data-toggle="modal" data-target="#exampleModalLong">
                    edit</a>
                <div class="card my-3 py-3" style="background:#f5f5f5; border: none;">
                    <div class="container">

                        <h3><?= $hasil['nama_surat']; ?></h3>
                        <div class="hr"></div>
                        <p><?= $hasil['isi_surat'] ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal hapus -->
    <div class="modal fade" id="exampleModalHapus" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form method="POST" action="">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Peringatan hapus surat</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        Anda yakin ingin menghapus surat ini??
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <a href="hapus-detail.php?id=<?= $hasil['id']; ?>" class="btn btn-danger float-right ml-2"><i class="fas fa-eye fa-lg"></i> Ya</a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal edit -->
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog modal-xl" role="document">
            <div class="modal-content">
                <form method="POST" action="">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLongTitle">Edit surat</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <textarea name="isi_surat" id="editor"><?= $hasil['isi_surat']; ?></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" name="tekan">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div class="my-5 py-5">
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