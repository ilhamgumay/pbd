-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2019 at 04:20 AM
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
-- Database: `akademik2`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `iddosen` int(11) DEFAULT NULL,
  `nmdosen` varchar(21) DEFAULT NULL,
  `gelar` varchar(14) DEFAULT NULL,
  `tmpt_lahir` varchar(14) DEFAULT NULL,
  `tgl_lahir` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `idprodi` int(11) DEFAULT NULL,
  `idpendidikan` int(11) DEFAULT NULL,
  `idjenjang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`iddosen`, `nmdosen`, `gelar`, `tmpt_lahir`, `tgl_lahir`, `sex`, `idprodi`, `idpendidikan`, `idjenjang`) VALUES
(1, 'Dewi Kania Widyawati', 'S.KOM.,M.Kom.', 'Bandung', '1970-02-05', 'P', 1, 1, 1),
(2, 'Agiska Ria Supriyatna', 'S.Si., M.T.I', 'Bandung', '1970-02-06', 'P', 2, 2, 3),
(3, 'Imam Asrowardi', ' S.Kom., M.Kom', 'Bandung', '1970-02-07', 'L', 1, 3, 1),
(4, 'Tri Sandhika Jaya', 'S.Kom., M.Kom', 'Bandung', '1970-02-08', 'L', 1, 4, 1),
(5, 'Halim Fathoni', 'S.T., M.Sc.', 'Bandung', '1970-02-09', 'L', 1, 5, 1),
(6, 'Eko Win Kenali', 'S.Kom., M.Cs.', 'Bandung', '1970-02-10', 'L', 1, 6, 1),
(7, 'Eko Subyantoro', 'S.Kom., M.Kom.', 'Bandung', '1970-02-12', 'L', 1, 7, 1),
(8, 'Zuriati', 'S.Kom., M.Kom.', 'Bandung', '1970-02-13', 'P', 1, 8, 1),
(9, 'Dwirgo Sahlinal', 'S.T., M. Eng', 'Bandung', '1970-02-14', 'L', 1, 9, 1),
(10, 'Kurniawan Saputra', 'S.Kom.', 'Bandung', '1970-02-15', 'L', 1, 10, 1),
(11, 'Anwar Rahman', 'S.Kom,M.Kom', 'Bandar Lampung', '1978-09-12', 'L', 2, 1, 1),
(12, 'Abdullah', 'S.Kom,M.Si', 'Jakarta', '1968-10-11', 'L', 2, 2, 1),
(13, 'Ayu Indah', 'S.Kom,M.T.A', 'Palembang', '1978-12-12', 'P', 2, 3, 1),
(14, 'Soekarno', 'S.Kom,M.Kom', 'Surabaya', '1988-11-22', 'L', 2, 4, 1),
(15, 'Teguh Haryanto', 'S.Kom,M.H', 'Bandar Lampung', '1987-12-25', 'L', 2, 5, 1),
(16, 'Anwar Rahman', 'S.Kom,M.Kom', 'Bandar Lampung', '1978-09-12', 'L', 2, 1, 1),
(17, 'Abdullah', 'S.Kom,M.Si', 'Jakarta', '1968-10-11', 'L', 2, 2, 1),
(18, 'Ayu Indah', 'S.Kom,M.T.A', 'Palembang', '1978-12-12', 'P', 2, 3, 1),
(19, 'Soekarno', 'S.Kom,M.Kom', 'Surabaya', '1988-11-22', 'L', 2, 4, 1),
(20, 'Teguh Haryanto', 'S.Kom,M.H', 'Bandar Lampung', '1987-12-25', 'L', 2, 5, 1),
(21, 'Soeharto', 'S.H,M.Sc', 'Semarang', '1980-11-12', 'L', 3, 1, 2),
(22, 'Suparman', 'S.T,M.Si', 'Surabaya', '1968-10-15', 'P', 3, 2, 2),
(23, 'Dwi Novita', 'S.Pd,M.T.A', 'Makassar', '1970-06-12', 'P', 3, 3, 2),
(24, 'Haryono', 'S.Kom,M.Kom', 'Malang', '1988-11-22', 'P', 3, 4, 2),
(25, 'Haryanto', 'S.Kom,M.H', 'Bandung', '1987-12-25', 'L', 3, 5, 2),
(26, 'Anwar Rahman', 'S.Kom,M.Kom', 'Bandar Lampung', '1978-09-12', 'L', 2, 1, 1),
(27, 'Abdullah', 'S.Kom,M.Si', 'Jakarta', '1968-10-11', 'L', 2, 2, 1),
(28, 'Ayu Indah', 'S.Kom,M.T.A', 'Palembang', '1978-12-12', 'P', 2, 3, 1),
(29, 'Soekarno', 'S.Kom,M.Kom', 'Surabaya', '1988-11-22', 'L', 2, 4, 1),
(30, 'Teguh Haryanto', 'S.Kom,M.H', 'Bandar Lampung', '1987-12-25', 'L', 2, 5, 1),
(31, 'Soeharto', 'S.H,M.Sc', 'Semarang', '1980-11-12', 'L', 3, 1, 2),
(32, 'Suparman', 'S.T,M.Si', 'Surabaya', '1968-10-15', 'P', 3, 2, 2),
(33, 'Dwi Novita', 'S.Pd,M.T.A', 'Makassar', '1970-06-12', 'P', 3, 3, 2),
(34, 'Haryono', 'S.Kom,M.Kom', 'Malang', '1988-11-22', 'P', 3, 4, 2),
(35, 'Haryanto', 'S.Kom,M.H', 'Bandung', '1987-12-25', 'L', 3, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `idjenjang` int(11) DEFAULT NULL,
  `nmjenjang` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`idjenjang`, `nmjenjang`) VALUES
(1, 'D3'),
(2, 'D4'),
(3, 'S2'),
(4, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `idmhs` int(11) DEFAULT NULL,
  `npm` int(11) DEFAULT NULL,
  `nama` varchar(22) DEFAULT NULL,
  `tmpt_lahir` varchar(16) DEFAULT NULL,
  `tgl_lahir` varchar(10) DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `thn_masuk` int(11) DEFAULT NULL,
  `idprodi` int(11) DEFAULT NULL,
  `idstatusaka` int(11) DEFAULT NULL,
  `idjenjang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`idmhs`, `npm`, `nama`, `tmpt_lahir`, `tgl_lahir`, `sex`, `thn_masuk`, `idprodi`, `idstatusaka`, `idjenjang`) VALUES
