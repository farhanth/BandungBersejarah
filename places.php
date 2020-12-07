<?php
    require 'admin/functions.php';
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
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Tempat Bersejarah di Bandung</title>
	<link rel="icon" href="./img2/core-img/fav-icon.png">
	<link href="css/places.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" type="text/css" href="css/article.css">
	<script src="js/smoothspy.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="js/coba.js" type="text/javascript"></script>
</head>
<body>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

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



<section class="no-margin">
	<div class="container m-top">
		<div class="black position">
			<a href="index.php" class="places-link">Home</a>
			<span>/</span>
			<span>Places</span>
			<h2 class="title-places font-black mb-3">Tempat Bersejarah di Kota Bandung</h2>
		</div>
		<div class="row">
			
			<?php foreach ($result as $list) : {
                # code...
            }
            $id_destinasi = $list["id_destinasi"];
	        $result_img = query("SELECT * FROM gambar WHERE id_destinasi=$id_destinasi LIMIT 1")[0];
            $isi_limited = limit_words($list["isi"], 20);
            ?>
			<div class="col-md-4">
				<div class="card card-01">
					<img class="card-img-top" src="admin/img/<?= $result_img["gambar"]; ?>" alt="Card image cap">
					<div class="card-body">
						<h4 class="card-title"><?= $list["nama"]; ?></h4>
						<p class="card-text"><?= $isi_limited; ?>. . . .</p>
						<a href="article.php?id_destinasi=<?= $list["id_destinasi"]; ?>" class="btn btn-default text-uppercase">Explore</a>
					</div>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>
</section>

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


</body>
</html>