-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2019 at 04:23 PM
-- Server version: 5.6.34-log
-- PHP Version: 7.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `holdingler`
--

-- --------------------------------------------------------

--
-- Table structure for table `bolge`
--

CREATE TABLE `bolge` (
  `b_id` int(11) NOT NULL,
  `b_adi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bolge`
--

INSERT INTO `bolge` (`b_id`, `b_adi`) VALUES
(1, 'Avrupa'),
(2, 'Afrika'),
(3, 'Antartika'),
(4, 'Asya'),
(5, 'Kuzey Amerika'),
(6, 'Guney Amerika'),
(7, 'Avustralya');

-- --------------------------------------------------------

--
-- Table structure for table `calısır`
--

CREATE TABLE `calısır` (
  `bol_id` int(11) NOT NULL,
  `personel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calısır`
--

INSERT INTO `calısır` (`bol_id`, `personel_id`) VALUES
(3, 1),
(4, 2),
(5, 3),
(6, 4),
(7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `faaliyet_alani`
--

CREATE TABLE `faaliyet_alani` (
  `faaliyet_id` int(11) NOT NULL,
  `faaliyet_adi` varchar(50) NOT NULL,
  `f_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faaliyet_alani`
--

INSERT INTO `faaliyet_alani` (`faaliyet_id`, `faaliyet_adi`, `f_id`) VALUES
(1, 'Veri bilimci', 11),
(2, 'Yazilim mühendisi', 11),
(3, 'Bilgisayar muhendisi', 12),
(4, 'Ag ve Bilgisayar sistemleri yöneticiligi', 13),
(5, 'otomasyon gelistiriciler', 14),
(6, 'IOT', 14),
(7, 'Mobil uygulama yazilimlari', 12),
(8, 'finans yazilimlari', 15),
(9, 'hastane otomasyon yazilimlari', 15),
(10, 'robotik uygulmalar', 13);

-- --------------------------------------------------------

--
-- Table structure for table `firma`
--

CREATE TABLE `firma` (
  `f_id` int(11) NOT NULL,
  `f_adi` varchar(30) NOT NULL,
  `f_tel` double NOT NULL,
  `f_fax` double NOT NULL,
  `h_id` int(11) NOT NULL,
  `f_bolge_id` int(11) NOT NULL,
  `f_ulke_id` int(11) NOT NULL,
  `f_il_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `firma`
--

INSERT INTO `firma` (`f_id`, `f_adi`, `f_tel`, `f_fax`, `h_id`, `f_bolge_id`, `f_ulke_id`, `f_il_id`) VALUES
(11, 'Sony', 3652142514, 902541452514, 1, 1, 1, 1),
(12, 'Google', 3652543625, 98754821, 1, 1, 10, 11),
(13, 'Nokia', 6321346325, 36897549815, 4, 4, 2, 2),
(14, 'Amazon', 21548798652, 3652169721, 5, 6, 3, 5),
(15, 'Lenova', 144754684, 1124368545, 3, 4, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `holding`
--

CREATE TABLE `holding` (
  `h_id` int(11) NOT NULL,
  `h_adi` varchar(40) NOT NULL,
  `h_tel` varchar(15) NOT NULL,
  `h_email` varchar(60) NOT NULL,
  `h_fax` varchar(20) NOT NULL,
  `h_butce` double NOT NULL,
  `h_vergiborcu` double NOT NULL,
  `h_bolge_id` int(11) NOT NULL,
  `h_ulke_id` int(11) NOT NULL,
  `h_il_id` int(11) NOT NULL,
  `h_aylik_gelir` double NOT NULL,
  `ihracat_yapilan_ulke_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holding`
--

INSERT INTO `holding` (`h_id`, `h_adi`, `h_tel`, `h_email`, `h_fax`, `h_butce`, `h_vergiborcu`, `h_bolge_id`, `h_ulke_id`, `h_il_id`, `h_aylik_gelir`, `ihracat_yapilan_ulke_id`) VALUES
(1, 'Apple', '+905422142115', 'Applesrc@gmail.com', '+90215145875', 950.5, 5000, 1, 1, 1, 500, 1),
(2, 'Samsung', '+902152362521', 'SSSamsung@gmail.com', '+3652548752', 800.5, 450, 4, 2, 2, 250, 3),
(3, 'HP', '+5482314581', 'HPhpHP123@gmail.com', '+21501230121', 500.25, 250, 6, 3, 5, 300, 13),
(4, 'Arcelik', '+902511452541', 'Arcelik123@gmail.com', '+3625414521', 750.254, 250, 4, 6, 4, 100, 14),
(5, 'Vestel', '+903256984754', 'vestel123@gmail.com', '+3654121222', 725.1, 214, 1, 10, 11, 150, 2);

-- --------------------------------------------------------

--
-- Table structure for table `holding_bolumler`
--

CREATE TABLE `holding_bolumler` (
  `bol_id` int(11) NOT NULL,
  `bol_adi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `holding_bolumler`
--

INSERT INTO `holding_bolumler` (`bol_id`, `bol_adi`) VALUES
(1, 'insan haklari'),
(2, 'muhasebe'),
(3, 'yazilim departmani'),
(4, 'robotiklesme '),
(5, 'Bilgi islem'),
(6, 'Pazarlama'),
(7, 'Guvenlik');

-- --------------------------------------------------------

--
-- Table structure for table `ihaleler`
--

CREATE TABLE `ihaleler` (
  `ihale_id` int(11) NOT NULL,
  `ihale_adi` varchar(30) NOT NULL,
  `ihale_adres` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ihaleler`
--

INSERT INTO `ihaleler` (`ihale_id`, `ihale_adi`, `ihale_adres`) VALUES
(14, 'Mikroislemci yonlendirme', 'newyork times street no:12 america '),
(15, 'robotlasma', 'Amsterdam streetn:254 Hollanda'),
(18, 'web tabanl? gelistirme', 'silikon los angeles america'),
(21, 'ekran cozunurlukleri', 'taksim istanbul turkey');

-- --------------------------------------------------------

--
-- Table structure for table `ihracat_yapilan_ulkeler`
--

CREATE TABLE `ihracat_yapilan_ulkeler` (
  `ihracat_yapilan_ulke_id` int(11) NOT NULL,
  `ihracat_yapilan_ulke_adi` varchar(40) NOT NULL,
  `h_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ihracat_yapilan_ulkeler`
--

INSERT INTO `ihracat_yapilan_ulkeler` (`ihracat_yapilan_ulke_id`, `ihracat_yapilan_ulke_adi`, `h_id`) VALUES
(1, 'Turkeyi', 1),
(2, 'Azerbaycan', 4),
(3, 'America  Birlesik Devletleri', 5),
(4, 'Belcika', 2),
(5, 'Brezilya', 3),
(13, 'italya', 4),
(14, 'ingiltere', 5);

-- --------------------------------------------------------

--
-- Table structure for table `katilir`
--

CREATE TABLE `katilir` (
  `h_id` int(11) NOT NULL,
  `ihale_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katilir`
--

INSERT INTO `katilir` (`h_id`, `ihale_id`) VALUES
(1, 14),
(1, 15),
(2, 18),
(5, 21),
(4, 15);

-- --------------------------------------------------------

--
-- Table structure for table `personel`
--

CREATE TABLE `personel` (
  `personel_id` int(11) NOT NULL,
  `p_adi` varchar(30) NOT NULL,
  `h_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personel`
--

INSERT INTO `personel` (`personel_id`, `p_adi`, `h_id`) VALUES
(1, 'hasan', 1),
(2, 'orhan', 2),
(3, 'veysi', 1),
(4, 'serdar', 3),
(5, 'emanuel', 5),
(6, 'samuel', 5),
(7, 'canki', 4),
(8, 'iroes', 4),
(9, 'Sino', 3),
(10, 'apuel', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pkatilir`
--

CREATE TABLE `pkatilir` (
  `proje_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pkatilir`
--

INSERT INTO `pkatilir` (`proje_id`, `f_id`) VALUES
(123547, 11),
(125414, 12),
(145789, 14),
(987564, 13),
(9876541, 15);

-- --------------------------------------------------------

--
-- Table structure for table `proje`
--

CREATE TABLE `proje` (
  `proje_id` int(11) NOT NULL,
  `proje_adi` varchar(50) NOT NULL,
  `proje_geliri` double NOT NULL,
  `proje_bas_tarihi` datetime NOT NULL,
  `proje_bit_tarih` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proje`
--

INSERT INTO `proje` (`proje_id`, `proje_adi`, `proje_geliri`, `proje_bas_tarihi`, `proje_bit_tarih`) VALUES
(123547, 'Gelistirme yontemleri', 145.214, '2019-11-01 00:00:00', '2020-06-19 00:00:00'),
(125414, 'Yapaylasma calismalari', 214.987, '2019-11-21 17:12:35', '2019-11-30 19:21:24'),
(987564, 'islemci guclend?rme', 798.654, '2019-11-27 10:15:14', '2020-11-06 13:29:15'),
(145789, 'kamera olceklendirme', 365.214, '2019-11-28 05:13:16', '2020-07-04 03:13:54'),
(9876541, 'yapay zeka', 125.365, '2019-11-29 04:30:33', '2021-09-30 18:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `sehir`
--

CREATE TABLE `sehir` (
  `il_id` int(11) NOT NULL,
  `il_adi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sehir`
--

INSERT INTO `sehir` (`il_id`, `il_adi`) VALUES
(1, 'Ankara'),
(2, 'Baku'),
(3, 'Londra'),
(4, 'Sam'),
(5, 'New York'),
(6, 'Bruksel'),
(7, 'Brasilia'),
(8, 'Tokyo'),
(9, 'Kingston'),
(10, 'Madrid'),
(11, 'Amsterdam'),
(12, 'Kudus'),
(13, 'Atina'),
(14, 'Buenos Aires'),
(15, 'Roma');

-- --------------------------------------------------------

--
-- Table structure for table `subeler`
--

CREATE TABLE `subeler` (
  `sube_id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `sube_adi` varchar(50) NOT NULL,
  `sube_ulke_id` int(11) NOT NULL,
  `sube_bolge_id` int(11) NOT NULL,
  `sube_il_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subeler`
--

INSERT INTO `subeler` (`sube_id`, `f_id`, `sube_adi`, `sube_ulke_id`, `sube_bolge_id`, `sube_il_id`) VALUES
(1, 12, 'google_airport12', 10, 1, 11),
(2, 13, 'nokiaaa21', 2, 4, 2),
(3, 14, 'amazon45878', 3, 6, 5),
(4, 15, 'lenovall12', 6, 4, 4),
(5, 11, 'sonysspc', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ulke`
--

CREATE TABLE `ulke` (
  `ulke_id` int(11) NOT NULL,
  `ulke_adi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ulke`
--

INSERT INTO `ulke` (`ulke_id`, `ulke_adi`) VALUES
(1, 'Turkiye'),
(2, 'Azerbaycan'),
(3, 'Amerika Birlesik Devletleri'),
(4, 'Belcika'),
(5, 'Brezilya'),
(6, 'iran'),
(7, 'Jamaika'),
(8, 'Japonya'),
(9, 'israil'),
(10, 'Hollanda'),
(11, 'ispanya'),
(12, 'Yunanistan'),
(13, 'italya'),
(14, 'ingiltere'),
(15, 'Arjantin');

-- --------------------------------------------------------

--
-- Table structure for table `uretir`
--

CREATE TABLE `uretir` (
  `faaliyet_id` int(11) NOT NULL,
  `urun_barkod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uretir`
--

INSERT INTO `uretir` (`faaliyet_id`, `urun_barkod`) VALUES
(9, 987123465),
(3, 987365214),
(6, 987984651),
(7, 987145365),
(7, 987456891);

-- --------------------------------------------------------

--
-- Table structure for table `urun`
--

CREATE TABLE `urun` (
  `urun_barkod` int(11) NOT NULL,
  `urun_adi` varchar(50) NOT NULL,
  `urun_miktar` int(11) NOT NULL,
  `urun_maliyet` double NOT NULL,
  `urun_fiyati` double NOT NULL,
  `urun_satıs_miktari` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `urun`
--

INSERT INTO `urun` (`urun_barkod`, `urun_adi`, `urun_miktar`, `urun_maliyet`, `urun_fiyati`, `urun_satıs_miktari`) VALUES
(987123465, 'hastane  otomasyonu', 600, 125.126, 200, 500),
(987456891, 'nokia216Dualsim', 875, 215, 1000, 1500),
(987145365, 'nokia 5', 12254, 356, 1000, 1800),
(987365214, 'lenovo yoga', 3652, 1000, 6.339, 1255),
(987894651, 'Sony Vaio', 36548, 25, 99.999, 2145);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faaliyet_alani`
--
ALTER TABLE `faaliyet_alani`
  ADD PRIMARY KEY (`faaliyet_id`);

--
-- Indexes for table `firma`
--
ALTER TABLE `firma`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `holding`
--
ALTER TABLE `holding`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `holding_bolumler`
--
ALTER TABLE `holding_bolumler`
  ADD PRIMARY KEY (`bol_id`);

--
-- Indexes for table `ihaleler`
--
ALTER TABLE `ihaleler`
  ADD PRIMARY KEY (`ihale_id`);

--
-- Indexes for table `ihracat_yapilan_ulkeler`
--
ALTER TABLE `ihracat_yapilan_ulkeler`
  ADD PRIMARY KEY (`ihracat_yapilan_ulke_id`);

--
-- Indexes for table `personel`
--
ALTER TABLE `personel`
  ADD PRIMARY KEY (`personel_id`);

--
-- Indexes for table `pkatilir`
--
ALTER TABLE `pkatilir`
  ADD PRIMARY KEY (`proje_id`);

--
-- Indexes for table `sehir`
--
ALTER TABLE `sehir`
  ADD PRIMARY KEY (`il_id`);

--
-- Indexes for table `subeler`
--
ALTER TABLE `subeler`
  ADD PRIMARY KEY (`sube_id`);

--
-- Indexes for table `ulke`
--
ALTER TABLE `ulke`
  ADD PRIMARY KEY (`ulke_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
