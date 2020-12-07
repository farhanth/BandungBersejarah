<?php
    session_start();  
    if(!isset($_SESSION["login"])){
        header("Location: login.php");
        exit;
    }
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="../img2/core-img/fav-icon.png">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="themify/themify-icons.css">
    <link rel="stylesheet" href="plugins/css/waves.min.css">
	<title>Halaman Admin BandungBersejarah</title>
</head>
<body>
	<header class="main-navbar-header">
        <nav class="navbar navbar-expand-md navbar-dark fixed-top theme-color">
            <div class="menu-toggle-button">
                <a class="nav-link wave-effect" href="#" id="sidebarCollapse">
                    <span class="ti-menu"></span>
                </a>
            </div>
            <a class="navbar-brand brand-left" href="index.php">BandungBersejarah</a>
        </nav>
    </header>
    <div class="wrapper">
        <nav id="sidebar" class="nav-sidebar">
            <ul class="list-unstyled components slimescroll-id" id="accordion">
                <li>
                    <a href="index.php" class=" wave-effect">Home</a>
                </li>
                <li>
                    <a href="#pageSubmenu" class="accordion-toggle wave-effect" data-toggle="collapse" aria-expanded="false">Konten Wisata</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu" data-parent="#accordion" id="accordion2">
                        <li><a href="index.php?p=tambah_tempat">Tambah Destinasi Wisata</a></li>
                        <li><a href="index.php?p=daftar_tempat">Daftar Destinasi Wisata</a></li>
                    </ul>
                </li>
                <li>
                    <a href="index.php?p=inbox" class=" wave-effect">Kotak Masuk</a>
                </li>
                <li>
                    <a href="logout.php" class=" wave-effect">Logout</a>
                </li>
            </ul>
        </nav>
        <div class="container content-area">
            <?php
            if (!isset($_GET['p'])) {
                include ('dashboard.php');
            } else {
                $page = $_GET['p'];
                include $page . ".php";
            }
            ?>
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