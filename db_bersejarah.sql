-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 01:42 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bersejarah`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `id_destinasi` int(11) NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `nama` varchar(64) NOT NULL,
  `alamat` varchar(160) NOT NULL,
  `link_mobil` varchar(255) NOT NULL,
  `link_umum` varchar(255) NOT NULL,
  `favorit` enum('Iya','Tidak') NOT NULL,
  `isi` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`id_destinasi`, `tgl_posting`, `nama`, `alamat`, `link_mobil`, `link_umum`, `favorit`, `isi`) VALUES
(2, '2019-07-26 22:21:38', 'Gedung Sate', 'Jl. Diponegoro No.22, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115', 'https://www.google.com/maps/dir//Gedung+Sate,+Jalan+Diponegoro,+Citarum,+Bandung+City,+West+Java/@-6.9024799,107.5837901,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64c5e8866e5:0x37be7ac9d575f7ed!2m2!1d107.61881!2d-6.9024812!3e0', 'https://www.google.com/maps/dir//Gedung+Sate,+Jalan+Diponegoro,+Citarum,+Bandung+City,+West+Java/@-6.9024799,107.5837901,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64c5e8866e5:0x37be7ac9d575f7ed!2m2!1d107.61881!2d-6.9024812!3e3', 'Iya', '<p>Ada yang belum pernah mendengar nama Gedung Sate yang ada di Kota Bandung? Pasti hampir semuanya sudah dong! Bangunan ini bisa dibilang sebagai ikon paling khas yang ada di kota Bandung. Gedung Sate ini masih dipakai secara aktif untuk kegiatan pemerintahan Provinsi Jawa Barat, namun sekaligus sebagai daya tarik pariwisata dari Kota Bandung.</p>\r\n<p>Bisa dibilang, liburan ke Bandung kurang lengkap tanpa berkunjung ke Gedung Sate ini. Gedung yang berada di tengah Kota Bandung ini memang unik. Terutama salah satu bagian dari gedung, yaitu sebuah ornament yang mirip tusuk sate yang berada di puncak bangunan. Karena hal tersebut bangunan ini kemudian diberi nama gedung sate oleh orang Bandung. Sebelum itu pada masa pemerintahan Belanda dulu, Gedung ini mempunyai bernama Gouvernements Bedrijven.</p>\r\n<p>Gedung Sate ini dibangun pada tanggal 27 Juli 1920. Arsitektur dari Gedung Sate di Bandung dirancang oleh seorang arsitek dari Belanda yaitu J. Gerber. Untuk membangun bangunan ini, melibatkan sekitar kurang lebih 2000 orang pekerja, 150 orang pemahat dan pengukir kayu.</p>\r\n<p>Akses salah satu ikon Kota Bandung ini sangat mudah karena area ini berada di jantung dari kota Bandung. Jadi lokasi Gedung sate ini benar-benar berada di tengah-tengah kota. Untuk detail nya, Anda bisa memanfaatkan fitur navigasi yang ada di website ini.</p>\r\n<p>Pengunjung hanya boleh berfoto di bagian luarnya saja. Sebenarnya bisa juga masuk hingga ke bagian dalam gedung. Namun untuk dapat masuk ke dalam gedung ini kalian harus melewati proses perizinan lewat pemerintah setempat. Hal itu harus dilakukan karena memang Gedung Sate ini masih dipakai untuk kegiatan pemerintahan setiap harinya. Jika kalian memang ingin masuk kedalam gedung, ikuti saja semua prosedur yang diperlukan untuk masuk ke dalam Gedung Sate.</p>\r\n<p>Ada beberapa bagian dari gedung yang cukup bersejarah di bagian area luar gedung. Salah satunya adalah terdapat sebuah prasasti di depan Gedung Sate itu sendiri. Berdasarkan sejarah, di bawah prasasti tersebut pernah terkubur 7 jenazah pemuda pejuang kemerdekaan yang gugur saat mempertahankan gedung tersebut dari penjajah.</p>\r\n<p>Dan jika kalian berkesempatan masuk ke dalam dari Gedung Sate, kalian akan bisa melihat seperangkat alat musik gamelan khas Sunda yang ada di sana. Namun alat musik gamelan di Gedung Sate ini biasanya hanya dimainkan pada saat-saat acara tertentu saja. Biasanya sih akan dimainkan dalah suasana hari besar seperti ketika diadakan acara kenegaraan atau saat sedang menjamu tamu besar. Gimana? Menarik banget kan Gedung Sate ini.</p>\r\n<p>&nbsp;</p>'),
(3, '2019-07-26 22:25:17', 'Gua Belanda Bandung', 'Taman Hutan Raya Juanda, Cimenyan, Ciburial, Kec. Cimenyan, Bandung, Jawa Barat 40198', 'https://www.google.com/maps/dir//Gua+Belanda,+Ciburial,+Bandung,+West+Java/@-6.8544581,107.6027708,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e730e42888e5:0x5f13719c88214ae3!2m2!1d107.6377907!2d-6.8544594!3e0', 'https://www.google.com/maps/dir//Gua+Belanda,+Ciburial,+Bandung,+West+Java/@-6.8544581,107.6027708,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e730e42888e5:0x5f13719c88214ae3!2m2!1d107.6377907!2d-6.8544594!3e3', 'Tidak', '<p>Lokasi tempat ini berada di dalam kawasan Taman Hutan Raya (Tahura) Ir. H. Djuanda. Cukup mudah aksesnya, baik kendaraan umum, kendaraan pribadi bahkan bus. Memasuki kawasan taman hutan raya ini, kita akan menjumpai deretan hutan pinus yang membuat kawasan ini terasa sejuk dan asri. Untuk sampai ke Gua Belanda, anda perlu berjalan menyusuri kawasan Taman Hutan dengan jarak yang lumayan jauh. Sebelum sampai disini anda juga akan melewati Gua Jepang.</p>\r\n<p>Gua Belanda sudah dibuat rapih dengan pintu besi di kedua ujung goa. Lantai dan dindingnya sudah rapih juga. Cerita terkait jaman dahulu kala saat Belanda masih berkuasa. Semula kawasan Tahura ini merupakan bentangan pegunungan dari barat sampai ke timur yang merupakan tangki &ldquo;air raksasa alamiah&rdquo; untuk cadangan di musim kemarau. Oleh karena itu, pada masa Belanda tahun 1918, dibangunlah sebuah Pembangkit Listrik Tenaga Air (PLTA) Bengkok di Daerah Aliran Sungai (DAS) Cikapundung yang berada di Tahura. PLTA sepanjang 114 meter dengan lebar 1,8 meter ini merupakan PLTA pertama di Indonesia, dimana terdapat sebuah terowongan yang melewati perbukitan batu pasir tufaan.</p>\r\n<p>Akan tetapi, enam tahun kemudian setelah air Sungai Cikapundung dialirkan melalui pipa, gua ini beralih fungsi. Dilihat dari letaknya yang strategis dan tersembunyi, kemudian menjelang perang dunia kedua awal tahun 1941, pihak Belanda menjadikan terowongan ini sebagai benteng atau markas militernya.</p>\r\n<p>Dalam terowongan tersebut mereka membangun jaringan gua sebanyak 15 lorong dan 2 pintu masuk setinggi 3,2 meter. Luas pelataran yang dipakai gua seluas 0,6 hektar dan luas seluruh gua berikut lorongnya adalah 547 meter. Di dekat mulut terowongan pun dibangun semacam pos untuk mengawasi daerah sekitarnya. Saluran atau terowongan berupa jaringan gua di dalam perbukitan ini kemudian dinamakan Gua Belanda.</p>\r\n<p>Nah, selain 15 lorong yang ada di dalam gua tersebut, kita juga bisa melihat beberapa ruangan lainnya seperti ruang kamar yang dahulunya digunakan untuk tempat istirahat atau tidur para tentara Belanda. Lalu, ada juga ruang tahanan atau penjara, ruang interogasi untuk para tahanan, serta lorong ventilasi sepanjang 126 meter dengan lebar 2 meter. Jika melihat atap gua ini, kita bisa melihat seperti bekas ada penerangan lampu yang kini sudah tidak bisa dipakai lagi karena seringkali mati.</p>\r\n<p>Adapula pemandangan menarik lainnya yang bisa kita lihat di dalam Gua Belanda, yakni bekas rel troli semacam untuk pengangkutan barang atau sejenisnya yang memanjang di lorong Gua Belanda serta ruangan bekas stasion radio telekomunikasi militer Belanda.</p>\r\n<p>Setelah anda berkunjung ke tempat ini, anda bisa melanjutkan perjalanan anda ke Curug Omas untuk santai sejenak. Kawasan ini buka setiap hari. Untuk berkunjung ke tempat ini anda dikenakan tiket dengan harga yang terjangkau.</p>\r\n<p>&nbsp;</p>'),
(4, '2019-07-26 22:26:37', 'Monumen Bandung Lautan Api', 'Jl. Bkr, Ciateul, Kec. Regol, Kota Bandung, Jawa Barat 40252', 'https://www.google.com/maps/dir//Monumen+Bandung+Lautan+Api,+Jl.+Bkr,+Ciateul,+Bandung+City,+West+Java/@-6.9337632,107.5699052,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e89be8e206d1:0x3f1a38cabd1ca42e!2m2!1d107.604925!2d-6.9338497!3e0', 'https://www.google.com/maps/dir//Monumen+Bandung+Lautan+Api,+Jl.+Bkr,+Ciateul,+Bandung+City,+West+Java/@-6.9337632,107.5699052,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e89be8e206d1:0x3f1a38cabd1ca42e!2m2!1d107.604925!2d-6.9338497!3e3', 'Tidak', '<p>Monumen Bandung Lautan Api merupakan monumen yang menjadi markah tanah Bandung. Monumen ini setinggi 45 meter, memiliki sisi sebanyak 9 bidang. Monumen ini dibangun untuk memperingati peristiwa Bandung Lautan Api, dimana terjadi pembumihangusan Bandung Selatan yang dipimpin oleh Muhammad Toha. Letaknya berada di tengah-tengah kota yaitu terletak di kawasan Lapangan Tegallega. Monumen ini menjadi salah satu monumen terkenal di Bandung dan menjadi pusat perhatian setiap tanggal 23 Maret mengenang peristiwa Bandung Lautan Api.</p>\r\n<p>Istilah &ldquo;Bandoeng Laoetan Api&rdquo; sendiri memiliki sejarahnya yang tak sederhana. Ketika itu, ultimatum dari penjajah kepada Tentara Republik Indonesia (TRI) untuk meninggalkan Bandung melahirkan politik &ldquo;pembumihangusan&rdquo;. Semua rakyat dan pejuang Kota Bandung tentu tak rela kotanya harus jatuh ke tangan asing. Akhirnya mereka menyusun siasat dengan bermigrasi ke selatan kota dan melakukan musyawarah. Oleh sejumlah kalangan pembungihangusan Bandung merupakan langkah yang paling tepat. Rasio antara tentara sekutu dengan TRI jelas tak bisa dibandingkan dari segi jumlah maupun pasokan persenjataan.</p>\r\n<p>Monumen ini berada di tempat terbuka. Jadi jika anda ingin datang kesini bisa hari apa saja dan kapan saja</p>\r\n<p>&nbsp;</p>'),
(5, '2019-07-26 22:44:27', 'Monumen Perjuangan Rakyat Jawa Barat (Monju)', 'Jl. Dipati Ukur, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', 'https://www.google.com/maps/dir//Monumen+Perjuangan+Rakyat+Jawa+Barat,+Jalan+Dipati+Ukur,+Lebak+Gede,+Bandung+City,+West+Java/@-6.9175992,107.5762443,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64d0844175d:0xa20639eeeafb5a83!2m2!1d107.6185513!2d-6.8934', 'https://www.google.com/maps/dir//Monumen+Perjuangan+Rakyat+Jawa+Barat,+Jalan+Dipati+Ukur,+Lebak+Gede,+Bandung+City,+West+Java/@-6.9175992,107.5762443,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64d0844175d:0xa20639eeeafb5a83!2m2!1d107.6185513!2d-6.8934', 'Iya', '<p>Monumen ini berdiri di atas tanah seluas &plusmn; 72.040 m&sup2; dan luas bangunan &plusmn; 2.143 m&sup2;. Serta model bangunannya, berbentuk bambu runcing yang dipadukan dengan gaya arsitektur modern. Monumen diresmikan penggunaanya oleh Gubernur Jawa Barat, R. Nuriana pada tanggal 23 Agustus 1995. Berlokasi tidak jauh dari Gedung Sate Bandung.</p>\r\n<p>Di permukaan bagian dalam monumen ini terdapat relief yang menceritakan sejarah perjuangan rakyat Indonesia, khususnya Jawa Barat. Salah satu yang digambarkan dalam relief ini adalah peristiwa Bandung Lautan Api. Dan pidato pembelaan Bung Karno pada saat sidang di Gedung Indonesia Menggugat. Selain itu terdapat pula sastrawan bernama Saini KM.</p>\r\n<p>Bagi Anda yang suka fotografi atau sekedar berfoto selfie, Monumen ini akan menjadikan Anda ketagihan untuk mengambil banyak gambar. Selain karena memukaunya warna putih dari monumen ini, pengunjung juga akan dimanjakan dengan banyaknya sudut yang menarik dan artistik. Namun hal tersebut sudah lumrah dilakukan banyak orang.</p>\r\n<p>Ada hal lain yang lebih menarik dari sekedar mengambil gambar dengan latar belakang monumen. Jika Anda berkesempatan mengunjungi monumen ini, cobalah masuk ke ruang bawah tanah. Ya, di dalam monumen ini terdapat ruang bawah tanah yang apabila dilihat sepintas dari luar. Maka tidak akan terlihat kedua pintu ruangan bawah tanah ini. Isi nya gudang peralatan senjata zaman perjuangan melawan penjajah.</p>\r\n<p>Di samping itu terdapat relief pada bagian dinding depan Monju. Relief ini menceritakan sejarah perjuangan rakyat Jawa Barat mulai dari masa kerajaan. Masa pergerakan, masa kemerdekaan, dan masa mempertahankan kemerdekaan dalam melawan penjajahan baik Belanda, Inggris dan Jepang. Selain itu Monju dilengkapi pula oleh ruang audiovisual. Dan ruang perpustakaan yang akan digunakan sebagai sarana dalam memberikan informasi sejarah perjuangan rakyat Jawa Barat bagi pengunjung. Akan tetapi untuk bahan informasi melalui audiovisual masih belum memadai.</p>\r\n<p>Anda bisa berkunjung ke Monumen ini dihari Senin &ndash; Jumat. Hari sabtu dan minggu monument ini tutup.</p>\r\n<p>&nbsp;</p>'),
(6, '2019-07-26 22:48:02', 'Museum Geologi', 'Jl. Diponegoro No.57, Cihaur Geulis, Kec. Cibeunying Kaler, Kota Bandung, Jawa Barat 40122', 'https://www.google.com/maps/dir//Bandung+Geological+Museum,+Jalan+Diponegoro,+Cihaur+Geulis,+Bandung+City,+West+Java/@-6.9007149,107.5864354,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64ccaafebbd:0x9e53739bff7334f6!2m2!1d107.6214553!2d-6.9007162!3e0', 'https://www.google.com/maps/dir//Bandung+Geological+Museum,+Jalan+Diponegoro,+Cihaur+Geulis,+Bandung+City,+West+Java/@-6.9007149,107.5864354,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64ccaafebbd:0x9e53739bff7334f6!2m2!1d107.6214553!2d-6.9007162!3e3', 'Iya', '<p>Museum ini didirikan pada tanggal 16 Mei 1928. Museum ini telah direnovasi dengan dana bantuan dari JICA (Japan International Cooperation Agency). Setelah mengalami renovasi, Museum Geologi dibuka kembali dan diresmikan oleh Wakil Presiden RI, Megawati Soekarnoputri pada tanggal 23 Agustus 2000. Sebagai salah satu monumen bersejarah, museum berada di bawah perlindungan pemerintah dan merupakan peninggalan nasional. Dalam Museum ini, tersimpan dan dikelola materi-materi geologi yang berlimpah, seperti fosil, batuan, mineral. Semua itu dikumpulkan selama kerja lapangan di Indonesia sejak 1850.</p>\r\n<p>Design bagian luar gedung ini memiliki gaya arsitektur lama ala Belanda, jadi gedung&nbsp; ini terlihat otentik dari luar. Sekitar pintu utama gedung ini ada Toko Souvenir untuk anda yang ingin membeli &lsquo;Buah Tangan&rsquo; khas dari Bandung khusus nya Museum Geologi ini. Untuk masuk ke Gedung ini anda dikenakan tiket masuk. Biaya nya sangat amat terjangkau maka dari itu gedung ini sering ramai oleh pengunjung dari dalam atau luar Kota Bandung. Tak jarang ada siswa-siswi sekolah yang datang dalam rangka acara Study Tour.</p>\r\n<p>Selain dijadikan tempat wisata yang edukatif, gedung ini juga berfungsi sebagai perkantoran yang dilengkapi dengan sarana laboratorium geologi dan museum untuk menyimpan dan memperagakan hasil survei geologi. Oiya untuk kalian yang ingin kesini, jangan di hari jumat dan hari libur nasional ya. Karena di hari jumat dan di hari libur nasional museum ini tutup.</p>\r\n<p>Museum Geologi sangat cocok untuk anda pecinta Ilmu Pengetahuan Biologi dan Geografi. Disini anda bisa menambah ilmu tentang fosil fosil (bahkan sampai ada fosil Dinosaurus juga lho), bebatuan dan mineral alam, serta tentang alam semesta.</p>\r\n<p>&nbsp;</p>'),
(7, '2019-07-26 22:52:17', 'Museum Pos Indonesia', 'Jl. Cilaki No.73, Citarum, Bandung Wetan, Bandung City, West Java 40115', 'https://www.google.com/maps/dir//Museum+Pos+Indonesia,+Cilaki+Street,+Citarum,+Bandung+City,+West+Java,+Indonesia/@-6.9175992,107.5762443,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64b5afecaeb:0x12b93c9309d6b441!2m2!1d107.6199678!2d-6.9023181!3e0', 'https://www.google.com/maps/dir//Museum+Pos+Indonesia,+Cilaki+Street,+Citarum,+Bandung+City,+West+Java,+Indonesia/@-6.9175992,107.5762443,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e64b5afecaeb:0x12b93c9309d6b441!2m2!1d107.6199678!2d-6.9023181!3e3', 'Tidak', '<p>Gedung Bersejarah di Kota Bandung ini adalah merupakan bangunan museum dengan model arsitektur Art Deco yang sudah berdiri sejak zaman masa kolonial belanda, yaitu tepatnya pada tahun 1933. Bangunan ini merupakan hasil rancang bangun atau diarsiteki oleh dua orang berkewarganegaraan Belanda, yaitu J.Berger dan juga Leutdsgebouwdienst. Lokasinya tepat berada di sebelah kanan Gedung Kantor Pusat Pos Indonesia, atau arah sebelah timur Gedung Sate dan satu kawasan dengan Taman Pusaka Bunga Kandaga Puspa.</p>\r\n<p>Namun hingga saat ini masih bertahan dan dirawat dengan baik, sehingga telah menjadi salah satu destinasi wisata bagi para pelancing dalam dan luar negeri, khususnya bagi para pecinta atau pengoleksi prangko di di indonesia dan dunia (Filatelis).</p>\r\n<p>Yang cukup banyak menarik perhatian pengunjung yang datang ke Museum Pos Indonesia di Bandung ini adalah terdapatnya sebuah ruangan pamer, yang memajangkan berbagai surat emas dari berbagai raja-raja nusantara kepada para komandan dan gubernur Jendral Belanda.</p>\r\n<p>Perlu diketahui, bahwa surat emas tersebut sangat penting sebagai catatan sejarah perkembangan surat di tanah air, dimana surat-surat tersbut mendokumentasikan bagaimana orang masa lalu, khususnya raja-raja berkumunikasi dengan kaum penjajah.</p>\r\n<p>Dan perlu juga anda ketahui, bahwa surat-surat emas yang saat ini terdapat di Museum Pos di Bandung ini sebelumnya tersimpan di salah satu Museum di negara Inggris yang jika dilihat usia suratnya mencapai ratusan tahun.</p>\r\n<p>Isi dari surat-surat emas tersebut memang ada sebagian yang isinya ditujukan dari raja-raja nusantra kepada para gubernur jendral inggris pada saat menduduki indonesia seperti kepada Thomas Stamford Bingley Rafless.</p>\r\n<p>Untuk berkunjung ke Museum ini anda tidak dipungut biaya. Museum ini buka dihari Senin &ndash; Sabtu. Jadi jika ingin kesini pastikan tidak di hari Minggu ya.</p>\r\n<p>&nbsp;</p>'),
(8, '2019-07-27 00:53:39', 'Museum Konferensi Asia Afrika dan Gedung Merdeka', 'Jl. Asia Afrika No.65, Braga, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40111', 'https://www.google.com/maps/dir//Museum+Konferensi+Asia+Afrika,+Jalan+Asia+Afrika,+Braga,+Bandung+City,+West+Java/@-6.9209897,107.5745477,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e62f1591964f:0xed1630ec8b20a472!2m2!1d107.6095675!2d-6.9210762!3e0', 'https://www.google.com/maps/dir//Museum+Konferensi+Asia+Afrika,+Jalan+Asia+Afrika,+Braga,+Bandung+City,+West+Java/@-6.9209897,107.5745477,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e62f1591964f:0xed1630ec8b20a472!2m2!1d107.6095675!2d-6.9210762!3e0', 'Iya', '<p>Museum KAA kelewat insertMuseum Konferensi Asia Afrika (KAA) adalah museum yang memamerkan koleksi gambar-gambar proses perjalanan KAA, yaitu barang-barang yang digunakan ketika konferensi berlangsung, seperti mebel, mesin tik hingga kamera perekam. Terdapat pula patung-patung para penggagas konferensi yang disesuaikan dengan kondisinya terdahulu, hadir pula patung presiden pertama Republik Indonesia, yaitu Bapak Soekarno.</p>\r\n<p>Museum yang berlokasi di Jalan Asia Afrika No. 65 Bandung ini, berada dalam satu bangunan dengan Gedung Merdeka. Bangunan ini dirancang oleh A.F. Aalbers pada tahun 1940 kemudian diresmikan oleh Kementrian Luar Negeri Republik Indonesia pada 24 April 1980 yang bertepatan dengan perayaan KAA ke-25. Gedung Merdeka sendiri adalah tempat berlangsungnya Konferensi Asia Afrika pada tahun 1955 yang diprakarsai presiden pertama Indonesia, Soekarno.</p>\r\n<p>Gedung Merdeka dibangung tahun 1895 sebagai gedung perkumpulan bagi warga Belanda dan Eropa yang berada di Kota Bandung, hingga kemudian menjadi tempat dilangsungkannya konferensi berskala internasional. Harga tiket masuk untuk berkunjung ke Museum ini adalah gratis.</p>\r\n<p>&nbsp;</p>'),
(9, '2019-07-27 00:56:34', 'Museum Sri Baduga', 'Jl. BKR No.185, Pelindung Hewan, Kec. Astanaanyar, Kota Bandung, Jawa Barat 40243', 'https://www.google.com/maps/dir//Museum+Sri+Baduga,+Jl.+BKR+No.185,+Pelindung+Hewan,+Kec.+Astanaanyar,+Kota+Bandung,+Jawa+Barat+40243/@-6.9376772,107.5685046,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e899f41b0e7d:0xc6af38b146fd23ac!2m2!1d107.6035245!2d-6.9376', 'https://www.google.com/maps/dir//Museum+Sri+Baduga,+Jl.+BKR+No.185,+Pelindung+Hewan,+Kec.+Astanaanyar,+Kota+Bandung,+Jawa+Barat+40243/@-6.9376785,107.6035245,15z/data=!4m16!1m6!3m5!1s0x0:0xc6af38b146fd23ac!2sMuseum+Sri+Baduga!8m2!3d-6.9376785!4d107.603524', 'Tidak', '<p>Museum ini dikelola oleh pemerintah provinsi Jawa Barat, yang mulai didirikan pada tahun 1974 dengan memanfaatkan bangunan lama bekas Kawedanan Tegallega, yang kemudian diresmikan pada tanggal 5 Juni 1980 oleh Menteri Pendidikan dan Kebudayaan waktu itu, Daoed Joesoef.</p>\r\n<p>Penamaan museum ini diambil dari gelar salah seorang raja Pajajaran, Sri Baduga Maharaja sebagaimana tertulis pada Prasasti Batutulis. Dan kemudian ditetapkan melalui Kepmendikbud nomor 02223/0/1990 tanggal 4 April 1990.</p>\r\n<p>Letak museum ini tidak jauh dari Lapangan Tegalega dan Monumen Bandung Lautan Api. Bangunan Museum Sri Baduga yang berbentuk rumah panggung dengan suhunan panjang ini sangat menggambarkan rumah atau bangunan khas Jawa Barat. Museum ini menyimpan benda benda pusaka peninggalan sejarah dan benda khas suku sunda. Hal tersebut membuat isi Museum ini mempunyai nilai sejarah dan pendidikan yang tidak ternilai harganya.&nbsp;</p>\r\n<p>Sebagai salah satu Museum yang dipruntukan untuk masyarakat umum, museum Sri Baduga bisa dikatakan memiliki banyak koleksi benda-benda bersejarah seperti berbagai jenis koleksi Geologika, Biologika, Etnografika, Arkeologika, Historika, Numismatika/Heraldika, Filologika, Keramik, Seni Rupa dan Teknologi.Tercatat secara keseluruhan Museum Sri Baduga memiliki tidak kurang dari 5.367 buah koleksi peninggalan bersejarah.</p>\r\n<p>Yang terbanyak dari koleksi museum ini adalah koleksi rumpun Etnografika yang berhubungan dengan benda-benda budaya daerah. Jumlah koleksi tersebut tidak terbatas pada bentuk realia (asli), tapi dilengkapi dengan koleksi replika, miniatur, foto, dan maket. Benda-benda koleksi tersebut selain dipamerkan dalam pameran tetap, juga didokumentasikan dengan sistem komputerisasi dan disimpan di gudang penyimpanan koleksi.</p>\r\n<p>Untuk masuk kedalam museum ini anda dikenakan tiket masuk yang sangat amat terjangkau biaya nya. Dan jika ingin berkunjung kesini, jangan di hari Senin. Karena pada hari tersebut museum ini libur.</p>\r\n<p>&nbsp;</p>'),
(10, '2019-07-27 00:58:20', 'Museum Wangsit Mandala Siliwangi', 'Jl. Lembong No.38, Braga, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40111', 'https://www.google.com/maps/dir//Museum+Mandala+Wangsit+Siliwangi,+Jalan+Lembong,+Braga,+Bandung+City,+West+Java/@-6.9175992,107.5762443,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e63023209b95:0x3bdecfc50c8635e9!2m2!1d107.6112641!2d-6.9176857!3e0', 'https://www.google.com/maps/dir//Museum+Mandala+Wangsit+Siliwangi,+Jalan+Lembong,+Braga,+Bandung+City,+West+Java/@-6.9175992,107.5762443,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e63023209b95:0x3bdecfc50c8635e9!2m2!1d107.6112641!2d-6.9176857!3e3', 'Tidak', '<p>Museum Mandala Wangsit Siliwangi merupakan sebuah museum yang menampilkan berbagai koleksi senjata yang berada di kota Bandung. Namun lebih dari itu, Museum ini juga menawarkan pengalaman wisata sejarah lainnya yang sangat unik dan menarik seputar perjalanan perjuangan bangsa indonesia.</p>\r\n<p>Nama kata &ldquo;Siliwangi&rdquo; di belakang Museum Mandala Wangsit merupakan nama seorang Raja dari Kerajaan Padjajaran yang sangat terkenal dan wilayah kekuasaannya tidak terbatas, yaitu Prabu Siliwangi.</p>\r\n<p>Prabu Siliwangi adalah seorang raja yang sangat dikenal luas di masyarakat Jawa Barat sebagai seorang raja yang arif dan bijaksana serta berwibawa ketika memerintah kerajaannya.</p>\r\n<p>Sedangkan asal usul nama &ldquo;Mandala Wangsit&rdquo; sendiri mengandung makna sebuah tempat untuk menyimpan wasiat, amanah atau petuah serta nasihat dari para pejuang di masa lalu untuk generasi selanjutnya melalui benda-benda sejarah yang diwariskannya.</p>\r\n<p>Sementara nama jalan Lembong dimana tempat museum di kota Bandung ini berada, diambil dari dari salah satu pejuang kemerdekaan yang bernama Letkol Lembong, salah seorang prajurit Siliwangi yang menjadi korban dalam Peristiwa Kudeta Angkatan Perang Ratu Adil&nbsp; (APRA).</p>\r\n<p>Koleksi Benda-benda sejarah yang dipamerkan di Museum Mandala Wangsit Siliwangi ini adalah berbagai benda peninggalan sejarah mulai dari kurun waktu masa perjuangan kemerdekaan, kemudian masa perang kemerdekaan serta masa Revolusi Fisik.</p>\r\n<p>Sebelum memasuki ruangan museum, anda terlebih dahulu harus mengisi buku tamu, yang lokasinya dekat dengan tempat penitipan barang seperti tas, Jaket dan perlengkapan yang anda bawa.</p>\r\n<p>Benda-benda yang ada di Museum Mandala Wangsit ini diantaranya adalah berupa berbagai senjata tradisional khas jawa barat dan nusantara seperti Kujang, Keris, Pedang, Golok, Tombak, Panah, Pedang Bambu hingga Samurai pun ada.</p>\r\n<p>Tidak hanya itu, benda sejarah lainnya pun bisa anda lihat seperti senjata dari berbagai jenis yang beragam, serta yang tidak kalah m,enariknya di sini juga dipamerkan berbagai kendaraan militer yang pernah digunakan pada masa perang kemerdekaan.</p>\r\n<p>Untuk berkunjung ke Museum ini anda hanya perlu mengisi buku tamu saja, alias gratis. Namun anda bisa menyumbang untuk biaya perawatan museum. Jika anda ingin berkunjung kesini cobalah datang di hari Weekday. Karena di hari Sabtu dan Minggu museum ini tutup.</p>\r\n<p>&nbsp;</p>'),
(11, '2019-07-27 01:00:10', 'Observatorium Bosscha', 'Jl. Peneropongan Bintang No.45, Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', 'https://www.google.com/maps/dir//Observatorium+Bosscha,+Jalan+Peneropongan+Bintang,+Lembang,+West+Bandung+Regency,+West+Java/@-6.9175992,107.5762443,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e11292b0db83:0xc0f73eee035e3ffd!2m2!1d107.6160849!2d-6.8245103!3e0', 'https://www.google.com/maps/dir//Observatorium+Bosscha,+Jalan+Peneropongan+Bintang,+Lembang,+West+Bandung+Regency,+West+Java/@-6.9175992,107.5762443,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e11292b0db83:0xc0f73eee035e3ffd!2m2!1d107.6160849!2d-6.82451', 'Iya', '<p>Observatorium Bosscha Bandung atau Teropong Bintang Bosscha di Bandung adalah merupakan salah satu tempat untuk melihat dan melakukan penelitian Bintang-bintang di luar angkasa yang paling tua di Indonesia.Teropong Bintang Bosscha yang berlokasi di kawasan wisata Lembang,Bandung Jawa Barat ini terletak tak lebih hanya sekitar 15 Km di bagian Barat kota Bandung.Lokasi arealnya sangat luas mencapai 6 hektar,dengan ketinggian tempatnya berada di 1.300 meter di atas permukaan air laut,atau ada pda ketinggian 630 meter dari dataran tinggi pegunungan Bandung,sehingga sangat tepat apabila tempat wisata di bandung ini selain sebagai arena wisata pendidikan dan sejarah ,namun juga sangat baik sebagai lokasi liburan keluarga karena berhawa sejuk dan memiliki keindahan alam di sekitarnya yang bisa anda nikmati juga apabila berkunjung ke Bosscha Bandung ini.</p>\r\n<p>Tempat ini dahulunya bernama Bosscha Sterrenwacht, digagas atau dicanangkan pertama kali sebagai proyek mega penting pada masanya ini yakni dibangun oleh Nederlandsch-Indische Sterrenkundige Vereeniging (NISV) atau Perhimpunan Bintang Hindia Belanda, dengan peletakan batu pertama di tahun 1923 dan beres pada tahun 1928.</p>\r\n<p>Sebagai pusat observasi yang pernah terbesar di masanya,observatorium atau Teropong Bintang Bosscha memiliki fasilitas atau peralatan penelitian berupa teleskop sebanyak 5 jenis,Dan masing-masing teleskop memiliki kemampuan atau spesifikasi tertentu untuk alat penerawangan benda-benda angkasa luar.</p>\r\n<p>Untuk harga tiket masuk ke lokasi wisata pendidikan di Bandung Teropong Bintang Bosscha ini,pengunjung bisa membayar tiket masuk secara langsung (Kategori kunjungan pribadi/keluarga). Untuk siang harga nya Rp. 15.000 sedangkan untuk malam harga nya Rp. 20.000 per orang serta dengan cara harus registrasi terlebih dahulu (Instansi/sekolah), yang ditujukan untuk mengatur jadwal kunjungan di Teropong Bintang Bosscha Bandung ini.Perlu anda ketahui untuk bisa masuk ke lokasi wisata di lembang bandung ini,pengunjung diatur dengan beberapa sesi Jadwal kunjungan.</p>\r\n<p>&nbsp;</p>'),
(12, '2019-07-27 01:01:48', 'Taman Sejarah', 'Jl. Aceh No.53, Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40117', 'https://www.google.com/maps/dir//Taman+Sejarah+Bandung,+Jalan+Aceh,+Babakan+Ciamis,+Bandung+City,+West+Java/@-6.910127,107.5751679,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e63782a282eb:0x4957808ac9586362!2m2!1d107.6101878!2d-6.9101283!3e0', 'https://www.google.com/maps/dir//Taman+Sejarah+Bandung,+Jalan+Aceh,+Babakan+Ciamis,+Bandung+City,+West+Java/@-6.910127,107.5751679,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e63782a282eb:0x4957808ac9586362!2m2!1d107.6101878!2d-6.9101283!3e3', 'Tidak', '<p>Lokasi Taman Sejarah Bandung sendiri adalah menempati bekas lahan parkir daripada Gedung DPRD Kota Bandung. Taman Sejarah ini cukup dekat juga dengan sejumlah tempat wisata di Bandung terpopuler saat ini seperti Taman Sungai Cikapundung ( Teras Cikapundung ) di jalan Merdeka, Taman Vanda Bandung dan pusat perbelanjaan seperti Mall di Bandung BIP dan BEC.</p>\r\n<p>Taman Kota Bandung ini tepat diresmikan pada tanggal 4 Februari 2017 oleh walikota bandung Ridwan Kamil. Setelah disahkan sebagai salah satu objek wisata di Kota Bandung, Taman Sejarah Bandung ini telah menjadi tempat yang banyak diburu warga Kota Bandung dan luar kota untuk bersantai di areal taman tematik ini.</p>\r\n<p>Lokasinya yang strategis berada di pusat kota dan pemerintahan Kota Bandung, yaitu berada di dekat perempatan atau persimpangan antara Jalan Aceh dan jalan Merdeka, memudahkan kita untuk menjangkau tempat ini.</p>\r\n<p>Di sini pengunjung bisa melihat dan menikmati suguhan sejarah siapa saja orang yang berperan dan menjadi pemimpin bandung dari masa ke masa berupa kisah yang dibuat dalam bentuk gambar mural, relief dan stiker.</p>\r\n<p>Di taman sejarah, pengunjung bisa melihat sejumlah gambar para walikota yang pernah memimpin kota Bandung, mulai dari era Bertus Coops, Otje Djundjunan, Ateng Wahyudi, Aa Tarmana, Dada Rosada hingga yang terbaru Ridwan Kamil.</p>\r\n<p>Gambar-gambar tersebut akan menjelaskan kisah perjalanan serta biografi para pemimpin kota Bandung serta biografi mereka yang dijelaskan sangat kreatif dan akan memancing minat terutama anak-anak muda, pelajar dan yang lainnya.</p>\r\n<p>Tidak hanya itu, semua informasi perkembangan kota bandung dari masa ke masa, mulai dari zaman prasejarah, zaman kemerdekaan hingga kisah Cerita Rakyat Sangkuriang dan Gunung Tangkuban Perahu pun ada.</p>\r\n<p>Jika anda sudah selesai melihat lihat dan menambah wawasan anda tentang Kota Bandung, anda bisa mengajak putra/putri anda untuk bermain air. Disini tersedia kolam renang untuk anak anak. Tinggi kolam nya hanya sekitar setinggi betis orang dewasa saja. Meski kolam renang ini tidak selengkap seperti waterpark atau tempat kolam renang lain nya, namun anda bisa mengajak anak anda bermain air secara gratis.</p>\r\n<p>Taman tematik yang sekaligus berfungsi sebagai ruang terbuka hijau ini dapat dikunjungi kapan saja. Dan untuk datang kesini anda tidak dipungut biaya sepeser pun.</p>\r\n<p>&nbsp;</p>'),
(13, '2019-07-27 01:05:42', 'Bandung Planning Gallery', 'Jl. Aceh No.36, Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40117', 'https://www.google.com/maps/dir//Bandung+Planning+Gallery,+Jalan+Aceh,+Babakan+Ciamis,+Bandung+City,+West+Java/@-6.9102644,107.5747878,13z/data=!4m9!4m8!1m0!1m5!1m1!1s0x2e68e639d51dbb33:0x34de3eedb5e0444d!2m2!1d107.6098076!2d-6.9103509!3e0', 'https://www.google.com/maps/dir//Bandung+Planning+Gallery,+Jalan+Aceh,+Babakan+Ciamis,+Bandung+City,+West+Java/@-6.9102644,107.5747878,13z/data=!3m1!4b1!4m9!4m8!1m0!1m5!1m1!1s0x2e68e639d51dbb33:0x34de3eedb5e0444d!2m2!1d107.6098076!2d-6.9103509!3e3', 'Tidak', '<p>Kini, warga dapat mengetahui identitas Bandung masa lalu, masa kini, dan masa depan dalam media interaktif anjungan perencanaan kota di Bandung Planning Gallery (BPG). Letak gedung ini tidak jauh dari spot ruang public Taman Sejarah Bandung dan Balai Kota Bandung.</p>\r\n<p>BPG sendiri rencananya akan diluncurkan pada tanggal 1 Agustus 2017 oleh Wali Kota Bandung Ridwan Kamil. Namun, masyarakat sudah bisa berkunjung secara gratis per 25 Juli 2017.</p>\r\n<p>Kehadiran Bandung Planner Gallery berangkat dari permasalahan terkait pembangunan dari kebijakan masa lalu. Galeri ini terinspirasi untuk menjadi ruang transparansi kebijakan publik. Di BPG terdapat gambaran mengenai pembangunan Kota Bandung dalam 30 tahun ke depan, termasuk rancangan Bandung Teknopolis. Selain memuat proyeksi lengkap mengenai pembangunan Kota Bandung, di sini pun dirancang satu ruangan khusus dalam galeri untuk menunjukkan rencana pembangunan yang tengah diproses perizinannya.</p>\r\n<p>Para pengembang yang akan mengajukan izin harus memasang gambar proyeknya lengkap dengan berbagai detail lokasi serta maketnya untuk di pajang di ruangan tersebut. Galeri khusus mengenai pembangunan ini bertujuan untuk memperlihatkan kepada masyarakat mengenai keseluruhan pembangunan di Kota Bandung yang luasnya mencapai 16.000 hektar.</p>\r\n<p>Anda dapat melihat semua tentang Bandung hanya dengan beberapa bagian ruangan di gedung ini. Seperti ruangan Bandung Masa Lalu dan Masa Kini, Smart City dan Urban Mobility, Bandung Teknopolis, Galeri Temporer dll</p>\r\n<p>Untuk masuk dan menjajal aneka multimedia di dalamnya tidak dipungut biaya alias gratis. Tempat informatif ini buka dari jam 9 pagi sampai jam 4 sore. Kecuali hari Minggu.</p>\r\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `tgl_posting` datetime NOT NULL,
  `id_destinasi` int(11) NOT NULL,
  `nama` varchar(64) NOT NULL,
  `gambar` varchar(64) NOT NULL,
  `format_gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `tgl_posting`, `id_destinasi`, `nama`, `gambar`, `format_gambar`) VALUES
