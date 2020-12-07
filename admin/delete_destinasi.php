<?php 
    session_start();  
    if(!isset($_SESSION["login"])){
        header("Location: login.php");
        exit;
    }
	require 'functions.php';
	$id_destinasi = $_GET["id_destinasi"];
	if(hapus_destinasi($id_destinasi) > 0){
		echo "
			<script>
				alert('Destinasi Berhasil di Hapus!');
				document.location.href = 'index.php?p=daftar_tempat';
			</script>
		";
	} else{
		echo "
			<script>
				alert('Destinasi Gagal di Hapus');
			</script>
		";
	}
?>