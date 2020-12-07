<?php
    require 'functions.php';
    $inbox = query("SELECT * FROM inbox");
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
                            <h4>Kotak Masuk</h4>
                        </div>
                        <div class="table-responsive">
                            <br>
                            <table class="table table-bordered" cellpadding="10" cellspacing="0">
                                <tr>
                                    <th style="text-align:center;">No.</th>
                                    <th style="text-align:center;">Email</th>
                                    <th style="text-align:center;">Tambah / Edit</th>
                                    <th style="text-align:center;">Kotak Masuk</th>
                                    <th style="text-align:center;">Action</th>
                                </tr>
                                <?php $i=1; ?>
                                <?php foreach ($inbox as $isi_inbox) : {
                                    # code...
                                } ?>
                                <tr>
                                    <td style="text-align:center;"><?= $i; ?></td>
                                    <td><?= $isi_inbox["email"]; ?></td>
                                    <td><?= $isi_inbox["pilihan"]; ?></td>
                                    <td><?= $isi_inbox["pesan"]; ?></td>
                                    <td style="text-align:center;"><a href="delete_inbox.php?id_pesan=<?= $isi_inbox["id_pesan"]; ?>" id="delete-id" class="text-decoration-none" onClick="return confirm('Apakah anda ingin menghapus pesan ini?')"><i class="ti-trash"></i></a></td>
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