(1, '2019-07-26 22:12:31', 1, 'Bandung Planning Gallery', '5d3b185f38db5.JPG', 'JPG'),
(2, '2019-07-26 22:12:31', 1, 'Bandung Planning Gallery', '5d3b185f43934.png', 'png'),
(3, '2019-07-26 22:12:31', 1, 'Bandung Planning Gallery', '5d3b185f54dc7.jpg', 'jpg'),
(4, '2019-07-26 22:12:31', 1, 'Bandung Planning Gallery', '5d3b185f79b19.jpg', 'jpg'),
(5, '2019-07-26 22:12:31', 1, 'Bandung Planning Gallery', '5d3b185f84b26.jpg', 'jpg'),
(6, '2019-07-26 22:21:38', 2, 'Gedung Sate', '5d3b1a827c0ff.jpg', 'jpg'),
(7, '2019-07-26 22:21:38', 2, 'Gedung Sate', '5d3b1a82acc10.jpg', 'jpg'),
(8, '2019-07-26 22:21:38', 2, 'Gedung Sate', '5d3b1a82be183.jpg', 'jpg'),
(9, '2019-07-26 22:21:39', 2, 'Gedung Sate', '5d3b1a830bca6.jpg', 'jpg'),
(10, '2019-07-26 22:25:17', 3, 'Gua Belanda Bandung', '5d3b1b5d28f5f.jpg', 'jpg'),
(11, '2019-07-26 22:25:17', 3, 'Gua Belanda Bandung', '5d3b1b5d618a5.jpg', 'jpg'),
(12, '2019-07-26 22:25:17', 3, 'Gua Belanda Bandung', '5d3b1b5d6c6ce.jpg', 'jpg'),
(13, '2019-07-26 22:25:17', 3, 'Gua Belanda Bandung', '5d3b1b5d7f8cc.JPG', 'JPG'),
(14, '2019-07-26 22:25:17', 3, 'Gua Belanda Bandung', '5d3b1b5d9a8a7.JPG', 'JPG'),
(15, '2019-07-26 22:25:17', 3, 'Gua Belanda Bandung', '5d3b1b5da58bf.jpg', 'jpg'),
(17, '2019-07-26 22:26:37', 4, 'Monumen Bandung Lautan Api', '5d3b1bad734ee.jpg', 'jpg'),
(18, '2019-07-26 22:26:37', 4, 'Monumen Bandung Lautan Api', '5d3b1bad89076.jpg', 'jpg'),
(19, '2019-07-26 22:26:37', 4, 'Monumen Bandung Lautan Api', '5d3b1bada9b0e.jpg', 'jpg'),
(20, '2019-07-26 22:44:28', 5, 'Monumen Perjuangan Rakyat Jawa Barat (Monju)', '5d3b1fdbdc16d.jpg', 'jpg'),
(21, '2019-07-26 22:44:28', 5, 'Monumen Perjuangan Rakyat Jawa Barat (Monju)', '5d3b1fdc13788.jpg', 'jpg'),
(22, '2019-07-26 22:44:28', 5, 'Monumen Perjuangan Rakyat Jawa Barat (Monju)', '5d3b1fdc2e79d.jpg', 'jpg'),
(23, '2019-07-26 22:44:28', 5, 'Monumen Perjuangan Rakyat Jawa Barat (Monju)', '5d3b1fdc39788.jpg', 'jpg'),
(24, '2019-07-26 22:48:02', 6, 'Museum Geologi', '5d3b20b2f2c50.jpg', 'jpg'),
(25, '2019-07-26 22:48:03', 6, 'Museum Geologi', '5d3b20b318cc1.jpg', 'jpg'),
(26, '2019-07-26 22:48:03', 6, 'Museum Geologi', '5d3b20b34fe4a.jpg', 'jpg'),
(27, '2019-07-26 22:48:03', 6, 'Museum Geologi', '5d3b20b35aa09.jpg', 'jpg'),
(32, '2019-07-26 22:52:17', 7, 'Museum Pos Indonesia', '5d3b21b1325f5.jpg', 'jpg'),
(33, '2019-07-26 22:52:17', 7, 'Museum Pos Indonesia', '5d3b21b17d45b.jpg', 'jpg'),
(34, '2019-07-26 22:52:17', 7, 'Museum Pos Indonesia', '5d3b21b195153.jpg', 'jpg'),
(35, '2019-07-26 22:52:17', 7, 'Museum Pos Indonesia', '5d3b21b1cbd41.png', 'png'),
(36, '2019-07-27 00:53:40', 8, 'Museum Konferensi Asia Afrika dan Gedung Merdeka', '5d3b3e2433d1c.jpg', 'jpg'),
(37, '2019-07-27 00:53:40', 8, 'Museum Konferensi Asia Afrika dan Gedung Merdeka', '5d3b3e2456310.jpg', 'jpg'),
(38, '2019-07-27 00:53:40', 8, 'Museum Konferensi Asia Afrika dan Gedung Merdeka', '5d3b3e246ccba.jpg', 'jpg'),
(39, '2019-07-27 00:53:40', 8, 'Museum Konferensi Asia Afrika dan Gedung Merdeka', '5d3b3e248aa31.jpg', 'jpg'),
(40, '2019-07-27 00:56:35', 9, 'Museum Sri Baduga', '5d3b3ed2ecb1d.jpg', 'jpg'),
(41, '2019-07-27 00:56:35', 9, 'Museum Sri Baduga', '5d3b3ed34f666.jpg', 'jpg'),
(42, '2019-07-27 00:56:35', 9, 'Museum Sri Baduga', '5d3b3ed35d9eb.jpg', 'jpg'),
(43, '2019-07-27 00:56:35', 9, 'Museum Sri Baduga', '5d3b3ed36fdb8.jpg', 'jpg'),
(44, '2019-07-27 00:58:20', 10, 'Museum Wangsit Mandala Siliwangi', '5d3b3f3cd75b3.JPG', 'JPG'),
(45, '2019-07-27 00:58:21', 10, 'Museum Wangsit Mandala Siliwangi', '5d3b3f3d0ec39.jpg', 'jpg'),
(46, '2019-07-27 00:58:21', 10, 'Museum Wangsit Mandala Siliwangi', '5d3b3f3d4fd6c.png', 'png'),
(47, '2019-07-27 00:58:21', 10, 'Museum Wangsit Mandala Siliwangi', '5d3b3f3d5a7a6.jpg', 'jpg'),
(48, '2019-07-27 01:00:10', 11, 'Observatorium Bosscha', '5d3b3faa608e4.jpg', 'jpg'),
(49, '2019-07-27 01:00:10', 11, 'Observatorium Bosscha', '5d3b3faa89113.jpg', 'jpg'),
(50, '2019-07-27 01:00:10', 11, 'Observatorium Bosscha', '5d3b3faab419e.jpg', 'jpg'),
(51, '2019-07-27 01:00:11', 11, 'Observatorium Bosscha', '5d3b3faac7969.jpg', 'jpg'),
(52, '2019-07-27 01:01:48', 12, 'Taman Sejarah', '5d3b400c32767.jpg', 'jpg'),
(53, '2019-07-27 01:01:48', 12, 'Taman Sejarah', '5d3b400c766d5.jpg', 'jpg'),
(54, '2019-07-27 01:01:48', 12, 'Taman Sejarah', '5d3b400c8107d.jpg', 'jpg'),
(55, '2019-07-27 01:01:48', 12, 'Taman Sejarah', '5d3b400c96dc8.jpg', 'jpg'),
(56, '2019-07-27 01:05:43', 13, 'Bandung Planning Gallery', '5d3b40f749abf.JPG', 'JPG'),
(57, '2019-07-27 01:05:44', 13, 'Bandung Planning Gallery', '5d3b40f8779c2.png', 'png'),
(58, '2019-07-27 01:05:44', 13, 'Bandung Planning Gallery', '5d3b40f8dcd86.jpg', 'jpg'),
(59, '2019-07-27 01:05:45', 13, 'Bandung Planning Gallery', '5d3b40f9dc324.jpg', 'jpg'),
(60, '2019-07-27 01:05:46', 13, 'Bandung Planning Gallery', '5d3b40fa4f266.jpg', 'jpg'),
(61, '2019-07-27 01:16:42', 14, 'a', '5d3b438a82a64.', '');

