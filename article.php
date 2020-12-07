<?php
    require 'admin/functions.php';
    $id_destinasi = $_GET["id_destinasi"];
    $result = query("SELECT * FROM destinasi WHERE id_destinasi = $id_destinasi")[0];
    $result_img_act = query("SELECT * FROM gambar WHERE id_destinasi = $id_destinasi")[0];
    $result_img = query("SELECT * FROM gambar WHERE id_destinasi = $id_destinasi");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title -->
    <title><?= $result["nama"]; ?> - BandungBersejarah</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- Favicon -->
    <link rel="icon" href="./img2/core-img/fav-icon.png">

    <!-- Stylesheet -->
    <link href="css/article.css" rel="stylesheet" type="text/css" >
    <link href="css/style.css" rel="stylesheet" type="text/css">


</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
        <div class="container-fluid">
          <a class="navbar-brand js-scroll-trigger" href="index.php"><img src="./img2/core-img/header-logo.png" class="header-logo"></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="index.php#section1">Home</a>
              </li>
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="index.php#section2">Places</a>
              </li>
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="index.php#section3">Add Places</a>
              </li>
              <li class="nav-item">
                <a class="nav-link js-scroll-trigger" href="index.php#section4">About</a>
              </li>
            </ul>
          </div>
        </div>
    </nav>
    
    <div class="roberto-rooms-area section-padding-100-0 padding-20">
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="text-path position">
                        <a href="index.php">Home</a>
                        <span>/</span>
                        <a href="places.php">Places</a>
                        <span>/</span>
                        <h2 class="title-places font-black mb-3"><?= $result["nama"]; ?></h2>
                    </div>
                    <div class="single-room-details-area mb-50">
                        <div class="room-thumbnail-slides mb-50">
                            <div id="room-thumbnail--slide" class="carousel slide" data-ride="carousel">
                                
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <img src="admin/img/<?= $result_img_act["gambar"]; ?>" class="d-block w-100" alt="">
                                    </div>
                                    <?php 
                                    $isFirst = true;
                                    foreach ($result_img as $list) : {
                                        if ($isFirst) {
                                            $isFirst = false;
                                            continue;
                                        }
                                    }
                                    ?>
                                    <div class="carousel-item">
                                        <img src="admin/img/<?= $list["gambar"]; ?>" class="d-block w-100" alt="">
                                    </div>
                                    <?php endforeach; ?>
                                </div>

                                <ol class="carousel-indicators">
                                    <li data-target="#room-thumbnail--slide" data-slide-to="0" active>
                                        <img src="admin/img/<?= $result_img_act["gambar"]; ?>" class="d-block w-100" alt="">
                                    </li>
                                    <?php 
                                    $i=1;
                                    $isFirst = true;
                                    foreach ($result_img as $list) : {
                                        if ($isFirst) {
                                            $isFirst = false;
                                            continue;
                                        }
                                    } ?>
                                    <li data-target="#room-thumbnail--slide" data-slide-to="<?= $i; ?>">
                                        <img src="admin/img/<?= $list["gambar"]; ?>" class="d-block w-100" alt="">
                                    </li>
                                    <?php $i++; ?>
                                    <?php endforeach; ?>
                                </ol>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="col-12 col-lg-4 padding-30">
                    <div class="room-features-area d-flex flex-wrap mb-50">
                            <h6>Alamat: <span><?= $result["alamat"]; ?></span></h6>
                    </div>
                    <div class="room-service mb-50">
                        <h4>Navigasi</h4>
                        <form>
                          <div class="form-group">
                            <label for="navigasi">Pilih Kendaraan Anda</label>
                            <select id="navigasi" class="form-control grey-form">
                              <option value="<?= $result["link_mobil"]; ?>">Mobil</option>
                              <option value="<?= $result["link_umum"]; ?>">Kendaraan Umum</option>
                            </select>
                          </div>
                        </form>
                        <button name="submit" id="submit" type="submit" class="btn btn-dark width-max">Arahkan</button>
                    </div>
                </div>
                <div class="col-12 col-lg-12">
                    <?= $result["isi"]; ?>
                </div>
            </div>
        </div>
    </div>

    <footer class="footer-css">
        <div class="row footer-padding">
            <div class="col-12 col-lg-12 footer-padding">
                <div class="container">
                    <div class="footer-body">©2019 Copyright :
                        <a href="index.php"> BandungBersejarah.id</a>
                    </div>  
                </div>
            </div>
        </div>
    </footer>

    <script src="js/article/jquery.min.js"></script>
    <script src="js/article/popper.min.js"></script>
    <script src="js/article/bootstrap.min.js"></script>
    <script src="js/article/roberto.bundle.js"></script>
    <script src="js/article/default-assets/active.js"></script>
    <script type = "text/javascript">
        $('#submit').click(function(){
            var urldata = $('#navigasi :selected').val();
            window.open(urldata)
        });
    </script>
</body>

</html>