(83, 17753001, 'Laras Fitria', 'Pringsewu', '1999-01-10', 'P', 2017, 1, 1, 1),
(84, 17753002, 'Laura Carona', 'Natar', '1999-02-11', 'P', 2017, 1, 2, 1),
(85, 17753003, 'Libby Afipa', 'Kemiling', '2000-03-12', 'P', 2017, 1, 3, 1),
(86, 17753004, 'Lidia Firda', 'Tulang Bawang', '1999-04-13', 'P', 2017, 1, 4, 1),
(87, 17753005, 'M.Ilham Yusuf Gumay', 'Negeri Katon', '1999-05-14', 'L', 2017, 1, 5, 1),
(88, 17753006, 'Mudo Kurniawan', 'Tanjung Bintang', '1999-06-15', 'L', 2017, 1, 6, 1),
(89, 17753007, 'Made Slimacek', 'Pramuka', '1999-07-16', 'L', 2017, 1, 7, 1),
(90, 17753008, 'M.Fajri Ramadhan', 'Kemiling', '1999-08-17', 'L', 2017, 1, 8, 1),
(91, 17753009, 'Muh.Aulia Prima Insani', 'Tegineneng', '1999-09-18', 'L', 2017, 1, 9, 1),
(92, 17753010, 'M.Ichsan Rofiqo', 'Natar', '1999-06-21', 'L', 2017, 1, 10, 1),
(93, 17753011, 'Riski', 'Tanjung Karang', '1999-12-12', 'L', 2017, 2, 1, 1),
(94, 17753012, 'Raju', 'Pramuka', '1999-11-12', 'L', 2017, 2, 2, 1),
(95, 17753013, 'Rona', 'Margo Mulyo', '1999-05-22', 'P', 2017, 2, 3, 1),
(96, 17753014, 'Rendi', 'Kali Balok', '1999-08-15', 'L', 2017, 2, 4, 1),
(97, 17753015, 'Rahman', 'Natar', '1999-12-17', 'L', 2017, 2, 5, 1),
(98, 17753016, 'Romi', 'Tulang Bawang', '1999-10-10', 'P', 2017, 2, 6, 1),
(99, 17753017, 'Rani', 'Kota Bumi', '1999-09-08', 'P', 2017, 2, 7, 1),
(100, 17753018, 'Rina', 'Pringsewu', '1999-01-10', 'P', 2017, 2, 8, 1),
(101, 17753019, 'Rossa', 'Palembang', '1999-02-10', 'P', 2017, 2, 9, 1),
(102, 17753020, 'Randi', 'Jakarta', '1999-05-13', 'P', 2017, 2, 10, 1),
(103, 17753021, 'Sutan', 'Rajabasa', '1999-02-10', 'L', 2017, 3, 1, 2),
(104, 17753022, 'Surya', 'Mesuji', '1999-11-22', 'L', 2017, 3, 2, 2),
(105, 17753023, 'Shinta', 'Natar', '1999-05-12', 'P', 2017, 3, 3, 2),
(106, 17753024, 'Shoni', 'Kota Agung', '1999-04-13', 'L', 2017, 3, 4, 2),
(107, 17753025, 'Sularno', 'Natar', '1999-12-17', 'L', 2017, 3, 5, 2),
(108, 17753026, 'Syahrul', 'Menggala', '1999-10-25', 'L', 2017, 3, 6, 2),
(109, 17753027, 'Santi', 'Rajabasa', '1999-09-08', 'P', 2017, 3, 7, 2),
(110, 17753028, 'Susan', 'Pringsewu', '1999-01-10', 'P', 2017, 3, 8, 2),
(111, 17753029, 'Susi', 'Palembang', '1999-02-10', 'P', 2017, 3, 9, 2),
(112, 17753030, 'Surip', 'Jakarta', '1999-05-13', 'L', 2017, 3, 10, 2),
(113, 17753031, 'Yuki', 'Lampung', '1999-08-14', 'L', 2017, 4, 1, 1),
(114, 17753032, 'Marlin', 'Lampung', '1999-02-15', 'L', 2017, 4, 2, 1),
(115, 17753033, 'Wahyu', 'Palembang', '1998-10-11', 'L', 2017, 4, 3, 1),
(116, 17753034, 'Rini', 'Batu Tegi', '1999-11-10', 'P', 2017, 4, 4, 1),
(117, 17753035, 'Firman', 'Kalianda', '1997-12-17', 'L', 2017, 4, 5, 1),
(118, 17753036, 'Ajeng', 'Way Kalam', '1999-10-02', 'P', 2017, 4, 6, 1),
(119, 17753037, 'Nur', 'Negara Batin', '1999-02-09', 'P', 2017, 4, 7, 1),
(120, 17753038, 'Chika', 'Way Urang', '1999-01-02', 'P', 2017, 4, 8, 1),
(121, 17753039, 'Ferria', 'Lampung', '1998-03-22', 'P', 2017, 4, 9, 1),
(122, 17753040, 'Rahma', 'Way Kandis', '1999-05-10', 'P', 2017, 4, 10, 1),
(123, 17753041, 'Supardi', 'Lampung', '1998-08-14', 'L', 2017, 5, 1, 1),
(124, 17753042, 'Lipur', 'Jawa Tengah', '1999-02-15', 'L', 2017, 5, 2, 1),
(125, 17753043, 'Saputra', 'Riau', '1998-11-11', 'L', 2017, 5, 3, 1),
(126, 17753044, 'Libby', 'Tarahan', '1999-07-10', 'P', 2017, 5, 4, 1),
(127, 17753045, 'Ican', 'Kalianda', '1997-09-07', 'L', 2017, 5, 5, 1),
(128, 17753046, 'Fitri', 'Way Arong', '1999-10-21', 'P', 2017, 5, 6, 1),
(129, 17753047, 'Hasan', 'Negara Batin', '1999-03-09', 'P', 2017, 5, 7, 1),
(130, 17753048, 'Rossa', 'Bakauheni', '1999-09-20', 'P', 2017, 5, 8, 1),
(131, 17753049, 'Salsa', 'Terbanggi Besar', '1999-07-22', 'P', 2017, 5, 9, 1),
(132, 17753050, 'Vina', 'Padang', '1999-12-11', 'P', 2017, 5, 10, 1),
(133, 17753051, 'Vani', 'Sulawesi Utara', '1999-11-04', 'P', 2017, 6, 1, 2),
(134, 17753052, 'Tyas', 'Umbul Jeruk', '1999-02-15', 'P', 2017, 6, 2, 2),
(135, 17753053, 'Gumay', 'Palu', '1999-10-01', 'L', 2017, 6, 3, 2),
(136, 17753054, 'Yudi', 'Tanjung Karang', '1999-05-12', 'L', 2017, 6, 4, 2),
(137, 17753055, 'Stephani', 'Haringin', '1997-11-07', 'P', 2017, 6, 5, 2),
(138, 17753056, 'Sinta', 'Manokwari', '1999-01-13', 'P', 2017, 6, 6, 2),
(139, 17753057, 'Yondri', 'Totoharjo', '1999-08-26', 'L', 2017, 6, 7, 2),
(140, 17753058, 'Tri Wahyudi', 'Sidomulyo', '1999-09-02', 'L', 2017, 6, 8, 2),
(141, 17753059, 'Helsi', 'Umbul Tebu', '1999-08-16', 'P', 2017, 6, 9, 2),
(142, 17753060, 'Irfan', 'Krui', '1999-12-21', 'L', 2017, 6, 10, 2),
(143, 17753061, 'Indah', 'Terbanggi Besar', '1999-01-14', 'P', 2017, 7, 1, 3),
(144, 17753062, 'Putri Utama', 'Purbolinggo', '1999-08-18', 'P', 2017, 7, 2, 3),
(145, 17753063, 'Mudo', 'Tanjung Tua', '1999-12-12', 'L', 2017, 7, 3, 3),
(146, 17753064, 'Rima', 'Yogyakarta', '1999-05-09', 'P', 2017, 7, 4, 3),
(147, 17753065, 'Laras', 'Gunung Terang', '1997-11-08', 'P', 2017, 7, 5, 3),
(148, 17753066, 'Sindi', 'Tebing', '1999-11-13', 'P', 2017, 7, 6, 3),
(149, 17753067, 'Waway', 'Way Kuyung', '1999-08-26', 'P', 2017, 7, 7, 3),
(150, 17753068, 'Agis', 'pringsewu', '1999-02-12', 'P', 2017, 7, 8, 3),
(151, 17753069, 'Farah', 'Perum Polri', '1999-08-16', 'P', 2017, 7, 9, 3),
(152, 17753070, 'Agil', 'Tanggamus', '1999-08-21', 'L', 2017, 7, 10, 3),
(153, 17753071, 'Cindy', 'Kalianda', '1999-10-14', 'P', 2017, 8, 1, 4),
(154, 17753072, 'Tiara', 'Surabaya', '1999-10-18', 'P', 2017, 8, 2, 4),
(155, 17753073, 'Sony', 'Tanggamus', '1999-03-22', 'L', 2017, 8, 3, 4),
(156, 17753074, 'Denti', 'Surakarta', '1999-10-09', 'P', 2017, 8, 4, 4),
(157, 17753075, 'Frizka', 'Medan', '1997-12-07', 'P', 2017, 8, 5, 4),
(158, 17753076, 'Fingga', 'Wana', '1999-11-10', 'P', 2017, 8, 6, 4),
(159, 17753077, 'Susi', 'Palembapang', '1999-08-21', 'P', 2017, 8, 7, 4),
(160, 17753078, 'Debyana', 'Tanggamus', '1999-12-16', 'P', 2017, 8, 8, 4),
(161, 17753079, 'Diba', 'Simbaringin', '1999-11-26', 'P', 2017, 8, 9, 4),
(162, 17753080, 'Attalariq', 'Kecapi', '1999-11-21', 'L', 2017, 8, 10, 4),
(163, 17753081, 'Zeta', 'Kalianda', '1999-10-11', 'P', 2017, 9, 1, 1),
(164, 17753082, 'Sarah', 'Kalimantan', '1999-09-12', 'P', 2017, 9, 2, 1),
(165, 17753083, 'Lukman', 'Palu', '1999-03-22', 'L', 2017, 9, 3, 1),
(166, 17753084, 'Putri', 'Jakarta', '1999-10-19', 'P', 2017, 9, 4, 1),
(167, 17753085, 'Dona', 'Medan', '1997-12-07', 'P', 2017, 9, 5, 1),
(168, 17753086, 'Lia', 'Terbanggi Besar', '1999-12-11', 'P', 2017, 9, 6, 1),
(169, 17753087, 'Ravi', 'Palembapang', '1999-08-21', 'L', 2017, 9, 7, 1),
(170, 17753088, 'Figo', 'KotaBaru', '1999-11-16', 'L', 2017, 9, 8, 1),
(171, 17753089, 'Kurnia', 'Kalianda', '1999-11-02', 'L', 2017, 9, 9, 1),
(172, 17753090, 'Deni', 'Sukabaru', '1999-10-22', 'L', 2017, 9, 10, 1),
(173, 17753091, 'Sukiman', 'Sulawesi Selatan', '1997-11-14', 'L', 2017, 10, 1, 1),
(174, 17753092, 'Made', 'Jakarta', '1999-12-05', 'L', 2017, 10, 2, 1),
(175, 17753093, 'Damin', 'Donggala', '1999-01-11', 'L', 2017, 10, 3, 1),
(176, 17753094, 'Jannati', 'Tanjung Seneng', '1999-05-11', 'P', 2017, 10, 4, 1),
(177, 17753095, 'Suroso', 'Merak Belantung', '1997-11-07', 'L', 2017, 10, 5, 1),
(178, 17753096, 'Tika', 'Sribawono', '1999-11-23', 'P', 2017, 10, 6, 1),
(179, 17753097, 'Zulkifli', 'Negara Saka', '1999-08-09', 'P', 2017, 10, 7, 1),
(180, 17753098, 'Widya', 'KotaBaru', '1999-09-21', 'P', 2017, 10, 8, 1),
(181, 17753099, 'Naysa', 'Melinting', '1999-07-06', 'P', 2017, 10, 9, 1),
(182, 17753100, 'Surya', 'Mesuji', '1999-02-21', 'L', 2017, 10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `idpendidikan` int(11) DEFAULT NULL,
  `nmpendidikan` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`idpendidikan`, `nmpendidikan`) VALUES
