-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2022 at 06:00 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busticketci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'STARK', 'aswin', '$2y$10$oXbnlOo4JmM8AzISuE0foOAt2QrQ7cfwUuMTevqlHbXgD5FLLvpQq', 'assets/backend/img/stark.jpg', 'ajayaswin521@gmail.com', '1', 1, '1552819097'),
('ADM0002','ADMIN','admin','$2y$10$AiAWX9D.47SehVOSHnO1/Ooe6SnlBeAxccfcwX16yRVEwd6kpls/2','assets/backend/img/default.png','adminbus@gmail.com','1',1,'1552819098');
-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'SBI', 'STATE BANK OF INDIA', '600000521', 'assets/frontend/img/bank/sbibank.png'),
('BNK0002', 'KVB', 'KARUR VYSYA BANK', '107556540', 'assets/frontend/img/bank/kvbbank.png'),
('BNK0003', 'BOB', 'BANK OF BARODA', '800140000', 'assets/frontend/img/bank/bobbank.png'),
('BNK0004', 'IOB', 'INDIAN OVERSEAS BANK', '300124589', 'assets/frontend/img/bank/iobbank.png'),
('BNK0005', 'HDFC', 'HDFC', '100025001', '/assets/frontend/img/bank/hdfcbank.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'Stark Tours', 'TN5745', 23, 1, '--'),
('B002', 'Janwin Travels', 'TN8576', 23, 1, '--'),
('B003', 'Vk Express', 'TN7416', 23, 1, '--'),
('B004', 'Chakzz Travels\n', 'TN6824', 23, 1, '--'),
('B005', 'Arju Express\n', 'TN3015', 23, 1, '--'),
('B006', 'Aarif Trails', 'TN9857', 23, 1, '--'),
('B007', 'Ash Express', 'TN0680', 23, 1, NULL),
('B008', 'Cosmo Tours\n', 'TN8866', 23, 1, NULL),
('B009', 'Sky Travels', 'TN0213', 23, 1, NULL),
('B0010', 'Rolling Escapes', 'TN0215', 23, 1, '--'),
('B0011', 'Trailblaze Express', 'TN2325', 23, 1, '--'),
('B0012', 'Express Planet', 'TN8643', 23, 1, '--'),
('B0013', 'Ff Travel\n', 'TN7712', 23, 1, '--'),
('B0014', 'NomadXpress\n', 'TN0654', 23, 1, '--'),
('B0015', 'FunRide Express', 'TN1212', 23, 1, '--'),
('B0016', 'JAJ Travels', 'TN7230', 23, 1, NULL),
('B0017', 'Star Transport\n', 'TN8430', 23, 1, NULL),
('B0018', 'Twinkle Ride', 'TN0823', 23, 1, NULL),
('B0019', 'JoyfulJivers\n', 'TN8746', 23, 1, NULL),
('B0020', 'Trip Trailers', 'TN6245', 23, 1, NULL);


-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B001', 'TJ001', 'TJ001', 'MADURAI', '07:00:00', '11:15:00', '800'),
('J0002', 'B001', 'TJ002', 'TJ002', 'COIMBATORE', '09:00:00', '01:50:00', '600'),
('J0003', 'B002', 'TJ003', 'TJ003', 'OOTY', '11:30:00', '05:30:00', '250'),
('J0004', 'B002', 'TJ004', 'TJ004', 'TRICHY', '09:00:00', '10:30:00', '800'),
('J0005', 'B003', 'TJ005', 'TJ005', 'VIRUDHACHALAM', '08:00:00', '11:45:00', '450'),
('J0006', 'B003', 'TJ006', 'TJ006', 'VIRUDHUNAGAR', '08:30:00', '04:15:00', '500'),
('J0007', 'B004', 'TJ007', 'TJ007', 'THIRUVANNAMALAI', '10:00:00', '11:00:00', '300'),
('J0008', 'B004', 'TJ008', 'TJ008', 'KADALUR', '08:45:00', '01:55:00', '850'),
('J0009', 'B005', 'TJ009', 'TJ009', 'NAGAR KOVIL', '09:45:00', '11:45:00', '250'),
('J0010', 'B005', 'TJ010', 'TJ010', 'VELLORE', '07:30:00', '02:00:00', '300'),
('J0011', 'B006', 'TJ011', 'TJ011', 'SRIVILLIPURHUR', '09:00:00', '11:45:00', '1000'),
('J0012', 'B006', 'TJ012', 'TJ012', 'THANJAVUR', '08:45:00', '11:50:00', '350'),
('J0013', 'B007', 'TJ013', 'TJ013', 'THIRUPATHI', '09:00:00', '04:15:00', '450'),
('J0014', 'B007', 'TJ014', 'TJ014', 'BANGALORE', '07:30:00', '06:00:00', '400'),
('J0015', 'B008', 'TJ015', 'TJ015', 'THIRUTHANI', '10:45:00', '02:45:00', '350'),
('J0016', 'B008', 'TJ016', 'TJ016', 'HYDERABAD', '09:15:00', '01:00:00', '600'),
('J0017', 'B009', 'TJ017', 'TJ017', 'SALEM', '08:50:00', '01:55:00', '300'),
('J0018', 'B009', 'TJ018', 'TJ018', 'TINDIVANAM', '09:00:00', '11:30:00', '350'),
('J0019', 'B0010', 'TJ019', 'TJ019', 'VILLUPURAM', '08:30:00', '11:50:00', '500'),
('J0020', 'B0010', 'TJ020', 'TJ020', 'KALAHASTI', '10:30:00', '03:10:00', '200');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konfirmasi`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--




-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('CA0001', 'ASWIN', '$2y$10$oXbnlOo4JmM8AzISuE0foOAt2QrQ7cfwUuMTevqlHbXgD5FLLvpQq', '02564651321564', 'ASWIN S\n', 'No.59, V.S.V. KOVIL STREET, MYLAPORE, CHENNAI-04', 'ajayaswin521@gmail.com', '7014445450', 'assets/frontend/img/default.png', 1, '1552202266');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`kd_sub_menu`, `kd_menu`, `title_sub_menu`, `url_sub_menu`, `is_active_sub_menu`) VALUES
(0, 1, 'Dashboard', 'backend/home', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--



-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_pelanggan`
--

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_token_pelanggan`
--




-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL,
  `kd_des` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`,`kd_des`) VALUES
