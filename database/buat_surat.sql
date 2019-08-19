-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 19, 2019 at 09:03 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buat_surat`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_surat`
--

CREATE TABLE `jenis_surat` (
  `id_surat` int(11) NOT NULL,
  `nama_surat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_surat`
--

INSERT INTO `jenis_surat` (`id_surat`, `nama_surat`) VALUES
(1, 'Surat Magang'),
(2, 'Surat Balasan Magang'),
(3, 'Surat Laporan Kehilangan SIM'),
(4, 'Surat SKCK'),
(5, 'surat tilang');

-- --------------------------------------------------------

--
-- Table structure for table `surat`
--

CREATE TABLE `surat` (
  `id` int(11) NOT NULL,
  `id_surat` int(11) NOT NULL,
  `isi_surat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat`
--

INSERT INTO `surat` (`id`, `id_surat`, `isi_surat`) VALUES
(3, 1, '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Bandung, 27&nbsp;Juni 2019</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Hal : Lamaran Pekerjaan</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Kepada Yth. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Bpk/Ibu Pimpinan </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Di</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Tempat</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Dengan hormat,</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Yang bertanda tangan di bawah ini;</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Nama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Mohammad Iskadar</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Tempat, Tgl Lahir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Bandung, 26 Februari 1988</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pendidikan Terakhir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: UNIKOM BANDUNG</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Alamat&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jl. Mekarwangi No. 34 RT. 001/004 Kel. Sukarame</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Kec. Margasari Kota Bandung</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Telepon&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 081234567890</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Bermaksud melamar pekerjaan pada perusahaan yang Bapak/Ibu pimpin, dan siap ditempatkan dibagian mana saja.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Sebagai bahan pertimbangan, bersama surat ini saya telah melampirkan kelengkapan data diri saya sebagai berikut;</span></span></span></p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Fotocopy Ijazah terakhir,</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Fotocopy Transcript Nilai,</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Daftar Riwayat Hidup (CV),</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Fotocopy KTP,</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Fotocopy SKCK,</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Pas Foto ukuran 4 x 6 &nbsp;(2 lembar),</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Fotokopy Surat Pengalaman Kerja.</span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Demikian surat permohonan pekerjaan ini saya buat dengan sebenar-benarnya. Besar harapan saya untuk dapat diterima di perusahaan yang Bapak/Ibu pimpin. Atas perhatian dan waktunya saya ucapkan terima kasih.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:12.0pt\">Hormat Saya,</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><strong><span style=\"font-size:12.0pt\">Dicky Chandra</span></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"color:black\">Copyright@&nbsp; </span><a href=\"http://www.helpshared.com/2015/06/contoh-format-surat-lamaran-kerja.html\">http://www.helpshared.com/2015/06/contoh-format-surat-lamaran-kerja.html</a></span></span></p>\r\n'),
(4, 2, '<p>ya</p>\r\n\r\n<p>saya terima,</p>\r\n\r\n<p>dengan</p>\r\n\r\n<p>Nama: iskandar</p>\r\n\r\n<p>Instansi: unikom</p>\r\n\r\n<p>untuk mengejakan magang di tempat ini dalam kurun waktu 7 bulan.</p>\r\n'),
(5, 1, '<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\">KEPOLISIAN DAERAH JAWA TENGAH</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RESOR&nbsp; BREBES</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SEKTOR&nbsp; BREBES</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:16.0pt\">&nbsp;&nbsp; Jalan. Veteran No. 2 Brebes 52212 </span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><img height=\"3\" src=\"file:///C:/Users/BANGKA~1/AppData/Local/Temp/msohtmlclip1/01/clip_image001.gif\" width=\"343\" /></span></span></p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" height=\"148\" src=\"http://localhost/buat_surat/uploads/pak edi.png\" width=\"300\" /></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><u><span style=\"font-size:16.0pt\">SURAT KETERANGAN CATATAN KEPOLISIAN</span></u></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NO<span style=\"font-size:14.0pt\">.POL. : SKCK / 1448 / VIII / 2011 / Sek. Bbs</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<ol>\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\">Kepala Kepolisian Sektor Brebes dengan ini menerangkan bahwa :</span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nama Lengkap&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;ABDUL IMAN</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Jenis Kelamin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;Laki- laki</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Tempat/Tgl. Lahir ( Umur )&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;Brebes, 17 November 1989</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Suku/ Bangsa&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Jawa / Indonesia</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;Agama&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : Islam</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">P e k e r j a a n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;-</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Nomor KTP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : 3329091711890009</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">A l a m a t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;Jl. Dr. Ciptomangunkusumo Rt. 02 Rw. 01</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;&nbsp; Kel. Gandasuli Kec/Kab. Brebes</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Setelah diadakan peneletian hingga saat dikeluarkan keterangan ini yang didasarkan kepada:</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<ol style=\"list-style-type:lower-alpha\">\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Catatan Kriminal yang ad</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Surat keterangan dari aparat Desa / Kelurahan</span></span></li>\r\n	<li style=\"text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Daftar pelaku/anggota organisasi atau gerakan terlarang</span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">Maka yang bersangkutan : Merupakan orang yang tidak tercatat dalam tindak kejahatan naupun berperilaku menyimpang dari norma-norma social yang berlaku di masyarakat.&nbsp; </span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<ol start=\"2\">\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\">Surat Keterangan ini diberikan untuk keperluan :</span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><strong><u><span style=\"font-size:14.0pt\">PERSYARATAN MELAMAR PEKERJAAN DI DALAM NEGERI</span></u></strong></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\">&nbsp;</p>\r\n\r\n<ol start=\"3\">\r\n	<li><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\">Berlaku dari tanggal &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Juni&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2011</span></span></span></li>\r\n</ol>\r\n\r\n<p style=\"margin-left:40px; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\"><span style=\"font-size:14.0pt\">Sampai dengan tanggal&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; September&nbsp;&nbsp; 2011</span></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:center\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Demikianlah surat keterangan ini kami buat dengan sebenar-benarnya, agar yang berwajib dapat mengetahui dan menjadikan bahan periksa seperlunya.</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm; text-align:justify\">&nbsp;</p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Dikeluarkan di&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp; Brebes</span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>Pada tanggal&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: &nbsp;10 &nbsp;Juni &nbsp;2011</u></span></span></p>\r\n\r\n<p style=\"margin-left:0cm; margin-right:0cm\"><span style=\"font-size:12pt\"><span style=\"font-family:&quot;Times New Roman&quot;,serif\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>KEPALA KEPOLISISAN SEKTOR BREBES</strong></span></span></p>\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_surat`
--
ALTER TABLE `jenis_surat`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_surat` (`id_surat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_surat`
--
ALTER TABLE `jenis_surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `surat`
--
ALTER TABLE `surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `surat`
--
ALTER TABLE `surat`
  ADD CONSTRAINT `surat_ibfk_1` FOREIGN KEY (`id_surat`) REFERENCES `jenis_surat` (`id_surat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