(1, 'TK'),
(2, 'SD'),
(3, 'SMP'),
(4, 'MTs'),
(5, 'SMA'),
(6, 'MAN'),
(7, 'SMK'),
(8, 'S1'),
(9, 'S2'),
(10, 'S3');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `idprodi` int(11) NOT NULL,
  `nmprodi` varchar(24) DEFAULT NULL,
  `akreditasi` varchar(1) DEFAULT NULL,
  `thn_berdiri` int(11) DEFAULT NULL,
  `idjenjang` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`idprodi`, `nmprodi`, `akreditasi`, `thn_berdiri`, `idjenjang`) VALUES
(1, 'AKUNTANSI', 'A', 2012, '2'),
(4, 'MANAJEMEN INFORMATIKA', 'B', 2015, '1'),
(5, 'AGRIBISNIS', 'B', 2012, '2'),
(6, 'Agrobisnis Pangan', 'B', 2007, '0'),
(7, 'AGRIBISNIS', 'B', 2012, '2');

-- --------------------------------------------------------

--
-- Table structure for table `status_akademik`
--

CREATE TABLE `status_akademik` (
  `idstatusaka` int(11) DEFAULT NULL,
  `nmstatusaka` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status_akademik`
--

INSERT INTO `status_akademik` (`idstatusaka`, `nmstatusaka`) VALUES
(1, 'AKTIF'),
(2, 'CUTI'),
(3, 'PINDAH'),
(4, 'DO'),
(5, 'LULUS'),
(6, 'TIDAK LULUS'),
(7, 'TIDAK AKTIF'),
(8, 'RESIGN'),
(9, 'SKORS'),
(10, 'MENGUNDURKAN DIRI');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `level` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'admin', 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'user', 'mahasiswa'),
(3, 'dosen', 'dosen', 'dosen', 'dosen'),
(4, 'M Ilham Yusuf Gumay', '17753042', 'user', 'mahasiswa'),
(5, 'eko win kenali', '6', 'user', 'dosen'),
(6, 'stephani', '17753058', '17753058', 'mahasiswa'),
(7, 'putri', '17753048', '17753048', 'mahasiswa'),
(8, 'salza', '17753055', '17753055', 'mahasiswa'),
(9, 'lidia', '17753040', '17753040', 'mahasiswa'),
(10, 'harlis', '17753070', '17753070', 'mahasiswa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`idprodi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `idprodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
