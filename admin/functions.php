<?php 
$conn = mysqli_connect("localhost", "root", "", "db_bersejarah");

function query($query){
	global $conn;
	$result = mysqli_query($conn, $query);
	$rows= [];
	while ($row = mysqli_fetch_assoc($result)) {
		$rows[] = $row;
	}
	return $rows;
}

function tambah_pesan($data){
	global $conn;

	//ambil data dari tiap elemen di form
	$email = htmlspecialchars($data["email"]);
	$pilihan = htmlspecialchars($data["pilihan"]);
	$pesan = htmlspecialchars($data["pesan"]);

	//query insert data
	$query = "INSERT INTO inbox
				VALUES
				('', '$email', '$pilihan', '$pesan')
			";
	mysqli_query($conn, $query);

	return mysqli_affected_rows($conn);
}

function hapus_pesan($id){
	global $conn;
	mysqli_query($conn, "DELETE FROM inbox WHERE id_pesan = $id");
	return mysqli_affected_rows($conn);
}

function tambah_destinasi($data){
	global $conn;

	//ambil data dari tiap elemen di form
	$nama = htmlspecialchars($data["namatempat"]);
	$alamat = htmlspecialchars($data["alamat"]);
	$link_mobil = htmlspecialchars($data["link_mobil"]);
	$link_umum = htmlspecialchars($data["link_umum"]);
	$isi = ($data["isi"]);
	$auto_inc = htmlspecialchars($data["auto_inc"]);
	$favorit = htmlspecialchars($data["favorit"]);

	//query insert data
	$query = "INSERT INTO destinasi
				VALUES
				('', now(), '$nama', '$alamat', '$link_mobil', '$link_umum', '$favorit', '$isi')
			";
	mysqli_query($conn, $query);

	$jumlah = count($_FILES['gambar']['name']);
	if ($jumlah > 0) {
		for ($i=0; $i < $jumlah; $i++) { 
			$namaFile = $_FILES['gambar']['name'][$i];
			$ukuranFile = $_FILES['gambar']['size'][$i];
			$error = $_FILES['gambar']['error'][$i];
			$tmpName = $_FILES['gambar']['tmp_name'][$i];

			$path = $_FILES['gambar']['name'][$i];
			$ekstensiGambar = pathinfo($path, PATHINFO_EXTENSION);

			$namaFileBaru = uniqid();
			$namaFileBaru .= '.';
			$namaFileBaru .= $ekstensiGambar;

			$result = mysqli_query($conn, "SELECT `AUTO_INCREMENT`
					FROM  INFORMATION_SCHEMA.TABLES
					WHERE TABLE_SCHEMA = 'db_bersejarah'
					AND   TABLE_NAME   = 'destinasi'");

			move_uploaded_file($tmpName, "img/".$namaFileBaru);
			$queryimg = "INSERT INTO gambar
							VALUES
							('', now(), '$auto_inc', '$nama', '$namaFileBaru', '$ekstensiGambar')
						";
			mysqli_query($conn, $queryimg);				
		}
	}
	else{
		echo "Gambar tidak ada";
	}

	return mysqli_affected_rows($conn);
}

function hapus_destinasi($id){
	global $conn;
	mysqli_query($conn, "DELETE FROM destinasi WHERE id_destinasi = $id");
	return mysqli_affected_rows($conn);
}

function edit_destinasi($data){
	global $conn;

	$id_destinasi = $data["id_destinasi"];
	$nama = htmlspecialchars($data["namatempat"]);
	$alamat = htmlspecialchars($data["alamat"]);
	$link_mobil = htmlspecialchars($data["link_mobil"]);
	$link_umum = htmlspecialchars($data["link_umum"]);
	$favorit = htmlspecialchars($data["favorit"]);
	$isi = ($data["isi"]);

	$query_update = "UPDATE destinasi SET
				nama = '$nama',
				alamat = '$alamat',
				link_mobil = '$link_mobil',
				link_umum = '$link_umum',
				favorit = '$favorit',
				isi = '$isi'
				WHERE id_destinasi = $id_destinasi
			";
	mysqli_query($conn, $query_update);

	return mysqli_affected_rows($conn);
}
?>