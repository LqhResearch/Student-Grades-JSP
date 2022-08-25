-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2022 at 03:35 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ms-grades`
--

-- --------------------------------------------------------

--
-- Table structure for table `bang_diem`
--

CREATE TABLE `bang_diem` (
  `MaBD` int(11) NOT NULL,
  `MaLop` varchar(12) NOT NULL,
  `MaHP` varchar(6) NOT NULL,
  `MaSV` varchar(9) NOT NULL,
  `DiemQT` varchar(5) NOT NULL,
  `DiemThi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bo_mon`
--

CREATE TABLE `bo_mon` (
  `MaBM` int(11) NOT NULL,
  `TenBM` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bo_mon`
--

INSERT INTO `bo_mon` (`MaBM`, `TenBM`) VALUES
(1, 'Công nghệ thông tin'),
(2, 'Cơ khí - Động lực'),
(3, 'Điện - Điện tử'),
(4, 'Xây dựng');

-- --------------------------------------------------------

--
-- Table structure for table `dan_toc`
--

CREATE TABLE `dan_toc` (
  `MaDT` int(11) NOT NULL,
  `TenDT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dan_toc`
--

INSERT INTO `dan_toc` (`MaDT`, `TenDT`) VALUES
(1, 'Kinh'),
(2, 'Tày'),
(3, 'Thái'),
(4, 'Mường'),
(5, 'Khmer'),
(6, 'Hoa'),
(7, 'Nùng'),
(8, 'H Mông'),
(9, 'Dao'),
(10, 'Gia Rai'),
(11, 'Ê Đê'),
(12, 'Ba Na'),
(13, 'Sán Chay'),
(14, 'Chăm'),
(15, 'Kơ Ho'),
(16, 'Xơ Đăng'),
(17, 'Sán Dìu'),
(18, 'Hrê'),
(19, 'Ra Glai'),
(20, 'Mnông'),
(21, 'Thổ'),
(22, 'Stiêng'),
(23, 'Khơ mú'),
(24, 'Bru - Vân Kiều'),
(25, 'Cơ Tu'),
(26, 'Giáy'),
(27, 'Tà Ôi'),
(28, 'Mạ'),
(29, 'Giẻ-Triêng'),
(30, 'Co'),
(31, 'Chơ Ro'),
(32, 'Xinh Mun'),
(33, 'Hà Nhì'),
(34, 'Chu Ru'),
(35, 'Lào'),
(36, 'La Chí'),
(37, 'Kháng'),
(38, 'Phù Lá'),
(39, 'La Hủ'),
(40, 'La Ha'),
(41, 'Pà Thẻn'),
(42, 'Lự'),
(43, 'Ngái'),
(44, 'Chứt'),
(45, 'Lô Lô'),
(46, 'Mảng'),
(47, 'Cơ Lao'),
(48, 'Bố Y'),
(49, 'Cống'),
(50, 'Si La'),
(51, 'Pu Péo'),
(52, 'Rơ Măm'),
(53, 'Brâu'),
(54, 'Ơ Đu');

-- --------------------------------------------------------

--
-- Table structure for table `giang_vien`
--

CREATE TABLE `giang_vien` (
  `MaGV` varchar(5) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `GioiTinh` enum('Nam','Nữ') DEFAULT NULL,
  `NgaySinh` date NOT NULL,
  `Sdt` varchar(11) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SoCCCD` varchar(12) NOT NULL,
  `GhiChu` text NOT NULL,
  `MaNganhDT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giang_vien`
--

INSERT INTO `giang_vien` (`MaGV`, `HoTen`, `GioiTinh`, `NgaySinh`, `Sdt`, `DiaChi`, `Email`, `SoCCCD`, `GhiChu`, `MaNganhDT`) VALUES
('GV001', 'Nguyễn Bá Nhiệm', 'Nam', '1970-08-11', '0983303609', 'Trà Vinh', 'nhiemnb@tvu.edu.vn', '084123456789', '', 2),
('GV002', 'Dương Ngọc Vân Khanh', 'Nam', '1970-08-11', '0123457899', 'Trà Vinh', 'vankhanh@tvu.edu.vn', '087987654321', '', 1),
('GV003', 'Khấu Văn Nhựt', 'Nam', '1970-08-11', '0123456789', 'Trà Vinh', 'nhutkhau@tvu.edu.vn', '087987654321', '', 2),
('GV004', 'Phạm Thị Trúc Mai', 'Nữ', '1970-08-11', '0123456789', 'Trà Vinh', 'pttmai@tvu.edu.vn', '087987654321', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoc_phan`
--

CREATE TABLE `hoc_phan` (
  `MaHP` varchar(6) NOT NULL,
  `TenHP` varchar(255) NOT NULL,
  `STC` int(11) NOT NULL,
  `STCLyThuyet` int(11) NOT NULL,
  `STCThucHanh` int(11) NOT NULL,
  `LoaiHP` enum('BB','TC') DEFAULT NULL,
  `MaNganhDT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoc_phan`
--

INSERT INTO `hoc_phan` (`MaHP`, `TenHP`, `STC`, `STCLyThuyet`, `STCThucHanh`, `LoaiHP`, `MaNganhDT`) VALUES
('220060', 'Hệ quản trị cơ sở dữ liệu', 3, 2, 1, 'BB', 1),
('220064', 'Chuyên đề ASP.NET', 3, 2, 1, 'BB', 1),
('220067', 'Phát triển ứng dụng Web với Servlet & Java Server Page', 3, 2, 1, 'TC', 1),
('220231', 'Chuyên đề điện toán đám mây', 4, 2, 2, 'BB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `loai_tk`
--

CREATE TABLE `loai_tk` (
  `MaLoaiTK` int(11) NOT NULL,
  `TenLoaiTK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai_tk`
--

INSERT INTO `loai_tk` (`MaLoaiTK`, `TenLoaiTK`) VALUES
(1, 'Quản trị viên'),
(2, 'Giảng viên'),
(3, 'Sinh viên');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `MaLop` varchar(12) NOT NULL,
  `TenLop` varchar(255) NOT NULL,
  `MaNganhDT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`MaLop`, `TenLop`, `MaNganhDT`) VALUES
('DA19TTA', 'Đại học Công nghệ thông tin A 2019', 1),
('DA19TTB', 'Đại học Công nghệ thông tin B 2019', 1),
('DA20TTA', 'Đại học Công nghệ thông tin A 2020', 1),
('DA20TTB', 'Đại học Công nghệ thông tin B 2020', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nganh_dt`
--

CREATE TABLE `nganh_dt` (
  `MaNganhDT` int(11) NOT NULL,
  `TenNganhDT` varchar(255) NOT NULL,
  `MaBM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nganh_dt`
--

INSERT INTO `nganh_dt` (`MaNganhDT`, `TenNganhDT`, `MaBM`) VALUES
(1, 'Công nghệ thông tin', 1),
(2, 'Quản trị mạng', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phan_cong`
--

CREATE TABLE `phan_cong` (
  `PhanCongID` int(11) NOT NULL,
  `MaLop` varchar(12) NOT NULL,
  `MaHP` varchar(6) NOT NULL,
  `MaGV` varchar(5) NOT NULL,
  `NamHoc` varchar(11) NOT NULL,
  `HocKy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sinh_vien`
--

CREATE TABLE `sinh_vien` (
  `MaSV` varchar(9) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `GioiTinh` enum('Nam','Nữ') NOT NULL,
  `NgaySinh` date NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `Sdt` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `MaDT` int(11) NOT NULL,
  `SoCCCD` varchar(12) NOT NULL,
  `TonGiao` varchar(255) NOT NULL DEFAULT 'Không',
  `GhiChu` text NOT NULL,
  `MaLop` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sinh_vien`
--

INSERT INTO `sinh_vien` (`MaSV`, `HoTen`, `GioiTinh`, `NgaySinh`, `DiaChi`, `Sdt`, `Email`, `MaDT`, `SoCCCD`, `TonGiao`, `GhiChu`, `MaLop`) VALUES
('110119004', 'Kiên Thanh Bình', 'Nam', '2001-01-01', 'Trà Vinh', '0123456789', '110119004@st.tvu.edu.vn', 1, '084123456789', 'Không', '', 'DA19TTA'),
('110119006', 'Trần Quốc Đảm', 'Nam', '2001-01-01', 'Trà Vinh', '0123456789', '110119006@st.tvu.edu.vn', 1, '084123456789', 'Không', '', 'DA19TTA'),
('110119014', 'Lý Quốc Hưng', 'Nam', '2001-01-01', 'Trà Vinh', '0123456789', '110119014@st.tvu.edu.vn', 1, '084123456789', 'Không', '', 'DA19TTA'),
('110119052', 'Võ Duy Thông', 'Nam', '2001-01-01', 'Trà Vinh', '0123456789', '110119052@st.tvu.edu.vn', 1, '084123456789', 'Không', '', 'DA19TTA'),
('110119063', 'Đỗ Thành Ý', 'Nam', '2001-01-01', 'Trà Vinh', '0123456789', '110119063@st.tvu.edu.vn', 1, '084123456789', 'Không', '', 'DA19TTA'),
('110119080', 'Lý Kim Lam', 'Nam', '2001-01-01', 'Trà Vinh', '0123456789', '110119080@st.tvu.edu.vn', 1, '084123456789', 'Không', '', 'DA19TTA');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `MaLoaiTK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`TenDangNhap`, `MatKhau`, `HoTen`, `MaLoaiTK`) VALUES
('110119080', '202cb962ac59075b964b07152d234b70', 'Lý Kim Lam', 3),
('admin', '202cb962ac59075b964b07152d234b70', 'LQH', 1),
('GV001', '202cb962ac59075b964b07152d234b70', 'Nguyễn Bá Nhiệm', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bang_diem`
--
ALTER TABLE `bang_diem`
  ADD PRIMARY KEY (`MaBD`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaHP` (`MaHP`),
  ADD KEY `MaSV` (`MaSV`);

--
-- Indexes for table `bo_mon`
--
ALTER TABLE `bo_mon`
  ADD PRIMARY KEY (`MaBM`);

--
-- Indexes for table `dan_toc`
--
ALTER TABLE `dan_toc`
  ADD PRIMARY KEY (`MaDT`);

--
-- Indexes for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `MaNganhDT` (`MaNganhDT`);

--
-- Indexes for table `hoc_phan`
--
ALTER TABLE `hoc_phan`
  ADD PRIMARY KEY (`MaHP`),
  ADD KEY `MaNganhDT` (`MaNganhDT`);

--
-- Indexes for table `loai_tk`
--
ALTER TABLE `loai_tk`
  ADD PRIMARY KEY (`MaLoaiTK`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`MaLop`),
  ADD KEY `MaNganhDT` (`MaNganhDT`);

--
-- Indexes for table `nganh_dt`
--
ALTER TABLE `nganh_dt`
  ADD PRIMARY KEY (`MaNganhDT`),
  ADD KEY `MaBM` (`MaBM`);

--
-- Indexes for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD PRIMARY KEY (`PhanCongID`),
  ADD KEY `MaGV` (`MaGV`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaHP` (`MaHP`);

--
-- Indexes for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD PRIMARY KEY (`MaSV`),
  ADD KEY `MaLop` (`MaLop`),
  ADD KEY `MaDT` (`MaDT`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`TenDangNhap`),
  ADD KEY `MaLoaiTK` (`MaLoaiTK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bang_diem`
--
ALTER TABLE `bang_diem`
  MODIFY `MaBD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bo_mon`
--
ALTER TABLE `bo_mon`
  MODIFY `MaBM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dan_toc`
--
ALTER TABLE `dan_toc`
  MODIFY `MaDT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `loai_tk`
--
ALTER TABLE `loai_tk`
  MODIFY `MaLoaiTK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nganh_dt`
--
ALTER TABLE `nganh_dt`
  MODIFY `MaNganhDT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phan_cong`
--
ALTER TABLE `phan_cong`
  MODIFY `PhanCongID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bang_diem`
--
ALTER TABLE `bang_diem`
  ADD CONSTRAINT `bang_diem_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `bang_diem_ibfk_2` FOREIGN KEY (`MaHP`) REFERENCES `hoc_phan` (`MaHP`),
  ADD CONSTRAINT `bang_diem_ibfk_3` FOREIGN KEY (`MaSV`) REFERENCES `sinh_vien` (`MaSV`);

--
-- Constraints for table `giang_vien`
--
ALTER TABLE `giang_vien`
  ADD CONSTRAINT `giang_vien_ibfk_1` FOREIGN KEY (`MaNganhDT`) REFERENCES `nganh_dt` (`MaNganhDT`);

--
-- Constraints for table `hoc_phan`
--
ALTER TABLE `hoc_phan`
  ADD CONSTRAINT `hoc_phan_ibfk_1` FOREIGN KEY (`MaNganhDT`) REFERENCES `nganh_dt` (`MaNganhDT`);

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`MaNganhDT`) REFERENCES `nganh_dt` (`MaNganhDT`);

--
-- Constraints for table `nganh_dt`
--
ALTER TABLE `nganh_dt`
  ADD CONSTRAINT `nganh_dt_ibfk_1` FOREIGN KEY (`MaBM`) REFERENCES `bo_mon` (`MaBM`);

--
-- Constraints for table `phan_cong`
--
ALTER TABLE `phan_cong`
  ADD CONSTRAINT `phan_cong_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `phan_cong_ibfk_2` FOREIGN KEY (`MaHP`) REFERENCES `hoc_phan` (`MaHP`);

--
-- Constraints for table `sinh_vien`
--
ALTER TABLE `sinh_vien`
  ADD CONSTRAINT `sinh_vien_ibfk_1` FOREIGN KEY (`MaLop`) REFERENCES `lop` (`MaLop`),
  ADD CONSTRAINT `sinh_vien_ibfk_2` FOREIGN KEY (`MaDT`) REFERENCES `dan_toc` (`MaDT`);

--
-- Constraints for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD CONSTRAINT `tai_khoan_ibfk_1` FOREIGN KEY (`MaLoaiTK`) REFERENCES `loai_tk` (`MaLoaiTK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
