<?php
    require 'functions.php';
    
    $detinasi = "SELECT * FROM destinasi";
    $inbox = "SELECT * FROM inbox";
    $result_detinasi = mysqli_query($conn, $detinasi);
    $result_inbox = mysqli_query($conn, $inbox);
    $count_detinasi = mysqli_num_rows($result_detinasi);
    $count_inbox = mysqli_num_rows($result_inbox);
?>

<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">

    <!-- Themify icons -->
    <link rel="stylesheet" href="themify/themify-icons.css">

    <!-- Waves css -->
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
                            <h4>Halaman Admin</h4>
                        </div>
                        <div class="table-responsive"><br>
                        <table class="table table-bordered">
                            <tr>
                                <th style="text-align:center;">Destinasi</th>
                                <th style="text-align:center;">Kotak Masuk</th>
                            </tr>
                            <tr>
                                <td class="dash-table"><?=$count_detinasi ?><br>
                                    <button onclick="window.location.href='index.php?p=daftar_tempat'" type="submit" name="submit" class="btn btn-dark">Daftar Detinasi</button>
                                    <button onclick="window.location.href='index.php?p=tambah_tempat'" type="submit" name="submit" class="btn btn-dark">Tambah Destinasi</button>
                                </td>
                                <td class="dash-table"><?=$count_inbox ?><br>
                                    <button onclick="window.location.href='index.php?p=inbox'"type="submit" name="submit" class="btn btn-dark">Lihat Pesan</button>
                                </td>
                            </tr>
                        </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
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