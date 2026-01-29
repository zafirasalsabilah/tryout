-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2020 pada 15.14
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tryout`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_admin` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `id_user`, `nama_admin`) VALUES
(1, 1, 'Egin Elgiawan'),
(2, 36, 'Elgiawan Dika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mapel`
--

CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL,
  `nama_mapel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mapel`
--

INSERT INTO `mapel` (`id_mapel`, `nama_mapel`) VALUES
(1, 'Bahasa Indonesia'),
(2, 'IPA'),
(3, 'Matematika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `id_ujian` int(11) DEFAULT NULL,
  `acak_soal` text DEFAULT NULL,
  `jawaban` text DEFAULT NULL,
  `sisa_waktu` varchar(10) DEFAULT NULL,
  `jml_benar` int(11) DEFAULT NULL,
  `nilai` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nis`, `id_ujian`, `acak_soal`, `jawaban`, `sisa_waktu`, `jml_benar`, `nilai`) VALUES
(24, '1415100897', 2, '64,38,55,37,54,62,47,41,34,45,50,43,48,32,35,61,49,31,40,59,51,65,46,57,36,58,44,33,63,53,60,42,39,56,52', '2,3,1,2,4,4,1,1,1,3,1,3,3,3,4,2,3,2,3,3,2,2,2,2,3,3,2,4,1,3,1,2,1,3,3', '56:11', 27, '77.14'),
(25, '1415100897', 3, '11,25,7,30,26,22,6,20,17,5,16,2,18,9,15,24,27,14,21,28,4,3,10,19,12,1,8,23,13,29', '2,2,1,2,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', '111:58', 2, '6.666');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id_periode` int(11) NOT NULL,
  `nama_periode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id_periode`, `nama_periode`) VALUES
(1, '2019/2020'),
(2, '2020/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nis` varchar(20) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama_siswa` varchar(100) DEFAULT NULL,
  `id_periode` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `id_user`, `nama_siswa`, `id_periode`, `status`) VALUES
('141510089&', 37, 'Salsa', 1, 'off'),
('1415100896', 31, 'Ari Abdurrahman Ghufron', 1, 'off'),
('1415100897', 29, 'Asrori', 1, 'off'),
('1415100898', 30, 'Chintiya Alvionta Azhari', 1, 'off'),
('1415100899', 33, 'Agung Setyawan', 2, 'off');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) DEFAULT NULL,
  `soal` text DEFAULT NULL,
  `pilihan_1` text DEFAULT NULL,
  `pilihan_2` text DEFAULT NULL,
  `pilihan_3` text DEFAULT NULL,
  `pilihan_4` text DEFAULT NULL,
  `kunci` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `id_ujian`, `soal`, `pilihan_1`, `pilihan_2`, `pilihan_3`, `pilihan_4`, `kunci`) VALUES
