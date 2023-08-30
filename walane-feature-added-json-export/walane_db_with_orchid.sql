-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 26 Nov 2020 pada 16.42
-- Versi Server: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `walane`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `backup_log`
--

CREATE TABLE `backup_log` (
  `backup_log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `backup_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `backup_file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `backup_log`
--

INSERT INTO `backup_log` (`backup_log_id`, `user_id`, `backup_time`, `backup_file`) VALUES
(1, 1, '2020-07-16 18:00:22', '/home/k7627930/public_html/demosetiadi/files/backup/backup_20200716_180021.sql.tar.gz'),
(2, 1, '2020-11-26 22:21:14', 'C:\\xampp\\htdocs\\walane\\files\\backup\\backup_20201126_222114.sql');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio`
--

CREATE TABLE `biblio` (
  `biblio_id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `gmd_id` int(3) DEFAULT NULL,
  `item_type_id` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `sor` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `student_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cp_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `departement` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code_ministry` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher_id` int(11) DEFAULT NULL,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `series_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` char(5) COLLATE utf8_unicode_ci DEFAULT 'en',
  `copyright_id` int(11) DEFAULT NULL,
  `license_id` int(11) NOT NULL,
  `source` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place_id` int(11) DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_att` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_crossref` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `opac_hide` smallint(1) DEFAULT '0',
  `promoted` smallint(1) DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `frequency_id` int(11) NOT NULL DEFAULT '0',
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `step` smallint(6) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `biblio`
--

INSERT INTO `biblio` (`biblio_id`, `unique_id`, `gmd_id`, `item_type_id`, `title`, `sor`, `edition`, `student_id`, `cp_email`, `departement`, `code_ministry`, `isbn_issn`, `publisher_id`, `publish_year`, `collation`, `series_title`, `call_number`, `language_id`, `copyright_id`, `license_id`, `source`, `publish_place_id`, `classification`, `notes`, `image`, `file_att`, `url_crossref`, `opac_hide`, `promoted`, `labels`, `frequency_id`, `spec_detail_info`, `input_date`, `last_update`, `uid`, `step`) VALUES
(20, 11, 1, 3, 'PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT', '', 'Published', '12080010100184', 'jerrypermanaa@gmail.com', 'Teknik Elektro', '20201', '', 1, '2018', 'xvii + 105 hal, 30 cm x 21 cm', '', '321', 'id', 1, 4, NULL, 1, '321', 'Penelitian ini dilakukan untuk (1) mengidentifikasi dan mendeskripsikan tipe-tipe kesalahan yang dilakukan oleh siswa kelas delapan-sembilan SMPN 1 Tarakan di dalam recount text, (2) mengidentifikasi dan mendeskripsikan sumber kesalahan yang mempengaruhi siswa untuk melakukan kesalahan yang ditulisan dalam recount text. Subyek penelitian ini adalah 26 siswa ditahun pembelajaran 2017/2018. Dalam mengumpulkan data, peneliti meminta siswa untuk menulis recount text dengan topik yang telah diberikan. Peneliti juga mewawancara 6 siswa\r\nuntuk mendapatkan informasi mengenai kemungkinan penyebab kesalahan yang mempengaruhi mereka melakukan kesalahan. Hasil menunjukkan bahwa terdapat 687 kesalahan yang ditemukan pada tulisan siswa yang dianalisis dengan menggunakan Surface Strategy Taxonomy. Ditemukan 123 kesalahan penghilangan, 104 kesalahan penambahan, 453 kesalahan pembentukan dan 7 kesalahan penempatan. Sementara itu, menurut Comparative Analysis Taxonomy kesalahan-kesalahan tersebut dipengaruhi oleh beberapa faktor seperti kesalahan perkembangan, kesalahan interlingual, kesalahan ambigu dan kesalahan lainnya. Maka ditemukan 178 kesalahan disebabkan oleh perkembangan, 13 kesalahan oleh interlingual, 26 kesalahan oleh ambigu dan 44 kesalahan oleh lainnya. Kesimpulannya, kesalahan-kesalahan gramatika terjadi pada tulisan siswa kerena kurangnya pemahaman mahasiwa mengenai grammar dan pengaruh struktur bahasa Indonesia dalam pembelajaran.', '28928978_1361978250573785_7950064153719209984_n.jpg.jpg', NULL, 'http://dx.doi.org/10.33533/jpm.v14i1.1625', 0, 0, NULL, 0, '', '2020-06-23 23:01:59', '2020-07-25 14:35:11', 1, 1),
(82, 12, 43, 3, 'PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA', NULL, 'Published', '1321115004', '', 'Program Studi S1 Ilmu Gizi', '0', '2019-03-29', 2, '2019', '', NULL, 'G.0035', 'id', 3, 0, NULL, 2, '', 'Latar Belakang : Asam urat merupakan suatu penyakit karena kelainan metabolisme purin (Hiperurisemia). Peningkatan produksi asam urat terjadi akibat : produksi asam urat berlebih, konsumsi bahan makanan yang mengandung tinggi purin, kurang cairan dan aktifitas fisik. Daun sirsak memiliki senyawa acetogenin dan flavonoid yang membantu mencegah terjadinya pembentukan asam urat.\r\n\r\nMetode : Penelitian ini merupakan penelitian pra eksperimen dengan rancangan penelitian One group pre-post test design dengan subjek sebanyak 31 pasien rawat jalan Puskesmas Pasawahan Kabupaten Purwakarta, kadar asam urat diukur pada awal penelitian (pre-test), lalu pasien diberi treatment air rebusan daun sirsak. Air rebusan daun sirsak terdiri dari 6 gram atau 10 lembar daun sirsak yang telah dicuci bersih dan direbus dengan air 600 ml yang dimasak hingga mendidih dan tersisa 200 ml. pemberian dilakukan selama 7 hari berturut-turut lalu kadar asam urat diukur kembali di hari ke-8 (post-test). Analisis data yang digunakan yaitu Paired T-test untuk uji univariat sedangkan uji bivariat menggunakan Rank Spearman dan Pearson Product Moment.\r\n\r\nHasil : Rata-rata nilai kadar asam urat sebelum diberikan air rebusan daun sirsak (pre-test) adalah 7, 16±1, 25 mg/dl dan kadar asam urat setelah diberikan air rebusan daun sirsak (post-test) adalah 7,15±1, 18 mg/dl.\r\n\r\nSimpulan : Tidak ada pengaruh pemberian air rebusan daun sirsak (Annona Muricata L) terhadap penuruna kadar asam urat.', '000434.jpg.jpg', NULL, '', 0, 0, NULL, 0, '', '2020-07-26 22:17:33', '2020-11-26 22:19:48', 1, 1),
(83, 13, 43, 3, 'PENGARUH PEMBERIAN KURMA TERHADAP KADAR HEMOGLOBIN PADA REMAJA PUTRI DI PURWAKARTA', NULL, 'Published', '1321115003', '', 'Program Studi S1 Ilmu Gizi', '0', '', 2, '2019', '', NULL, 'G.0036', 'id', 3, 0, NULL, 2, '', 'Latar belakang : Pada negara berkembang angka kejadian anemia pada remaja putri sekitar 53,7 %. Berdasarkan MI (Micronutrient Initiative) tahun 2018 prevalensi anemia di Cimahi – Purwakarta mencapai 51 %. Anemia sering menyerang remaja putri disebabkan karena keadaan stress, haid, atau terlambat makan, selain itu banyaknya remaja putri yang melakukan diet ketat sehingga asupan gizinya tidak seimbang. Anemia dapat diatasi dengan memberikan makanan yang kaya akan zat besi, salah satunya terdapat pada kurma.\r\n\r\nTujuan : Penelitian ini bertujuan untuk mengetahui pengaruh pemberian kurma terhadap kadar hemoglobin pada remaja putri di Purwakarta.\r\n\r\nMetode : Penelitian ini menggunakan desain pre-test post-test with control group. 40 orang telah berpartisipasi dalam penelitian ini. Pemberian kurma ini diberikan sebanyak 70 gram selama 2 minggu. Pengumpulan data dengan melakukan pengecekan kadar hemoglobin menggunakan metode cyanmethemoglobin dan wawancara asupan makanan menggunakan food recall 24 jam. Analisis data menggunakan uji Paired T-test untuk uji univariat sedangkan uji bivariat menggunakan uji Pearson Product Moment.\r\n\r\nHasil : Hasil analisis menggunakan uji Paired T-test diperoleh nilai p > 0,005, tidak terdapat pengaruh pemberian kurma terhadap kadar hemoglobin. Rata-rata kadar hemoglobin sebelum treatmen kurma adalah 12,72 mg/dL dan kadar hemoglobin sesudah treatmen kurma adalah 12,37 mg/dl.\r\n\r\nSimpulan : Tidak terdapat pengaruh pemberian kurma terhadap kadar hemoglobin pada remaja putri di Purwakarta', '000090.jpg.jpg', NULL, '', 0, 0, NULL, 0, '', '2020-07-26 23:41:40', '2020-11-26 22:19:23', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_attachment`
--

CREATE TABLE `biblio_attachment` (
  `biblio_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `access_type` enum('public','private') COLLATE utf8_unicode_ci NOT NULL,
  `access_limit` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `biblio_attachment`
--

INSERT INTO `biblio_attachment` (`biblio_id`, `file_id`, `access_type`, `access_limit`) VALUES
(4, 1, 'public', NULL),
(15, 2, 'public', NULL),
(20, 3, 'public', NULL),
(82, 5, 'public', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_author`
--

CREATE TABLE `biblio_author` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `author_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `biblio_author`
--

INSERT INTO `biblio_author` (`biblio_id`, `author_id`, `level`) VALUES
(4, 2, 1),
(15, 3, 1),
(18, 4, 1),
(83, 13, 1),
(20, 14, 1),
(82, 25, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_contributor`
--

CREATE TABLE `biblio_contributor` (
  `biblio_id` int(11) NOT NULL,
  `contributor_id` int(11) NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `biblio_contributor`
--

INSERT INTO `biblio_contributor` (`biblio_id`, `contributor_id`, `level`) VALUES
(9, 1, 2),
(9, 2, 1),
(15, 1, 1),
(20, 1, 1),
(82, 3, 1),
(83, 4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_custom`
--

CREATE TABLE `biblio_custom` (
  `biblio_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='one to one relation with real biblio table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_examiner`
--

CREATE TABLE `biblio_examiner` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `examiner_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `biblio_examiner`
--

INSERT INTO `biblio_examiner` (`biblio_id`, `examiner_id`, `level`) VALUES
(4, 4, 1),
(4, 5, 2),
(15, 6, 2),
(20, 6, 2),
(82, 7, 1),
(82, 8, 2),
(83, 7, 1),
(83, 8, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_supervisor`
--

CREATE TABLE `biblio_supervisor` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `supervisor_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `biblio_supervisor`
--

INSERT INTO `biblio_supervisor` (`biblio_id`, `supervisor_id`, `level`) VALUES
(4, 15, 1),
(4, 16, 2),
(4, 19, 3),
(15, 20, 1),
(20, 21, 1),
(82, 22, 1),
(82, 23, 2),
(83, 22, 1),
(83, 23, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `biblio_topic`
--

CREATE TABLE `biblio_topic` (
  `biblio_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `biblio_topic`
--

INSERT INTO `biblio_topic` (`biblio_id`, `topic_id`, `level`) VALUES
(15, 1, 1),
(20, 3, 1),
(20, 4, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `content_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `content_path` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `content_ownpage` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `content`
--

INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `input_date`, `last_update`, `content_ownpage`) VALUES
(1, 'Library Information', '<h3>Contact Information</h3>\r\n<p><strong>Address :</strong> <br /> Jenderal Sudirman Road, Senayan, Jakarta, Indonesia - Postal Code : 10270 <br /> <strong>Phone Number :</strong> <br /> (021) 5711144 <br /> <strong>Fax Number :</strong> <br /> (021) 5711144</p>\r\n<h3>Opening Hours</h3>\r\n<p><strong>Monday - Friday :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 20.00 PM <br /> <strong>Saturday  :</strong> <br /> Open : 08.00 AM<br /> Break : 12.00 - 13.00 PM<br /> Close : 17.00 PM</p>\r\n<h3>Collections</h3>\r\n<p>We have many types of collections in our library, range from Fictions to Sciences Material, from printed material to digital collections such CD-ROM, CD, VCD and DVD. We also collect daily serials publications such as newspaper and also monthly serials such as magazines.</p>\r\n<h3>Library Membership</h3>\r\n<p>To be able to loan our library collections, you must first become library member. There is terms and conditions that you must obey.</p>', 'libinfo', '2009-09-13 19:48:16', '2020-07-14 22:22:22', '1'),
(2, 'Help On Usage', '<h3>Searching</h3>\r\n<p>There is 2 method available on searching library catalog. The first one is <strong>SIMPLE SEARCH</strong>, which is the simplest method on searching catalog, you just enter any keyword, either it contained in document titles, authors name or subjects. You can supply more than one keywords in Simple Search method and it will expanding your search results.</p>\r\n<p>&nbsp;</p>\r\n<p><strong>ADVANCED SEARCH</strong>, lets you define keywords in more specific fields. If you want your keywords only contained in title field, then type your keyword in Title field and the system will scope it search only on <strong>Title</strong> field, not in other fields. Location field lets you narrowing search results by specific location, so only collection that exists in selected location get fetched by system.</p>', 'help', '2009-09-13 19:48:16', '2009-09-13 19:48:16', '1'),
(3, 'Welcome To Admin Page', '<table style=\"width: 100%;\" border=\"0\" cellspacing=\"0\" cellpadding=\"5\">\r\n<tbody>\r\n<tr>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon biblioIcon\" href=\"?mod=bibliography\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">Bibliography</div>\r\nThe Bibliography module lets you manage your library bibliographical data. It also include collection items management     to manage a copies of your library collection so it can be used in library circulation.</td>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon circulationIcon\" href=\"?mod=circulation\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">Circulation</div>\r\nThe Circulation module is used for doing library circulation transaction such as collection loans and return. In this module you can also create loan rules that will be used in loan transaction proccess.</td>\r\n</tr>\r\n<tr>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon memberIcon\" href=\"?mod=membership\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">Membership</div>\r\nThe Membership module lets you manage library members such adding, updating and also removing. You can also manage membership type in this module.<br /><br /></td>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon stockTakeIcon\" href=\"?mod=stock_take\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">Stock Take</div>\r\nThe Stock Take module is the easy way to do Stock Opname for your library collections. Follow several steps that ease your pain in Stock Opname proccess. <br /><br /></td>\r\n</tr>\r\n<tr>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon masterFileIcon\" href=\"?mod=master_file\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">Master File</div>\r\nThe Master File modules lets you manage referential data that will be used by another modules. It include Authority File management such     as Authority, Subject/Topic List, GMD and other data.</td>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon systemIcon\" href=\"?mod=system\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">System</div>\r\nThe System module is used to configure application globally.</td>\r\n</tr>\r\n<tr>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon reportIcon\" href=\"?mod=reporting\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">Reporting</div>\r\n<p>Reporting lets you view various type of reports regardings membership data, circulation data and bibliographic data. All compiled on-the-fly from         current library database.</p>\r\n<br /></td>\r\n<td width=\"5%\" valign=\"top\"><a class=\"icon serialIcon\" href=\"?mod=serial_control\"></a></td>\r\n<td width=\"45%\" valign=\"top\">\r\n<div class=\"heading\">Serial Control</div>\r\nSerial Control module help you manage library\'s serial publication subscription. You can track issues for each subscription.\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'adminhome', '2009-09-13 19:48:16', '2009-09-13 22:02:11', '1'),
(4, 'Homepage Info', '<p>Welcome To <strong>Senayan Library\'s</strong> Online Public Access Catalog (OPAC). Use OPAC to search collection in our library.</p>', 'headerinfo', '2009-09-13 19:48:16', '2018-03-21 08:26:28', '1'),
(5, 'Tentang SLiMS', '<p><!--intro_awal--><strong>SLiMS</strong> adalah akronim dari Senayan Library Management System. Awalnya dikembangkan oleh Perpustakaan Kementerian Pendidikan Nasional untuk menggantikan Alice (http://www2.softlinkint.com). Tujuan utamanya agar Perpustakaan Kemdiknas mempunyai kebebasan untuk menggunakan, mempelajari, memodifikasi dan mendistribusikan perangkat lunak yang digunakan. SLiMS, maka dirilis dengan lisensi GPL dan sekarang pengembangan SLiMS dilakukan oleh komunitas penggunanya.<!--intro_akhir--></p>\r\n<p><strong>Asal Mula</strong></p>\r\n<p>Setelah beroperasi 50 tahun lebih, karena beberapa alasan Perpustakaan BC Indonesia yang telah selama bertahun-tahun menjadi andalan layanan BC di Indonesia harus ditutup. Pengelola BC Indonesia kemudian berinisiatif untuk menghibahkan pengelolaan aset perpustakaanya ke tangan institusi pemerintah. Dalam hal ini, institusi pemerintah yang dianggap sesuai bidangnya dan strategis tempatnya, adalah Departemen Pendidikan Nasional (Depdiknas). Yang dihibahkan tidak hanya koleksi, tetapi juga rak koleksi, hardware (server dan workstation) serta sistem termasuk untuk aplikasi manajemen administrasi perpustakaan (Alice).</p>\r\n<p>Seiring dengan berjalannya waktu, manajemen Perpustakaan Depdiknas mulai menghadapi beberapa kendala dalam penggunaan sistem Alice. Pertama, keterbatasan dalam menambahkan fitur-fitur baru. Antara lain: kebutuhan manajemen serial, meng-online-kan katalog di web dan kustomisasi report yang sering berubah-ubah kebutuhannya. Penambahan fitur jika harus meminta modul resmi dari developer Alice, berarti membutuhkan dana tambahan yang tidak kecil. Apalagi tidak ada distributor resminya di Indonesia sehingga harus mengharapkan support dari Inggris. Ditambah lagi beberapa persyaratan yang membutuhkan infrastruktur biaya mahal seperti dedicated public IP agar bisa meng-online-kan Alice di web.<br /><br />Saat itu untuk mengatasi sebagian kebutuhan (utamanya kustomisasi report), dilakukan dengan ujicoba mengakses langsung database yang disimpan dalam format DBase. Terkadang berhasil terkadang tidak karena struktur datanya proprietary dan kompleks serta jumlah rekodnya banyak. Untuk mempelajari struktur database, dicoba melakukan kontak via email ke developer Alice. Tetapi tidak ada respon sama sekali. Disini muncul masalah kedua. Sulitnya mempelajari lebih mendalam cara kerja perangkat lunak Alice. Karena Alice merupakan sistem proprietary yang serba tertutup, segala sesuatunya sangat tergantung vendor. Dibutuhkan sejumlah uang untuk mendapatkan layanan resmi untuk kustomisasi.<br /><br />Perpustakaan Depdiknas salah satu tupoksinya adalah melakukan koordinasi pengelolaan perpustakaan unit kerja dibawah lingkungan Depdiknas. Dalam implementasinya, seringkali muncul kebutuhan untuk bisa mendistribusikan perangkat lunak sistem perpustakaan ke berbagai unit kerja tersebut. Disini masalah ketiga: sulit (atau tidak mungkin) untuk melakukan redistribusi sistem Alice. Alice merupakan perangkat lunak yang secara lisensi tidak memungkinkan diredistribusi oleh pengelola Perpustakaan Depdiknas secara bebas. Semuanya harus ijin dan membutuhkan biaya.<br /><br />November 2006, perpustakaan dihadapkan oleh sebuah masalah mendasar. Sistem Alice tiba-tiba tidak bisa digunakan. Ternyata Alice yang digunakan selama ini diimplementasikan dengan sistem sewa. Pantas saja biayanya relatif murah. Tiap tahun pengguna harus membayar kembali untuk memperpanjang masa sewa pakainya. Tetapi yang mengkhawatirkan adalah fakta bahwa perpustakaan harus menyimpan semua informasi penting dan kritikal di sebuah sistem yang tidak pernah dimiliki. Yang kalau lupa atau tidak mau membayar sewa lagi, hilanglah akses terhadap data kita sendiri. Konyol sekali. Itu sama saja dengan bunuh diri kalau masih tergantung dengan sistem berlisensi seperti itu.<br /><br />Akhirnya pengelola Perpustakaan Depdiknas me-review kembali penggunaan sistem Alice di perpustakaan Depdiknas. Beberapa poin pentingnya antara lain:<br />&bull;&nbsp;&nbsp;&nbsp; Alice memang handal (reliable), tapi punya banyak keterbatasan. Biaya sewanya memang relatif murah, tetapi kalau membutuhkan support tambahan, baik sederhana ataupun kompleks, sangat tergantung dengan developer Alice yang berpusat di Inggris. Butuh biaya yang kalau di total juga tidak murah.<br />&bull;&nbsp;&nbsp;&nbsp; Model lisensi proprietary yang digunakan developer Alice tidak cocok dengan kondisi kebanyakan perpustakaan di Indonesia. Padahal pengelola Perpustakaan Depdiknas sebagai koordinator banyak perpustakaan di lingkungan Depdiknas, punya kepentingan untuk bisa dengan bebas melakukan banyak hal terhadap software yang digunakan.<br />&bull;&nbsp;&nbsp;&nbsp; Menyimpan data penting dan kritikal untuk operasional perpustakaan di suatu software yang proprietary dan menggunakan sistem sewa, dianggap sesuatu yang konyol dan mengancam independensi dan keberlangsungan perpustakaan itu sendiri.<br />&bull;&nbsp;&nbsp;&nbsp; Alice berjalan diatas sistem operasi Windows yang juga proprietary padahal pengelola Perpustakaan Depdiknas ingin beralih menggunakan Sistem Operasi open source (seperti GNU/Linux dan FreeBSD).<br />&bull;&nbsp;&nbsp;&nbsp; Masalah devisa negara yang terbuang untuk membayar software yang tidak pernah dimiliki.<br />&bull;&nbsp;&nbsp;&nbsp; Intinya: pengelola Perpustakaan Depdiknas ingin menggunakan software yang memberikan dan menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Lisensi Alice tidak memungkinkan untuk itu.<br /><br />Setelah memutuskan untuk hijrah menggunakan sistem yang lain, maka langkah berikutnya adalah mencari sistem yang ada untuk digunakan atau mengembangkan sendiri sistem yang dibutuhkan. Beberapa pertimbangan yang harus dipenuhi:<br />&bull;&nbsp;&nbsp;&nbsp; Dirilis dibawah lisensi yang menjamin kebebasan untuk: menggunakan, mempelajari, memodifikasi dan melakukan redistribusi. Model lisensi open source (www.openosurce.org) dianggap sebagai model yang paling ideal dan sesuai.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan untuk membangun sistem juga harus berlisensi open source.<br />&bull;&nbsp;&nbsp;&nbsp; Teknologi yang digunakan haruslah teknologi yang relatif mudah dipelajari oleh pengelola perpustakaan Depdiknas yang berlatarbelakang pendidiknas pustakawan, seperti PHP (scripting language) dan MySQL (database). Jika tidak menguasai sisi teknis teknologi, maka akan terjebak kembali terhadap ketergantungan pada developer.<br /><br />Langkah berikutnya adalah melakukan banding software sistem perpustakaan open source yang bisa diperoleh di internet. Beberapa software yang dicoba antara lain: phpMyLibrary, OpenBiblio, KOHA, EverGreen. Pengelola perpustakaan Depdiknas merasa tidak cocok dengan software yang ada, dengan beberapa alasan:<br />&bull;&nbsp;&nbsp;&nbsp; Desain aplikasi dan database yang tidak baik atau kurang menerapkan secara serius prinsip-prinsip pengembangan aplikasi dan database yang baik sesuai dengan teori yang ada (PHPMyLibrary, OpenBiblio).<br />&bull;&nbsp;&nbsp;&nbsp; Menggunakan teknologi yang sulit dikuasai oleh pengelola perpustakaan Depdiknas (KOHA dan EverGreen dikembangkan menggunakan Perl dan C++ Language yang relatif lebih sulit dipelajari).<br />&bull;&nbsp;&nbsp;&nbsp; Beberapa sudah tidak aktif atau lama sekali tidak di rilis versi terbarunya (PHPMyLibrary dan OpenBiblio).<br /><br />Karena tidak menemukan sistem yang dibutuhkan, maka diputuskan untuk mengembangkan sendiri aplikasi sistem perpustakaan yang dibutuhkan. Dalam dunia pengembangan software, salah satu best practice-nya adalah memberikan nama kode (codename) pengembangan. Nama kode berbeda dengan nama aplikasinya itu sendiri. Nama kode biasanya berbeda-beda tiap versi. Misalnya kode nama &ldquo;Hardy Heron&rdquo; untuk Ubuntu Linux 8.04 dan &ldquo;Jaunty Jackalope&rdquo; untuk Ubuntu Linux 9.04. Pengelola perpustakaan Depdiknas Untuk versi awal (1.0) aplikasi yang akan dikembangkan, memberikan nama kode &ldquo;Senayan&rdquo;. Alasannya sederhana, karena awal dikembangkan di perpustakaan Depdiknas yang berlokasi di Senayan. Apalagi Perpustakaan Depdiknas mempunyai brand sebagai library@senayan. Belakangan karena dirasa nama &ldquo;Senayan&rdquo; dirasa cocok dan punya nilai marketing yang bagus, maka nama &ldquo;Senayan&rdquo; dijadikan nama resmi aplikasi sistem perpustakaan yang dikembangkan.<br /><br />Mengembangkan Senayan<br /><br />Sebelum mulai mengembangkan Senayan, ada beberapa keputusan desain aplikasi yang harus dibuat. Aspek desain ini penting diantaranya untuk pengambilankeputusan dari berbagai masukan yang datang dari komunitas. Antara lain:<br /><br />Pertama,&nbsp; Senayan adalah aplikasi untuk kebutuhan administrasi dan konten perpustakaan (Library Automation System). Senayan didesain untuk kebutuhan skala menengah maupun besar. Cocok untuk perpustakaan yang memiliki koleksi, anggota dan staf banyak di lingkungan jaringan, baik itu lokal (intranet) dan internet.<br /><br />Kedua, Senayan dibangun dengan memperhatikan best practice dalam pengembangan software seperti dalam hal penulisan source code, dokumentasi, dan desain database.<br /><br />Ketiga, Senayan dirancang untuk compliant dengan standar pengelolaan koleksi di perpustakaan. Untuk standar pengatalogan minimal memenuhi syarat AACR 2 level 2 (Anglo-American Cataloging Rules). Kebutuhan untuk kesesuaian dengan standar di perpustakaan terus berkembang dan pengelola perpustakaan Depdiknas dan developer Senayan berkomitmen untuk terus mengembangkan Senayan agar mengikuti standar-standar tersebut.<br /><br />Keempat, Senayan didesain agar bisa juga menjadi middleware bagi aplikasi lain untuk menggunakan data yang ada didalam Senayan. Untuk itu Senayan akan menyediakan API (application programming Interface) yang berbasis web service.<br /><br />Kelima, Senayan merupakan aplikasi yang cross-platform, baik dari sisi aplikasinya itu sendiri dan akses terhadap aplikasi. Untuk itu basis yang paling tepat ada basis web.<br /><br />Keenam, teknologi yang digunakan untuk membangun Senayan, haruslah terbukti bisa diinstall di banyak platform sistem operasi, berlisensi open source dan mudah dipelajari oleh pengelola perpustakaan Depdiknas. Diputuskan untuk menggunakan PHP (www.php.net) untuk web scripting languange dan MySQL (www.mysql.com) untuk server database.<br /><br />Ketujuh, diputuskan untuk mengembangkan library PHP sendiri yang didesain spesifik untuk kebutuhan membangun library automation system. Tidak menggunakan library PHP yang sudah terkenal seperti PEAR (pear.php.net) karena alasan penguasaan terhadap teknologi dan kesederhanaan. Library tersebut diberinama &ldquo;simbio&rdquo;.<br /><br />Kedelapan, untuk mempercepat proses pengembangan, beberapa modul atau fungsi yang dibutuhkan yang dirasa terlalu lama dan rumit untuk dikembangkan sendiri, akan menggunakan software open source yang berlisensi open source juga. Misalnya: flowplayer untuk dukungan multimedia, jQuery untuk dukungan AJAX (Asynchronous Javascript and XML), genbarcode untuk dukungan pembuatan barcode, PHPThumb untuk dukungan generate image on-the-fly, tinyMCE untuk web-based text editor, dan lain-lain.<br /><br />Kesembilan, untuk menjaga spirit open source, proses pengembangan Senayan dilakukan dengan infrastruktur yang berbasis open source. Misalnya: server web menggunakan Apache, server produksi menggunakan OS Linux Centos dan OpenSuse, para developer melakukan pengembangan dengan OS Ubuntu Linux, manajemen source code menggunakan software git, dan lain-lain.<br /><br />Kesepuluh, Senayan dirilis ke masyarakat umum dengan lisensi GNU/GPL versi 3 yang menjamin kebebasan penggunanya untuk mempelajari, menggunakan, memodifikasi dan redistribusi Senayan.<br /><br />Kesebelas, para developer dan pengelola perpustakaan Depdiknas berkomitmen untuk terus mengembangkan Senayan dan menjadikannya salah satu contoh software perpustakaan yang open source, berbasis di indonesia dan menjadi salah satu contoh bagi model pengembangan open source yang terbukti berjalan dengan baik.<br /><br />Keduabelas, model pengembangan Senayan adalah open source yang artinya setiap orang dipersilahkan memberikan kontribusinya. Baik dari sisi pemrogaman, template, dokumentasi, dan lain-lain. Tentu saja ada mekanisme mana kontribusi yang bagus untuk dimasukkan dalam rilis resmi, mana yang tidak. Mengacu ke dokumen &hellip; (TAMBAHKAN DENGAN TULISAN ERIC S RAYMOND)<br /><br />Model pengembangan senayan<br /><br />Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.<br />Fitur Senayan<br />Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN adalah sebagai berikut:<br />Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.<br /><br />Roadmap Pengembangan Senayan<br />SENAYAN akan terus dikembangkan oleh para pengembangnya beserta komunitas pengguna SENAYAN lainnya. Berikut adalah Roadmap pengembangan SENAYAN ke depannya:<br /><br />Pengembangan aplikasi:<br />1.&nbsp;&nbsp;&nbsp; Kompatibilitas dengan MARC dan standar pertukaran data yang komplit. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Memastikan bahwa format data bibliografi kompatibel dengan MARC secara lebih baik (minimal MARC light).<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap RFID.<br />&bull;&nbsp;&nbsp;&nbsp; Fitur untuk impor / ekspor rekod dari The Online Computer Library Centre (OCLC), Research Libraries Information Network (RLIN), vendor sistem lain yang compliant dengan MARC.<br />&bull;&nbsp;&nbsp;&nbsp; Validasi data ISBN menggunakan modulus seven.<br />&bull;&nbsp;&nbsp;&nbsp; Dukungan terhadap standar di perpustakaan, seperti: Library of Congress Subject Headings, Library of Congress Classification, ALA filing rules, International Standard Bibliographic Description, ANSI Standard for Bibliographic Information Exchange on magnetic tape, Common communication format (ISO 2709).<br />2.&nbsp;&nbsp;&nbsp; Katalog induk/bersama (union catalog)<br />3.&nbsp;&nbsp;&nbsp; Implementasi Thesaurus. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pengatalogan.<br />&bull;&nbsp;&nbsp;&nbsp; Pemanfaatan tesaurus untuk proses pencarian, misalnya memberikan advis pencarian menggunakan knowledge base yang dibangun dengan sistem tesaurus.<br />4.&nbsp;&nbsp;&nbsp; Implementasi Library 2.0. Contoh implementasinya:<br />&bull;&nbsp;&nbsp;&nbsp; User bisa login dan mempunyai halaman personalisasi.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan reservasi koleksi dan memperpanjang peminjaman.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan komunikasi dengan pustakawan via messaging system.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa melakukan tagging, rekomendasi koleksi dan menyimpannya didalam daftar koleksi favoritnya.<br />&bull;&nbsp;&nbsp;&nbsp; User bisa memberikan komentar terhadap koleksi.<br />&bull;&nbsp;&nbsp;&nbsp; Pustakawan bisa memasukkan preferensi pemakai didalam data keanggotaan. Preferensi tersebut bisa dimanfaatkan salah satunya untuk men-generate semacam daftar koleksi terpilih untuk dicetak atau ditampilkan ketika user login.<br />5.&nbsp;&nbsp;&nbsp; Peningkatan dukungan manajemen konten digital dan entri analitikal<br /><br />Pengembangan basis komunitas pengguna:<br />&bull;&nbsp;&nbsp;&nbsp; Membangun komunitas pengguna di berbagai kota <br />&bull;&nbsp;&nbsp;&nbsp; Mengadakan Senayan Developers Day untuk silaturahmi antar developer Senayan, update dokumentasi, penambahan fitur baru dan bug fixing dan mencari bibit pengembang yang baru.<br />&bull;&nbsp;&nbsp;&nbsp; Workshop/Seminar Nasional Tahunan<br />&bull;&nbsp;&nbsp;&nbsp; Jam Sessions rutin setiap 3 bulan</p>', 'about_slims', '2010-08-28 23:29:55', '2010-11-12 18:21:01', '1'),
(6, 'Modul yang Tersedia', '<p><!--intro_awal-->Sebagai sebuah Sistem Automasi Perpustakaan yang terintergrasi, modul-modul yang telah terdapat di SENAYAN antara lain: pengatalogan/bibliografi, keanggotaan, sirkulasi, masterfile, stock opname (inventarisasi koleksi), pelaporan/reporting, manajemen kontrol serial, digital library, dan lain-lain.<!--intro_akhir--></p>\r\n<p>Modul Pengatalogan (Cataloging Module)<br />1)&nbsp;&nbsp;&nbsp; Compliance dengan standar AACR2 (Anglo-American Cataloging Rules).<br />2)&nbsp;&nbsp;&nbsp; Fitur untuk membuat, mengedit, dan menghapus data bibliografi sesuai dengan standar deskripsi bibliografi AACR2 level ke dua.<br />3)&nbsp;&nbsp;&nbsp; Mendukung pengelolaan koleksi dalam berbagai macam format seperti monograph, terbitan berseri, audio visual, dsb.<br />4)&nbsp;&nbsp;&nbsp; Mendukung penyimpanan data bibliografi dari situs di Internet.<br />5)&nbsp;&nbsp;&nbsp; Mendukung penggunaan Barcode.<br />6)&nbsp;&nbsp;&nbsp; Manajemen item koleksi untuk dokumen dengan banyak kopi dan format yang berbeda.<br />7)&nbsp;&nbsp;&nbsp; Mendukung format XML untuk pertukaran data dengan menggunakan standar metadata MODS (Metadata Object Description Schema).<br />8)&nbsp;&nbsp;&nbsp; Pencetakan Barcode item/kopi koleksi Built-in.<br />9)&nbsp;&nbsp;&nbsp; Pencetakan Label Punggung koleksi Built-in.<br />10)&nbsp;&nbsp;&nbsp; Pengambilan data katalog melalui protokol Z3950 ke database koleksi Library of Congress.<br />11)&nbsp;&nbsp;&nbsp; Pengelolaan koleksi yang hilang, dalam perbaikan, dan rusak serta pencatatan statusnya untuk dilakukan pergantian/perbaikan terhadap koleksi.<br />12)&nbsp;&nbsp;&nbsp; Daftar kendali untuk pengarang (baik pengarang orang, badan/lembaga, dan pertemuan) sebagai standar konsistensi penuliasn<br />13)&nbsp;&nbsp;&nbsp; Pengaturan hak akses pengelolaan data bibliografi hanya untuk staf yang berhak.<br /><br />Modul Penelusuran (OPAC/Online Public Access catalog Module)<br />1)&nbsp;&nbsp;&nbsp; Pencarian sederhana.<br />2)&nbsp;&nbsp;&nbsp; Pencarian tingkat lanjut (Advanced).<br />3)&nbsp;&nbsp;&nbsp; Dukungan penggunaan Boolean\'s Logic dan implementasi CQL (Common Query Language).<br />4)&nbsp;&nbsp;&nbsp; OPAC Web Services berbasis XML.<br />5)&nbsp;&nbsp;&nbsp; Mendukung akses OPAC melalui peralatan portabel (mobile device)<br />6)&nbsp;&nbsp;&nbsp; Menampilkan informasi lengkap tetang status koleksi di perpustakaan, tanggal pengembalian, dan pemesanan item/koleksi<br />7)&nbsp;&nbsp;&nbsp; Detil informasi juga menampilkan gambar sampul buku, lampiran dalam format elektronik yang tersedia (jika ada) serta fasilitas menampilkan koleksi audio dan visual.<br />8)&nbsp;&nbsp;&nbsp; Menyediakan hyperlink tambahan untuk pencarian lanjutan berdasarkan penulis, dan subjek.<br /><br />Modul Sirkulasi (Circulation Module)<br />1)&nbsp;&nbsp;&nbsp; Mampu memproses peminjaman dan pengembalian koleksi secara efisien, efektif dan aman.<br />2)&nbsp;&nbsp;&nbsp; Mendukung fitur reservasi koleksi yang sedang dipinjam, termasuk reminder/pemberitahuan-nya.<br />3)&nbsp;&nbsp;&nbsp; Mendukung fitur manajemen denda. Dilengkapi fleksibilitas untuk pemakai membayar denda secara cicilan.<br />4)&nbsp;&nbsp;&nbsp; Mendukung fitur reminder untuk berbagai keperluan seperti melakukan black list terhadap pemakai yang bermasalah atau habis keanggotaannya.<br />5)&nbsp;&nbsp;&nbsp; Mendukung fitur pengkalenderan (calendaring) untuk diintegrasikan dengan penghitungan masa peminjaman, denda, dan lain-lain.<br />6)&nbsp;&nbsp;&nbsp; Memungkinkan penentuan hari-hari libur non-standar yang spesifik.<br />7)&nbsp;&nbsp;&nbsp; Dukungan terhadap ragam jenis tipe pemakai dengan masa pinjam beragam untuk berbagai jenis keanggotaan.<br />8)&nbsp;&nbsp;&nbsp; Menyimpan histori peminjaman anggota.<br />9)&nbsp;&nbsp;&nbsp; Mendukung pembuatan peraturan peminjaman yang sangat rinci dengan mengkombinasikan parameter keanggotaan, jenis koleksi, dan gmd selain aturan peminjaman standar berdasarkan jenis keanggotaan<br /><br />Modul Manajemen Keanggotaan (Membership Management Module)<br />1)&nbsp;&nbsp;&nbsp; Memungkinkan beragam tipe pemakai dengan ragam jenis kategori peminjaman, ragam jenis keanggotaan dan pembedaan setiap layanan sirkulasi dalam jumlah koleksi serta lama peminjaman untuk jenis koleksi untuk setiap jenis/kategori.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap input menggunakan barcode reader<br />3)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi preferensi pemakai atau subject interest.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan untuk menyimpan informasi tambahan untuk keperluan reminder pada saat transaksi.<br />5)&nbsp;&nbsp;&nbsp; Memungkinkan menyimpan informasi detail pemakai yang lebih lengkap.<br />6)&nbsp;&nbsp;&nbsp; Pencarian informasi anggota minimal berdasarkan nomor dan nama anggota.<br />7)&nbsp;&nbsp;&nbsp; Pembuatan kartu anggota yang dilengkapi dengan barcode untuk transaksi peminjaman.<br /><br />Modul Inventarisasi Koleksi (Stocktaking Module)<br />1)&nbsp;&nbsp;&nbsp; Proses inventarisasi koleksi bisa dilakukan secara bertahap dan parsial tanpa harus menutup layanan perpustakaan secara keseluruhan.<br />2)&nbsp;&nbsp;&nbsp; Proses inventarisasi bisa dilakukan secara efisien dan efektif.<br />3)&nbsp;&nbsp;&nbsp; Terdapat pilihan untuk menghapus data secara otomatis pada saat akhir proses inventarisasi terhadap koleksi yang dianggap hilang.<br /><br />Modul Statistik/Pelaporan (Report Module)<br />1)&nbsp;&nbsp;&nbsp; Meliputi pelaporan untuk semua modul-modul yang tersedia di Senayan.<br />2)&nbsp;&nbsp;&nbsp; Laporan Judul.<br />3)&nbsp;&nbsp;&nbsp; Laporan Items/Kopi koleksi.<br />4)&nbsp;&nbsp;&nbsp; Laporan Keanggotaan.<br />5)&nbsp;&nbsp;&nbsp; Laporan jumlah koleksi berdasarkan klasifikasi.<br />6)&nbsp;&nbsp;&nbsp; Laporan Keterlambatan.<br />7)&nbsp;&nbsp;&nbsp; Berbagai macam statistik seperti statistik koleksi, peminjaman, keanggotaan, keterpakaian koleksi.<br />8)&nbsp;&nbsp;&nbsp; Tampilan laporan yang sudah didesain printer-friendly, sehingga memudahkan untuk dicetak.<br />9)&nbsp;&nbsp;&nbsp; Filter data yang lengkap untuk setiap laporan.<br />10)&nbsp;&nbsp;&nbsp; API untuk pelaporan yang relatif mudah dipelajari untuk membuat custom report baru.<br /><br />Modul Manajemen Terbitan Berseri (Serial Control)<br />1)&nbsp;&nbsp;&nbsp; Manajemen data langganan.<br />2)&nbsp;&nbsp;&nbsp; Manajemen data Kardex.<br />3)&nbsp;&nbsp;&nbsp; Manajemen tracking data terbitan yang akan terbit dan yang sudah ada.<br />4)&nbsp;&nbsp;&nbsp; Memungkinkan tracking data terbitan berseri yang jadwal terbitnya tidak teratur (pengaturan yang fleksibel).<br /><br />Modul Lain-lain<br />1)&nbsp;&nbsp;&nbsp; Dukungan antar muka yang multi bahasa (internasionalisasi) dengan Gettext.<br />2)&nbsp;&nbsp;&nbsp; Dukungan terhadap penggunaan huruf bukan latin untuk pengisian data dan pencarian.</p>', 'modul_tersedia', '2010-08-29 04:03:09', '2010-08-29 04:05:49', '1'),
(7, 'Lisensi SLiMS', '<p><!--intro_awal--><strong>Setiadi</strong><strong>&nbsp;adalah distro turunan&nbsp;<strong>SLiMS</strong></strong> dilisensikan dibawah GNU/GPL (http://www.gnu.org/licenses/gpl.html) untuk menjamin kebebasan pengguna dalam menggunakannya. GNU General Public License (disingkat GNU GPL atau cukup GPL) merupakan suatu lisensi perangkat lunak bebas yang aslinya ditulis oleh Richard Stallman untuk proyek GNU. Lisensi GPL memberikan penerima salinan perangkat lunak hak dari perangkat lunak bebas dan menggunakan copyleft&nbsp; untuk memastikan kebebasan yang sama diterapkan pada versi berikutnya dari karya tersebut.<!--intro_akhir--></p>\r\n<p>&nbsp;GNU LESSER GENERAL PUBLIC LICENSE<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version 3, 29 June 2007<br /><br />&nbsp;Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt;<br />&nbsp;Everyone is permitted to copy and distribute verbatim copies<br />&nbsp;of this license document, but changing it is not allowed.<br /><br /><br />&nbsp; This version of the GNU Lesser General Public License incorporates<br />the terms and conditions of version 3 of the GNU General Public<br />License, supplemented by the additional permissions listed below.<br /><br />&nbsp; 0. Additional Definitions.<br /><br />&nbsp; As used herein, \"this License\" refers to version 3 of the GNU Lesser<br />General Public License, and the \"GNU GPL\" refers to version 3 of the GNU<br />General Public License.<br /><br />&nbsp; \"The Library\" refers to a covered work governed by this License,<br />other than an Application or a Combined Work as defined below.<br /><br />&nbsp; An \"Application\" is any work that makes use of an interface provided<br />by the Library, but which is not otherwise based on the Library.<br />Defining a subclass of a class defined by the Library is deemed a mode<br />of using an interface provided by the Library.<br /><br />&nbsp; A \"Combined Work\" is a work produced by combining or linking an<br />Application with the Library.&nbsp; The particular version of the Library<br />with which the Combined Work was made is also called the \"Linked<br />Version\".<br /><br />&nbsp; The \"Minimal Corresponding Source\" for a Combined Work means the<br />Corresponding Source for the Combined Work, excluding any source code<br />for portions of the Combined Work that, considered in isolation, are<br />based on the Application, and not on the Linked Version.<br /><br />&nbsp; The \"Corresponding Application Code\" for a Combined Work means the<br />object code and/or source code for the Application, including any data<br />and utility programs needed for reproducing the Combined Work from the<br />Application, but excluding the System Libraries of the Combined Work.<br /><br />&nbsp; 1. Exception to Section 3 of the GNU GPL.<br /><br />&nbsp; You may convey a covered work under sections 3 and 4 of this License<br />without being bound by section 3 of the GNU GPL.<br /><br />&nbsp; 2. Conveying Modified Versions.<br /><br />&nbsp; If you modify a copy of the Library, and, in your modifications, a<br />facility refers to a function or data to be supplied by an Application<br />that uses the facility (other than as an argument passed when the<br />facility is invoked), then you may convey a copy of the modified<br />version:<br /><br />&nbsp;&nbsp; a) under this License, provided that you make a good faith effort to<br />&nbsp;&nbsp; ensure that, in the event an Application does not supply the<br />&nbsp;&nbsp; function or data, the facility still operates, and performs<br />&nbsp;&nbsp; whatever part of its purpose remains meaningful, or<br /><br />&nbsp;&nbsp; b) under the GNU GPL, with none of the additional permissions of<br />&nbsp;&nbsp; this License applicable to that copy.<br /><br />&nbsp; 3. Object Code Incorporating Material from Library Header Files.<br /><br />&nbsp; The object code form of an Application may incorporate material from<br />a header file that is part of the Library.&nbsp; You may convey such object<br />code under terms of your choice, provided that, if the incorporated<br />material is not limited to numerical parameters, data structure<br />layouts and accessors, or small macros, inline functions and templates<br />(ten or fewer lines in length), you do both of the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the object code that the<br />&nbsp;&nbsp; Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the object code with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp; 4. Combined Works.<br /><br />&nbsp; You may convey a Combined Work under terms of your choice that,<br />taken together, effectively do not restrict modification of the<br />portions of the Library contained in the Combined Work and reverse<br />engineering for debugging such modifications, if you also do each of<br />the following:<br /><br />&nbsp;&nbsp; a) Give prominent notice with each copy of the Combined Work that<br />&nbsp;&nbsp; the Library is used in it and that the Library and its use are<br />&nbsp;&nbsp; covered by this License.<br /><br />&nbsp;&nbsp; b) Accompany the Combined Work with a copy of the GNU GPL and this license<br />&nbsp;&nbsp; document.<br /><br />&nbsp;&nbsp; c) For a Combined Work that displays copyright notices during<br />&nbsp;&nbsp; execution, include the copyright notice for the Library among<br />&nbsp;&nbsp; these notices, as well as a reference directing the user to the<br />&nbsp;&nbsp; copies of the GNU GPL and this license document.<br /><br />&nbsp;&nbsp; d) Do one of the following:<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 0) Convey the Minimal Corresponding Source under the terms of this<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; License, and the Corresponding Application Code in a form<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; suitable for, and under terms that permit, the user to<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; recombine or relink the Application with a modified version of<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; the Linked Version to produce a modified Combined Work, in the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; manner specified by section 6 of the GNU GPL for conveying<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Corresponding Source.<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1) Use a suitable shared library mechanism for linking with the<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Library.&nbsp; A suitable mechanism is one that (a) uses at run time<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; a copy of the Library already present on the user\'s computer<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; system, and (b) will operate properly with a modified version<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; of the Library that is interface-compatible with the Linked<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Version.<br /><br />&nbsp;&nbsp; e) Provide Installation Information, but only if you would otherwise<br />&nbsp;&nbsp; be required to provide such information under section 6 of the<br />&nbsp;&nbsp; GNU GPL, and only to the extent that such information is<br />&nbsp;&nbsp; necessary to install and execute a modified version of the<br />&nbsp;&nbsp; Combined Work produced by recombining or relinking the<br />&nbsp;&nbsp; Application with a modified version of the Linked Version. (If<br />&nbsp;&nbsp; you use option 4d0, the Installation Information must accompany<br />&nbsp;&nbsp; the Minimal Corresponding Source and Corresponding Application<br />&nbsp;&nbsp; Code. If you use option 4d1, you must provide the Installation<br />&nbsp;&nbsp; Information in the manner specified by section 6 of the GNU GPL<br />&nbsp;&nbsp; for conveying Corresponding Source.)<br /><br />&nbsp; 5. Combined Libraries.<br /><br />&nbsp; You may place library facilities that are a work based on the<br />Library side by side in a single library together with other library<br />facilities that are not Applications and are not covered by this<br />License, and convey such a combined library under terms of your<br />choice, if you do both of the following:<br /><br />&nbsp;&nbsp; a) Accompany the combined library with a copy of the same work based<br />&nbsp;&nbsp; on the Library, uncombined with any other library facilities,<br />&nbsp;&nbsp; conveyed under the terms of this License.<br /><br />&nbsp;&nbsp; b) Give prominent notice with the combined library that part of it<br />&nbsp;&nbsp; is a work based on the Library, and explaining where to find the<br />&nbsp;&nbsp; accompanying uncombined form of the same work.<br /><br />&nbsp; 6. Revised Versions of the GNU Lesser General Public License.<br /><br />&nbsp; The Free Software Foundation may publish revised and/or new versions<br />of the GNU Lesser General Public License from time to time. Such new<br />versions will be similar in spirit to the present version, but may<br />differ in detail to address new problems or concerns.<br /><br />&nbsp; Each version is given a distinguishing version number. If the<br />Library as you received it specifies that a certain numbered version<br />of the GNU Lesser General Public License \"or any later version\"<br />applies to it, you have the option of following the terms and<br />conditions either of that published version or of any later version<br />published by the Free Software Foundation. If the Library as you<br />received it does not specify a version number of the GNU Lesser<br />General Public License, you may choose any version of the GNU Lesser<br />General Public License ever published by the Free Software Foundation.<br /><br />&nbsp; If the Library as you received it specifies that a proxy can decide<br />whether future versions of the GNU Lesser General Public License shall<br />apply, that proxy\'s public statement of acceptance of any version is<br />permanent authorization for you to choose that version for the<br />Library.</p>', 'lisensi_slims', '2010-08-29 04:04:33', '2018-03-19 22:55:39', '1');
INSERT INTO `content` (`content_id`, `content_title`, `content_desc`, `content_path`, `input_date`, `last_update`, `content_ownpage`) VALUES
(8, 'Model Pengembangan Open Source', '<p><!--intro_awal-->Sumber terbuka (Inggris: open source) adalah sistem pengembangan yang tidak dikoordinasi oleh suatu individu / lembaga pusat, tetapi oleh para pelaku yang bekerja sama dengan memanfaatkan kode sumber (source-code) yang tersebar dan tersedia bebas (biasanya menggunakan fasilitas komunikasi internet). Pola pengembangan ini mengambil model ala bazaar, sehingga pola Open Source ini memiliki ciri bagi komunitasnya yaitu adanya dorongan yang bersumber dari budaya memberi.<!--intro_akhir--><br /><br />Pola Open Source lahir karena kebebasan berkarya, tanpa intervensi berpikir dan mengungkapkan apa yang diinginkan dengan menggunakan pengetahuan dan produk yang cocok. Kebebasan menjadi pertimbangan utama ketika dilepas ke publik. Komunitas yang lain mendapat kebebasan untuk belajar, mengutak-ngatik, merevisi ulang, membenarkan ataupun bahkan menyalahkan, tetapi kebebasan ini juga datang bersama dengan tanggung jawab, bukan bebas tanpa tanggung jawab.<br /><br />Pada intinya konsep sumber terbuka adalah membuka \"kode sumber\" dari sebuah perangkat lunak. Konsep ini terasa aneh pada awalnya dikarenakan kode sumber merupakan kunci dari sebuah perangkat lunak. Dengan diketahui logika yang ada di kode sumber, maka orang lain semestinya dapat membuat perangkat lunak yang sama fungsinya. Sumber terbuka hanya sebatas itu. Artinya, dia tidak harus gratis. Definisi sumber terbuka yang asli adalah seperti tertuang dalam OSD (Open Source Definition)/Definisi sumber terbuka.</p>\r\n<p>Pengembangan Senayan awalnya diinisiasi oleh pengelola Perpustakaan Depdiknas. Tetapi sekarang komunitas pengembang Senayan (Senayan Developer Community) yang lebih banyak mengambil peran dalam mengembangkan Senayan. Beberapa hal dibawah ini merupakan kultur yang dibangun dalam mengembangkan Senayan:<br />1.&nbsp;&nbsp;&nbsp; Meritokrasi. Siapa saja bisa berkontribusi. Mereka yang banyak memberikan kontribusi, akan mendapatkan privilege lebih dibandingkan yang lain.<br />2.&nbsp;&nbsp;&nbsp; Minimal punya concern terhadap pengembangan perpustakaan. Contoh lain: berlatar belakang pendidikan ilmu perpustakaan dan informasi, bekerja di perpustakaan, mengelola perpustakaan, dan lain-lain. Diharapkan dengan kondisi ini, sense of librarianship melekat di tiap developer/pengguna Senayan. Sejauh ini, semua developer senayan merupakan pustakawan atau berlatarbelakang pendidikan kepustakawanan (Information and Librarianship).<br />3.&nbsp;&nbsp;&nbsp; Release early, release often, and listen to your customer. Release early artinya setiap perbaikan dan penambahan fitur, secepat mungkin dirilis ke publik. Diharapkan bugs yang ada, bisa cepat ditemukan oleh komunitas, dilaporkan ke developer, untuk kemudian dirilis perbaikannya. Release often, artinya sesering mungkin memberikan update perbaikan bugs dan penambahan fitur. Ini &ldquo;memaksa&rdquo; developer Senayan untuk terus kreatif menambahkan fitur Senayan. Release often juga membuat pengguna berkeyakinan bahwa Senayan punya sustainability yang baik dan terus aktif dikembangkan. Selain itu, release often juga mempunyai dampak pemasaran. Pengguna dan calon pengguna, selalu diingatkan tentang keberadaan Senayan. Tentunya dengan cara yang elegan, yaitu rilis-rilis Senayan. Sejak dirilis ke publi pertama kali November 2007 sampai Juli 2009 (kurang lebih 20 bulan) telah dirilis 18 rilis resmi Senayan. Listen to your customer. Developer Senayan selalu berusaha mengakomodasi kebutuhan pengguna baik yang masuk melalui report di mailing list, ataupun melalui bugs tracking system. Tentu tidak semua masukan diakomodasi, harus disesuaikan dengan desain dan roadmap pengembangan Senayan.<br />4.&nbsp;&nbsp;&nbsp; Dokumentasi. Developer Senayan meyakini pentingnya dokumentasi yang baik dalam mensukseskan implementasi Senayan dibanyak tempat. Karena itu pengembang Senayan mempunyai tim khusus yang bertanggungjawab yang mengembangkan dokumentasi Senayan agar terus uo-to-date mengikuti rilis terbaru.<br />5.&nbsp;&nbsp;&nbsp; Agar ada percepatan dalam pengembangan dan untuk mengakrabkan antar pengembang Senayan, minimal setahun sekali diadakan Senayan Developers Day yang mengumpulkan para developer Senayan dari berbagai kota, dan melakukan coding bersama-sama.</p>', 'opensource', '2010-08-29 04:05:16', '2010-08-29 04:34:04', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_title` text COLLATE utf8_unicode_ci NOT NULL,
  `file_name` text COLLATE utf8_unicode_ci NOT NULL,
  `file_url` text COLLATE utf8_unicode_ci,
  `file_dir` text COLLATE utf8_unicode_ci,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_desc` text COLLATE utf8_unicode_ci,
  `uploader_id` int(11) NOT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `files`
--

INSERT INTO `files` (`file_id`, `file_title`, `file_name`, `file_url`, `file_dir`, `mime_type`, `file_desc`, `uploader_id`, `input_date`, `last_update`) VALUES
(1, 'IMPLEMENTASI DAN ANALISA KINERJAVOIP SERVERPADA JARINGANWIRELESS LANMENGGUNAKANSMARTPHONE', 'Muhammad Saleh Abrar 12301020013.pdf', '', '', 'application/pdf', '', 1, '2020-04-24 21:59:18', '2020-04-24 21:59:18'),
(2, 'BAB I', 'MEMBUAT_2_DOMAIN_WEB_PADA_1_SERVER_DENGA (1).pdf', '', '', 'application/pdf', '', 1, '2020-05-28 23:27:11', '2020-05-28 23:27:11'),
(3, 'PENAMBAHAN HORMON TIROKSIN DENGAN DOSIS YANG BERBEDA TERHADAP MOULTING KEPITING BAKAU (Scylla  serrata)', '1711NA6355 (1).pdf', '', '', 'application/pdf', '', 1, '2020-06-23 23:00:06', '2020-06-23 23:00:06'),
(4, 'Bab 1', 'render-pdf-katalog-perkriteria-frekuensi.pdf', '', '', 'application/pdf', '', 1, '2020-07-26 22:14:46', '2020-07-26 22:14:46'),
(5, 'Daftar Tajuk Subjek', 'DAFTAR TAJUK SUBJEK PERPUSTAKAAN NASIONAL RI (OK).pdf', '', '', 'application/pdf', '', 1, '2020-07-26 22:36:59', '2020-07-26 22:36:59'),
(6, 'cover', '01 Cover 222015255.pdf', '', '', 'application/pdf', '', 1, '2020-07-27 15:12:33', '2020-07-27 15:12:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fines`
--

CREATE TABLE `fines` (
  `fines_id` int(11) NOT NULL,
  `fines_date` date NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `debet` int(11) DEFAULT '0',
  `credit` int(11) DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `group_access`
--

CREATE TABLE `group_access` (
  `group_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `r` int(1) NOT NULL DEFAULT '0',
  `w` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `group_access`
--

INSERT INTO `group_access` (`group_id`, `module_id`, `r`, `w`) VALUES
(1, 1, 1, 1),
(1, 3, 1, 1),
(1, 4, 1, 1),
(1, 6, 1, 1),
(1, 7, 1, 1),
(2, 1, 1, 1),
(2, 3, 1, 1),
(2, 4, 1, 1),
(2, 6, 1, 1),
(2, 7, 1, 1),
(3, 1, 1, 1),
(3, 4, 1, 1),
(4, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `holiday`
--

CREATE TABLE `holiday` (
  `holiday_id` int(11) NOT NULL,
  `holiday_dayname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `holiday_date` date DEFAULT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `holiday`
--

INSERT INTO `holiday` (`holiday_id`, `holiday_dayname`, `holiday_date`, `description`) VALUES
(1, 'Mon', '2009-06-01', 'Tes Libur'),
(2, 'Tue', '2009-06-02', 'Tes Libur'),
(3, 'Wed', '2009-06-03', 'Tes Libur'),
(4, 'Thu', '2009-06-04', 'Tes Libur'),
(5, 'Fri', '2009-06-05', 'Tes Libur'),
(6, 'Sat', '2009-06-06', 'Tes Libur');

-- --------------------------------------------------------

--
-- Struktur dari tabel `item`
--

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL,
  `biblio_id` int(11) DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_id` int(3) DEFAULT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inventory_code` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `received_date` date DEFAULT NULL,
  `supplier_id` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_no` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `item_status_id` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `site` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` int(1) NOT NULL DEFAULT '0',
  `invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_currency` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `input_date` datetime NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `uid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kardex`
--

CREATE TABLE `kardex` (
  `kardex_id` int(11) NOT NULL,
  `date_expected` date NOT NULL,
  `date_received` date DEFAULT NULL,
  `seq_number` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `serial_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `loan`
--

CREATE TABLE `loan` (
  `loan_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loan_date` date NOT NULL,
  `due_date` date NOT NULL,
  `renewed` int(11) NOT NULL DEFAULT '0',
  `loan_rules_id` int(11) NOT NULL DEFAULT '0',
  `actual` date DEFAULT NULL,
  `is_lent` int(11) NOT NULL DEFAULT '0',
  `is_return` int(11) NOT NULL DEFAULT '0',
  `return_date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `long_pattern`
--

CREATE TABLE `long_pattern` (
  `pattern_id` int(2) NOT NULL,
  `pattern_prefix` varchar(5) DEFAULT NULL,
  `pattern_zero` int(10) DEFAULT NULL,
  `pattern_suffix` varchar(5) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `member`
--

CREATE TABLE `member` (
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `member_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(1) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `member_type_id` int(6) DEFAULT NULL,
  `member_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `inst_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_new` int(1) DEFAULT NULL,
  `member_image` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_since_date` date DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `expire_date` date NOT NULL,
  `member_notes` text COLLATE utf8_unicode_ci,
  `is_pending` smallint(1) NOT NULL DEFAULT '0',
  `mpasswd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `gender`, `birth_date`, `member_type_id`, `member_address`, `member_mail_address`, `member_email`, `postal_code`, `inst_name`, `is_new`, `member_image`, `pin`, `member_phone`, `member_fax`, `member_since_date`, `register_date`, `expire_date`, `member_notes`, `is_pending`, `mpasswd`, `last_login`, `last_login_ip`, `input_date`, `last_update`) VALUES
('123456', 'Keanu Reeves', 1, '0000-00-00', 1, '', '', '', '', '', NULL, 'member_123456.jpg', '', '', '', '2020-07-26', '2020-07-26', '2021-07-26', '', 0, '$2y$10$3Xj/s1r/qAakrdIMiGc8qe9bOL/GcafKLfzueqXZSLEmZacN1MtDa', NULL, NULL, '2020-07-26', '2020-08-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `member_custom`
--

CREATE TABLE `member_custom` (
  `member_id` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='one to one relation with real member table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_author`
--

CREATE TABLE `mst_author` (
  `author_id` int(11) NOT NULL,
  `author_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `author_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `authority_type` enum('p','o','c') COLLATE utf8_unicode_ci DEFAULT 'p',
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orcid_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_author`
--

INSERT INTO `mst_author` (`author_id`, `author_name`, `author_year`, `authority_type`, `auth_list`, `orcid_id`, `input_date`, `last_update`) VALUES
(1, 'jerry', NULL, 'p', NULL, NULL, '2020-04-10', '2020-04-10'),
(2, 'Jerry Permana', NULL, 'p', NULL, NULL, '2020-04-24', '2020-04-24'),
(3, 'Endah Suci Arista', NULL, 'p', NULL, NULL, '2020-05-28', '2020-05-28'),
(4, 'Ulpa Fitriani M H', NULL, 'p', NULL, NULL, '2020-06-23', '2020-06-23'),
(5, 'Muhammad Jerry Permana', NULL, 'p', NULL, NULL, '2020-06-23', '2020-06-23'),
(6, 'Nela Nursoleha,', NULL, 'p', NULL, NULL, '2020-07-26', '2020-07-26'),
(7, 'Nursoleha, Nela', NULL, 'p', NULL, NULL, '2020-07-26', '2020-07-26'),
(8, 'Anwar, Ineke Widyastuti', NULL, 'p', NULL, NULL, '2020-07-26', '2020-07-26'),
(9, 'Muhammad Fikri Fadilah', NULL, 'p', NULL, NULL, '2020-07-27', '2020-07-27'),
(10, 'Bambang Heru Wicaksono Adi', NULL, 'p', NULL, NULL, '2020-07-29', '2020-07-29'),
(11, 'Tasbihul Anwar', NULL, 'p', NULL, NULL, '2020-08-07', '2020-08-07'),
(12, 'ACHMAD GAOS', NULL, 'p', NULL, NULL, '2020-08-19', '2020-08-19'),
(13, 'Dwi Fajar Saputra', NULL, 'p', NULL, '0000-0001-6831-037X', '2020-09-06', '2020-09-06'),
(14, 'Yusac Firmasyah', NULL, 'p', NULL, NULL, '2020-09-06', '2020-09-06'),
(15, 'Jhon Deyby Ospina', NULL, 'p', NULL, '0000-0002-0732-7685', '2020-09-06', '2020-09-06'),
(16, 'jhon millar', NULL, 'p', NULL, '0000-0002-1747-6676', '2020-09-06', '2020-09-06'),
(17, 'asdasf', NULL, 'p', NULL, '0000-0003-1088-4447', '2020-09-06', '2020-09-06'),
(18, 'Harman Kordon', NULL, 'p', NULL, NULL, '2020-09-06', '2020-09-06'),
(19, 'gfdc', NULL, 'p', NULL, '0000-0002-6801-6151', '2020-09-06', '2020-09-06'),
(20, 'uhgjhgkb', NULL, 'p', NULL, NULL, '2020-09-06', '2020-09-06'),
(21, 'jklhkhln', NULL, 'p', NULL, NULL, '2020-09-06', '2020-09-06'),
(22, 'gf', NULL, 'p', NULL, '0000-0001-6871-6716', '2020-10-18', '2020-10-18'),
(23, 'gargi dinda', NULL, 'p', NULL, '0000-0003-1160-761X', '2020-10-21', '2020-10-21'),
(24, 'Darsono Bahrun', NULL, 'p', NULL, '0000-0003-0754-3326', '2020-10-22', '2020-10-22'),
(25, 'sri astuti', NULL, 'p', NULL, '0000-0002-3481-6767', '2020-11-18', '2020-11-18'),
(26, 'Sri Astuti Iriyani', NULL, 'p', NULL, '0000-0002-3481-6767', '2020-11-18', '2020-11-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_code_ministry`
--

CREATE TABLE `mst_code_ministry` (
  `code_ministry` varchar(20) NOT NULL,
  `name_prodi` varchar(100) NOT NULL,
  `degree` varchar(20) NOT NULL,
  `university` varchar(100) NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_code_ministry`
--

INSERT INTO `mst_code_ministry` (`code_ministry`, `name_prodi`, `degree`, `university`, `input_date`, `last_update`) VALUES
('54201', 'Agribisnis', '5', 'Universitas Syiah Kuala', '2020-06-10', '2020-06-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_coll_type`
--

CREATE TABLE `mst_coll_type` (
  `coll_type_id` int(3) NOT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_coll_type`
--

INSERT INTO `mst_coll_type` (`coll_type_id`, `coll_type_name`, `input_date`, `last_update`) VALUES
(1, 'Reference', '2007-11-29', '2007-11-29'),
(2, 'Textbook', '2007-11-29', '2007-11-29'),
(3, 'Fiction', '2007-11-29', '2007-11-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_contributor`
--

CREATE TABLE `mst_contributor` (
  `contributor_id` int(11) NOT NULL,
  `contributor_name` varchar(100) NOT NULL,
  `contributor_type` enum('p','o','c') NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_contributor`
--

INSERT INTO `mst_contributor` (`contributor_id`, `contributor_name`, `contributor_type`, `input_date`, `last_update`) VALUES
(1, 'jerry', 'p', '2020-05-16', '2020-05-16'),
(2, 'tes', 'p', '2020-05-16', '2020-05-16'),
(3, 'Nela Nursoleha,', 'p', '2020-07-26', '2020-07-26'),
(4, 'Ineke Widyastuti Anwar', 'p', '2020-07-26', '2020-07-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_copyright`
--

CREATE TABLE `mst_copyright` (
  `copyright_id` int(11) NOT NULL,
  `copyright_name` varchar(100) NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_copyright`
--

INSERT INTO `mst_copyright` (`copyright_id`, `copyright_name`, `input_date`, `last_update`) VALUES
(1, 'Lembaga Penerbit', '2019-03-14', '2019-03-14'),
(2, 'Individu Penulis', '2020-05-18', '2020-05-18'),
(3, 'Sekolah Tinggi Ilmu Kesehatan Holistik', '2020-07-26', '2020-07-26'),
(4, 'Institut Teknologi Nasional Bandung', '2020-07-29', '2020-07-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_examiner`
--

CREATE TABLE `mst_examiner` (
  `examiner_id` int(11) NOT NULL,
  `examiner_name` varchar(100) NOT NULL,
  `examiner_number` varchar(100) NOT NULL,
  `examiner_type` enum('p','o','c') NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_examiner`
--

INSERT INTO `mst_examiner` (`examiner_id`, `examiner_name`, `examiner_number`, `examiner_type`, `input_date`, `last_update`) VALUES
(1, 'jerrytes', '1208001010018', 'p', '2020-04-13', '2020-04-13'),
(2, 'tes3', '1234567', 'p', '2020-04-13', '2020-04-13'),
(4, 'Dosen Penguji', '199505092016', 'p', '2020-04-24', '2020-04-24'),
(5, 'Tes penguji 2', '1234567', 'p', '2020-04-24', '2020-04-24'),
(6, 'Ulpa Fitriani M H', '198006042012121004', 'p', '2020-05-28', '2020-05-28'),
(7, 'Irwan Haryanto', '0406056401', 'p', '2020-07-26', '2020-07-26'),
(8, 'Tomi Herutomo', '8853020016', 'p', '2020-07-26', '2020-07-26'),
(9, 'Ahmad', '', 'p', '2020-08-07', '2020-08-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_frequency`
--

CREATE TABLE `mst_frequency` (
  `frequency_id` int(11) NOT NULL,
  `frequency` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `language_prefix` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_increment` smallint(6) DEFAULT NULL,
  `time_unit` enum('day','week','month','year') COLLATE utf8_unicode_ci DEFAULT 'day',
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_frequency`
--

INSERT INTO `mst_frequency` (`frequency_id`, `frequency`, `language_prefix`, `time_increment`, `time_unit`, `input_date`, `last_update`) VALUES
(1, 'Weekly', 'en', 1, 'week', '2009-05-23', '2009-05-23'),
(2, 'Bi-weekly', 'en', 2, 'week', '2009-05-23', '2009-05-23'),
(3, 'Fourth-Nightly', 'en', 14, 'day', '2009-05-23', '2009-05-23'),
(4, 'Monthly', 'en', 1, 'month', '2009-05-23', '2009-05-23'),
(5, 'Bi-Monthly', 'en', 2, 'month', '2009-05-23', '2009-05-23'),
(6, 'Quarterly', 'en', 3, 'month', '2009-05-23', '2009-05-23'),
(7, '3 Times a Year', 'en', 4, 'month', '2009-05-23', '2009-05-23'),
(8, 'Annualy', 'en', 1, 'year', '2009-05-23', '2009-05-23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_gmd`
--

CREATE TABLE `mst_gmd` (
  `gmd_id` int(11) NOT NULL,
  `gmd_code` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `icon_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_gmd`
--

INSERT INTO `mst_gmd` (`gmd_id`, `gmd_code`, `gmd_name`, `icon_image`, `input_date`, `last_update`) VALUES
(1, 'TE', 'Text', NULL, '2017-08-16', '2017-08-16'),
(2, 'AR', 'Art Original', NULL, '2017-08-16', '2018-03-20'),
(3, 'CH', 'Chart', NULL, '2017-08-16', '2017-08-16'),
(4, 'CO', 'Computer Software', NULL, '2017-08-16', '2017-08-16'),
(5, 'DI', 'Diorama', NULL, '2017-08-16', '2017-08-16'),
(6, 'FI', 'Filmstrip', NULL, '2017-08-16', '2017-08-16'),
(7, 'FL', 'Flash Card', NULL, '2017-08-16', '2017-08-16'),
(8, 'GA', 'Game', NULL, '2017-08-16', '2017-08-16'),
(9, 'GL', 'Globe', NULL, '2017-08-16', '2017-08-16'),
(10, 'KI', 'Kit', NULL, '2017-08-16', '2017-08-16'),
(11, 'MA', 'Map', NULL, '2017-08-16', '2017-08-16'),
(12, 'MI', 'Microform', NULL, '2017-08-16', '2017-08-16'),
(13, 'MN', 'Manuscript', NULL, '2017-08-16', '2017-08-16'),
(14, 'MO', 'Model', NULL, '2017-08-16', '2017-08-16'),
(15, 'MP', 'Motion Picture', NULL, '2017-08-16', '2017-08-16'),
(16, 'MS', 'Microscope Slide', NULL, '2017-08-16', '2017-08-16'),
(17, 'MU', 'Music', NULL, '2017-08-16', '2017-08-16'),
(18, 'PI', 'Picture', NULL, '2017-08-16', '2017-08-16'),
(19, 'RE', 'Realia', NULL, '2017-08-16', '2017-08-16'),
(20, 'SL', 'Slide', NULL, '2017-08-16', '2017-08-16'),
(21, 'SO', 'Sound Recording', NULL, '2017-08-16', '2017-08-16'),
(22, 'TD', 'Technical Drawing', NULL, '2017-08-16', '2017-08-16'),
(23, 'TR', 'Transparency', NULL, '2017-08-16', '2017-08-16'),
(24, 'VI', 'Video Recording', NULL, '2017-08-16', '2017-08-16'),
(25, 'EQ', 'Equipment', NULL, '2017-08-16', '2017-08-16'),
(26, 'CF', 'Computer File', NULL, '2017-08-16', '2017-08-16'),
(27, 'CA', 'Cartographic Material', NULL, '2017-08-16', '2017-08-16'),
(28, 'CD', 'CD-ROM', NULL, '2017-08-16', '2017-08-16'),
(29, 'MV', 'Multimedia', NULL, '2017-08-16', '2017-08-16'),
(30, 'ER', 'Electronic Resource', NULL, '2017-08-16', '2017-08-16'),
(31, 'DVD', 'Digital Versatile Disc', NULL, '2017-08-16', '2017-08-16'),
(42, NULL, 'Mainan', NULL, '2018-03-23', '2018-03-23'),
(43, 'SK', 'Skripsi', NULL, '2020-07-26', '2020-07-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_item_status`
--

CREATE TABLE `mst_item_status` (
  `item_status_id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `item_status_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `rules` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_loan` smallint(1) NOT NULL DEFAULT '0',
  `skip_stock_take` smallint(1) NOT NULL DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_item_status`
--

INSERT INTO `mst_item_status` (`item_status_id`, `item_status_name`, `rules`, `no_loan`, `skip_stock_take`, `input_date`, `last_update`) VALUES
('R', 'Repair', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2017-08-16', '2017-08-16'),
('NL', 'No Loan', 'a:1:{i:0;s:1:\"1\";}', 1, 0, '2017-08-16', '2017-08-16'),
('MIS', 'Missing', NULL, 1, 1, '2017-08-16', '2017-08-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_item_type`
--

CREATE TABLE `mst_item_type` (
  `item_type_id` int(11) NOT NULL,
  `item_type_code` varchar(3) DEFAULT NULL,
  `item_type_name` varchar(30) DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_item_type`
--

INSERT INTO `mst_item_type` (`item_type_id`, `item_type_code`, `item_type_name`, `input_date`, `last_update`) VALUES
(1, 'BS', 'Book Section', '2020-05-10', '2020-05-10'),
(2, 'CFW', 'Conference or Workshop Item', '2020-05-10', '2020-05-10'),
(3, 'THS', 'Thesis', '2020-05-10', '2020-05-10'),
(4, 'PTE', 'Patent', '2020-05-10', '2020-05-10'),
(5, 'TRS', 'Teaching Resource', '2020-05-15', '2020-05-15'),
(6, 'OTH', 'Other', '2020-06-10', '2020-06-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_label`
--

CREATE TABLE `mst_label` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `label_desc` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label_image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_label`
--

INSERT INTO `mst_label` (`label_id`, `label_name`, `label_desc`, `label_image`, `input_date`, `last_update`) VALUES
(1, 'label-new', 'New Title', 'label-new.png', '2017-08-16', '2017-08-16'),
(2, 'label-favorite', 'Favorite Title', 'label-favorite.png', '2017-08-16', '2017-08-16'),
(3, 'label-multimedia', 'Multimedia', 'label-multimedia.png', '2017-08-16', '2017-08-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_language`
--

CREATE TABLE `mst_language` (
  `language_id` char(5) COLLATE utf8_unicode_ci NOT NULL,
  `language_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_language`
--

INSERT INTO `mst_language` (`language_id`, `language_name`, `input_date`, `last_update`) VALUES
('id', 'Indonesia', '2017-08-16', '2017-08-16'),
('en', 'English', '2017-08-16', '2017-08-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_license`
--

CREATE TABLE `mst_license` (
  `license_id` int(11) NOT NULL,
  `license_name` varchar(100) NOT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_license`
--

INSERT INTO `mst_license` (`license_id`, `license_name`, `input_date`, `last_update`) VALUES
(3, 'Creative Commons', '2020-06-16', '2020-06-16'),
(4, 'CC BY-SA 4.0', '2020-07-25', '2020-07-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_loan_rules`
--

CREATE TABLE `mst_loan_rules` (
  `loan_rules_id` int(11) NOT NULL,
  `member_type_id` int(11) NOT NULL DEFAULT '0',
  `coll_type_id` int(11) DEFAULT '0',
  `gmd_id` int(11) DEFAULT '0',
  `loan_limit` int(3) DEFAULT '0',
  `loan_periode` int(3) DEFAULT '0',
  `reborrow_limit` int(3) DEFAULT '0',
  `fine_each_day` int(3) DEFAULT '0',
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_location`
--

CREATE TABLE `mst_location` (
  `location_id` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `location_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_location`
--

INSERT INTO `mst_location` (`location_id`, `location_name`, `input_date`, `last_update`) VALUES
('SL', 'My Library', '2017-08-16', '2017-08-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_member_type`
--

CREATE TABLE `mst_member_type` (
  `member_type_id` int(11) NOT NULL,
  `member_type_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `loan_limit` int(11) NOT NULL,
  `loan_periode` int(11) NOT NULL,
  `enable_reserve` int(1) NOT NULL DEFAULT '0',
  `reserve_limit` int(11) NOT NULL DEFAULT '0',
  `member_periode` int(11) NOT NULL,
  `reborrow_limit` int(11) NOT NULL,
  `fine_each_day` int(11) NOT NULL,
  `grace_periode` int(2) DEFAULT '0',
  `input_date` date NOT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_member_type`
--

INSERT INTO `mst_member_type` (`member_type_id`, `member_type_name`, `loan_limit`, `loan_periode`, `enable_reserve`, `reserve_limit`, `member_periode`, `reborrow_limit`, `fine_each_day`, `grace_periode`, `input_date`, `last_update`) VALUES
(1, 'Standard', 2, 7, 1, 2, 365, 1, 0, 0, '2017-08-16', '2017-08-16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_module`
--

CREATE TABLE `mst_module` (
  `module_id` int(3) NOT NULL,
  `module_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `module_path` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `mst_module`
--

INSERT INTO `mst_module` (`module_id`, `module_name`, `module_path`, `module_desc`) VALUES
(1, 'ETD', 'bibliography', 'Manage your bibliographic/catalog and items/copies database'),
(3, 'membership', 'membership', 'Manage your library membership and membership type'),
(4, 'master_file', 'master_file', 'Manage your referential data that will be used by other modules'),
(6, 'system', 'system', 'Configure system behaviour, user and backups'),
(7, 'reporting', 'reporting', 'Real time and dynamic report about library collections and circulation');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_place`
--

CREATE TABLE `mst_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_place`
--

INSERT INTO `mst_place` (`place_id`, `place_name`, `input_date`, `last_update`) VALUES
(1, 'Perpustakaan Universitas Syiah', '2020-04-24', '2020-04-24'),
(2, 'Purwakarta', '2020-07-26', '2020-07-26'),
(3, 'Institut Teknologi Nasional Ba', '2020-07-29', '2020-07-29'),
(4, 'Bandung', '2020-07-29', '2020-07-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_publisher`
--

CREATE TABLE `mst_publisher` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_publisher`
--

INSERT INTO `mst_publisher` (`publisher_id`, `publisher_name`, `input_date`, `last_update`) VALUES
(1, 'Universitas Syiah Kuala', '2020-04-24', '2020-04-24'),
(2, 'Sekolah Tinggi Ilmu Kesehatan Holistik', '2020-07-26', '2020-07-26'),
(3, 'Institut Teknologi Nasional Bandung', '2020-07-29', '2020-07-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_supervisor`
--

CREATE TABLE `mst_supervisor` (
  `supervisor_id` int(11) NOT NULL,
  `supervisor_name` varchar(100) DEFAULT NULL,
  `supervisor_number` varchar(100) NOT NULL,
  `supervisor_year` varchar(20) DEFAULT NULL,
  `supervisor_type` enum('p','o','c') DEFAULT NULL,
  `supervisor_list` varchar(20) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mst_supervisor`
--

INSERT INTO `mst_supervisor` (`supervisor_id`, `supervisor_name`, `supervisor_number`, `supervisor_year`, `supervisor_type`, `supervisor_list`, `input_date`, `last_update`) VALUES
(1, 'melky muzawir', '13423234234', NULL, NULL, NULL, '2020-04-10', '2020-04-10'),
(2, 'Studi Kasus', '3424', NULL, NULL, NULL, '2020-04-10', '2020-04-10'),
(5, 'jerry', '1208001010018', NULL, 'p', NULL, '2020-04-11', '2020-04-11'),
(6, 'Andre darnius', '1208001010001', NULL, 'p', NULL, '2020-04-11', '2020-04-11'),
(7, 'taufik', '13131231', NULL, 'p', NULL, '2020-04-11', '2020-04-11'),
(9, 'tes2', '1234', NULL, 'p', NULL, '2020-04-13', '2020-04-13'),
(14, 'muhammad Jerry Permana', '199505092016011101', '254260', 'p', '', '2020-04-15', '2020-04-15'),
(15, 'Rudi', '199505092016011101', NULL, 'p', NULL, '2020-04-24', '2020-04-24'),
(16, 'taufiq', '199505092016011101', NULL, 'p', NULL, '2020-04-24', '2020-04-24'),
(17, 'tes pembimbing 3', '199505092016011101', NULL, 'p', NULL, '2020-04-24', '2020-04-24'),
(18, 'tes pembimbing 4', '199505092016011101', NULL, 'p', NULL, '2020-04-24', '2020-04-24'),
(19, 'tes pembimbing 5', '1424234', NULL, 'p', NULL, '2020-04-24', '2020-04-24'),
(20, 'Hariyadi Hamid, S.E., M.Sc', '198006042012121004', NULL, 'p', NULL, '2020-05-28', '2020-05-28'),
(21, 'Ulpa Fitriani M H', '199505092016011101', NULL, 'p', NULL, '2020-06-23', '2020-06-23'),
(22, 'Ahmad Yani', '0417077805', NULL, 'p', NULL, '2020-07-26', '2020-07-26'),
(23, 'Restu Amalia Hermanto', '0413128902', NULL, 'p', NULL, '2020-07-26', '2020-07-26'),
(24, 'Barkah Wahyu Widianto', '0418068703', NULL, 'p', NULL, '2020-07-27', '2020-07-27'),
(25, 'Tasbihul Anwar', '', NULL, 'p', NULL, '2020-08-07', '2020-08-07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_supplier`
--

CREATE TABLE `mst_supplier` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` char(14) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` char(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mst_topic`
--

CREATE TABLE `mst_topic` (
  `topic_id` int(11) NOT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `topic_type` enum('t','g','n','tm','gr','oc') COLLATE utf8_unicode_ci NOT NULL,
  `auth_list` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Classification Code',
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `mst_topic`
--

INSERT INTO `mst_topic` (`topic_id`, `topic`, `topic_type`, `auth_list`, `classification`, `input_date`, `last_update`) VALUES
(1, 'perbandingan', 't', NULL, '', '2020-05-28', '2020-05-28'),
(2, 'tes', 't', NULL, '', '2020-06-10', '2020-06-10'),
(3, 'opini', 't', NULL, '', '2020-06-23', '2020-06-23'),
(4, 'subject', 't', NULL, '', '2020-06-23', '2020-06-23'),
(5, 'aspal', 't', NULL, '', '2020-07-27', '2020-07-27'),
(6, 'perkerasan jalan', 't', NULL, '', '2020-07-29', '2020-07-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reserve`
--

CREATE TABLE `reserve` (
  `reserve_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `biblio_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `search_biblio`
--

CREATE TABLE `search_biblio` (
  `biblio_id` int(11) NOT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `edition` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isbn_issn` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` text COLLATE utf8_unicode_ci,
  `topic` text COLLATE utf8_unicode_ci,
  `gmd` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publish_place` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spec_detail_info` text COLLATE utf8_unicode_ci,
  `location` text COLLATE utf8_unicode_ci,
  `publish_year` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `series_title` text COLLATE utf8_unicode_ci,
  `items` text COLLATE utf8_unicode_ci,
  `collection_types` text COLLATE utf8_unicode_ci,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opac_hide` smallint(1) NOT NULL DEFAULT '0',
  `promoted` smallint(1) NOT NULL DEFAULT '0',
  `labels` text COLLATE utf8_unicode_ci,
  `collation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='index table for advance searching technique for SLiMS';

--
-- Dumping data untuk tabel `search_biblio`
--

INSERT INTO `search_biblio` (`biblio_id`, `title`, `edition`, `isbn_issn`, `author`, `topic`, `gmd`, `publisher`, `publish_place`, `language`, `classification`, `spec_detail_info`, `location`, `publish_year`, `notes`, `series_title`, `items`, `collection_types`, `call_number`, `opac_hide`, `promoted`, `labels`, `collation`, `image`, `input_date`, `last_update`) VALUES
(6, 'tes', '0', '', NULL, NULL, 'Microscope Slide', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-15 22:45:57', '2020-05-15 22:45:57'),
(8, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN', '0', '', NULL, NULL, 'Text', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-15 22:48:38', '2020-05-15 22:49:03'),
(4, 'Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone', 'Print', '2020-04-24', 'Jerry Permana', NULL, 'Text', 'Universitas Syiah Kuala', 'Perpustakaan Universitas Syiah', 'Indonesia', '', '', NULL, '2019', 'Penelitian ini bertujuan untuk mengimplementasikan VoIP Server Pada jaringan Wireless LAN di Fakultas Teknik Universitas Borneo Tarakan dengan menggunkan Elastix sebagai server dan aplikasi VoIP Call pada Smartphone menggunakan CsipSimple serta menganalisa kinerja dari server tersbut dengan perangkat lunak Wireshark. Metode yang digunakan dalam penelitian ini yakni dengan metode pengukuran kualitas layanan suara atau QoS (Quality of Service). Pengujian dilakukan indoor dan outdoor. Dengan parameter QoS sepeti delay, throughput, dan packet loss dapat dijadikan sebagai ukuran untuk mengetahui kualitas dari suatu jaringan. Delay yang dihasilkan paling besar di pengujian indoor dengan jarak 11-15 meter yakni sebesar 0.00956464 seconds. Packet loss yang dihasilkan pada range 0,00%, sedangkan standar packet loss yang ditetapkan oleh ITU-T untuk layanan aplikasi VoIP adalah < 3%. Jitter yang dihasilkan yakni antara 0,04608 – 0.09485 seconds sedangkan standar yang ditetapkan oleh ITU-T adalah = 0–75 ms.. Throughput yang dihasilkan pada proses pengujian yakni antar 104,551 kbps 108,905 kbps\r\n\r\nThis study aims to implement VoIP Server In Wireless LAN network at the Faculty of Engineering, University of Borneo Tarakan by using Elastix as a server and VoIP Call application on Smartphone using CsipSimple and analyze the performance of the server with Wireshark software. The method used in this research is by the method of measuring the quality of voice service or QoS (Quality of Service). Testing is done indoor and outdoor. With QoS parameters such as delay, throughput, and packet loss can be used as a measure to determine the quality of a network. Delay produced the largest in indoor testing with a distance of 11 -15 meters of 0.0095646 seconds. Packet loss is generated in the 0.00% range, while the packet loss standard set by ITU-T for VoIP application services is', NULL, NULL, NULL, '', 0, 0, NULL, 'xvii + 105 hal, 30 cm x 21 cm', '', '2020-04-24 21:59:35', '2020-04-24 22:52:09'),
(9, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN', '0', '', NULL, NULL, 'Text', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-16 23:03:48', '2020-05-16 23:05:04'),
(10, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN', '0', '', NULL, NULL, 'Microform', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-18 23:37:09', '2020-05-18 23:37:09'),
(11, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN', '0', '', NULL, NULL, 'Model', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-18 23:38:09', '2020-05-18 23:38:09'),
(12, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN', '0', '', NULL, NULL, 'Map', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-18 23:39:50', '2020-05-19 00:18:55'),
(13, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN', '0', '', NULL, NULL, 'Music', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-18 23:41:24', '2020-05-18 23:45:22'),
(14, 'Valuasi Ekonomi Jasa Angkutan Umum Kota Di Tarakan', '0', '', NULL, NULL, 'Music', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-05-18 23:46:03', '2020-05-18 23:46:03'),
(15, 'Perbandingan Sistem Economic Order Quantity', 'Print', '2020-05-28', 'Endah Suci Arista', 'perbandingan', 'Text', 'Universitas Syiah Kuala', 'Perpustakaan Universitas Syiah', 'Indonesia', '321', '', NULL, '2018', 'Cedera kepala pada anak adalah setiap trauma pada anak kepala yang menyebabkan cedera pada kulit kepala, tulang tengkorak maupun otak. Cedera kepala biasanya dikelompokan sebagai cedera kepala tertutup atau terbuka (Penetrasi, luka tembus). Pada cedera kepala tertutup, kepala menerima suatu dorongan tumpul karena membentur suatu benda. Pada cedera kepala terbuka, suatu benda berkecepatan tinggi menembus tulang tengkorak dan masuk kedalam otak, tujuan Laporan Tugas Akhir (LTA) ini untuk memperoleh gambaran mengenai asuhan keperawatan pada klien An. R dengan gangguan sistem neurologis “Cedera Kepala Ringan”. Metode penulisan Laporan Tugas Akhir ini menggunakan metode Deskriktif dalam bentuk studi kasus melalui pendekatan proses keperawatan yang disusun secara komphrensif meliputi pengkajian, perumusan diagnosa keperawatan, perencanaan, pelaksanaan, dan evaluasi. Berdasarkan pengkajian pada tanggal 05-07-2017 sampai 07-07-2017 pada “An. R” ditemukan 4 (empat) diagnosa keperawatan yaitu: Nyeri akut, intoleran aktifitas, defisit keperawatan diri, kurang pengetahuan. Setelah dilakukantindakan keperawatan sesuai dengan perencanaan yang dibuat, kemudian dievaluasi dengan menggunakan SOAP. Setelah dilakukan evaluasi tanggal 07-07-2017 dari empat diagnosa keperawatan yang diangkat keseluruhan diagnosa dapat teratasi.\r\nKata Kunci : Cedera Kepala Ringan, Intoleran aktifitas, Nyeri akut, Resiko jatuh.', NULL, NULL, NULL, '001.4-370 JER T', 0, 0, NULL, 'xvii + 105 hal, 30 cm x 21 cm', '28928978_1361978250573785_7950064153719209984_n.jpg.jpg', '2020-05-28 23:27:44', '2020-05-28 23:27:44'),
(16, 'PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT', '0', '', NULL, NULL, 'Art Original', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-06-16 22:31:07', '2020-06-16 22:34:21'),
(20, 'PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT', 'Published', '', 'Muhammad Jerry Permana', 'opini - subject', 'Text', 'Universitas Syiah Kuala', 'Perpustakaan Universitas Syiah', 'Indonesia', '321', '', NULL, '2018', 'Penelitian ini dilakukan untuk (1) mengidentifikasi dan mendeskripsikan tipe-tipe kesalahan yang dilakukan oleh siswa kelas delapan-sembilan SMPN 1 Tarakan di dalam recount text, (2) mengidentifikasi dan mendeskripsikan sumber kesalahan yang mempengaruhi siswa untuk melakukan kesalahan yang ditulisan dalam recount text. Subyek penelitian ini adalah 26 siswa ditahun pembelajaran 2017/2018. Dalam mengumpulkan data, peneliti meminta siswa untuk menulis recount text dengan topik yang telah diberikan. Peneliti juga mewawancara 6 siswa\r\nuntuk mendapatkan informasi mengenai kemungkinan penyebab kesalahan yang mempengaruhi mereka melakukan kesalahan. Hasil menunjukkan bahwa terdapat 687 kesalahan yang ditemukan pada tulisan siswa yang dianalisis dengan menggunakan Surface Strategy Taxonomy. Ditemukan 123 kesalahan penghilangan, 104 kesalahan penambahan, 453 kesalahan pembentukan dan 7 kesalahan penempatan. Sementara itu, menurut Comparative Analysis Taxonomy kesalahan-kesalahan tersebut dipengaruhi oleh beberapa faktor seperti kesalahan perkembangan, kesalahan interlingual, kesalahan ambigu dan kesalahan lainnya. Maka ditemukan 178 kesalahan disebabkan oleh perkembangan, 13 kesalahan oleh interlingual, 26 kesalahan oleh ambigu dan 44 kesalahan oleh lainnya. Kesimpulannya, kesalahan-kesalahan gramatika terjadi pada tulisan siswa kerena kurangnya pemahaman mahasiwa mengenai grammar dan pengaruh struktur bahasa Indonesia dalam pembelajaran.', NULL, NULL, NULL, '321', 0, 0, NULL, 'xvii + 105 hal, 30 cm x 21 cm', '28928978_1361978250573785_7950064153719209984_n.jpg.jpg', '2020-06-23 23:01:59', '2020-07-25 14:35:11'),
(18, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa', 'Published', '', 'Ulpa Fitriani M H', NULL, 'Microform', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-06-23 22:31:59', '2020-06-23 22:46:32'),
(67, 'PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT', '0', '', NULL, NULL, 'Text', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-04 16:45:28', '2020-07-04 16:45:28'),
(68, 'KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN', '0', '', NULL, NULL, 'Text', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-07 16:31:20', '2020-07-07 16:31:20'),
(69, 'Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone', '0', '', NULL, NULL, 'Picture', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-07 16:32:23', '2020-07-07 16:32:23'),
(70, 'KAJIAN KARAKTERISTIK', '0', '', NULL, NULL, 'Picture', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-07 16:35:50', '2020-07-07 16:35:50'),
(71, 'asd', '0', '', NULL, NULL, 'Picture', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-07 16:37:32', '2020-07-07 16:37:32'),
(72, 'a', '0', '', NULL, NULL, 'Microscope Slide', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-07 16:44:08', '2020-07-07 16:44:08'),
(73, 'KAJIAN KARAKTERISTIK', '0', '', NULL, NULL, 'Realia', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-08 10:56:20', '2020-07-08 10:56:20'),
(75, 'sad', '0', '', NULL, NULL, 'Slide', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-08 11:04:20', '2020-07-08 11:04:20'),
(76, 'KAJIAN KARAKTERISTIK', '0', '', NULL, NULL, 'Music', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-08 11:07:04', '2020-07-08 11:07:04'),
(77, 'as', '0', '', NULL, NULL, 'Realia', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-08 11:10:01', '2020-07-08 11:10:01'),
(79, 'sd', '0', '', NULL, NULL, 'Picture', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, '', 0, 0, NULL, '', '', '2020-07-08 11:10:35', '2020-07-08 11:10:35'),
(83, 'PENGARUH PEMBERIAN KURMA TERHADAP KADAR HEMOGLOBIN PADA REMAJA PUTRI DI PURWAKARTA', 'Published', '', 'Dwi Fajar Saputra', NULL, 'Skripsi', 'Sekolah Tinggi Ilmu Kesehatan Holistik', 'Purwakarta', 'Indonesia', '', '', NULL, '2019', 'Latar belakang : Pada negara berkembang angka kejadian anemia pada remaja putri sekitar 53,7 %. Berdasarkan MI (Micronutrient Initiative) tahun 2018 prevalensi anemia di Cimahi – Purwakarta mencapai 51 %. Anemia sering menyerang remaja putri disebabkan karena keadaan stress, haid, atau terlambat makan, selain itu banyaknya remaja putri yang melakukan diet ketat sehingga asupan gizinya tidak seimbang. Anemia dapat diatasi dengan memberikan makanan yang kaya akan zat besi, salah satunya terdapat pada kurma.\r\n\r\nTujuan : Penelitian ini bertujuan untuk mengetahui pengaruh pemberian kurma terhadap kadar hemoglobin pada remaja putri di Purwakarta.\r\n\r\nMetode : Penelitian ini menggunakan desain pre-test post-test with control group. 40 orang telah berpartisipasi dalam penelitian ini. Pemberian kurma ini diberikan sebanyak 70 gram selama 2 minggu. Pengumpulan data dengan melakukan pengecekan kadar hemoglobin menggunakan metode cyanmethemoglobin dan wawancara asupan makanan menggunakan food recall 24 jam. Analisis data menggunakan uji Paired T-test untuk uji univariat sedangkan uji bivariat menggunakan uji Pearson Product Moment.\r\n\r\nHasil : Hasil analisis menggunakan uji Paired T-test diperoleh nilai p > 0,005, tidak terdapat pengaruh pemberian kurma terhadap kadar hemoglobin. Rata-rata kadar hemoglobin sebelum treatmen kurma adalah 12,72 mg/dL dan kadar hemoglobin sesudah treatmen kurma adalah 12,37 mg/dl.\r\n\r\nSimpulan : Tidak terdapat pengaruh pemberian kurma terhadap kadar hemoglobin pada remaja putri di Purwakarta', NULL, NULL, NULL, 'G.0036', 0, 0, NULL, '', '000090.jpg.jpg', '2020-07-26 23:41:40', '2020-11-26 22:19:23'),
(82, 'PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA', 'Published', '2019-03-29', 'sri astuti', NULL, 'Skripsi', 'Sekolah Tinggi Ilmu Kesehatan Holistik', 'Purwakarta', 'Indonesia', '', '', NULL, '2019', 'Latar Belakang : Asam urat merupakan suatu penyakit karena kelainan metabolisme purin (Hiperurisemia). Peningkatan produksi asam urat terjadi akibat : produksi asam urat berlebih, konsumsi bahan makanan yang mengandung tinggi purin, kurang cairan dan aktifitas fisik. Daun sirsak memiliki senyawa acetogenin dan flavonoid yang membantu mencegah terjadinya pembentukan asam urat.\r\n\r\nMetode : Penelitian ini merupakan penelitian pra eksperimen dengan rancangan penelitian One group pre-post test design dengan subjek sebanyak 31 pasien rawat jalan Puskesmas Pasawahan Kabupaten Purwakarta, kadar asam urat diukur pada awal penelitian (pre-test), lalu pasien diberi treatment air rebusan daun sirsak. Air rebusan daun sirsak terdiri dari 6 gram atau 10 lembar daun sirsak yang telah dicuci bersih dan direbus dengan air 600 ml yang dimasak hingga mendidih dan tersisa 200 ml. pemberian dilakukan selama 7 hari berturut-turut lalu kadar asam urat diukur kembali di hari ke-8 (post-test). Analisis data yang digunakan yaitu Paired T-test untuk uji univariat sedangkan uji bivariat menggunakan Rank Spearman dan Pearson Product Moment.\r\n\r\nHasil : Rata-rata nilai kadar asam urat sebelum diberikan air rebusan daun sirsak (pre-test) adalah 7, 16±1, 25 mg/dl dan kadar asam urat setelah diberikan air rebusan daun sirsak (post-test) adalah 7,15±1, 18 mg/dl.\r\n\r\nSimpulan : Tidak ada pengaruh pemberian air rebusan daun sirsak (Annona Muricata L) terhadap penuruna kadar asam urat.', NULL, NULL, NULL, 'G.0035', 0, 0, NULL, '', '000434.jpg.jpg', '2020-07-26 22:17:33', '2020-11-26 22:19:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `serial`
--

CREATE TABLE `serial` (
  `serial_id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `period` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `biblio_id` int(11) DEFAULT NULL,
  `gmd_id` int(11) DEFAULT NULL,
  `input_date` date NOT NULL,
  `last_update` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(3) NOT NULL,
  `setting_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `setting_value` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'library_name', 's:7:\"Setiadi\";'),
(2, 'library_subname', 's:22:\"Open Source ETD System\";'),
(3, 'template', 'a:2:{s:5:\"theme\";s:11:\"erwan-style\";s:3:\"css\";s:30:\"template/erwan-style/style.css\";}'),
(4, 'admin_template', 'a:2:{s:5:\"theme\";s:7:\"setboot\";s:3:\"css\";s:32:\"admin_template/setboot/style.css\";}'),
(5, 'default_lang', 's:5:\"id_ID\";'),
(6, 'opac_result_num', 's:2:\"10\";'),
(7, 'enable_promote_titles', 'N;'),
(8, 'quick_return', 'b:1;'),
(9, 'allow_loan_date_change', 'b:0;'),
(10, 'loan_limit_override', 'b:0;'),
(11, 'enable_xml_detail', 'b:1;'),
(12, 'enable_xml_result', 'b:1;'),
(13, 'allow_file_download', 'b:1;'),
(14, 'session_timeout', 's:4:\"7200\";'),
(15, 'circulation_receipt', 'b:0;'),
(16, 'barcode_encoding', 's:4:\"128B\";'),
(17, 'ignore_holidays_fine_calc', 'b:0;'),
(18, 'barcode_print_settings', 'a:12:{s:19:\"barcode_page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:21:\"barcode_items_per_row\";i:3;s:20:\"barcode_items_margin\";d:0.1000000000000000055511151231257827021181583404541015625;s:17:\"barcode_box_width\";i:7;s:18:\"barcode_box_height\";i:5;s:27:\"barcode_include_header_text\";i:1;s:17:\"barcode_cut_title\";i:50;s:19:\"barcode_header_text\";s:0:\"\";s:13:\"barcode_fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:17:\"barcode_font_size\";i:11;s:13:\"barcode_scale\";i:70;s:19:\"barcode_border_size\";i:1;}'),
(19, 'label_print_settings', 'a:10:{s:11:\"page_margin\";d:0.200000000000000011102230246251565404236316680908203125;s:13:\"items_per_row\";i:3;s:12:\"items_margin\";d:0.05000000000000000277555756156289135105907917022705078125;s:9:\"box_width\";i:8;s:10:\"box_height\";d:3.29999999999999982236431605997495353221893310546875;s:19:\"include_header_text\";i:1;s:11:\"header_text\";s:0:\"\";s:5:\"fonts\";s:41:\"Arial, Verdana, Helvetica, \'Trebuchet MS\'\";s:9:\"font_size\";i:11;s:11:\"border_size\";i:1;}'),
(20, 'membercard_print_settings', 'a:1:{s:5:\"print\";a:1:{s:10:\"membercard\";a:61:{s:11:\"card_factor\";s:12:\"37.795275591\";s:21:\"card_include_id_label\";i:1;s:23:\"card_include_name_label\";i:1;s:22:\"card_include_pin_label\";i:1;s:23:\"card_include_inst_label\";i:0;s:24:\"card_include_email_label\";i:0;s:26:\"card_include_address_label\";i:1;s:26:\"card_include_barcode_label\";i:1;s:26:\"card_include_expired_label\";i:1;s:14:\"card_box_width\";d:8.5999999999999996447286321199499070644378662109375;s:15:\"card_box_height\";d:5.4000000000000003552713678800500929355621337890625;s:9:\"card_logo\";s:8:\"logo.png\";s:21:\"card_front_logo_width\";s:0:\"\";s:22:\"card_front_logo_height\";s:0:\"\";s:20:\"card_front_logo_left\";s:0:\"\";s:19:\"card_front_logo_top\";s:0:\"\";s:20:\"card_back_logo_width\";s:0:\"\";s:21:\"card_back_logo_height\";s:0:\"\";s:19:\"card_back_logo_left\";s:0:\"\";s:18:\"card_back_logo_top\";s:0:\"\";s:15:\"card_photo_left\";s:0:\"\";s:14:\"card_photo_top\";s:0:\"\";s:16:\"card_photo_width\";d:1.5;s:17:\"card_photo_height\";d:1.8000000000000000444089209850062616169452667236328125;s:23:\"card_front_header1_text\";s:19:\"Library Member Card\";s:28:\"card_front_header1_font_size\";s:2:\"12\";s:23:\"card_front_header2_text\";s:10:\"My Library\";s:28:\"card_front_header2_font_size\";s:2:\"12\";s:22:\"card_back_header1_text\";s:10:\"My Library\";s:27:\"card_back_header1_font_size\";s:2:\"12\";s:22:\"card_back_header2_text\";s:35:\"My Library Full Address and Website\";s:27:\"card_back_header2_font_size\";s:1:\"5\";s:17:\"card_header_color\";s:7:\"#0066FF\";s:18:\"card_bio_font_size\";s:2:\"11\";s:20:\"card_bio_font_weight\";s:4:\"bold\";s:20:\"card_bio_label_width\";s:3:\"100\";s:9:\"card_city\";s:9:\"City Name\";s:10:\"card_title\";s:15:\"Library Manager\";s:14:\"card_officials\";s:14:\"Librarian Name\";s:17:\"card_officials_id\";s:12:\"Librarian ID\";s:15:\"card_stamp_file\";s:9:\"stamp.png\";s:19:\"card_signature_file\";s:13:\"signature.png\";s:15:\"card_stamp_left\";s:0:\"\";s:14:\"card_stamp_top\";s:0:\"\";s:16:\"card_stamp_width\";s:0:\"\";s:17:\"card_stamp_height\";s:0:\"\";s:13:\"card_exp_left\";s:0:\"\";s:12:\"card_exp_top\";s:0:\"\";s:14:\"card_exp_width\";s:0:\"\";s:15:\"card_exp_height\";s:0:\"\";s:18:\"card_barcode_scale\";i:100;s:17:\"card_barcode_left\";s:0:\"\";s:16:\"card_barcode_top\";s:0:\"\";s:18:\"card_barcode_width\";s:0:\"\";s:19:\"card_barcode_height\";s:0:\"\";s:10:\"card_rules\";s:120:\"<ul><li>This card is published by Library.</li><li>Please return this card to its owner if you found it.</li></ul>\";s:20:\"card_rules_font_size\";s:1:\"8\";s:12:\"card_address\";s:76:\"My Library<br />website: http://slims.web.id, email : librarian@slims.web.id\";s:22:\"card_address_font_size\";s:1:\"7\";s:17:\"card_address_left\";s:0:\"\";s:16:\"card_address_top\";s:0:\"\";}}}'),
(70, 'spellchecker_enabled', 'b:0;'),
(23, 'ori', 'a:2:{s:5:\"theme\";s:7:\"default\";s:3:\"css\";s:32:\"admin_template/default/style.css\";}'),
(63, 'setiadi_shortcut_1', 'N;'),
(65, 'recaptcha', 'a:2:{s:3:\"smc\";i:0;s:6:\"member\";i:0;}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_take`
--

CREATE TABLE `stock_take` (
  `stock_take_id` int(11) NOT NULL,
  `stock_take_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `init_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `total_item_stock_taked` int(11) DEFAULT NULL,
  `total_item_lost` int(11) DEFAULT NULL,
  `total_item_exists` int(11) DEFAULT '0',
  `total_item_loan` int(11) DEFAULT NULL,
  `stock_take_users` mediumtext COLLATE utf8_unicode_ci,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `report_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock_take_item`
--

CREATE TABLE `stock_take_item` (
  `stock_take_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_code` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gmd_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classification` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coll_type_name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `call_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('e','m','u','l') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'm',
  `checked_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_update` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_log`
--

CREATE TABLE `system_log` (
  `log_id` int(11) NOT NULL,
  `log_type` enum('staff','member','system') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'staff',
  `id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `log_msg` text COLLATE utf8_unicode_ci NOT NULL,
  `log_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `system_log`
--

INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `log_msg`, `log_date`) VALUES
(1, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-04 23:59:33'),
(2, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-05 16:18:14'),
(3, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-06 15:30:14'),
(4, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-10 15:43:35'),
(5, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 15:28:43'),
(6, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 16:04:31'),
(7, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (asd) with biblio_id (1)', '2020-04-11 16:29:40'),
(8, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 16:33:18'),
(9, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (adsad) with biblio_id (2)', '2020-04-11 16:36:47'),
(10, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 16:37:46'),
(11, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 16:51:54'),
(12, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 16:56:50'),
(13, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 17:01:20'),
(14, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-11 17:28:34'),
(15, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-13 14:14:23'),
(16, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-13 14:36:01'),
(17, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (tes) with biblio_id (3)', '2020-04-13 14:40:29'),
(18, 'staff', '1', 'bibliography', 'Admin update bibliographic data (tes) with biblio_id (3)', '2020-04-13 14:43:35'),
(19, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-15 15:57:05'),
(20, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-24 21:54:07'),
(21, 'staff', '1', 'bibliography', 'Admin upload file (Muhammad Saleh Abrar 12301020013.pdf)', '2020-04-24 21:59:18'),
(22, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (4)', '2020-04-24 21:59:35'),
(23, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2020-04-24 22:00:49'),
(24, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (4)', '2020-04-24 22:28:14'),
(25, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (4)', '2020-04-24 22:33:20'),
(26, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (4)', '2020-04-24 22:33:57'),
(27, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (4)', '2020-04-24 22:52:09'),
(28, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-04-27 21:46:14'),
(29, 'staff', '1', 'system', 'Admin change application global configuration', '2020-04-27 21:55:32'),
(30, 'staff', '1', 'system', 'Admin change application global configuration', '2020-04-27 21:56:08'),
(31, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-04-27 22:00:42'),
(32, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-10 22:20:05'),
(33, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (asdad) with biblio_id (5)', '2020-05-10 22:29:46'),
(34, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (asdad) with biblio_id (5)', '2020-05-10 22:29:57'),
(35, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (tes) with biblio_id (3)', '2020-05-10 22:29:57'),
(36, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (adsad) with biblio_id (2)', '2020-05-10 22:29:57'),
(37, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (asd) with biblio_id (1)', '2020-05-10 22:29:57'),
(38, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-15 22:28:35'),
(39, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (tes) with biblio_id (6)', '2020-05-15 22:45:57'),
(40, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (7)', '2020-05-15 22:46:40'),
(41, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (7)', '2020-05-15 22:46:59'),
(42, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (8)', '2020-05-15 22:48:38'),
(43, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (8)', '2020-05-15 22:49:03'),
(44, 'staff', '1', 'system', 'Admin add new group (Operator)', '2020-05-15 23:08:57'),
(45, 'staff', '1', 'system', 'Admin add new group (User)', '2020-05-15 23:09:19'),
(46, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-16 21:46:08'),
(47, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (9)', '2020-05-16 23:03:48'),
(48, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (9)', '2020-05-16 23:05:04'),
(49, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-18 23:25:45'),
(50, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (10)', '2020-05-18 23:37:09'),
(51, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (11)', '2020-05-18 23:38:09'),
(52, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (12)', '2020-05-18 23:39:50'),
(53, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (12)', '2020-05-18 23:40:26'),
(54, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (13)', '2020-05-18 23:41:24'),
(55, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (13)', '2020-05-18 23:45:22'),
(56, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Valuasi Ekonomi Jasa Angkutan Umum Kota Di Tarakan) with biblio_id (14)', '2020-05-18 23:46:03'),
(57, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (12)', '2020-05-18 23:48:10'),
(58, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (12)', '2020-05-19 00:14:58'),
(59, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (12)', '2020-05-19 00:16:13'),
(60, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (12)', '2020-05-19 00:19:02'),
(61, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-23 01:22:56'),
(62, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-23 23:47:00'),
(63, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-23 23:51:36'),
(64, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-23 23:51:57'),
(65, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-28 22:57:49'),
(66, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-28 23:19:55'),
(67, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-05-28 23:22:09'),
(68, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-05-28 23:22:44'),
(69, 'staff', '1', 'bibliography', 'Admin upload file (MEMBUAT_2_DOMAIN_WEB_PADA_1_SERVER_DENGA (1).pdf)', '2020-05-28 23:27:11'),
(70, 'staff', '1', 'bibliography', 'Admin upload image file 28928978_1361978250573785_7950064153719209984_n.jpg.jpg', '2020-05-28 23:27:44'),
(71, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Perbandingan Sistem Economic Order Quantity) with biblio_id (15)', '2020-05-28 23:27:44'),
(72, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-06-10 15:17:58'),
(73, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-06-16 21:07:03'),
(74, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (16)', '2020-06-16 22:31:07'),
(75, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (16)', '2020-06-16 22:33:45'),
(76, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (16)', '2020-06-16 22:34:21'),
(77, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-06-23 21:46:44'),
(78, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (17)', '2020-06-23 22:20:02'),
(79, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (18)', '2020-06-23 22:31:59'),
(80, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (17)', '2020-06-23 22:32:16'),
(81, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (18)', '2020-06-23 22:46:32'),
(82, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (19)', '2020-06-23 22:48:36'),
(83, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (19)', '2020-06-23 22:50:07'),
(84, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (19)', '2020-06-23 22:56:38'),
(85, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (19)', '2020-06-23 22:56:49'),
(86, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (19)', '2020-06-23 22:57:41'),
(87, 'staff', '1', 'bibliography', 'Admin upload file (1711NA6355 (1).pdf)', '2020-06-23 23:00:06'),
(88, 'staff', '1', 'bibliography', 'Admin upload image file 28928978_1361978250573785_7950064153719209984_n.jpg.jpg', '2020-06-23 23:01:59'),
(89, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:01:59'),
(90, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:03:52'),
(91, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:12:25'),
(92, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:12:29'),
(93, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:12:43'),
(94, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:13:14'),
(95, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:16:43'),
(96, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:19:11'),
(97, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:20:02'),
(98, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:21:34'),
(99, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (asd) with biblio_id (21)', '2020-06-23 23:22:46'),
(100, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (asd) with biblio_id (21)', '2020-06-23 23:22:57'),
(101, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:24:57'),
(102, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:25:18'),
(103, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:27:01'),
(104, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:27:45'),
(105, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-23 23:28:45'),
(106, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-06-30 13:16:50'),
(107, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-06-30 13:17:20'),
(108, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (sdasf) with biblio_id (22)', '2020-06-30 13:51:25'),
(109, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (sdasf) with biblio_id (22)', '2020-06-30 13:51:38'),
(110, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (sadas) with biblio_id (23)', '2020-06-30 13:53:56'),
(111, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (sadas) with biblio_id (23)', '2020-06-30 13:55:05'),
(112, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (dasdad) with biblio_id (24)', '2020-06-30 13:55:14'),
(113, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (dasdad) with biblio_id (24)', '2020-06-30 13:55:21'),
(114, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (asdasd) with biblio_id (25)', '2020-06-30 13:56:30'),
(115, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (sad) with biblio_id (26)', '2020-06-30 14:06:45'),
(116, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (63)', '2020-06-30 14:31:37'),
(117, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (64)', '2020-06-30 14:32:31'),
(118, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (64)', '2020-06-30 14:33:26'),
(119, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (63)', '2020-06-30 14:33:26'),
(120, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (62)', '2020-06-30 14:33:26'),
(121, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (61)', '2020-06-30 14:33:26'),
(122, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (60)', '2020-06-30 14:33:26'),
(123, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (56)', '2020-06-30 14:33:26'),
(124, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (57)', '2020-06-30 14:33:26'),
(125, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (58)', '2020-06-30 14:33:26'),
(126, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (59)', '2020-06-30 14:33:26'),
(127, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (55)', '2020-06-30 14:33:26'),
(128, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (53)', '2020-06-30 14:33:26'),
(129, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (54)', '2020-06-30 14:33:26'),
(130, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (47)', '2020-06-30 14:33:26'),
(131, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (48)', '2020-06-30 14:33:26'),
(132, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (49)', '2020-06-30 14:33:26'),
(133, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (50)', '2020-06-30 14:33:26'),
(134, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (51)', '2020-06-30 14:33:26'),
(135, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (52)', '2020-06-30 14:33:26'),
(136, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (44)', '2020-06-30 14:33:26'),
(137, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (45)', '2020-06-30 14:33:26'),
(138, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (46)', '2020-06-30 14:33:26'),
(139, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (43)', '2020-06-30 14:33:26'),
(140, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (39)', '2020-06-30 14:33:26'),
(141, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (40)', '2020-06-30 14:33:26'),
(142, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (41)', '2020-06-30 14:33:26'),
(143, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (42)', '2020-06-30 14:33:26'),
(144, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (35)', '2020-06-30 14:33:26'),
(145, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (36)', '2020-06-30 14:33:26'),
(146, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (37)', '2020-06-30 14:33:26'),
(147, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (38)', '2020-06-30 14:33:26'),
(148, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (30)', '2020-06-30 14:33:32'),
(149, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (31)', '2020-06-30 14:33:32'),
(150, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (32)', '2020-06-30 14:33:32'),
(151, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (33)', '2020-06-30 14:33:32'),
(152, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (34)', '2020-06-30 14:33:32'),
(153, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (29)', '2020-06-30 14:33:32'),
(154, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (28)', '2020-06-30 14:33:32'),
(155, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Tugas Dan Tanggung Jawab Kejaksaan Dalam Pengembalian Barang Bukti Yang Di Perintahkan Untuk Dikembalikan Kepada Yang Berhak) with biblio_id (27)', '2020-06-30 14:33:32'),
(156, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (sad) with biblio_id (26)', '2020-06-30 14:33:32'),
(157, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (asdasd) with biblio_id (25)', '2020-06-30 14:33:32'),
(158, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (65)', '2020-06-30 14:33:54'),
(159, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (65)', '2020-06-30 14:34:40'),
(160, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (66)', '2020-06-30 14:35:01'),
(161, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (66)', '2020-06-30 14:37:50'),
(162, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (66)', '2020-06-30 14:38:02'),
(163, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (66)', '2020-06-30 14:38:11'),
(164, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-01 17:52:55'),
(165, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-04 15:09:33'),
(166, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-07-04 16:29:58'),
(167, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-04 16:30:01'),
(168, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (66)', '2020-07-04 16:45:08'),
(169, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (67)', '2020-07-04 16:45:32'),
(170, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-07 16:08:03'),
(171, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (68)', '2020-07-07 16:31:20'),
(172, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (69)', '2020-07-07 16:32:23'),
(173, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK) with biblio_id (70)', '2020-07-07 16:35:50'),
(174, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (asd) with biblio_id (71)', '2020-07-07 16:37:32'),
(175, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (a) with biblio_id (72)', '2020-07-07 16:44:08'),
(176, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-08 10:40:32'),
(177, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK) with biblio_id (73)', '2020-07-08 10:56:20'),
(178, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (as) with biblio_id (74)', '2020-07-08 10:58:58'),
(179, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (as) with biblio_id (74)', '2020-07-08 10:59:26'),
(180, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (sad) with biblio_id (75)', '2020-07-08 11:04:20'),
(181, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK) with biblio_id (76)', '2020-07-08 11:07:04'),
(182, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (as) with biblio_id (77)', '2020-07-08 11:10:01'),
(183, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (78)', '2020-07-08 11:10:17'),
(184, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (sd) with biblio_id (79)', '2020-07-08 11:10:35'),
(185, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (78)', '2020-07-08 11:11:21'),
(186, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (78)', '2020-07-08 11:11:29'),
(187, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (78)', '2020-07-08 11:12:02'),
(188, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (80)', '2020-07-08 11:12:16'),
(189, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKAN) with biblio_id (78)', '2020-07-08 11:12:27'),
(190, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-08 11:46:39'),
(191, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-08 15:21:21'),
(192, 'staff', '1', 'system', 'Admin success change admin theme with ::1', '2020-07-08 15:21:36'),
(193, 'staff', '1', 'system', 'Admin success change admin theme with ::1', '2020-07-08 15:22:04'),
(194, 'staff', '1', 'system', 'Admin success change public theme with ::1', '2020-07-08 15:22:30'),
(195, 'staff', '1', 'system', 'Admin success change public theme with ::1', '2020-07-08 15:22:58'),
(196, 'staff', '1', 'system', 'Admin success change public theme with ::1', '2020-07-08 15:23:52'),
(197, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-09 15:11:03'),
(198, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (KAJIAN KARAKTERISTIK) with biblio_id (81)', '2020-07-09 15:14:48'),
(199, 'staff', '1', 'bibliography', 'Admin update bibliographic data (KAJIAN KARAKTERISTIK) with biblio_id (81)', '2020-07-09 15:15:05'),
(200, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-07-09 15:15:22'),
(201, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-09 17:44:08'),
(202, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-14 22:19:24'),
(203, 'staff', '1', 'system', 'Admin success change public theme with ::1', '2020-07-14 22:19:43'),
(204, 'staff', '1', 'system', 'update content data (Library Information) with contentname ()', '2020-07-14 22:22:12'),
(205, 'staff', '1', 'system', 'update content data (Library Information) with contentname ()', '2020-07-14 22:22:22'),
(206, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-07-16 15:49:48'),
(207, 'staff', '1', 'system', 'Admin success change public theme with ::1', '2020-07-16 15:52:39'),
(208, 'staff', '1', 'system', 'Admin success change public theme with ::1', '2020-07-16 15:52:48'),
(209, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK) with biblio_id (81)', '2020-07-16 16:07:48'),
(210, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Implementasi Dan Analisa Kinerja VOIP Server Pada Jaringan Wireless LAN Menggunakan Smartphone) with biblio_id (80)', '2020-07-16 16:07:48'),
(211, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (KAJIAN KARAKTERISTIK SOSIAL EKONOMI MASYARAKAT PESISIR KOTA TARAKANa) with biblio_id (66)', '2020-07-16 16:07:48'),
(212, 'staff', 'admin', 'Login', 'Login success for user admin from address 180.241.46.79', '2020-07-16 16:52:50'),
(213, 'staff', 'admin', 'Login', 'Login success for user admin from address 125.160.115.201', '2020-07-16 17:53:06'),
(214, 'staff', '1', 'system', 'Admin Log Out from application from address 125.160.115.201', '2020-07-16 18:00:42'),
(215, 'staff', 'admin', 'Login', 'Login success for user admin from address 125.160.115.213', '2020-07-16 20:08:10'),
(216, 'staff', '1', 'system', 'Admin Log Out from application from address 125.160.115.213', '2020-07-16 20:09:04'),
(217, 'staff', 'admin', 'Login', 'Login success for user admin from address 120.188.39.43', '2020-07-25 14:10:31'),
(218, 'staff', '1', 'system', 'Admin Log Out from application from address 120.188.39.43', '2020-07-25 14:13:26'),
(219, 'staff', '', 'system', 'Log Out from application from address 120.188.39.43', '2020-07-25 14:13:26'),
(220, 'staff', 'admin', 'Login', 'Login success for user admin from address 120.188.39.43', '2020-07-25 14:26:53'),
(221, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-07-25 14:27:34'),
(222, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENERAPAN MODEL DISCOVERY LEARNING PADA MATERI JARING-JARING BANGUN RUANG UNTUK MENINGKATKAN HASIL BELAJAR SISWA DI KELAS V SD NEGERI PIR BATEE PUTEH V ACEH BARAT) with biblio_id (20)', '2020-07-25 14:35:11'),
(223, 'staff', '1', 'system', 'Admin Log Out from application from address 120.188.39.43', '2020-07-25 14:44:57'),
(224, 'staff', 'admin', 'Login', 'Login success for user admin from address 114.122.102.2', '2020-07-25 17:16:24'),
(225, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.1.96.37', '2020-07-25 17:41:28'),
(226, 'staff', 'admin', 'Login', 'Login FAILED for user admin from address 114.122.73.181', '2020-07-26 16:15:27'),
(227, 'staff', 'admin', 'Login', 'Login success for user admin from address 114.122.72.14', '2020-07-26 16:16:21'),
(228, 'staff', 'admin', 'Login', 'Login success for user admin from address 36.83.245.193', '2020-07-26 20:47:51'),
(229, 'staff', 'admin', 'Login', 'Login success for user admin from address 114.122.73.159', '2020-07-26 22:02:42'),
(230, 'staff', '1', 'bibliography', 'Admin upload file (render-pdf-katalog-perkriteria-frekuensi.pdf)', '2020-07-26 22:14:46'),
(231, 'staff', '1', 'bibliography', 'Admin upload image file 000240.jpg.jpg', '2020-07-26 22:17:33'),
(232, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-07-26 22:17:34'),
(233, 'staff', '1', 'system', 'Admin Log Out from application from address 182.0.199.30', '2020-07-26 22:17:44'),
(234, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.0.199.30', '2020-07-26 22:22:01'),
(235, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-07-26 22:22:39'),
(236, 'staff', '1', 'system', 'Admin Log Out from application from address 182.0.199.30', '2020-07-26 22:22:44'),
(237, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.0.199.30', '2020-07-26 22:29:21'),
(238, 'staff', '1', 'bibliography', 'ERROR : Admin FAILED TO upload image file 5a54e241051f6b3b475c77cbeceea439.pdf.pdf, with error (Filetype is forbidden)', '2020-07-26 22:29:54'),
(239, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-07-26 22:29:55'),
(240, 'staff', '1', 'bibliography', 'Admin upload file (DAFTAR TAJUK SUBJEK PERPUSTAKAAN NASIONAL RI (OK).pdf)', '2020-07-26 22:36:59'),
(241, 'staff', '1', 'bibliography', 'Admin updating file attachment data', '2020-07-26 22:36:59'),
(242, 'staff', '1', 'bibliography', 'Admin upload image file 000434.jpg.jpg', '2020-07-26 22:37:08'),
(243, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-07-26 22:37:08'),
(244, 'staff', '1', 'system', 'Admin success change public theme with 182.0.199.30', '2020-07-26 22:45:35'),
(245, 'staff', '1', 'system', 'Admin success change public theme with 182.0.199.30', '2020-07-26 22:46:12'),
(246, 'staff', '1', 'system', 'Admin success change public theme with 182.0.199.30', '2020-07-26 22:46:57'),
(247, 'staff', 'admin', 'Login', 'Login success for user admin from address 36.72.213.65', '2020-07-26 22:47:20'),
(248, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-07-26 22:48:57'),
(249, 'staff', '1', 'membership', 'ERROR : Admin FAILED TO upload image file member_123456.jpg, with error (Filesize is excedded maximum uploaded file size)', '2020-07-26 22:53:29'),
(250, 'staff', '1', 'membership', 'Admin add new member (Keanu Reeves) with ID (123456)', '2020-07-26 22:53:29'),
(251, 'staff', '1', 'system', 'Admin update user data (Admin) with username (admin)', '2020-07-26 22:54:11'),
(252, 'staff', '1', 'system/user', 'ERROR : Admin FAILED TO upload image file user_admin.jpg, with error (Filesize is excedded maximum uploaded file size)', '2020-07-26 22:54:11'),
(253, 'staff', '1', 'system', 'Admin Log Out from application from address 182.0.199.30', '2020-07-26 22:54:20'),
(254, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.0.199.30', '2020-07-26 22:54:25'),
(255, 'staff', '1', 'system', 'Admin update user data (Admin) with username (admin)', '2020-07-26 22:55:03'),
(256, 'staff', '1', 'system/user', 'Admin upload image file user_admin.jpg', '2020-07-26 22:55:03'),
(257, 'staff', '1', 'system', 'Admin Log Out from application from address 182.0.199.30', '2020-07-26 22:55:08'),
(258, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.0.199.30', '2020-07-26 22:55:12'),
(259, 'staff', '1', 'system', 'Admin update user data (Admin) with username (admin)', '2020-07-26 22:55:31'),
(260, 'staff', '1', 'system', 'Admin Log Out from application from address 182.0.199.30', '2020-07-26 22:55:36'),
(261, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.0.199.30', '2020-07-26 22:56:30'),
(262, 'staff', '1', 'membership', 'Admin upload image file member_123456.jpg', '2020-07-26 22:56:51'),
(263, 'staff', '1', 'membership', 'Admin update member data (Keanu Reeves) with ID (123456)', '2020-07-26 22:56:51'),
(264, 'staff', '1', 'system', 'Admin Log Out from application from address 182.0.199.30', '2020-07-26 22:56:57'),
(265, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.0.231.246', '2020-07-26 23:36:49'),
(266, 'staff', '1', 'bibliography', 'Admin upload image file 000090.jpg.jpg', '2020-07-26 23:41:40'),
(267, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PENGARUH PEMBERIAN KURMA TERHADAP KADAR HEMOGLOBIN PADA REMAJA PUTRI DI PURWAKARTA) with biblio_id (83)', '2020-07-26 23:41:40'),
(268, 'staff', 'admin', 'Login', 'Login success for user admin from address 103.104.130.13', '2020-07-27 10:28:06'),
(269, 'staff', 'admin', 'Login', 'Login success for user admin from address 182.253.184.164', '2020-07-27 14:00:51'),
(270, 'staff', 'admin', 'Login', 'Login success for user admin from address 103.104.130.13', '2020-07-27 15:08:04'),
(271, 'staff', '1', 'bibliography', 'Admin upload file (01 Cover 222015255.pdf)', '2020-07-27 15:12:33'),
(272, 'staff', 'admin', 'Login', 'Login success for user admin from address 110.138.149.5', '2020-07-27 16:06:24'),
(273, 'staff', 'admin', 'Login', 'Login success for user admin from address 103.104.130.13', '2020-07-27 16:08:22'),
(274, 'staff', 'admin', 'Login', 'Login success for user admin from address 180.241.46.199', '2020-07-27 16:37:44'),
(275, 'staff', 'admin', 'Login', 'Login success for user admin from address 103.104.130.13', '2020-07-29 11:15:56'),
(276, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (PEMROGRAMAN ANALISIS PCI SERTA PENANGANANNYA PADA PERKERASAN LENTUR JALAN DENGAN MENGGUNAKAN PROGRAM DELPHI) with biblio_id (84)', '2020-07-29 11:24:13'),
(277, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PEMROGRAMAN ANALISIS PCI SERTA PENANGANANNYA PADA PERKERASAN LENTUR JALAN DENGAN MENGGUNAKAN PROGRAM DELPHI) with biblio_id (84)', '2020-07-29 11:25:36'),
(278, 'staff', '1', 'bibliography', 'Admin upload image file Screenshot_1.jpg.jpg', '2020-07-29 11:27:13'),
(279, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PEMROGRAMAN ANALISIS PCI SERTA PENANGANANNYA PADA PERKERASAN LENTUR JALAN DENGAN MENGGUNAKAN PROGRAM DELPHI) with biblio_id (84)', '2020-07-29 11:27:13'),
(280, 'staff', 'admin', 'Login', 'Login success for user admin from address 125.160.115.249', '2020-08-03 16:35:49'),
(281, 'staff', '1', 'system', 'Admin Log Out from application from address 125.160.115.249', '2020-08-03 16:43:17'),
(282, 'staff', 'admin', 'Login', 'Login success for user admin from address 36.77.26.95', '2020-08-05 15:27:09'),
(283, 'staff', 'admin', 'Login', 'Login success for user admin from address 202.152.142.186', '2020-08-06 13:52:43'),
(284, 'staff', 'admin', 'Login', 'Login success for user admin from address 202.4.186.74', '2020-08-06 14:51:49'),
(285, 'staff', 'admin', 'Login', 'Login success for user admin from address 103.85.60.90', '2020-08-07 10:50:05'),
(286, 'staff', 'admin', 'Login', 'Login success for user admin from address 125.160.113.95', '2020-08-07 15:31:11'),
(287, 'staff', '1', 'membership', 'Admin update member data (Keanu Reeves) with ID (123456)', '2020-08-07 15:38:02'),
(288, 'staff', 'admin', 'Login', 'Login success for user admin from address 103.116.203.154', '2020-08-15 14:13:41'),
(289, 'staff', '1', 'system', 'Admin Log Out from application from address 103.116.203.154', '2020-08-15 14:18:27'),
(290, 'staff', 'admin', 'Login', 'Login success for user admin from address 103.116.203.154', '2020-08-15 14:54:35'),
(291, 'staff', '1', 'system', 'Admin Log Out from application from address 103.116.203.154', '2020-08-15 14:55:19'),
(292, 'staff', 'admin', 'Login', 'Login success for user admin from address 36.70.248.149', '2020-08-19 09:23:47'),
(293, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-09-06 07:01:23'),
(294, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Psikologi REmaja) with biblio_id (85)', '2020-09-06 07:08:29'),
(295, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-09-06 07:10:44'),
(296, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-09-06 07:10:45'),
(297, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Kamara) with biblio_id (86)', '2020-09-06 07:11:18'),
(298, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (adfasfs) with biblio_id (87)', '2020-09-06 07:12:03'),
(299, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (sa) with biblio_id (88)', '2020-09-06 07:14:12'),
(300, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-09-06 07:17:20'),
(301, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Goodfs) with biblio_id (89)', '2020-09-06 07:18:03'),
(302, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Goodfs) with biblio_id (89)', '2020-09-06 08:43:35'),
(303, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (sa) with biblio_id (88)', '2020-09-06 08:43:35'),
(304, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (adfasfs) with biblio_id (87)', '2020-09-06 08:43:35'),
(305, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Kamara) with biblio_id (86)', '2020-09-06 08:43:35'),
(306, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Psikologi REmaja) with biblio_id (85)', '2020-09-06 08:43:40'),
(307, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PEMROGRAMAN ANALISIS PCI SERTA PENANGANANNYA PADA PERKERASAN LENTUR JALAN DENGAN MENGGUNAKAN PROGRAM DELPHI) with biblio_id (84)', '2020-09-06 08:44:00'),
(308, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PEMROGRAMAN ANALISIS PCI SERTA PENANGANANNYA PADA PERKERASAN LENTUR JALAN DENGAN MENGGUNAKAN PROGRAM DELPHI) with biblio_id (84)', '2020-09-06 08:45:52'),
(309, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Sandiwaera) with biblio_id (90)', '2020-09-06 08:46:59'),
(310, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (fgjrfjf) with biblio_id (91)', '2020-09-06 08:49:00'),
(311, 'staff', '1', 'system', 'Admin Log Out from application from address ::1', '2020-09-06 08:51:23'),
(312, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-09-06 08:51:42'),
(313, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (fgjrfjf) with biblio_id (91)', '2020-09-06 08:51:50'),
(314, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Sandiwaera) with biblio_id (90)', '2020-09-06 08:51:50'),
(315, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (PEMROGRAMAN ANALISIS PCI SERTA PENANGANANNYA PADA PERKERASAN LENTUR JALAN DENGAN MENGGUNAKAN PROGRAM DELPHI) with biblio_id (84)', '2020-09-06 08:51:50'),
(316, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (sandiwara) with biblio_id (92)', '2020-09-06 08:52:51'),
(317, 'staff', '1', 'bibliography', 'Admin update bibliographic data (sandiwara) with biblio_id (92)', '2020-09-06 08:57:08'),
(318, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (Ini percobaan) with biblio_id (93)', '2020-09-06 08:59:42'),
(319, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Ini percobaan) with biblio_id (93)', '2020-09-06 09:05:13'),
(320, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (sandiwara) with biblio_id (92)', '2020-09-06 09:05:13'),
(321, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN KURMA TERHADAP KADAR HEMOGLOBIN PADA REMAJA PUTRI DI PURWAKARTA) with biblio_id (83)', '2020-09-06 09:06:11');
INSERT INTO `system_log` (`log_id`, `log_type`, `id`, `log_location`, `log_msg`, `log_date`) VALUES
(322, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-10-07 21:52:29'),
(323, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN KURMA TERHADAP KADAR HEMOGLOBIN PADA REMAJA PUTRI DI PURWAKARTA) with biblio_id (83)', '2020-10-07 21:52:59'),
(324, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2020-10-18 21:45:27'),
(325, 'staff', '1', 'bibliography', 'Admin insert bibliographic data (fgdfh) with biblio_id (94)', '2020-10-18 23:02:14'),
(326, 'staff', '1', 'bibliography', 'Admin update bibliographic data (fgdfh) with biblio_id (94)', '2020-10-18 23:02:43'),
(327, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Badala kikuk) with biblio_id (94)', '2020-10-18 23:03:44'),
(328, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Badala kikuk) with biblio_id (94)', '2020-10-18 23:04:58'),
(329, 'staff', 'admin', 'Login', 'Login success for user admin from address 127.0.0.1', '2020-10-21 21:56:55'),
(330, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-10-21 21:57:22'),
(331, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-10-21 22:09:05'),
(332, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-10-21 22:09:23'),
(333, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-10-22 00:14:39'),
(334, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Role of Genetic Variants and Gene Expression in the Susceptibility and Severity of COVID-19.) with biblio_id (95)', '2020-10-22 01:12:19'),
(335, 'staff', '1', 'bibliography', 'Admin update bibliographic data (Role of Genetic Variants and Gene Expression in the Susceptibility and Severity of COVID-19.) with biblio_id (96)', '2020-10-22 01:36:50'),
(336, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-11-18 21:52:44'),
(337, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-11-18 21:54:22'),
(338, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN KURMA TERHADAP KADAR HEMOGLOBIN PADA REMAJA PUTRI DI PURWAKARTA) with biblio_id (83)', '2020-11-18 21:55:47'),
(339, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-11-26 22:18:32'),
(340, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (Role of Genetic Variants and Gene Expression in the Susceptibility and Severity of COVID-19.) with biblio_id (96)', '2020-11-26 22:18:45'),
(341, 'staff', '1', 'bibliography', 'Admin DELETE bibliographic data (The role of COVID-19 prevalence and cancer preparedness on cancer statistics in the Asia-Pacific region.) with biblio_id (97)', '2020-11-26 22:18:45'),
(342, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN KURMA TERHADAP KADAR HEMOGLOBIN PADA REMAJA PUTRI DI PURWAKARTA) with biblio_id (83)', '2020-11-26 22:19:23'),
(343, 'staff', '1', 'bibliography', 'Admin update bibliographic data (PENGARUH PEMBERIAN AIR REBUSAN DAUN SIRSAK (Annona muricata L) TERHADAP PENURUNAN KADAR ASAM URAT PADA PASIEN RAWAT JALAN DI PUSKESMAS PASAWAHAN KABUPATEN PURWAKARTA) with biblio_id (82)', '2020-11-26 22:19:48'),
(344, 'staff', 'admin', 'Login', 'Login success for user admin from address ::1', '2020-11-26 22:35:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` smallint(2) DEFAULT NULL,
  `user_image` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_media` text COLLATE utf8_unicode_ci,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` char(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `groups` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `input_date` date DEFAULT '0000-00-00',
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `username`, `realname`, `passwd`, `email`, `user_type`, `user_image`, `social_media`, `last_login`, `last_login_ip`, `groups`, `input_date`, `last_update`) VALUES
(1, 'admin', 'Admin', '$2y$10$JXkd/SqnJmZc8RW5DbQNBOOYnFxtCvKfqhyvcOpmP6WFu/.nt3ndm', '', 1, NULL, NULL, '2020-11-26 22:35:48', '::1', 'a:1:{i:0;s:1:\"1\";}', '2017-08-16', '2020-07-26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_group`
--

CREATE TABLE `user_group` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `input_date` date DEFAULT NULL,
  `last_update` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `user_group`
--

INSERT INTO `user_group` (`group_id`, `group_name`, `input_date`, `last_update`) VALUES
(1, 'Administrator', '2017-08-16', '2017-08-16'),
(2, 'admin', '2017-11-12', '2017-11-12'),
(3, 'Operator', '2020-05-15', '2020-05-15'),
(4, 'User', '2020-05-15', '2020-05-15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitor_count`
--

CREATE TABLE `visitor_count` (
  `visitor_id` int(11) NOT NULL,
  `member_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `institution` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checkin_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `visitor_count`
--

INSERT INTO `visitor_count` (`visitor_id`, `member_id`, `member_name`, `institution`, `checkin_date`) VALUES
(1, '123456', 'Keanu Reeves', '', '2020-07-26 22:55:55'),
(2, '123456', 'Keanu Reeves', '', '2020-07-26 22:56:06'),
(3, '123456', 'Keanu Reeves', '', '2020-07-26 22:57:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup_log`
--
ALTER TABLE `backup_log`
  ADD PRIMARY KEY (`backup_log_id`);

--
-- Indexes for table `biblio`
--
ALTER TABLE `biblio`
  ADD PRIMARY KEY (`biblio_id`),
  ADD KEY `references_idx` (`gmd_id`,`publisher_id`,`language_id`,`publish_place_id`),
  ADD KEY `classification` (`classification`),
  ADD KEY `biblio_flag_idx` (`opac_hide`,`promoted`),
  ADD KEY `uid` (`uid`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `title_ft_idx` (`title`,`series_title`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `notes_ft_idx` (`notes`);
ALTER TABLE `biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `biblio_attachment`
--
ALTER TABLE `biblio_attachment`
  ADD KEY `biblio_id` (`biblio_id`),
  ADD KEY `file_id` (`file_id`),
  ADD KEY `biblio_id_2` (`biblio_id`,`file_id`);

--
-- Indexes for table `biblio_author`
--
ALTER TABLE `biblio_author`
  ADD PRIMARY KEY (`biblio_id`,`author_id`);

--
-- Indexes for table `biblio_contributor`
--
ALTER TABLE `biblio_contributor`
  ADD PRIMARY KEY (`biblio_id`,`contributor_id`);

--
-- Indexes for table `biblio_custom`
--
ALTER TABLE `biblio_custom`
  ADD PRIMARY KEY (`biblio_id`);

--
-- Indexes for table `biblio_examiner`
--
ALTER TABLE `biblio_examiner`
  ADD PRIMARY KEY (`biblio_id`,`examiner_id`);

--
-- Indexes for table `biblio_supervisor`
--
ALTER TABLE `biblio_supervisor`
  ADD PRIMARY KEY (`biblio_id`,`supervisor_id`);

--
-- Indexes for table `biblio_topic`
--
ALTER TABLE `biblio_topic`
  ADD PRIMARY KEY (`biblio_id`,`topic_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_path` (`content_path`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_title` (`content_title`);
ALTER TABLE `content` ADD FULLTEXT KEY `content_desc` (`content_desc`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_name` (`file_name`);
ALTER TABLE `files` ADD FULLTEXT KEY `file_dir` (`file_dir`);

--
-- Indexes for table `fines`
--
ALTER TABLE `fines`
  ADD PRIMARY KEY (`fines_id`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `group_access`
--
ALTER TABLE `group_access`
  ADD PRIMARY KEY (`group_id`,`module_id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`holiday_id`),
  ADD UNIQUE KEY `holiday_dayname` (`holiday_dayname`,`holiday_date`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `item_references_idx` (`coll_type_id`,`location_id`,`item_status_id`),
  ADD KEY `uid` (`uid`),
  ADD KEY `biblio_id_idx` (`biblio_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
  ADD PRIMARY KEY (`kardex_id`),
  ADD KEY `fk_serial` (`serial_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_id`),
  ADD KEY `item_code` (`item_code`),
  ADD KEY `member_id` (`member_id`);

--
-- Indexes for table `long_pattern`
--
ALTER TABLE `long_pattern`
  ADD PRIMARY KEY (`pattern_id`),
  ADD UNIQUE KEY `pattern_prefix` (`pattern_prefix`,`pattern_suffix`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`),
  ADD KEY `member_name` (`member_name`),
  ADD KEY `member_type_id` (`member_type_id`);

--
-- Indexes for table `member_custom`
--
ALTER TABLE `member_custom`
  ADD PRIMARY KEY (`member_id`);

--
-- Indexes for table `mst_author`
--
ALTER TABLE `mst_author`
  ADD PRIMARY KEY (`author_id`),
  ADD UNIQUE KEY `author_name` (`author_name`,`authority_type`);

--
-- Indexes for table `mst_code_ministry`
--
ALTER TABLE `mst_code_ministry`
  ADD PRIMARY KEY (`code_ministry`);

--
-- Indexes for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  ADD PRIMARY KEY (`coll_type_id`),
  ADD UNIQUE KEY `coll_type_name` (`coll_type_name`);

--
-- Indexes for table `mst_contributor`
--
ALTER TABLE `mst_contributor`
  ADD PRIMARY KEY (`contributor_id`);

--
-- Indexes for table `mst_copyright`
--
ALTER TABLE `mst_copyright`
  ADD PRIMARY KEY (`copyright_id`);

--
-- Indexes for table `mst_examiner`
--
ALTER TABLE `mst_examiner`
  ADD PRIMARY KEY (`examiner_id`);

--
-- Indexes for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  ADD PRIMARY KEY (`frequency_id`);

--
-- Indexes for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  ADD PRIMARY KEY (`gmd_id`),
  ADD UNIQUE KEY `gmd_name` (`gmd_name`),
  ADD UNIQUE KEY `gmd_code` (`gmd_code`);

--
-- Indexes for table `mst_item_status`
--
ALTER TABLE `mst_item_status`
  ADD PRIMARY KEY (`item_status_id`),
  ADD UNIQUE KEY `item_status_name` (`item_status_name`);

--
-- Indexes for table `mst_item_type`
--
ALTER TABLE `mst_item_type`
  ADD PRIMARY KEY (`item_type_id`);

--
-- Indexes for table `mst_label`
--
ALTER TABLE `mst_label`
  ADD PRIMARY KEY (`label_id`),
  ADD UNIQUE KEY `label_name` (`label_name`);

--
-- Indexes for table `mst_language`
--
ALTER TABLE `mst_language`
  ADD PRIMARY KEY (`language_id`),
  ADD UNIQUE KEY `language_name` (`language_name`);

--
-- Indexes for table `mst_license`
--
ALTER TABLE `mst_license`
  ADD PRIMARY KEY (`license_id`);

--
-- Indexes for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  ADD PRIMARY KEY (`loan_rules_id`);

--
-- Indexes for table `mst_location`
--
ALTER TABLE `mst_location`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_name` (`location_name`);

--
-- Indexes for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  ADD PRIMARY KEY (`member_type_id`),
  ADD UNIQUE KEY `member_type_name` (`member_type_name`);

--
-- Indexes for table `mst_module`
--
ALTER TABLE `mst_module`
  ADD PRIMARY KEY (`module_id`),
  ADD UNIQUE KEY `module_name` (`module_name`,`module_path`);

--
-- Indexes for table `mst_place`
--
ALTER TABLE `mst_place`
  ADD PRIMARY KEY (`place_id`),
  ADD UNIQUE KEY `place_name` (`place_name`);

--
-- Indexes for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  ADD PRIMARY KEY (`publisher_id`),
  ADD UNIQUE KEY `publisher_name` (`publisher_name`);

--
-- Indexes for table `mst_supervisor`
--
ALTER TABLE `mst_supervisor`
  ADD PRIMARY KEY (`supervisor_id`);

--
-- Indexes for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `supplier_name` (`supplier_name`);

--
-- Indexes for table `mst_topic`
--
ALTER TABLE `mst_topic`
  ADD PRIMARY KEY (`topic_id`),
  ADD UNIQUE KEY `topic` (`topic`,`topic_type`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserve_id`),
  ADD KEY `references_idx` (`member_id`,`biblio_id`),
  ADD KEY `item_code_idx` (`item_code`);

--
-- Indexes for table `search_biblio`
--
ALTER TABLE `search_biblio`
  ADD UNIQUE KEY `biblio_id` (`biblio_id`),
  ADD KEY `add_indexes` (`gmd`,`publisher`,`publish_place`,`language`,`classification`,`publish_year`,`call_number`),
  ADD KEY `add_indexes2` (`opac_hide`,`promoted`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `author` (`author`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `topic` (`topic`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `location` (`location`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `items` (`items`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `collection_types` (`collection_types`);
ALTER TABLE `search_biblio` ADD FULLTEXT KEY `labels` (`labels`);

--
-- Indexes for table `serial`
--
ALTER TABLE `serial`
  ADD PRIMARY KEY (`serial_id`),
  ADD KEY `fk_serial_biblio` (`biblio_id`),
  ADD KEY `fk_serial_gmd` (`gmd_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `stock_take`
--
ALTER TABLE `stock_take`
  ADD PRIMARY KEY (`stock_take_id`);

--
-- Indexes for table `stock_take_item`
--
ALTER TABLE `stock_take_item`
  ADD PRIMARY KEY (`stock_take_id`,`item_id`),
  ADD UNIQUE KEY `item_code` (`item_code`),
  ADD KEY `status` (`status`),
  ADD KEY `item_properties_idx` (`gmd_name`,`classification`,`coll_type_name`,`location`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `realname` (`realname`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `group_name` (`group_name`);

--
-- Indexes for table `visitor_count`
--
ALTER TABLE `visitor_count`
  ADD PRIMARY KEY (`visitor_id`),
  ADD KEY `member_id` (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup_log`
--
ALTER TABLE `backup_log`
  MODIFY `backup_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `biblio`
--
ALTER TABLE `biblio`
  MODIFY `biblio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `fines`
--
ALTER TABLE `fines`
  MODIFY `fines_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
  MODIFY `kardex_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `loan`
--
ALTER TABLE `loan`
  MODIFY `loan_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `long_pattern`
--
ALTER TABLE `long_pattern`
  MODIFY `pattern_id` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_author`
--
ALTER TABLE `mst_author`
  MODIFY `author_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `mst_coll_type`
--
ALTER TABLE `mst_coll_type`
  MODIFY `coll_type_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_contributor`
--
ALTER TABLE `mst_contributor`
  MODIFY `contributor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mst_copyright`
--
ALTER TABLE `mst_copyright`
  MODIFY `copyright_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mst_examiner`
--
ALTER TABLE `mst_examiner`
  MODIFY `examiner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mst_frequency`
--
ALTER TABLE `mst_frequency`
  MODIFY `frequency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mst_gmd`
--
ALTER TABLE `mst_gmd`
  MODIFY `gmd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `mst_item_type`
--
ALTER TABLE `mst_item_type`
  MODIFY `item_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mst_label`
--
ALTER TABLE `mst_label`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_license`
--
ALTER TABLE `mst_license`
  MODIFY `license_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mst_loan_rules`
--
ALTER TABLE `mst_loan_rules`
  MODIFY `loan_rules_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_member_type`
--
ALTER TABLE `mst_member_type`
  MODIFY `member_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mst_module`
--
ALTER TABLE `mst_module`
  MODIFY `module_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mst_place`
--
ALTER TABLE `mst_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mst_publisher`
--
ALTER TABLE `mst_publisher`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mst_supervisor`
--
ALTER TABLE `mst_supervisor`
  MODIFY `supervisor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `mst_supplier`
--
ALTER TABLE `mst_supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mst_topic`
--
ALTER TABLE `mst_topic`
  MODIFY `topic_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `reserve_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serial`
--
ALTER TABLE `serial`
  MODIFY `serial_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `stock_take`
--
ALTER TABLE `stock_take`
  MODIFY `stock_take_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `visitor_count`
--
ALTER TABLE `visitor_count`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