('TJ001', 'CHENNAI', '', 'CHENNAI', 'MADURAI'),
('TJ002', 'MADURAI', '', 'MADURAI', 'COIMBATORE'),
('TJ003', 'COIMBATORE', '', 'COIMBATORE', 'OOTY'),
('TJ004', 'THIRUPUR', '', 'THIRUPUR', 'TRICHY'),
('TJ005', 'PUDUKKOTTAI', '', 'PUDUKKOTTAI', 'VIRUDHACHALAM'),
('TJ006', 'ERODE', '', 'ERODE', 'VIRUDHUNAGAR'),
('TJ007', 'KANCHIPURAM', '', 'KANCHIPURAM', 'THIRUVANNAMALAI'),
('TJ008', 'SALEM', '', 'SALEM', 'KADALUR'),
('TJ009', 'KANNIYAKUMARI', '', 'KANNIYAKUMARI', 'NAGAR KOVIL'),
('TJ010', 'THIRUVANNAMALAI', '', 'THIRUVANNAMALAI', 'VELLORE'),
('TJ011', 'TIRUNELVELI', '', 'TIRUNELVELI', 'SRIVILLIPUTHUR'),
('TJ012', 'KUMBAKONAM', '', 'KUMBAKONAM', 'THANJAVUR'),
('TJ013', 'VILLUPURAM', '', 'VILLUPURAM', 'THIRUPATHI'),
('TJ014', 'MYSORE', '', 'MYSORE', 'BANGALORE'),
('TJ015', 'KALAHASTI', '', 'KALAHASTI', 'THIRUTHANI'),
('TJ016', 'VIJAYAWADA', '', 'VIJAYAWADA', 'HYDERABAD'),
('TJ017', 'DHARMAPURI', '', 'DHARMAPURI', 'SALEM'),
('TJ018', 'VATHALAGUNDU', '', 'VATHALAGUNDU', 'TINDIVANAM'),
('TJ019', 'SEERKAZHI', '', 'SEERKAZHI', 'VILLUPURAM'),
('TJ020', 'OOTHU KOTTAI', '', 'VELLORE', 'KALAHASTI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`kd_sub_menu`),
  ADD KEY `kd_menu` (`kd_menu`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  ADD PRIMARY KEY (`kd_token`);

--
-- Indexes for table `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  MODIFY `kd_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
