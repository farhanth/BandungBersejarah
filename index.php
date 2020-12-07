<?php 
require 'admin/functions.php';
$result_first = query("SELECT * FROM destinasi WHERE favorit='Iya' LIMIT 1")[0];
$id_destinasi_first = $result_first["id_destinasi"];
$result_img_first = query("SELECT * FROM gambar WHERE id_destinasi=$id_destinasi_first LIMIT 1")[0];

$result = query("SELECT * FROM destinasi WHERE favorit='Iya'");

function limit_words($string, $word_limit){
    $words = explode(" ",$string);
    return implode(" ",array_splice($words,0,$word_limit));         
}

//cek apakah tombol submit sudah di tekan/belum
if (isset($_POST["submit"])) {
	//cek apakah data berhasil ditambah
	if(tambah_pesan($_POST) > 0){
		echo "
			<script>
				alert('Pesan Berhasil di Kirim');
			</script>
		";
	} else{
		echo "
			<script>
				alert('Data Gagal di Tambahkan');
			</script>
		";
		mysqli_error($conn);
	}
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Full Screen Landing Page</title>
	<link rel="icon" href="./img2/core-img/fav-icon.png">
	<link href="css/style.css" rel="stylesheet" type="text/css">	
	<link href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/article.css">
	<link href="css/animate.css" rel="stylesheet"/>
	<link href="css/waypoints.css" rel="stylesheet"/>
	<link rel="stylesheet" type="text/css" href="css/coba.css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link href="https://fonts.googleapis.com/css?family=ABeeZee:400i,400|Montserrat:600|Lora:400" rel="stylesheet" />
	<script src="https://kit.fontawesome.com/76d5105a4a.js"></script>
	<script src="js/smoothspy.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="js/coba.js" type="text/javascript"></script>
	
</head>
<body id="page-top">
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <div class="container-fluid nav-max">
      <a class="navbar-brand js-scroll-trigger" href="#section1"><img src="./img2/core-img/header-logo.png" class="header-logo"></a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger menu-text" href="#section1">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger menu-text" href="#section2">Places</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger menu-text" href="#section3">Add Places</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger menu-text" href="#section4">About</a>
          </li>
        </ul>
      </div>
    </div>
</nav>

	<section id="section1" class="intro bg-head">
		<div class="inner">
			<div class="content">
				<section class="os-animation" data-os-animation="bounceInUp" data-os-animation-delay="0s">
					<h1>Sejarah di Kota Bandung</h1>
				</section>
				<section class="os-animation" data-os-animation="bounceInUp" data-os-animation-delay="0.1s">
					<a class="btn-get" href="#section2">Get Started</a>
				</section>
			</div>
		</div>
	</section>

	<section id="section2" class="intro">
		<div class="container-fluid">
			<h2 class="title-sec2 font-black mb-3">Popular Places</h2>
			<a class="more-items" href="places.php" >See more places 
				<svg stroke-width="1.5" viewBox="0 0 16 16" fill="#0770CD" height="10" stroke="currentColor" stroke-linecap="round" width="24" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><g transform="translate(4.033325, 0.166667)"><path d="M7.33333333,7.33333333 L0.488888889,0.488888889"></path><path d="M7.33333333,7.33333333 L0.488888889,14.1777778"></path></g></svg>
			</a>
			<div id="myCarousel" class="carousel slide posit" data-ride="carousel" data-interval="3000">>
				<div class="carousel-inner row w-100 mx-auto">
					
					<?php
					$isi_limited_first = limit_words($result_first["isi"], 14);
					?>
					<div class="carousel-item col-md-4 active">
						<div class="card">
							<img class="card-img-top img-fluid" src="admin/img/<?= $result_img_first["gambar"]; ?>" alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title font-black"><?= $result_first["nama"]; ?></h4>
								<p class="card-text font-black"><?= $isi_limited_first; ?>. . . . <a class="font black read-more" href="article.php?id_destinasi=<?= $result_first["id_destinasi"]; ?>">Read More</a></p>
							</div>
						</div>
					</div>

					<?php 
					$isFirst = true;
					foreach ($result as $list) : {
		                if ($isFirst) {
	                        $isFirst = false;
	                        continue;
	                    }
	                $id_destinasi = $list["id_destinasi"];
	                $result_img = query("SELECT * FROM gambar WHERE id_destinasi=$id_destinasi LIMIT 1")[0];
		            }
					$isi_limited = limit_words($list["isi"], 14);
		            ?>
					<div class="carousel-item col-md-4">
						<div class="card">
							<img class="card-img-top img-fluid img-sec2" src="admin/img/<?= $result_img["gambar"]; ?>" alt="Card image cap">
							<div class="card-body">
								<h4 class="card-title font-black"><?= $list["nama"]; ?></h4>
								<p class="card-text font-black"><?= $isi_limited; ?>. . . . <a class="font black read-more" href="article.php?id_destinasi=<?= $list["id_destinasi"]; ?>">Read More</a></p>
							</div>
						</div>
					</div>
					<?php endforeach; ?>

				</div>
				<a class="carousel-control-prev height-button" href="#myCarousel" role="button" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next height-button" href="#myCarousel" role="button" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
	</section>

	<section id="section3" class="intro">
		<div class="inner">
			<div class="content-sec-3">
					<div class="row">
  						<div class="col-lg-6 offset-lg-6">
	  						<section class="m-add os-animation" data-os-animation="bounceInUp" data-os-animation-delay="0s">
					    		<h4>Tambah / Edit Destinasi</h4>
		                        <form action="" method="post">
		                          <div class="form-group">
		                            <label>Infokan kami bila ada salah informasi atau anda ingin
		                            menambah saran destinasi baru untuk website ini</label>
		                            <input type="email" class="form-control grey-form m-bottom-email" name="email" id="email" aria-describedby="emailHelp" placeholder="Alamat Email" required="Tolong diisi">
		                            <select class="form-control grey-form" name="pilihan" id="pilihan">
		                              <option>Tambah Destinasi</option>
		                              <option>Edit Destinasi</option>
		                            </select>
		                            <textarea class="form-control m-text-area grey-form" name="pesan" id="pesan" rows="3" placeholder="Isi Pesan"></textarea>
		                            <button type="submit" name="submit" class="btn btn-dark width-max">Kirim</button>
		                          </div>
		                        </form>
							</section>
						</div>
					</div>
				 </div>
			</div>
		</div>
	</section>

	<section id="section4" class="intro">
		<div class="inner">
			<div class="container">
				<section class="os-animation" data-os-animation="bounceInUp" data-os-animation-delay="0s">
					<div class="row">
					  <div class="col-lg-5 center-content">
					  	<div class="profile-photo">
					  		<img src="css/img/me.png">
					  	</div>
					  	<div class="author-text">
					  		<h3 class="font-black">Farhan Taufik Hidayat</h3>
					  		<h5 class="font-black">Author</h5>
					  	</div>
					  	<div class="social-media-link">
					  		<a href="https://web.facebook.com/farhanth98" target="_blank"><img src="css/img/facebook-icon.png" alt=""></a>
					  		<a href="https://github.com/farhanth" target="_blank"><img src="css/img/github-icon.png" alt=""></a>
					  		<a href="https://www.linkedin.com/in/farhan-taufik-hidayat-7a9a35186/" target="_blank"><img src="css/img/linkedin-icon.png" alt=""></a>
					  		<a href="https://twitter.com/Farhan_TH" target="_blank"><img src="css/img/twitter-icon.png" alt=""></a>
					  		<a href="https://t.me/realfarhanth98" target="_blank"><img src="css/img/telegram-icon.png" alt=""></a>
					  	</div>
					  </div>
					  <div class="col-lg-7 border-sec4">
					  	<p class="font-black about-text">
					  		<a href="index.php">BandungBersejarah</a> merupakan situs untuk mencari destinasi wisata bertemakan sejarah
					  		di Kota Bandung. Berkunjung ke tempat-tempat yang direkomendasikan dapat menambah wawasan anda tentang edukasi sejarah.
					  		Selain itu, dapat juga menjadi alternatif wisata bagi kalian yang sudah bosan dan ingin mencoba suasana baru berlibur di Kota Bandung.
					  	</p>
					  	<p class="font-black about-text">Sejarah merupakan ilmu yang mempunyai makna sosial yang penting bagi perkembangan dan perubahan masyarakat. Dengan sejarah kita dapat termotivasi untuk bersikap baik seperti pahlawan kita dan menjaga peninggalan sejarah yang ada</p>
					  	<p class="font-black about-text quote-text">"Bangsa yang besar adalah bangsa yang menghormati jasa pahlawannya." — Dr. Ir. H. Soekarno.</p>
					  </div>
					</div>
				</section>
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

 	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="js/scrolling-nav.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	<script src="js/jquery.waypoints.min.js" type="text/javascript"></script>
	<script src="js/waypoints.js" type="text/javascript"></script>
</body>
</html>