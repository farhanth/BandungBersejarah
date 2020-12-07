<?php
    require 'functions.php';
    $result = query("SELECT * FROM destinasi");

    function limit_words($string, $word_limit){
        $words = explode(" ",$string);
        return implode(" ",array_splice($words,0,$word_limit));         
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
	<title>Halaman Admin BandungBersejarah</title>
</head>
<body>
    <div class="wrapper">
        <div class="container content-area">
            <div class="row">
                <div class="col-md-12">
                    <div class="panel">
                        <div class="card-header m-b-15">
                            <h4>Daftar Destinasi Wisata</h4>
                        </div>
                        <div class="table-responsive">
                            <br>
                            <table class="table table-bordered" cellpadding="10" cellspacing="0">
                                <tr>
                                    <th style="text-align:center;">No.</th>
                                    <th style="text-align:center;">Tgl. Posting</th>
                                    <th style="text-align:center;">Nama</th>
                                    <th style="text-align:center;">Alamat</th>
                                    <th style="text-align:center;">Favorit</th>
                                    <th style="text-align:center;">Isi</th>
                                    <th style="text-align:center;">Action</th>
                                </tr>
                                <?php $i=1; ?>
                                <?php foreach ($result as $list) : {
                                    # code...
                                } 
                                $isi_limited = limit_words($list["isi"], 25);
                                ?>
                                <tr>
                                    <td><?= $i; ?></td>
                                    <td><?= $list["tgl_posting"]; ?></td>
                                    <td><?= $list["nama"]; ?></td>
                                    <td><?= $list["alamat"]; ?></td>
                                    <td><?= $list["favorit"]; ?></td>
                                    <td><?= "$isi_limited. . ."; ?></td>
                                    <td style="text-align:center;">
                                        <a href="delete_destinasi.php?id_destinasi=<?= $list["id_destinasi"]; ?>" id="delete-id" class="text-decoration-none" onClick="return confirm('Apakah anda ingin menghapus destinasi ini?')"><i class="ti-trash"></i></a>&nbsp;&nbsp;&nbsp;
                                        <a href="index.php?p=edit_destinasi&id_destinasi=<?= $list["id_destinasi"]; ?>" class="text-decoration-none"><i class="ti-pencil-alt"></i></a>
                                    </td>
                                </tr>
                            <?php $i++; ?>
                            <?php endforeach; ?>
                            </table>
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