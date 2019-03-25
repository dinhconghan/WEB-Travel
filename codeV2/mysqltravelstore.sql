-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2019 at 05:10 AM
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
-- Database: `travelstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `MaAdmin` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `DienThoai` varchar(11) DEFAULT NULL,
  `CMND` varchar(9) NOT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `NgayDangKy` datetime DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT 'Content/Images/Upload/Avatar_Admin.jpg',
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int(11) NOT NULL,
  `TenNguoiBL` varchar(50) DEFAULT NULL,
  `TieuDeBL` varchar(50) DEFAULT NULL,
  `NoiDungBL` text,
  `NgayBL` datetime DEFAULT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ct_donhang`
--

CREATE TABLE `ct_donhang` (
  `MaCTDH` int(11) NOT NULL,
  `MaDH` int(11) DEFAULT NULL,
  `MaSP` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `Gia` decimal(10,0) DEFAULT NULL,
  `Thanhtien` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `MaDD` int(11) NOT NULL,
  `TenDD` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDH` int(11) NOT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `NgayMua` datetime DEFAULT NULL,
  `NgayGiao` datetime DEFAULT NULL,
  `TenNguoiNhan` varchar(50) DEFAULT NULL,
  `DiaChiNhan` varchar(50) DEFAULT NULL,
  `DienThoaiNhan` varchar(11) DEFAULT NULL,
  `HTThanhToan` bit(1) DEFAULT b'0',
  `Trigia` decimal(10,0) DEFAULT NULL,
  `Dagiao` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `Id` int(11) NOT NULL,
  `MaGH` varchar(50) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `Thanhtien` decimal(10,0) DEFAULT NULL,
  `NgayMua` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `DienThoai` varchar(11) DEFAULT NULL,
  `CMND` varchar(9) NOT NULL,
  `NgaySinh` datetime DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `NgayDangKy` datetime DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT 'Content/Images/Upload/avatar.jpg',
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `MaLH` int(11) NOT NULL,
  `MaKH` int(11) DEFAULT NULL,
  `Avatar` varchar(255) DEFAULT NULL,
  `TenNguoiGui` varchar(200) NOT NULL,
  `NoiDung` varchar(1000) NOT NULL,
  `NgayGui` datetime DEFAULT NULL,
  `LuotGui` bit(1) DEFAULT NULL,
  `DaDocKH` bit(1) DEFAULT NULL,
  `DaDocAD` bit(1) DEFAULT NULL,
  `Anhien` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaitintuc`
--

CREATE TABLE `loaitintuc` (
  `MaLTT` int(11) NOT NULL,
  `TenLTT` varchar(255) NOT NULL,
  `TomTat` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `NgayCapNhat` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `MaMenu` int(11) NOT NULL,
  `TenMenu` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  `Thutu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen_admin`
--

CREATE TABLE `phanquyen_admin` (
  `MaPQ` int(11) NOT NULL,
  `MaAdmin` int(11) DEFAULT NULL,
  `PQ_Menu` bit(1) DEFAULT NULL,
  `PQ_Slider` bit(1) DEFAULT NULL,
  `PQ_NhaSanXuat` bit(1) DEFAULT NULL,
  `PQ_SanPham` bit(1) DEFAULT NULL,
  `PQ_KhachHang` bit(1) DEFAULT NULL,
  `PQ_DonHang` bit(1) DEFAULT NULL,
  `PQ_TinTuc` bit(1) DEFAULT NULL,
  `PQ_QuangCao` bit(1) DEFAULT NULL,
  `PQ_LienHe` bit(1) DEFAULT NULL,
  `PQ_GioiThieu` bit(1) DEFAULT NULL,
  `PQ_QuanTriAdmin` bit(1) DEFAULT NULL,
  `PQ_SiteMap` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `quangcao`
--

CREATE TABLE `quangcao` (
  `MaQC` int(11) NOT NULL,
  `TenQC` varchar(255) NOT NULL,
  `TenCty` varchar(200) NOT NULL,
  `UrlHinh` varchar(100) DEFAULT NULL,
  `LinkUrl` varchar(100) DEFAULT NULL,
  `vitri` varchar(1) NOT NULL,
  `Ngaybatdau` datetime DEFAULT NULL,
  `Ngayhethan` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) DEFAULT NULL,
  `GiaHienTai` decimal(10,0) NOT NULL DEFAULT '0',
  `GiaCu` decimal(10,0) NOT NULL DEFAULT '0',
  `MoTa` text,
  `MoTaCT` text,
  `DanhGiaCT` text,
  `MaDD` int(11) NOT NULL,
  `SLDaBan` int(11) NOT NULL DEFAULT '0',
  `KhuyenMai` float NOT NULL DEFAULT '0',
  `LuotXem` int(11) DEFAULT '0',
  `NgayCapNhat` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `MaSlider` int(11) NOT NULL,
  `UrlHinh` varchar(100) DEFAULT NULL,
  `LinkUrl` varchar(100) DEFAULT NULL,
  `Thutu` int(11) DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTin` int(11) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `TomTat` varchar(255) NOT NULL,
  `UrlHinh` varchar(255) NOT NULL,
  `MaLTT` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `LuotXem` int(11) DEFAULT '0',
  `NgayCapNhat` datetime DEFAULT NULL,
  `AnHien` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`MaAdmin`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`),
  ADD KEY `FK_BL_SP` (`MaSP`),
  ADD KEY `FK_BL_KH` (`MaKH`);

--
-- Indexes for table `ct_donhang`
--
ALTER TABLE `ct_donhang`
  ADD PRIMARY KEY (`MaCTDH`),
  ADD KEY `FK_CT_DonHang_DonHang` (`MaDH`),
  ADD KEY `FK_CT_DonHang_SP` (`MaSP`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`MaDD`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDH`),
  ADD KEY `FK_DonHang_KhachHang` (`MaKH`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_GioHang_SanPham` (`MaSP`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`MaLH`),
  ADD KEY `FK_LH_KH` (`MaKH`);

--
-- Indexes for table `loaitintuc`
--
ALTER TABLE `loaitintuc`
  ADD PRIMARY KEY (`MaLTT`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MaMenu`);

--
-- Indexes for table `phanquyen_admin`
--
ALTER TABLE `phanquyen_admin`
  ADD PRIMARY KEY (`MaPQ`),
  ADD KEY `FK_PQAdmin_Admin` (`MaAdmin`);

--
-- Indexes for table `quangcao`
--
ALTER TABLE `quangcao`
  ADD PRIMARY KEY (`MaQC`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `FK_SP_DD` (`MaDD`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`MaSlider`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTin`),
  ADD KEY `FK_TT_LTT` (`MaLTT`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `MaAdmin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ct_donhang`
--
ALTER TABLE `ct_donhang`
  MODIFY `MaCTDH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `MaDD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `MaLH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaitintuc`
--
ALTER TABLE `loaitintuc`
  MODIFY `MaLTT` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `MaMenu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phanquyen_admin`
--
ALTER TABLE `phanquyen_admin`
  MODIFY `MaPQ` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quangcao`
--
ALTER TABLE `quangcao`
  MODIFY `MaQC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `MaSlider` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `MaTin` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `FK_BL_KH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `FK_BL_SP` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `ct_donhang`
--
ALTER TABLE `ct_donhang`
  ADD CONSTRAINT `FK_CT_DonHang_DonHang` FOREIGN KEY (`MaDH`) REFERENCES `donhang` (`MaDH`),
  ADD CONSTRAINT `FK_CT_DonHang_SP` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DonHang_KhachHang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `FK_GioHang_SanPham` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Constraints for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD CONSTRAINT `FK_LH_KH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `phanquyen_admin`
--
ALTER TABLE `phanquyen_admin`
  ADD CONSTRAINT `FK_PQAdmin_Admin` FOREIGN KEY (`MaAdmin`) REFERENCES `admin` (`MaAdmin`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SP_DD` FOREIGN KEY (`MaDD`) REFERENCES `diadiem` (`MaDD`);

--
-- Constraints for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `FK_TT_LTT` FOREIGN KEY (`MaLTT`) REFERENCES `loaitintuc` (`MaLTT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