(1, 3, '<p>Hasil dari&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>1</mn><mo>.</mo><mn>511</mn><mo>&#160;</mo><mo>-</mo><mo>&#160;</mo><mn>1</mn><mo>.</mo><mn>343</mn><mo>&#160;</mo><mo>+</mo><mo>&#160;</mo><mn>172</mn></math>&nbsp;adalah ....</p>', '<p>330</p>', '<p>340</p>', '<p>350</p>', '<p>440</p>', 2),
(2, 3, '<p>Jika n hasil dari&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>224</mn><mo>&#160;</mo><mo>&#247;</mo><mo>&#160;</mo><mo>(</mo><mo>-</mo><mn>4</mn><mo>)</mo><mo>&#160;</mo><mo>&#215;</mo><mo>&#160;</mo><mn>14</mn></math>&nbsp;maka n adalah ....</p>', '<p>-784</p>', '<p>-4</p>', '<p>4</p>', '<p>784</p>', 1),
(3, 3, '<p>Santi mengeluarkan es batu dari dalam lemari es dengan suhu&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" class=\"wrs_chemistry\"><mo>-</mo><mn>4</mn><mo>&#176;</mo><mi mathvariant=\"normal\">C</mi></math>. Jika setiap 3 menit suhu es naik&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\" class=\"wrs_chemistry\"><mn>2</mn><mo>&#176;</mo><mi mathvariant=\"normal\">C</mi></math>, maka suhu es pada menit ke-15 adalah ....</p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\" class=\"wrs_chemistry\"><mn>6</mn><mo>&#176;</mo><mi mathvariant=\"normal\">C</mi></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\" class=\"wrs_chemistry\"><mn>16</mn><mo>&#176;</mo><mi mathvariant=\"normal\">C</mi></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\" class=\"wrs_chemistry\"><mn>24</mn><mo>&#176;</mo><mi mathvariant=\"normal\">C</mi></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\" class=\"wrs_chemistry\"><mn>26</mn><mo>&#176;</mo><mi mathvariant=\"normal\">C</mi></math></p>', 1),
(4, 3, '<p>Hasil dari 14<sup>2</sup>&nbsp;- 12<sup>2</sup> adalah ....</p>', '<p>4</p>', '<p>46</p>', '<p>52</p>', '<p>76</p>', 3),
(5, 3, '<p>Akar pangkat tiga dari 3.375 adalah ....</p>', '<p>35</p>', '<p>25</p>', '<p>15</p>', '<p>5</p>', 3),
(6, 3, '<p>FPB dari 34, 51, 68 adalah ....</p>', '<p>2</p>', '<p>3</p>', '<p>12</p>', '<p>17</p>', 4),
(7, 3, '<p>Azril, Beni dan Dani ke tukang cukur bersama. Azril mencukur rambut setiap 30 hari, Beni mencukur rambut setiap 45 hari dan Dani mencukur rambut setiap 60 hari di tempat yang sama. Mereka akan mencukur rambut secara bersama lagi pada hari ke ....</p>', '<p>180</p>', '<p>300</p>', '<p>360</p>', '<p>450</p>', 1),
(8, 3, '<p>Urutan pecahan dari yang terkecil adalah ....</p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>0</mn><mo>,</mo><mn>125</mn><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mn>2</mn><mn>4</mn></mfrac><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mn>2</mn><mn>3</mn></mfrac><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mn>0</mn><mo>,</mo><mn>75</mn></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfrac><mn>2</mn><mn>3</mn></mfrac><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mn>0</mn><mo>,</mo><mn>125</mn><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mn>0</mn><mo>,</mo><mn>75</mn><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mn>2</mn><mn>4</mn></mfrac></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>0</mn><mo>,</mo><mn>75</mn><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mn>2</mn><mn>3</mn></mfrac><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mn>2</mn><mn>4</mn></mfrac><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mn>0</mn><mo>,</mo><mn>125</mn></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfrac><mn>2</mn><mn>4</mn></mfrac><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mfrac><mn>2</mn><mn>3</mn></mfrac><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mn>0</mn><mo>,</mo><mn>125</mn><mo>&#160;</mo><mo>;</mo><mo>&#160;</mo><mn>0</mn><mo>,</mo><mn>75</mn></math></p>', 1),
(9, 3, '<p>Amanda akan membuat 4 botol sirup. Ia sudah mempunyai&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mfrac><mn>4</mn><mn>5</mn></mfrac><mo>&#160;</mo><mi>k</mi><mi>g</mi></math>&nbsp;gula pasir, kemudian membeli lagi sebanyak&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>3</mn><mfrac><mn>1</mn><mn>4</mn></mfrac><mo>&#160;</mo><mi>k</mi><mi>g</mi></math>. Jika setiap sirup hanya memerlukan&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>0</mn><mo>,</mo><mn>5</mn><mo>&#160;</mo><mi>k</mi><mi>g</mi></math>&nbsp;gula pasir, maka sisa gula pasir Amanda adalah ....</p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>1</mn><mfrac><mn>7</mn><mn>20</mn></mfrac><mi>k</mi><mi>g</mi></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>1</mn><mfrac><mn>8</mn><mn>20</mn></mfrac><mi>k</mi><mi>g</mi></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>2</mn><mfrac><mn>1</mn><mn>10</mn></mfrac><mi>k</mi><mi>g</mi></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mn>2</mn><mfrac><mn>7</mn><mn>20</mn></mfrac><mi>k</mi><mi>g</mi></math></p>', 3),
(10, 3, '<p>Untuk melindungi tanaman yang langka, pemerintah membuat taman nasional dengan panjang 12 km. Jika dalam denah panjang taman nasional 2,4 cm, maka skala yang digunakan adalah ....</p>', '<p>1 : 20.000</p>', '<p>1 : 50.000</p>', '<p>1 : 200.000</p>', '<p>1 : 500.000</p>', 4),
(11, 3, '<p>Fian akan membuat gantungan kunci dari pita. Ia mempunyai pita sepanjang 2 m dan membeli lagi 15 dm. Jika pita yang digunakan membuat gantungan kunci 280 cm, maka pita Fian yang tersisa adalah ....</p>', '<p>70 cm</p>', '<p>80 cm</p>', '<p>130 cm</p>', '<p>230 cm</p>', 1),
(12, 3, '<p>Koperasi sekolah menyediakan 60 buah buku, 36 buah penggaris, 7 lusin pensil, dan 6 lusin bolpoin. Jumlah peralatan sekolah yang tersedia di koperasi sekolah adalah ....</p>', '<p>20 lusin</p>', '<p>21 lusin</p>', '<p>22 lusin</p>', '<p>23 lusin</p>', 2),
(13, 3, '<p>Paman Soni mempunyai tanah seluas 700 are. Jika tanah tersebut dibangun untuk rumah 15.000 m<sup>2</sup>, untuk garasi 300 are dan sisanya untuk kandang ayam, maka luas kandang ayam yang akan dibuat paman Soni adalah ....</p>', '<p>20.000 m<sup>2</sup></p>', '<p>25.000 m<sup>2</sup></p>', '<p>30.000 m<sup>2</sup></p>', '<p>35.000 m<sup>2</sup></p>', 2),
(14, 3, '<p>Rizki bersepeda ke taman bunga dengan kecepatan 16 km/jam. Jika ia berangkat dari rumah pukul 05.30 dan tiba di rumah lagi pukul 09.45, maka jarak yang ditempuh Rizki adalah ....</p>', '<p>64 km</p>', '<p>68 km</p>', '<p>72 km</p>', '<p>136 km</p>', 2),
(15, 3, '<p>Perhatikan gambar di bawah ini!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/15.JPG\" alt=\"\" />&nbsp;</p>\r\n<p>Keliling gabungan bangun datar di atas adalah ....</p>', '<p>90 cm</p>', '<p>95 cm</p>', '<p>110 cm</p>', '<p>125 cm</p>', 3),
(16, 3, '<p>Luas kebun yang berbentuk persegi 1.225 dam<sup>2</sup>. Keliling kebun tersebut adalah ....</p>', '<p>180 dam</p>', '<p>140 dam</p>', '<p>100 dam</p>', '<p>70 dam</p>', 2),
(17, 3, '<p>Perhatikan gambar di bawah ini!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/17.JPG\" alt=\"\" /></p>\r\n<p>Luas bagian lingkaran yang diarsir pada gambar di atas adalah .... (<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi mathvariant=\"normal\">&#960;</mi><mo>&#160;</mo><mo>=</mo><mo>&#160;</mo><mfrac><mn>22</mn><mn>7</mn></mfrac></math>)</p>', '<p>55 cm<sup>2</sup></p>', '<p>962,5 cm<sup>2</sup></p>', '<p>1.925&nbsp;cm<sup>2</sup></p>', '<p>3.850&nbsp;cm<sup>2</sup></p>', 2),
(18, 3, '<p>Perhatikan sifat-sifat bangun datar seperti berikut:</p>\r\n<p>(i)&nbsp; &nbsp; &nbsp;Mempunyai sepasang sisi sama panjang.<br />(ii)&nbsp; &nbsp; Kedua diagonalnya saling tegak lurus.<br />(iii)&nbsp; &nbsp;Mempunyai dua pasang sudut sama besar.<br />(iv)&nbsp; &nbsp;Memiliki dua simetri lipat.</p>\r\n<p>Sifat dari bangun trapesium sama kaki adalah ....</p>', '<p>(i) dan (iii)</p>', '<p>(i) dan (iv)</p>', '<p>(ii) dan (iii)</p>', '<p>(ii) dan (iv)</p>', 1),
(19, 3, '<p>Bangun ruang yang memiliki empat sisi, empat titik sudut, dan enam rusuk adalah ....</p>', '<p>balok</p>', '<p>limas segitiga</p>', '<p>prisma segitiga</p>', '<p>limas segiempat</p>', 2),
(20, 3, '<p>Diketahui koordinat titik&nbsp;<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi>K</mi><mo>(</mo><mo>-</mo><mn>1</mn><mo>,</mo><mo>-</mo><mn>1</mn><mo>)</mo><mo>,</mo><mo>&#160;</mo><mi>L</mi><mo>(</mo><mn>4</mn><mo>,</mo><mo>-</mo><mn>1</mn><mo>)</mo><mo>,</mo><mo>&#160;</mo><mi>d</mi><mi>a</mi><mi>n</mi><mo>&#160;</mo><mi>M</mi><mo>(</mo><mn>6</mn><mo>,</mo><mo>&#160;</mo><mn>2</mn><mo>)</mo></math>. Jika KLMN adalah bangun jajargenjang, maka koordinat titik N adalah ....</p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mo>(</mo><mo>-</mo><mn>2</mn><mo>,</mo><mo>&#160;</mo><mo>-</mo><mn>1</mn><mo>)</mo></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mo>(</mo><mo>-</mo><mn>1</mn><mo>,</mo><mo>&#160;</mo><mn>2</mn><mo>)</mo></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mo>(</mo><mn>1</mn><mo>,</mo><mo>&#160;</mo><mo>-</mo><mn>2</mn><mo>)</mo></math></p>', '<p><math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mo>(</mo><mn>1</mn><mo>,</mo><mo>&#160;</mo><mn>2</mn><mo>)</mo></math></p>', 4),
(21, 3, '<p>Perhatikan gambar di bawah ini!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/21.JPG\" alt=\"\" /></p>\r\n<p>Hasil pencerminan bangun terhadap cermin k adalah ....</p>', '<p><img src=\"/tryout_online/assets/images/upload/21a.JPG\" alt=\"\" width=\"240\" height=\"220\" /></p>', '<p><img src=\"/tryout_online/assets/images/upload/21b.JPG\" alt=\"\" width=\"240\" height=\"220\" /></p>', '<p><img src=\"/tryout_online/assets/images/upload/21c.JPG\" alt=\"\" width=\"240\" height=\"220\" /></p>', '<p><img src=\"/tryout_online/assets/images/upload/21d.JPG\" alt=\"\" width=\"240\" height=\"220\" /></p>', 2),
(22, 3, '<p>Volume sebuah penyimpanan air berbentuk kubus 91.125 cm<sup>3</sup>. Luas permukaan kubus adalah ....</p>', '<p>270 cm<sup>2</sup></p>', '<p>2.025 cm<sup>2</sup></p>', '<p>8.100 cm<sup>2</sup></p>', '<p>12.150 cm<sup>2</sup></p>', 4),
(23, 3, '<p>Diketahui sebuah drum minyak berbentuk tabung memiliki diameter lingkaran 60 cm dan tinggi 100 cm. Luas permukaan drum minyak tersebut adalah .... (<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi mathvariant=\"normal\">&#960;</mi><mo>&#160;</mo><mo>=</mo><mo>&#160;</mo><mn>3</mn><mo>,</mo><mn>14</mn></math>)</p>', '<p>24.492 cm<sup>2</sup></p>', '<p>18.840 cm<sup>2</sup></p>', '<p>15.072 cm<sup>2</sup></p>', '<p>2.826 cm<sup>2</sup></p>', 1),
(24, 3, '<p>Perhatikan gambar di bawah ini!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/24.JPG\" alt=\"\" /></p>\r\n<p>Volume tabung di atas adalah .... (<math xmlns=\"http://www.w3.org/1998/Math/MathML\"><mi mathvariant=\"normal\">&#960;</mi><mo>&#160;</mo><mo>=</mo><mo>&#160;</mo><mfrac><mn>22</mn><mn>7</mn></mfrac></math>)</p>', '<p>4.400 cm<sup>3</sup></p>', '<p>8.800&nbsp;cm<sup>3</sup></p>', '<p>88.000&nbsp;cm<sup>3</sup></p>', '<p>352.000&nbsp;cm<sup>3</sup></p>', 3),
(25, 3, '<p>Sebuah kolam berbentuk balok berukuran panjang 7,5 m, lebar 6 m, dan dalamnya 4 m. Jika kolam tersebut diisi air sampah penuh, maka air yang ada di dalam kolam adalah ....</p>', '<p>180 liter</p>', '<p>198 liter</p>', '<p>19.800 liter</p>', '<p>180.000 liter</p>', 4),
(26, 3, '<p>Data di bawah ini menunjukan usia (dalam tahun) guru SD Nusa Bangsa.</p>\r\n<table style=\"height: 55px;\" width=\"436\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 32px;\">28</td>\r\n<td style=\"width: 33px;\">35</td>\r\n<td style=\"width: 35px;\">38</td>\r\n<td style=\"width: 37px;\">30</td>\r\n<td style=\"width: 37px;\">38</td>\r\n<td style=\"width: 38px;\">35</td>\r\n<td style=\"width: 38px;\">34</td>\r\n<td style=\"width: 40px;\">38</td>\r\n<td style=\"width: 41px;\">34</td>\r\n<td style=\"width: 41px;\">42</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 32px;\">40</td>\r\n<td style=\"width: 33px;\">32</td>\r\n<td style=\"width: 35px;\">30</td>\r\n<td style=\"width: 37px;\">32</td>\r\n<td style=\"width: 37px;\">35</td>\r\n<td style=\"width: 38px;\">40</td>\r\n<td style=\"width: 38px;\">32</td>\r\n<td style=\"width: 40px;\">35</td>\r\n<td style=\"width: 41px;\">45</td>\r\n<td style=\"width: 41px;\">34</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Selisih usia guru termuda dengan guru tertua dari data tersebut adalah ....</p>', '<p>14 tahun</p>', '<p>15 tahun</p>', '<p>17 tahun</p>', '<p>18 tahun</p>', 3),
(27, 3, '<p>Dari 30 pengunjung perpustakaan diperoleh data tentang lama waktu membaca buku di perpustakaan (dalam menit) sebagai berikut:</p>\r\n<table style=\"height: 140px; float: left; width: 425px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"width: 223px; text-align: center; height: 16px;\">Waktu Membaca Buku (menit)</td>\r\n<td style=\"width: 192px; text-align: center; height: 16px;\">Banyaknya Pengunjung</td>\r\n</tr>\r\n<tr style=\"height: 16px;\">\r\n<td style=\"width: 223px; text-align: center; height: 16px;\">20</td>\r\n<td style=\"width: 192px; text-align: center; height: 16px;\">4</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 223px; text-align: center; height: 17px;\">30</td>\r\n<td style=\"width: 192px; text-align: center; height: 17px;\">6</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 223px; text-align: center; height: 17px;\">40</td>\r\n<td style=\"width: 192px; text-align: center; height: 17px;\">8</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 223px; text-align: center; height: 17px;\">50</td>\r\n<td style=\"width: 192px; text-align: center; height: 17px;\">7</td>\r\n</tr>\r\n<tr style=\"height: 17px;\">\r\n<td style=\"width: 223px; text-align: center; height: 17px;\">60</td>\r\n<td style=\"width: 192px; text-align: center; height: 17px;\">5</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Diagram batang yang sesuai dengan data tersebut adalah ....</p>', '<p><img src=\"/tryout_online/assets/images/upload/27a.JPG\" alt=\"\" width=\"220\" height=\"220\" /></p>', '<p><img src=\"/tryout_online/assets/images/upload/27b.JPG\" alt=\"\" width=\"220\" height=\"220\" /></p>', '<p><img src=\"/tryout_online/assets/images/upload/27c.JPG\" alt=\"\" width=\"220\" height=\"220\" /></p>', '<p><img src=\"/tryout_online/assets/images/upload/27d.JPG\" alt=\"\" width=\"220\" height=\"220\" /></p>', 2),
(28, 3, '<p>Perhatikan sajian data kegemaran siswa SD Berlian di bawah ini!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/28.JPG\" alt=\"\" width=\"300\" height=\"300\" /></p>\r\n<p>Jika jumlah siswa di sekolah tersebut 80 anak, maka jumlah siswa yang gemar menari dan melukis sebanyak ....</p>', '<p>12 anak</p>', '<p>16 anak</p>', '<p>28 anak</p>', '<p>40 anak</p>', 4),
(29, 3, '<p>Tabel berikut menyajikan data berat badan siswa SD Muatiara.</p>\r\n<table style=\"width: 341px; height: 114px;\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 162px; text-align: center;\"><strong>Banyak Siswa</strong></td>\r\n<td style=\"width: 165px; text-align: center;\"><strong>Berat Badan (Kg)</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 162px; text-align: center;\">6</td>\r\n<td style=\"width: 165px; text-align: center;\">35</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 162px; text-align: center;\">8</td>\r\n<td style=\"width: 165px; text-align: center;\">40</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 162px; text-align: center;\">12</td>\r\n<td style=\"width: 165px; text-align: center;\">25</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 162px; text-align: center;\">24</td>\r\n<td style=\"width: 165px; text-align: center;\">20</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Rata-rata berat badan siswa adalah ....</p>', '<p>25,2 kg</p>', '<p>26 kg</p>', '<p>26,2 kg</p>', '<p>26,5 kg</p>', 3),
(30, 3, '<p>Diagram batang di bawah ini menyajikan data tentang banyak pengunjung pameran komputer selama enam hari.</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/30.JPG\" alt=\"\" width=\"386\" height=\"300\" /></p>\r\n<p>Modus dari data tersebut adalah ....</p>', '<p>Senin</p>', '<p>Selasa</p>', '<p>Kamis</p>', '<p>Sabtu</p>', 3),
(31, 2, '<p><img src=\"/tryout_online/assets/images/upload/1_ipa2019_2020.JPG\" alt=\"\" /></p>\r\n<p>Organisme yang sesuai menduduki huruf X pada rantai makanan di atas adalah ....</p>', '<p>ular</p>', '<p>burung</p>', '<p>kelinci</p>', '<p>tikus</p>', 2),
(32, 2, '<p>Hubungan erat dan khas antara kutu dan manusia termasuk simbiosis ....</p>', '<p>mutualisme</p>', '<p>komenasalisme</p>', '<p>parasitisme</p>', '<p>dinamisme</p>', 3),
(33, 2, '<p>Perhatikan tabel berikut!</p>\r\n<table style=\"height: 90px; width: 433px;\" border=\"1\">\r\n<tbody>\r\n<tr style=\"height: 12.1875px;\">\r\n<td style=\"width: 176.125px; text-align: center; height: 12.1875px;\"><strong>Hewan</strong></td>\r\n<td style=\"width: 244.875px; text-align: center; height: 12.1875px;\"><strong>Cara Adaptasi</strong></td>\r\n</tr>\r\n<tr style=\"height: 12px;\">\r\n<td style=\"width: 176.125px; text-align: left; height: 12px;\">&nbsp;A. bunglon</td>\r\n<td style=\"width: 244.875px; text-align: left; height: 12px;\">&nbsp;1. memutuskan ekornya</td>\r\n</tr>\r\n<tr style=\"height: 12px;\">\r\n<td style=\"width: 176.125px; text-align: left; height: 12px;\">&nbsp;B. unta</td>\r\n<td style=\"width: 244.875px; text-align: left; height: 12px;\">&nbsp;2. mengubah warna kulitnya</td>\r\n</tr>\r\n<tr style=\"height: 12px;\">\r\n<td style=\"width: 176.125px; text-align: left; height: 12px;\">&nbsp;C. cecak</td>\r\n<td style=\"width: 244.875px; text-align: left; height: 12px;\">&nbsp;3. menyimpan cadangan lemak di punuk</td>\r\n</tr>\r\n<tr style=\"height: 12px;\">\r\n<td style=\"width: 176.125px; text-align: left; height: 12px;\">&nbsp;D. beruang kutub</td>\r\n<td style=\"width: 244.875px; text-align: left; height: 12px;\">&nbsp;4. memiliki rambut yang tebal dan putih</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Pasangan yang tepat antara hewan dengan cara adaptasinya pada tabel di atas adalah ....</p>', '<p>A&nbsp;&rarr; 3&nbsp;</p>', '<p>B&nbsp;&rarr; 1</p>', '<p>C&nbsp;&rarr; 2</p>', '<p>D&nbsp;&rarr; 4</p>', 4),
(34, 2, '<p>Cicak memiliki lapisan perekat pada telapak kakinya yang berguna untuk ....</p>', '<p>merayap di dinding tanpa terjatuh</p>', '<p>menangkap makanan supaya lengket</p>', '<p>memudahkan berjalan ke sana ke mari</p>', '<p>mendeteksi mangsanya</p>', 1),
(35, 2, '<p>Akhir-akhir ini banyak hutan bakau di pesisir pantai ditebang habis untuk dijadikan tambak udang. Hal tersebut akan mengakibatkan antara lain ....</p>', '<p>berkurangnya penyakit malaria dibekas hutan bakau</p>', '<p>tambahnya kesuburan perairan di sekitar hutan bakau</p>', '<p>suburnya terumbu karang karena mendapat unsur hara</p>', '<p>terkikisnya pantai oleh gempuran ombak</p>', 4),
(36, 2, '<p>Tanaman kaktus memiliki daun berbentuk duri yang berfungsi untuk ....</p>', '<p>memperlambat penguapan</p>', '<p>mempercepat penguapan</p>', '<p>tidak mudah busuk di lingkungan kering</p>', '<p>menakuti diri dari musuhnya</p>', 1),
(37, 2, '<p>Tahapan daur hidup kupu-kupu yang benar adalah ....</p>', '<p>telur&nbsp;&rarr; kepompong&nbsp;&rarr; ulat&nbsp;&rarr; kupu-kupu</p>', '<p>telur &rarr; ulat &rarr; kepompong &rarr; kupu-kupu</p>', '<p>kupu-kupu &rarr; telur &rarr; ulat&nbsp;&rarr; kepompong</p>', '<p>kupu-kupu &rarr; telur&nbsp;&rarr; kepompong&nbsp;&rarr; ulat&nbsp;</p>', 2),
(39, 2, '<p>Perhatikan gambar di bawah ini!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/8_ipa2019-2020.JPG\" alt=\"\" /></p>\r\n<p>Kerangka seperti pada gambar di samping berguna untuk melindungi organ tubuh yang penting yaitu, ....</p>', '<p>otak</p>', '<p>jantung</p>', '<p>ginjal</p>', '<p>paru-paru</p>', 1),
(40, 2, '<p>Perhatikan gambar di bawah ini!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/10_ipa2019_2020.PNG\" alt=\"\" width=\"220\" height=\"230\" /></p>\r\n<p>Nama bagian organ yang ditunjuk oleh anak panah seperti gambar di samping adalah ....</p>', '<p>alveolus</p>', '<p>bronkiolus</p>', '<p>bronkus</p>', '<p>tenggorokan</p>', 1),
(41, 2, '<p>Urutan proses pernapasan pada serangga adalah ....</p>', '<p>udara masuk melalui stigma, kemudian dialirkan ke seluruh tubuh oleh trakea</p>', '<p>udara masuk melalui trakea, kemudian dialirkan ke seluruh tubuh oleh stigma</p>', '<p>udara masuk melalui stigma dan trakea langsung ke seluruh tubuh</p>', '<p>udara langsung masuk ke tubuh dan keluar melalui trakea</p>', 1),
(42, 2, '<p><img src=\"/tryout_online/assets/images/upload/12_ipa2019_2020.JPG\" alt=\"\" width=\"220\" height=\"230\" /></p>\r\n<p>Fungsi bagian organ pencernaan yang ditunjuk anak panah seperti gambar di atas adalah ....</p>', '<p>mencerna makanan secara mekanik dan kimiawi</p>', '<p>menghubungkan mulut dengan lambung</p>', '<p>makanan dicerna dengan enzim</p>', '<p>penyerapan sari-sari makanan</p>', 2),
(43, 2, '<p><img src=\"/tryout_online/assets/images/upload/13_ipa2019_2020.JPG\" alt=\"\" width=\"220\" height=\"230\" /></p>\r\n<p>Organ sistem pencernaan manusia yang ditunjuk oleh anak panah seperti gambar di atas menghasilkan enzim ....</p>', '<p>ptialin</p>', '<p>pepsin</p>', '<p>lipase</p>', '<p>tripsin</p>', 2),
(44, 2, '<p>Penyakit yang disebabkan oleh pembekuan darah atau ada gumpalan materi yang menyumbat pembuluh darah nadi di jantung disebut ....</p>', '<p>hipertensi</p>', '<p>stroke</p>', '<p>serangan jantung</p>', '<p>jantung istemik</p>', 2),
(45, 2, '<p><img src=\"/tryout_online/assets/images/upload/15_ipa2019_2020.JPG\" alt=\"\" width=\"220\" height=\"230\" /></p>\r\n<p>Hewan seperti pada gambar di samping berkembang biak dengan cara ....</p>', '<p>fragmentasi</p>', '<p>vivipar</p>', '<p>ovipar</p>', '<p>ovovivipar</p>', 3),
(46, 2, '<p>Satu dari beberapa ciri-ciri perkembangan fisik anak perempuan pada masa pubertas adalah ....</p>', '<p>timbul jakun</p>', '<p>suara lebih nyaring</p>', '<p>dada bidang</p>', '<p>tumbuh kumis</p>', 2),
(47, 2, '<p>Mata merupakan indera terpenting manusia. Untuk menjaga kesehatan mata, kebiasaan yang benar untuk dilakukan adalah ....</p>', '<p>mengatur jarak mata dengan buku saat membaca</p>', '<p>membaca di tempat yang kurang cahaya</p>', '<p>melihat televisi sambil berbaring</p>', '<p>mengusap mata jika kemasukan benda</p>', 1),
(48, 2, '<p>Berikut ini merupakan satu dari beberapa cara menjaga kesehatan organ reproduksi anak laki-laki adalah ....</p>', '<p>mengenakan celana jean</p>', '<p>sering mengganti celana panjang</p>', '<p>membasuh organ reproduksi dengan benar</p>', '<p>memakai celana dari bahan sintetis</p>', 3),
(49, 2, '<p>Perhatikan tabel berikut!</p>\r\n<table style=\"width: 391.767px;\" border=\"1\">\r\n<tbody>\r\n<tr>\r\n<td style=\"width: 136px; text-align: center;\"><strong>Benda</strong></td>\r\n<td style=\"width: 255.767px; text-align: center;\"><strong>Sifat Benda</strong></td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 136px;\">I.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; emas</td>\r\n<td style=\"width: 255.767px;\">A. mudah dibentuk</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 136px;\">II.&nbsp;&nbsp;&nbsp; kaca</td>\r\n<td style=\"width: 255.767px;\">B. menyerap air</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 136px;\">III.&nbsp; kain</td>\r\n<td style=\"width: 255.767px;\">C. tembus pandang dan keras</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 136px;\">IV.&nbsp;&nbsp; plastik</td>\r\n<td style=\"width: 255.767px;\">D. lunak dan mudah ditempa</td>\r\n</tr>\r\n<tr>\r\n<td style=\"width: 136px;\">V.&nbsp;&nbsp;&nbsp;&nbsp; kayu</td>\r\n<td style=\"width: 255.767px;\">E. tidak tembus air, ringan, dan lentur</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Pasangan yang tepat benda dan sifatnya adalah ....</p>', '<p>I - C, II - C, III -B</p>', '<p>I - A, II - B, III - C</p>', '<p>II - C, III - B, IV - E</p>', '<p>III - B, IV - E, V - B</p>', 3),
(50, 2, '<p>Banyak perabot rumah tangga terbuat dari bahan kayu karena memiliki sifat ....</p>', '<p>mudah dibentuk</p>', '<p>lentur dan elastis</p>', '<p>tembus pandang</p>', '<p>menyerap air</p>', 1),
(51, 2, '<p>Kegiatan di bawah ini yang memanfaatkan proses sublimasi adalah ....</p>', '<p>minyak wangi di semprotkan di ruangan</p>', '<p>kamper dibiarkan terbuka, ruangan menjadi harum</p>', '<p>air yang dimasukkan dalam lemari es akan menjadi es</p>', '<p>besi yang dipanaskan dengan suhu tinggi lalu dicetak menjadi alat</p>', 2),
(52, 2, '<p>Perhatikan gambar percobaan berikut!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/22a_ipa2019-2020.JPG\" alt=\"\" />&nbsp; <img src=\"/tryout_online/assets/images/upload/22b_ipa2019-2020.JPG\" alt=\"\" /></p>\r\n<p>Cara kerja :</p>\r\n<ol>\r\n<li>Masukkan air ke dalam gelas kimia di atas pembakar spirtus yang menyala. Kemudian kamu amati perubahan wujud air yang mendidih.</li>\r\n<li>Ketika uap air terlihat, letakkan piring kaca di atas gelas kimia sehingga uap air mengenai kaca.</li>\r\n</ol>\r\n<p>Berdasarkan pengamatan ke-1 dan ke-2, perubahan wujud yang terjadi adalah ....</p>', '<p>mengkristal dan menyublim</p>', '<p>menguap dan mengembun</p>', '<p>menguap dan mencair</p>', '<p>menguap dan membeku</p>', 2),
(53, 2, '<p>Perhatikan gambar berikut!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/23_ipa2019-2020.JPG\" alt=\"\" width=\"220\" height=\"200\" /></p>\r\n<p>Jenis gaya yang dimanfaatkan dalam kegiatan seperti gambar di atas adalah ....</p>', '<p>gaya pegas dan gaya otot</p>', '<p>gaya otot dan gaya magnet</p>', '<p>gaya otot dan gaya gesek</p>', '<p>gaya gesek dan gaya magnet</p>', 3),
(54, 2, '<p>Di bawah ini contoh kegiatan yang menunjukkan bahwa gaya dapat mengubah bentuk benda, kecuali ....</p>', '<p>semangka yang dibelah menjadi dua bagian</p>', '<p>makanan yang dikunyah menjadi hancur</p>', '<p>pensil yang diraut menjadi runcing</p>', '<p>bola ditendang menjadi melambung</p>', 4),
(55, 2, '<p>Perhatikan gambar berikut!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/25_ipa2019-2020.JPG\" alt=\"\" width=\"494\" height=\"104\" /></p>\r\n<p>Alat-alat listrik yang mempunyai perubahan energi yang sama saat digunakan ditunjukkan seperti gambar nomor ....</p>\r\n<p>&nbsp;</p>', '<p>II dan IV</p>', '<p>II dan V</p>', '<p>I dan IV</p>', '<p>I dan V</p>', 1),
(56, 2, '<p>Perhatikan gambar berikut!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/26_ipa2019-2020.JPG\" alt=\"\" width=\"220\" height=\"200\" /></p>\r\n<p>Lampu sepeda seperti gambar tersebut akan menyala.<br />Perubahan energi yang terjadi pada peristiwa tersebut adalah ....</p>', '<p>otot - gerak - magnet - listrik</p>', '<p>gerak - magnet - listrik - cahaya</p>', '<p>otot - gerak - listrik - cahaya</p>', '<p>gerak - otot - listrik - cahaya</p>', 3),
(57, 2, '<p>Di bawah ini merupakan kegiatan penerapan prinsip dari pemuaian benda, kecuali ....</p>', '<p>pengisian air minum teh botol sosro tidak penuh</p>', '<p>ban sepeda yang lama tidak dipakai akan kempes</p>', '<p>pemasangan kaca jendela pada bingkai lebih longgar</p>', '<p>menaruh sepeda di tempat yang teduh</p>', 2),
(58, 2, '<p>Perpindahan panas secara radiasi dalam peristiwa ....</p>', '<p>gagang dan tutup panci terasa panas saat memasak air</p>', '<p>knalpot terasa panas saat mesin motor dinyalakan</p>', '<p>panas matahari sampai ke permukaan bumi</p>', '<p>gerakan naik turun air yang direbus</p>', 3),
(59, 2, '<p><img src=\"/tryout_online/assets/images/upload/29_ipa2019-2020.JPG\" alt=\"\" width=\"220\" height=\"240\" /></p>\r\n<p>Pada gambar disamping, jika sumber cahaya di titik A digeser ke titik B, bayangan benda akan jatuh di titik ....</p>', '<p>D</p>', '<p>C</p>', '<p>B</p>', '<p>A</p>', 1),
(60, 2, '<p>Kelompok alat musik yang dibunyikan dengan cara ditiup adalah ....</p>', '<p>seruling, harmonika, serunai</p>', '<p>terompet, seruling, rebana</p>', '<p>angklung, rebana, ketipung</p>', '<p>seruling, harmonika, sasando</p>', 1),
(61, 2, '<p>Ciri-ciri lampu yang dirangkai secara paralel adalah ....</p>', '<p>bila lampu satu padam, lampu yang lain ikut padam</p>', '<p>bila lampu satu padam, lampu yang lain masih menyala</p>', '<p>semua lampu padam dan menyala bersama-sama</p>', '<p>semua lampu menyala sama terangnya</p>', 2),
(62, 2, '<p>Perhatikan rangkaian listrik berikut!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/32_ipa2019-2020.JPG\" alt=\"\" width=\"221\" height=\"140\" /></p>\r\n<p>Agar L4 dan L5 menyala dan L1, L2, L3 padam maka yang dilakukan adalah ....</p>', '<p>S1 ditutup dan S2 ditutup</p>', '<p>S1 ditutup dan S2 dibuka</p>', '<p>S1 dibuka dan S2 dibuka</p>', '<p>S1 dibuka dan S2 ditutup</p>', 2),
(63, 2, '<p>Kelompok sumber daya alam di bawah ini tidak dapat diperbarui adalah ....</p>', '<p>batu bara, air, minyak bumi</p>', '<p>minyak bumi, tanah, matahari</p>', '<p>minyak bumi, batu bara, logam</p>', '<p>batu bara, logam, matahari</p>', 3),
(64, 2, '<p>Dasar perhitungan pada kalender masehi adalah ....</p>', '<p>rotasi bumi pada porosnya</p>', '<p>revolusi bumi terhadap matahari</p>', '<p>revolusi bulan terhadap matahari</p>', '<p>revolusi bulan terhadap bumi</p>', 2),
(65, 2, '<p>Perhatikan gambar berikut!</p>\r\n<p><img src=\"/tryout_online/assets/images/upload/35_ipa2019-2020.JPG\" alt=\"\" width=\"221\" height=\"146\" /></p>\r\n<p>Peristiwa yang ditunjukkan nomor 3 seperti pada gambar daur air di atas adalah ....</p>', '<p>pengembunan</p>', '<p>penguapan</p>', '<p>evaporasi</p>', '<p>transpirasi</p>', 1),
(66, 1, '<p><em>Bacalah teks berikut!</em></p>\r\n<p style=\"text-align: justify;\">&nbsp;&nbsp;&nbsp;&nbsp; Potpourri adalah penghias dan pengharum ruangan alami. Potpourri bisa kita buat dengan mudah. Keringkan bunga, buah, dan rempah di tempat yang tidak terkena sinar matahari secara langsung. Pilih bahan yang kering sempurna untuk ditempatkan atau dipasang di wadah cantik. Simpan potpourri yang sudah jadi ke dalam kantong cantik. Jika ingin menjual potpourri, tatalah di <span style=\"text-decoration: underline;\">etalase</span> sehingga menarik perhatian orang yang melihatnya.<br />Makna kata bergaris bawah pada kalimat di atas adalah tempat untuk ....</p>', '<p>menjual barang</p>', '<p>meletakkan barang</p>', '<p>menyimpan barang</p>', '<p>memamerkan barang</p>', 4),
(67, 1, '<p>Mereka sangat <span style=\"text-decoration: underline;\">kagum</span> melihat karya yang sangat artistik itu.<br />Sinonim kata yang bergaris bawah adalah ....</p>', '<p>heran</p>', '<p>takjub</p>', '<p>senang</p>', '<p>terhibur</p>', 2),
(68, 1, '<p><em>Bacalah teks berikut untuk butir soal nomor 3-4!</em></p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp;&nbsp; Bakat menulis Bondan sudah muncul sejak usia delapan tahun. Dalam usianya yang masih sangat dini, ia sudah menulis beberapa cerita dan puisi. Ketika kelas VI SD, dia sudah menerbitkan belasan cerita dan puisi yang dikarangnya sendiri. Bondan juga selalu menjadi juara dalam setiap lomba menulis cerita dan puisi yang diikutinya. Jumlah piala yang berderet di lemari kacanya sudah lebih dari tiga puluh.<br /><em>&nbsp;&nbsp;&nbsp;&nbsp; </em>Untuk meraih prestasi tersebut, Bondan terus berjuang, rajin belajar, dan mendapat dorongan dari orang tuanya. Prestasi Bondan tidak akan dapat diraih tanpa adanya kemauan yang kuat seperti ayahnya menjadi penulis cerita dan puisi terkenal.</p>\r\n<p style=\"text-align: justify;\">3. Bagaimana cara Bondan meraih berbagai prestasi?</p>', '<p>Bondan mewarisi kemahiran menulis ayahnya.</p>', '<p>Bondan terus-menerus menulis tanpa mengenal waktu.</p>', '<p>Bondan meminta dorongan semangat dari orang tuanya.</p>', '<p>Bondan harus berjuang, rajin belajar, dan berkemauan kuat.</p>', 4),
(69, 1, '<p>Kalimat yang menunjukkan bahwa Bondan memiliki banyak prestasi adalah ....</p>', '<p>Bakat menulis Bondan diwarisi dari ayahnya.</p>', '<p>Bakat menulis Bondan sudah muncul sejak usia delapan tahun.</p>', '<p>Ia berharap kelak bisa seperti ayahnya, menjadi penulis cerita dan puisi terkenal.</p>', '<p>Bondan juga selalu menjadi juara dalam setiap lomba menulis cerita dan puisi yang diikutinya.</p>', 4),
(70, 1, '<p><em>Bacalah teks berikut!</em></p>\r\n<p style=\"text-align: justify;\">&nbsp; &nbsp; &nbsp;Kesadaran warga Kampung Rawajati sangat tinggi terhadap pengelolaan sampah. Sebuah sentra pengumpulan sampah disediakan di area kampung untuk menampung sampah. Para ibu turut berkontribusi dengan memisahkan sampah organik dan anorganik. Sampah yang sudah terpilah kemudian dikumpulkan&nbsp; di sentra sampah. Sampah organik dari warga kemudian diolah menjadi kompos. Setiap warga diperbolehkan mengambil kompos untuk penyubur tanaman.</p>\r\n<p style=\"text-align: justify;\">Kalimat utama paragraf tersebut adalah ....</p>', '<p>Sebuah sentra pengumpulan sampah disediakan di area kampung untuk menampung sampah.</p>', '<p>Kesadaran warga Kampung Rawajati sangat tinggi terhadap pengelolaan sampah.</p>', '<p>Para ibu turut berkontribusi dengan memisahkan sampah organik dan anorganik.</p>', '<p>Sampah yang sudah terpilah kemudian dikumpulkan di sentra sampah.</p>', 2),
(71, 1, '<p><em>Bacalah percakapan berikut!</em></p>\r\n<p><em>Adi&nbsp; &nbsp; &nbsp; : \"Mengapa kamu tidak masuk hari ini?\"<br />Edo&nbsp; &nbsp; &nbsp;: \"Ibuku sakit. Aku harus membantu ibu dan menjaga adikku.\"<br />Riki&nbsp; &nbsp; &nbsp;: \"Memang di rumahmu tidak ada orang lain selain kamu?\"<br />Edo&nbsp; &nbsp; &nbsp;: \"Tidak ada, Ayahku kan harus bekerja.\"<br />Riki&nbsp; &nbsp; &nbsp;: \"O, begitu. Aku turut prihatin. Semoga ibumu lekas sembuh.\"<br />Edo&nbsp; &nbsp; &nbsp;: \"Ya, terima kasih Riki.\"</em></p>\r\n<p>Topik percakapan tersebut adalah ....</p>', '<p>alasan Edo tidak masuk sekolah</p>', '<p>keprihatinan Riki kepada Edo</p>', '<p>keluarga Edo</p>', '<p>pekerjaan rumah Edo</p>', 1),
(72, 1, '<p style=\"text-align: justify;\"><em><strong>Bacaan untuk butir soal no. 7-8<br /></strong>&nbsp; &nbsp; &nbsp;</em>Kegiatan pertanian insentif yang menginginkan hasil panen dalam jumlah besar dalam waktu singkat menyebabkan terjadinya pemakaian pupuk kimia secara berlebihan. Pada saat yang sama pembasmian hama pun dilakukan dengan menggunakan zat-zat kimia berbahaya. Kedua kegiatan ini akan merusak kesuburan tanah, tempat sumber makanan dan tempat tinggal berbagai jenis organisme. Penggunaan insektisida kimia juga akan membunuh hewan-hewan selain hama yang mempengaruhi keseimbangan ekosistem.</p>\r\n<p style=\"text-align: justify;\">7. Kesimpulan isi paragraf tersebut adalah ....&nbsp;</p>', '<p>Pertanian insentif akan menyebabkan hasil panen meningkat.</p>', '<p>Penggunaan insektisida akan membunuh hewan-hewan peliharaan.</p>', '<p>Pembasmian hama bertujuan membasmi hama yang merusak tanaman.</p>', '<p>Pemakaian zat-zat kimia yang berlebihan akan merusak kesuburan dan ekosistem.</p>', 4),
(73, 1, '<p>Pernyataan yang sesuai dengan isi paragraf tersebut adalah ....</p>', '<p>Pemakaian pupuk berlebihan menyebabkan panen dalam jumlah besar.</p>', '<p>Kegiatan pertanian insentif itu sangat berbahaya bagi manusia.</p>', '<p>Penggunaan insektisida bertujuan membunuh hewan-hewan kecil.</p>', '<p>Penggunaan pupuk kimia berlebihan berpengaruh pada penurunan kesuburan tanah.</p>', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `id_periode` int(11) DEFAULT NULL,
  `id_mapel` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `waktu` int(11) DEFAULT NULL,
  `jml_soal` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ujian`
--

INSERT INTO `ujian` (`id_ujian`, `id_periode`, `id_mapel`, `tanggal`, `waktu`, `jml_soal`) VALUES
(1, 2, 1, '2020-03-12', 120, 8),
(2, 1, 2, '2020-03-12', 60, 35),
(3, 1, 3, '2020-03-12', 120, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` enum('admin','siswa') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(1, 'egin', '835bdf527ea61b1d4cd9f79e3a58c742', 'admin'),
(29, '1415100897', '79133fc46c63fb8d8d1393be6808d240', 'siswa'),
(30, '1415100898', '86bfe648fd9cb1da08584781c232a161', 'siswa'),
(31, '1415100896', '4e719236467a75c74145022185b006c4', 'siswa'),
(33, '1415100899', '54ffbd61b7920c0b867dc9ecf8c4e2e5', 'siswa'),
(36, 'elgiawan', '769b0c13b33ca1c643478ba0c65d9476', 'admin'),
(37, '141510089&', '890c2cc6d1aec8f6e94dc65d446e2200', 'siswa');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`id_mapel`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_ujian` (`id_ujian`),
  ADD KEY `nis` (`nis`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_ujian` (`id_ujian`);

--
-- Indeks untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`),
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT untuk tabel `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_ujian`) REFERENCES `ujian` (`id_ujian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`nis`) REFERENCES `siswa` (`nis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `soal_ibfk_1` FOREIGN KEY (`id_ujian`) REFERENCES `ujian` (`id_ujian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `ujian`
--
ALTER TABLE `ujian`
  ADD CONSTRAINT `ujian_ibfk_2` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ujian_ibfk_3` FOREIGN KEY (`id_mapel`) REFERENCES `mapel` (`id_mapel`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
