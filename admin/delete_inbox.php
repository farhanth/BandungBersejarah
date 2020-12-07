<?php 
    session_start();  
    if(!isset($_SESSION["login"])){
        header("Location: login.php");
        exit;
    }
	require 'functions.php';
	$id_pesan = $_GET["id_pesan"];
	if(hapus_pesan($id_pesan) > 0){
		echo "
			<script>
				alert('Pesan Berhasil di Hapus!');
				document.location.href = 'index.php?p=inbox';
			</script>
		";
	} else{
		echo "
			<script>
				alert('Pesan Gagal di Hapus');
			</script>
		";
	}
?>