-- --------------------------------------------------------

--
-- Table structure for table `inbox`
--

CREATE TABLE `inbox` (
  `id_pesan` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `pilihan` varchar(32) NOT NULL,
  `pesan` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inbox`
--

INSERT INTO `inbox` (`id_pesan`, `email`, `pilihan`, `pesan`) VALUES
(8, 'farhantaufik98@gmail.com', 'Tambah Destinasi', 'Halo admin. Tolong update lokasi baru dong. Tempat tersebut sudah pernah saya kunjungi semua. Terimakasih sebelumnya.'),
(9, 'mwehehe98@gmail.com', 'Edit Destinasi', 'Hai admin. Saya rasa ada kesalahan informasi mengenai jam operasional Gedung Sate. Tolong di cek ya. Terimakasih sebelumnya.'),
(10, '123@gmail.com', 'Tambah Destinasi', 'Bandung'),
(11, 'dedi@gmail.com', 'Tambah Destinasi', 'Tambah destinasi x');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinasi`
--
ALTER TABLE `destinasi`
  ADD PRIMARY KEY (`id_destinasi`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `inbox`
--
ALTER TABLE `inbox`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinasi`
--
ALTER TABLE `destinasi`
  MODIFY `id_destinasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `inbox`
--
ALTER TABLE `inbox`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
