<?php
    require 'functions.php';

    $result = query("SELECT `AUTO_INCREMENT`
                    FROM  INFORMATION_SCHEMA.TABLES
                    WHERE TABLE_SCHEMA = 'db_bersejarah'
                    AND   TABLE_NAME   = 'destinasi'");
    
    if (isset($_POST["submit"])) {
        //cek apakah data berhasil ditambah
        if(tambah_destinasi($_POST) > 0){
            echo "
                <script>
                    alert('Data Berhasil di Tambahkan!');
                    document.location.href = 'index.php?p=daftar_tempat';
                </script>
            ";
        } else{
            echo "
                <script>
                    alert('Data Gagal di Tambahkan');
                </script>
            ";
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="themify/themify-icons.css">
    <link rel="stylesheet" href="plugins/css/waves.min.css">
    <script src="https://cdn.tiny.cloud/1/nsdynp90kdh90min32neb4mnce2om90cbcdfsr3obqv87f2b/tinymce/5/tinymce.min.js"></script>
    <script>tinymce.init({selector:'textarea'});</script>
	<title>Halaman Admin BandungBersejarah</title>
</head>
<body>
    <div class="wrapper">
        <div class="container content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="card-header m-b-15">
                            <h4>Tambah Destinasi Wisata</h4>
                        </div>
                        <div class="table-responsive">
                            <form action="" method="post" enctype="multipart/form-data" class="form-overflow" id="myForm">
                                <div class="form-row">
                                    <div class="form-group col-md-4">
                                      <label for="namatempat">Nama Tempat</label>
                                      <input type="text" class="form-control grey-form" id="namatempat" name="namatempat" placeholder="Nama Tempat">
                                    </div>
                                    <div class="form-group col-md-8">
                                      <label for="alamat">Alamat</label>
                                      <input type="text" class="form-control grey-form" id="alamat" name="alamat" placeholder="Alamat">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                      <label for="link_mobil">Link Navigasi Mobil</label>
                                      <input type="text" class="form-control grey-form" id="link_mobil" name="link_mobil" placeholder="Link Navigasi Mobil">
                                    </div>
                                    <div class="form-group col-md-6">
                                      <label for="link_umum">Link Navigasi Kendaraan Umum</label>
                                      <input type="text" class="form-control grey-form" id="link_umum" name="link_umum" placeholder="Link Navigasi Kendaraan Umum">
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <span class="upload_text">Pilih gambar untuk di tampilkan :</span>
                                    </div>
                                    <div class="form-group col-md-9">
                                        <div class="custom-file">
                                          <input type="file" class="custom-file-input" id="gambar" name="gambar[]" multiple accept="image/jpeg,image/jpg,image/png">
                                          <label class="custom-file-label" for="gambar">Choose file</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="form-group col-md-2">
                                        <span class="upload_text">Destinasi Favorit : </span>
                                    </div>
                                    <div class="form-group col-md-10">
                                        <select class="form-control grey-form" name="favorit" id="favorit">
                                            <option>Iya</option>
                                            <option>Tidak</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group" style="display: none;">
                                    <input type="hidden" class="form-control grey-form" id="auto_inc" name="auto_inc" value="<?= $result["0"]["AUTO_INCREMENT"]; ?>">
                                </div>
                                <textarea form="myForm" rows="13" id="isi" name="isi"></textarea>
                                <button type="submit" name="submit" class="btn btn-dark btn-margin">Simpan</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="plugins/js/jquery.slimscroll.min.js"></script>
    <script src="plugins/js/waves.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            $('#sidebarCollapse').on('click', function() {
                $('#sidebar').toggleClass('active');
            });
            Waves.init();
            Waves.attach('.wave-effect', ['waves-button']);
            Waves.attach('.wave-effect-float', ['waves-button', 'waves-float']);
        });
        $(function() {
            $('.slimescroll-id').slimScroll({
                height: '100vh'
            });
        });
    </script>
</body>
</html>