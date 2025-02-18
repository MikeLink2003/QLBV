-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 09, 2024 lúc 07:05 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `benhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `benhnhan`
--

CREATE TABLE `benhnhan` (
  `MaBN` int(11) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL,
  `DiaChi` varchar(50) DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `CCCD` int(11) DEFAULT NULL,
  `TrangThai` varchar(20) DEFAULT NULL,
  `BHYT` varchar(15) DEFAULT NULL,
  `LoaiBHYT` int(11) DEFAULT NULL,
  `IMG` varchar(255) DEFAULT NULL,
  `TenTK` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `benhnhan`
--

INSERT INTO `benhnhan` (`MaBN`, `HoTen`, `NgaySinh`, `GioiTinh`, `DiaChi`, `SDT`, `CCCD`, `TrangThai`, `BHYT`, `LoaiBHYT`, `IMG`, `TenTK`) VALUES
(1, 'Nguyễn Tiến Đạt', '2003-05-15', 'Nam', '123 Đường A, TP.HCM', 1234567890, 123456789, 'Đang điều trị', '1234567890123', NULL, NULL, '0353627994'),
(2, 'Nguyễn Phi Hùng', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0123456789'),
(3, 'Nguyễn Thị Nhật Thi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0112233445'),
(4, 'Nguyễn Thị Ánh Vân', NULL, NULL, NULL, NULL, NULL, 'Đã khám', NULL, NULL, NULL, '0311223344'),
(5, 'Trần Trọng Nhân', '2006-01-03', NULL, 'Nguyễn Văn Nghi', 223231234, 123456789, NULL, 'HC4010110169971', 1, NULL, NULL),
(6, 'Phan Chí Hiếu', '2008-01-08', 'Nam', 'Nguyễn Văn Nghi', 123456789, 123456789, 'Nhập viện', '0123456789', 4, NULL, NULL),
(7, 'Phan Bảo Chí', '2004-01-21', 'Nam', 'Nguyễn Văn Bảo', 998877665, 123456789, 'Khám bệnh', '01234567808', 4, NULL, NULL),
(11, 'Lữ Huy Hoàng', '2004-06-08', 'Nam', 'Nguyễn Văn Nghi', 324767523, 123456779, 'Khám bệnh', '0123456789', 4, NULL, NULL),
(10, 'Phan Cao Nhật Long', '2012-01-09', 'Nam', 'Nguyễn Văn Nghi', 353627995, 123456788, 'Nhập viện', '0123456788', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonthuoc`
--

CREATE TABLE `chitietdonthuoc` (
  `MaDonThuoc` int(11) DEFAULT NULL,
  `MaThuoc` int(11) DEFAULT NULL,
  `SoLuong` int(11) NOT NULL,
  `LieuDung` varchar(50) DEFAULT NULL,
  `CachDung` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonthuoc`
--

INSERT INTO `chitietdonthuoc` (`MaDonThuoc`, `MaThuoc`, `SoLuong`, `LieuDung`, `CachDung`) VALUES
(1, 1, 4, '1 lần/ngày', 'Uống'),
(2, 24, 3, '1 lần/ngày', 'Uống'),
(3, 3, 4, '1 lần/ngày', 'Uống'),
(3, 1, 4, '1 lần/ngày', 'Uống'),
(4, 14, 2, '1 lần/ngày', 'Uống'),
(5, 10, 3, '1 lần/ngày', 'Uống'),
(6, 25, 2, '1 lần/ngày', 'Tiêm'),
(7, 1, 4, '2 lần/ngày', 'Uống'),
(7, 23, 2, '1 lần/ngày', 'Uống'),
(8, 1, 4, '2 lần/ngày', 'Uống'),
(8, 23, 2, '1 lần/ngày', 'Uống'),
(9, 1, 4, '2 lần/ngày', 'Uống'),
(9, 23, 2, '1 lần/ngày', 'Uống'),
(10, 1, 2, '1 lần/ngày', 'Uống'),
(11, 1, 2, '1 lần/ngày', 'Uống'),
(12, 1, 2, '1 lần/ngày', 'Uống'),
(13, 1, 2, '1 lần/ngày', 'Uống'),
(14, 14, 2, '1 lần/ngày', 'Uống'),
(15, 14, 2, '1 lần/ngày', 'Uống'),
(16, 14, 2, '1 lần/ngày', 'Uống'),
(17, 14, 2, '1 lần/ngày', 'Uống'),
(18, 15, 1, '1 lần/ngày', 'Uống'),
(19, 15, 1, '1 lần/ngày', 'Uống'),
(20, 14, 2, '1 lần/ngày', 'Uống'),
(21, 14, 2, '1 lần/ngày', 'Uống'),
(22, 14, 2, '2 lần/ngày', 'Uống'),
(23, 13, 2, '1 lần/ngày', 'Uống'),
(24, 13, 2, '1 lần/ngày', 'Uống'),
(25, 12, 2, '1 lần/ngày', 'Uống'),
(26, 12, 2, '1 lần/ngày', 'Uống'),
(27, 11, 2, '1 lần/ngày', 'Uống'),
(28, 11, 2, '1 lần/ngày', 'Uống'),
(29, 11, 2, '1 lần/ngày', 'Uống'),
(30, 10, 2, '1 lần/ngày', 'Uống'),
(30, 3, 2, '1 lần/ngày', 'Uống'),
(31, 10, 2, '1 lần/ngày', 'Uống'),
(31, 3, 2, '1 lần/ngày', 'Uống'),
(32, 19, 2, '1 lần/ngày', 'Uống'),
(33, 19, 2, '1 lần/ngày', 'Uống'),
(34, 19, 2, '1 lần/ngày', 'Uống'),
(35, 19, 2, '1 lần/ngày', 'Uống'),
(36, 19, 2, '1 lần/ngày', 'Uống'),
(37, 1, 2, '1 lần/ngày', 'Uống');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphongkham`
--

CREATE TABLE `chitietphongkham` (
  `MaCTPhongKham` int(11) NOT NULL,
  `MaPhong` int(11) NOT NULL,
  `TenCa` varchar(10) NOT NULL,
  `DaDangKy` int(11) NOT NULL,
  `DangKyToiDa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphongkham`
--

INSERT INTO `chitietphongkham` (`MaCTPhongKham`, `MaPhong`, `TenCa`, `DaDangKy`, `DangKyToiDa`) VALUES
(1, 1, 'Ca 1', 2, 2),
(2, 1, 'Ca 2', 0, 2),
(3, 1, 'Ca 3', 0, 2),
(4, 3, 'Ca 1', 0, 5),
(5, 2, 'Ca 1', 2, 2),
(6, 2, 'Ca 2', 0, 0),
(9, 1, '1', 1, 1),
(10, 1, '2', 2, 2),
(11, 2, 'Ca 3', 0, 0),
(12, 1, 'a', 0, 0),
(13, 1, 'a', 0, 0),
(14, 1, 'Ca 1', 1, 1),
(15, 7, 'Ca 1 nè', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chucvu`
--

CREATE TABLE `chucvu` (
  `MaCV` int(11) NOT NULL,
  `TenCV` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chucvu`
--

INSERT INTO `chucvu` (`MaCV`, `TenCV`) VALUES
(1, 'admin'),
(2, 'Quản lý ngoại trú'),
(3, 'Quản lý nội trú'),
(4, 'Bác sĩ ngoại trú'),
(5, 'Bác sĩ nội trú'),
(6, 'Nhân viên quản lý ngoại trú'),
(7, 'Nhân viên quản lý nội trú'),
(8, 'Điều dưỡng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `MaDV` int(11) NOT NULL,
  `TenDV` varchar(50) NOT NULL,
  `Gia` int(11) NOT NULL,
  `MoTa` varchar(255) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donthuoc`
--

CREATE TABLE `donthuoc` (
  `MaDonThuoc` int(11) NOT NULL,
  `NgayKeDon` date NOT NULL,
  `TongTien` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `donthuoc`
--

INSERT INTO `donthuoc` (`MaDonThuoc`, `NgayKeDon`, `TongTien`) VALUES
(1, '2024-12-01', 0),
(2, '2024-12-01', 0),
(3, '2024-12-01', 80000),
(4, '2024-12-02', 100000),
(5, '2024-12-02', 21000),
(6, '2024-12-02', 20000),
(7, '2024-12-02', 40000),
(8, '2024-12-02', 40000),
(9, '2024-12-02', 40000),
(10, '2024-12-02', 10000),
(11, '2024-12-02', 10000),
(12, '2024-12-02', 10000),
(13, '2024-12-02', 10000),
(14, '2024-12-02', 100000),
(15, '2024-12-02', 100000),
(16, '2024-12-02', 100000),
(17, '2024-12-02', 100000),
(18, '2024-12-02', 15000),
(19, '2024-12-02', 15000),
(20, '2024-12-02', 100000),
(21, '2024-12-02', 100000),
(22, '2024-12-02', 100000),
(23, '2024-12-02', 36000),
(24, '2024-12-02', 36000),
(25, '2024-12-02', 24000),
(26, '2024-12-02', 24000),
(27, '2024-12-02', 8000),
(28, '2024-12-02', 8000),
(29, '2024-12-02', 8000),
(30, '2024-12-02', 44000),
(31, '2024-12-02', 44000),
(32, '2024-12-02', 12000),
(33, '2024-12-02', 12000),
(34, '2024-12-02', 12000),
(35, '2024-12-02', 12000),
(36, '2024-12-02', 12000),
(37, '2024-12-02', 10000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giuong`
--

CREATE TABLE `giuong` (
  `MaGiuong` int(11) NOT NULL,
  `TenGiuong` varchar(30) DEFAULT NULL,
  `MaPhong` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `giuong`
--

INSERT INTO `giuong` (`MaGiuong`, `TenGiuong`, `MaPhong`) VALUES
(1, 'Giường 1', 1),
(2, 'Giường 2', 1),
(3, 'Giường 3', 1),
(4, 'Giường 4', 1),
(5, 'Giường 1', 2),
(6, 'Giường 2', 2),
(7, 'Giường 3', 2),
(8, 'Giường 4', 2),
(9, 'Giường 1', 3),
(10, 'Giường 2', 3),
(11, 'Giường 3', 3),
(12, 'Giường 4', 3),
(13, 'Giường 1', 4),
(14, 'Giường 2', 4),
(15, 'Giường 3', 4),
(16, 'Giường 4', 4),
(17, 'Giường 1', 5),
(18, 'Giường 2', 5),
(19, 'Giường 3', 5),
(20, 'Giường 4', 5),
(21, 'Giường 1', 6),
(22, 'Giường 2', 6),
(23, 'Giường 3', 6),
(24, 'Giường 4', 6),
(25, 'Giường 1', 7),
(26, 'Giường 2', 7),
(27, 'Giường 3', 7),
(28, 'Giường 4', 7),
(29, 'Giường 1', 8),
(30, 'Giường 2', 8),
(31, 'Giường 3', 8),
(32, 'Giường 4', 8),
(33, 'Giường 1', 9),
(34, 'Giường 2', 9),
(35, 'Giường 3', 9),
(36, 'Giường 4', 9),
(37, 'Giường 1', 10),
(38, 'Giường 2', 10),
(39, 'Giường 3', 10),
(40, 'Giường 4', 10),
(41, 'Giường 1', 11),
(42, 'Giường 2', 11),
(43, 'Giường 3', 11),
(44, 'Giường 4', 11),
(45, 'Giường 1', 12),
(46, 'Giường 2', 12),
(47, 'Giường 3', 12),
(48, 'Giường 4', 12),
(49, 'Giường 1', 13),
(50, 'Giường 2', 13),
(51, 'Giường 3', 13),
(52, 'Giường 4', 13),
(53, 'Giường 1', 14),
(54, 'Giường 2', 14),
(55, 'Giường 3', 14),
(56, 'Giường 4', 14),
(57, 'Giường 1', 15),
(58, 'Giường 2', 15),
(59, 'Giường 3', 15),
(60, 'Giường 4', 15),
(61, 'Giường 1', 16),
(62, 'Giường 2', 16),
(63, 'Giường 3', 16),
(64, 'Giường 4', 16),
(65, 'Giường 1', 17),
(66, 'Giường 2', 17),
(67, 'Giường 3', 17),
(68, 'Giường 4', 17),
(69, 'Giường 1', 18),
(70, 'Giường 2', 18),
(71, 'Giường 3', 18),
(72, 'Giường 4', 18),
(73, 'Giường 1', 19),
(74, 'Giường 2', 19),
(75, 'Giường 3', 19),
(76, 'Giường 4', 19),
(77, 'Giường 1', 20),
(78, 'Giường 2', 20),
(79, 'Giường 3', 20),
(80, 'Giường 4', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `TamUng` int(11) DEFAULT NULL,
  `KhauTruBHYT` float DEFAULT NULL,
  `TongTien` float NOT NULL,
  `NgayLapHD` date DEFAULT NULL,
  `TrangThaiThanhToan` varchar(50) DEFAULT 'Chưa thanh toán',
  `PhuongThucThanhToan` varchar(50) DEFAULT NULL,
  `MaHDXV` int(11) DEFAULT NULL,
  `MaDonThuoc` int(11) DEFAULT NULL,
  `MaBN` int(11) DEFAULT NULL,
  `MaNS` int(11) DEFAULT NULL,
  `MaDDK` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHoaDon`, `TamUng`, `KhauTruBHYT`, `TongTien`, `NgayLapHD`, `TrangThaiThanhToan`, `PhuongThucThanhToan`, `MaHDXV`, `MaDonThuoc`, `MaBN`, `MaNS`, `MaDDK`) VALUES
(1, NULL, 80, 20000, '0000-00-00', 'Chưa thanh toán', '0', NULL, 21, 10, 4, 21),
(2, NULL, 80, 20000, '0000-00-00', 'Chưa thanh toán', '0', NULL, 22, 10, 4, 21),
(3, NULL, 80, 7200, '0000-00-00', 'Chưa thanh toán', '0', NULL, 23, 6, 4, 6),
(4, NULL, 80, 7200, '0000-00-00', 'Chưa thanh toán', '0', NULL, 24, 6, 4, 6),
(5, NULL, 80, 4800, '2024-12-02', 'Chưa thanh toán', '', NULL, 25, 6, 4, 6),
(6, NULL, 80, 4800, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 26, 6, 4, 6),
(7, NULL, 80, 1600, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 27, 6, 4, 6),
(8, NULL, 80, 1600, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 28, 6, 4, 6),
(9, NULL, 80, 1600, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 29, 6, 4, 6),
(10, NULL, 0, 44000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 30, 1, 4, 2),
(11, NULL, 0, 44000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 31, 1, 4, 2),
(12, NULL, 0, 12000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 32, 1, 4, 2),
(13, NULL, 0, 12000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 33, 1, 4, 2),
(14, NULL, 0, 12000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 34, 1, 4, 2),
(15, NULL, 0, 12000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 35, 1, 4, 2),
(16, NULL, 0, 12000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 36, 1, 4, 2),
(17, NULL, 0, 10000, '2024-12-02', 'Chưa thanh toán', 'Chưa thanh toán', NULL, 37, 4, 4, 26);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonxuatvien`
--

CREATE TABLE `hoadonxuatvien` (
  `MaHDXV` int(11) NOT NULL,
  `NgayNV` datetime NOT NULL,
  `NgayXV` datetime NOT NULL,
  `TongNgay` int(11) NOT NULL,
  `TongChiPhi` float NOT NULL,
  `TamUng` float DEFAULT NULL,
  `MaBN` int(11) DEFAULT NULL,
  `MaNV` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `MaKhoa` int(11) NOT NULL,
  `TenKhoa` varchar(50) NOT NULL,
  `KhuVuc` varchar(50) DEFAULT NULL,
  `MoTa` varchar(150) NOT NULL,
  `TrangThai` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khoa`
--

INSERT INTO `khoa` (`MaKhoa`, `TenKhoa`, `KhuVuc`, `MoTa`, `TrangThai`) VALUES
(1, 'Khoa Nội', 'Tòa H tầng 15', 'Khoa tập trung vào việc khám, chẩn đoán, điều trị và quản lý các bệnh lý bên trong cơ thể mà không cần can thiệp phẫu thuật', 1),
(2, 'Khoa Ngoại', 'Toàn H, Tầng 6', 'Chuyên điều trị các bệnh lý cần phẫu thuật và can thiệp ngoại khoa.', 1),
(3, 'Khoa Nhi', 'Toàn V, Tầng 1', 'Chuyên chăm sóc và điều trị các bệnh lý cho trẻ em từ sơ sinh đến 18 tuổi.', 1),
(4, 'Khoa Sản', 'Toàn H, Tầng 9', 'Chuyên chăm sóc sức khỏe phụ nữ trong thai kỳ, sinh nở và sau sinh.', 1),
(5, 'Khoa Cấp Cứu', 'Toàn V, Tầng 11', 'Đảm bảo xử trí nhanh chóng các trường hợp khẩn cấp và bệnh nhân nặng.', 1),
(6, 'Khoa Chẩn Đoán Hình ', 'Toàn C, Tầng 3', 'Sử dụng các kỹ thuật hình ảnh như X-quang, CT, MRI để chẩn đoán bệnh.', 1),
(7, 'Khoa Thẩm Mỹ', 'Toàn C, Tầng 4', 'Chuyên thực hiện các thủ thuật thẩm mỹ và điều trị da liễu.', 1),
(8, 'Khoa Vật Lý Trị Liệu', 'Toàn A, Tầng 1', 'Chuyên phục hồi chức năng cho bệnh nhân sau phẫu thuật hoặc chấn thương.', 1),
(9, 'Khoa Tâm Thần', 'Toàn A, Tầng 5', 'Chăm sóc và điều trị các vấn đề liên quan đến tâm lý và tâm thần.', 1),
(10, 'Khoa Hồi Sức Cấp Cứu', 'Toàn X, Tầng 12', 'Chuyên theo dõi và điều trị các bệnh nhân nặng cần chăm sóc đặc biệt.', 1),
(36, 'A', 'A', 'A', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichlamviec`
--

CREATE TABLE `lichlamviec` (
  `MaLLV` int(11) NOT NULL,
  `MaCTPhongKham` int(11) NOT NULL,
  `NgayTrongTuan` int(11) NOT NULL,
  `CaTrongNgay` int(11) NOT NULL,
  `MaNS` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichlamviec`
--

INSERT INTO `lichlamviec` (`MaLLV`, `MaCTPhongKham`, `NgayTrongTuan`, `CaTrongNgay`, `MaNS`) VALUES
(51, 5, 0, 1, 7),
(39, 1, 2, 1, 6),
(40, 1, 3, 2, 6),
(42, 1, 4, 2, 6),
(46, 1, 2, 2, 6),
(50, 1, 0, 2, 6),
(49, 1, 0, 1, 6),
(52, 5, 0, 2, 7),
(53, 5, 1, 1, 7),
(54, 5, 2, 2, 7),
(55, 5, 3, 1, 7),
(56, 2, 1, 1, 0),
(57, 2, 1, 2, 0),
(58, 2, 2, 1, 0),
(59, 2, 3, 2, 0),
(60, 2, 5, 1, 0),
(61, 15, 0, 1, 0),
(62, 15, 1, 1, 0),
(63, 15, 2, 1, 0),
(64, 15, 3, 1, 0),
(65, 15, 4, 1, 0),
(66, 15, 0, 2, 0),
(67, 15, 1, 2, 0),
(68, 15, 2, 2, 0),
(69, 15, 3, 2, 0),
(70, 15, 4, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichnghiphep`
--

CREATE TABLE `lichnghiphep` (
  `MaLNP` int(11) NOT NULL,
  `NgayNghiPhep` varchar(20) NOT NULL,
  `LyDo` varchar(255) DEFAULT NULL,
  `CaLam` varchar(150) DEFAULT NULL,
  `TrangThai` int(150) DEFAULT NULL,
  `ThoiGianDK` varchar(50) NOT NULL,
  `Phong` varchar(20) NOT NULL,
  `MaNS` int(11) DEFAULT NULL,
  `LyDo_TuChoi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichnghiphep`
--

INSERT INTO `lichnghiphep` (`MaLNP`, `NgayNghiPhep`, `LyDo`, `CaLam`, `TrangThai`, `ThoiGianDK`, `Phong`, `MaNS`, `LyDo_TuChoi`) VALUES
(35, '9/12/2024', 'Lấy vợ', '1', 1, '2024-12-09 23:30:24', 'Phòng: X.02', 7, ''),
(36, '9/12/2024', 'Lấy vợ', '2', 2, '2024-12-09 23:31:17', 'Phòng: X.02', 7, 'K cho ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhansu`
--

CREATE TABLE `nhansu` (
  `MaNS` int(11) NOT NULL,
  `HoTen` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `Email` varchar(255) NOT NULL,
  `GioiTinh` varchar(255) NOT NULL,
  `CCCD` varchar(255) NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date DEFAULT NULL,
  `IMG` varchar(150) DEFAULT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `MaCV` int(11) DEFAULT NULL,
  `TenTK` varchar(200) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhansu`
--

INSERT INTO `nhansu` (`MaNS`, `HoTen`, `NgaySinh`, `Email`, `GioiTinh`, `CCCD`, `NgayBatDau`, `NgayKetThuc`, `IMG`, `DiaChi`, `MaCV`, `TenTK`, `MaKhoa`) VALUES
(1, 'Lâm Văn Hưng', '2003-02-15', 'lamhung@gmail.com', 'Nam', '123456789001', '2024-10-10', NULL, NULL, '123 Đường A, TP.HCM', 2, '01001', 10),
(2, 'Nguyễn Tấn Đạt', '2003-04-10', 'nguyentandat@gmail.com', 'Nam', '123456789002', '2024-10-10', NULL, NULL, '456 Đường B, TP.HCM', 1, '00002', 10),
(3, 'Đoàn Thị Mai Linh', '2003-05-20', 'doanthimailinh@gmail.com', 'Nữ', '123456789003', '2024-10-10', NULL, NULL, '789 Đường C, TP.HCM', 3, '01003', 10),
(4, 'Trần Hoàng Gia Khánh', '2003-03-12', 'tranhoanggiakhanh@gmail.com', 'Nam', '123456789004', '2024-10-10', NULL, NULL, '101 Đường D, TP.HCM', 4, '01004', 10),
(5, 'Châu Duy Khánh', '2003-01-25', 'chauduykhanh@gmail.com', 'Nam', '123456789005', '2024-10-10', NULL, NULL, '202 Đường E, TP.HCM', 5, '01005', 10),
(6, 'Nguyễn Tấn Đạt', '2003-06-30', 'nguyentandat2@gmail.com', 'Nam', '123456789006', '2024-10-10', NULL, NULL, '303 Đường F, TP.HCM', 6, '01006', 10),
(7, 'Nguyễn Thành Được', '2003-07-15', 'nguyenthanhduoc@gmail.com', 'Nam', '123456789007', '2024-10-10', NULL, NULL, '404 Đường G, TP.HCM', 7, '01007', 10),
(8, 'Nguyễn Thanh Phú', '2003-08-05', 'nguyenthanhphu@gmail.com', 'Nam', '123456789008', '2024-10-10', NULL, NULL, '505 Đường H, TP.HCM', 4, '01008', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phacdo`
--

CREATE TABLE `phacdo` (
  `MaPhacDo` int(11) NOT NULL,
  `NgayLap` date DEFAULT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  `MaNS` int(11) DEFAULT NULL,
  `MaDonThuoc` int(11) DEFAULT NULL,
  `MaBN` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuchamsoc`
--

CREATE TABLE `phieuchamsoc` (
  `MaPCS` int(11) NOT NULL,
  `TinhTrang` varchar(255) DEFAULT NULL,
  `ChiSoSK` float DEFAULT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  `NgayThucHien` datetime DEFAULT current_timestamp(),
  `MaBN` int(11) DEFAULT NULL,
  `MaNS` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieudangkykham`
--

CREATE TABLE `phieudangkykham` (
  `MaDKK` int(11) NOT NULL,
  `NgayKham` datetime DEFAULT current_timestamp(),
  `TrangThai` varchar(50) DEFAULT 'Chờ Duyệt',
  `ChiPhiKham` float DEFAULT NULL,
  `MaDV` int(11) DEFAULT NULL,
  `MaNS` int(11) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL,
  `MaBN` int(11) DEFAULT NULL,
  `maThanhToan` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieudangkykham`
--

INSERT INTO `phieudangkykham` (`MaDKK`, `NgayKham`, `TrangThai`, `ChiPhiKham`, `MaDV`, `MaNS`, `MaKhoa`, `MaBN`, `maThanhToan`) VALUES
(2, '2024-12-02 08:00:00', 'Đã khám', 100000, NULL, 4, 1, 1, '6749bbc168909'),
(5, '2024-11-30 12:40:46', 'Chờ khám', 100000, NULL, 8, 2, 5, 'tienmat'),
(6, '2024-11-30 13:09:48', 'Nhập viện', 100000, NULL, 4, 1, 6, 'tienmat'),
(24, '2024-11-30 14:04:09', 'Chờ khám', 100000, NULL, 8, 1, 11, 'tienmat'),
(8, '2024-11-30 13:17:59', 'Chờ khám', 100000, NULL, 8, 1, 7, 'tienmat'),
(21, '2024-11-30 13:51:41', 'Nhập viện', 100000, NULL, 4, 1, 10, 'tienmat'),
(26, '2024-12-03 08:00:00', 'Nhập viện', 10000000, NULL, 4, 1, 4, '674d5b70600c8');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuketquakham`
--

CREATE TABLE `phieuketquakham` (
  `MaPhieuKham` int(11) NOT NULL,
  `ChanDoan` varchar(255) DEFAULT NULL,
  `NgayTaiKham` date DEFAULT NULL,
  `NgayKham` date DEFAULT NULL,
  `MaNS` int(11) DEFAULT NULL,
  `MaDonThuoc` int(11) DEFAULT NULL,
  `MaBN` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuketquakham`
--

INSERT INTO `phieuketquakham` (`MaPhieuKham`, `ChanDoan`, `NgayTaiKham`, `NgayKham`, `MaNS`, `MaDonThuoc`, `MaBN`) VALUES
(1, 'aaaa', '0000-00-00', '2024-12-01', 4, 34, 1),
(2, 'aaaa', '0000-00-00', '2024-12-01', 4, 34, 1),
(3, 'aaaa', '0000-00-00', '2024-12-01', 4, 35, 1),
(4, 'aaaa', '0000-00-00', '2024-12-01', 4, 35, 1),
(5, 'aaaa', '0000-00-00', '2024-12-01', 4, 36, 1),
(6, 'aaaa', '0000-00-00', '2024-12-02', 4, 36, 1),
(7, 'Đau bụng', '0000-00-00', '2024-12-02', 4, 37, 4),
(8, 'Đau bụng', '0000-00-00', '2024-12-02', 4, 37, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunamvien`
--

CREATE TABLE `phieunamvien` (
  `MaNV` int(11) NOT NULL,
  `LyDo` varchar(255) NOT NULL,
  `ChuanDoanBD` varchar(255) NOT NULL,
  `TenNguoiLienHe` varchar(255) DEFAULT NULL,
  `SDT` varchar(255) DEFAULT NULL,
  `ThoiGianNV` date NOT NULL,
  `ThoiGianXV` date DEFAULT NULL,
  `ChuanDoanKQ` varchar(255) DEFAULT NULL,
  `PhuongPhapDieuTri` varchar(255) DEFAULT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  `TamUng` int(11) DEFAULT NULL,
  `TienSuBenh` varchar(200) DEFAULT NULL,
  `ThuocDangSD` varchar(200) DEFAULT NULL,
  `TrangThai` varchar(150) DEFAULT NULL,
  `MaGiuong` int(11) DEFAULT NULL,
  `MaPhong` int(11) DEFAULT NULL,
  `MaBN` int(11) DEFAULT NULL,
  `MaNS` int(11) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunamvien`
--

INSERT INTO `phieunamvien` (`MaNV`, `LyDo`, `ChuanDoanBD`, `TenNguoiLienHe`, `SDT`, `ThoiGianNV`, `ThoiGianXV`, `ChuanDoanKQ`, `PhuongPhapDieuTri`, `GhiChu`, `TamUng`, `TienSuBenh`, `ThuocDangSD`, `TrangThai`, `MaGiuong`, `MaPhong`, `MaBN`, `MaNS`, `MaKhoa`) VALUES
(2, 'Quá nặng', 'đau bụng', NULL, NULL, '2024-12-02', NULL, NULL, NULL, NULL, NULL, 'Đau dạ dày', '1. aaa\r\n2. âsss', 'Nhập viện', NULL, NULL, 10, NULL, 1),
(3, 'loét dạ dày', 'đau bụng', NULL, NULL, '2024-12-02', NULL, NULL, NULL, NULL, NULL, 'Đau dạ dày', '1. aaa\r\n2. aaa', 'Nhập viện', NULL, NULL, 6, NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `MaPhong` int(11) NOT NULL,
  `TenPhong` varchar(30) NOT NULL,
  `Gia` int(11) NOT NULL,
  `MaLLV` int(11) DEFAULT NULL,
  `MaKhoa` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`MaPhong`, `TenPhong`, `Gia`, `MaLLV`, `MaKhoa`) VALUES
(1, 'Phòng 101', 400000, NULL, 1),
(2, 'Phòng 102', 400000, NULL, 1),
(3, 'Phòng 201', 300000, NULL, 2),
(4, 'Phòng 202', 300000, NULL, 2),
(5, 'Phòng 301', 500000, NULL, 3),
(6, 'Phòng 302', 500000, NULL, 3),
(7, 'Phòng 401', 600000, NULL, 4),
(8, 'Phòng 402', 600000, NULL, 4),
(9, 'Phòng 501', 700000, NULL, 5),
(10, 'Phòng 502', 700000, NULL, 5),
(11, 'Phòng 601', 800000, NULL, 6),
(12, 'Phòng 602', 800000, NULL, 6),
(13, 'Phòng 701', 900000, NULL, 7),
(14, 'Phòng 702', 900000, NULL, 7),
(15, 'Phòng 801', 200000, NULL, 8),
(16, 'Phòng 802', 200000, NULL, 8),
(17, 'Phòng 901', 100000, NULL, 9),
(18, 'Phòng 902', 100000, NULL, 9),
(19, 'Phòng 1001', 750000, NULL, 10),
(20, 'Phòng 1002', 750000, NULL, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phongkham`
--

CREATE TABLE `phongkham` (
  `MaPhong` int(11) NOT NULL,
  `TenPhong` varchar(20) NOT NULL,
  `Toa` varchar(10) NOT NULL,
  `MoTa` varchar(100) DEFAULT NULL,
  `MaKhoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phongkham`
--

INSERT INTO `phongkham` (`MaPhong`, `TenPhong`, `Toa`, `MoTa`, `MaKhoa`) VALUES
(1, 'X.01', 'X', 'Phòng khám', 10),
(2, 'X.02', 'X', 'Phòng khám', 10),
(3, 'V.01', 'V', 'Phòng khám', 10),
(4, 'A.01', 'A', 'Phòng khám í', 10),
(7, 'H4.01', 'H', 'HTTT', 10),
(8, 'X.01', '1', '1', 10),
(9, '1', '1', '1', 10),
(10, 'A11', '111', '                                1\r\n                            âsasa', 10),
(11, 'f', 'f', 'f', 10),
(12, 'o', 'o', 'o', 10),
(13, 'X.01', '1', '1', 10),
(14, 'ABC', 'ABC', 'ABC', 10),
(15, 'X.01', '1', '1', 10),
(16, 'f', 'AAaa', '                                                                AAAaaa\r\n                            ', 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TenTK` varchar(200) NOT NULL,
  `MatKhau` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`TenTK`, `MatKhau`) VALUES
('0353627994', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('01001', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('0123456789', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('0112233445', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('0311223344', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('00002', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('01003', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('01004', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('01005', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('01006', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('01007', '9b3ce6f144e7be7a5b89dfb8e21a84a7'),
('01008', '9b3ce6f144e7be7a5b89dfb8e21a84a7');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thuoc`
--

CREATE TABLE `thuoc` (
  `MaThuoc` int(11) NOT NULL,
  `TenThuoc` varchar(50) NOT NULL,
  `Gia` float NOT NULL,
  `DonViTinh` varchar(10) DEFAULT NULL,
  `SoLuongTon` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thuoc`
--

INSERT INTO `thuoc` (`MaThuoc`, `TenThuoc`, `Gia`, `DonViTinh`, `SoLuongTon`) VALUES
(1, 'Paracetamol', 5000, 'viên', 200),
(2, 'Ibuprofen', 10000, 'viên', 150),
(3, 'Amoxicillin', 15000, 'viên', 100),
(4, 'Cefixime', 20000, 'viên', 80),
(5, 'Azithromycin', 25000, 'viên', 120),
(6, 'Vitamin C', 3000, 'viên', 300),
(7, 'Metronidazole', 8000, 'viên', 90),
(8, 'Diclofenac', 12000, 'viên', 110),
(9, 'Ranitidine', 5000, 'viên', 250),
(10, 'Omeprazole', 7000, 'viên', 200),
(11, 'Loperamide', 4000, 'viên', 300),
(12, 'Acetylcysteine', 12000, 'gói', 50),
(13, 'Clarithromycin', 18000, 'viên', 75),
(14, 'Ceftriaxone', 50000, 'lọ', 30),
(15, 'Ciprofloxacin', 15000, 'viên', 95),
(16, 'Gentamicin', 10000, 'lọ', 40),
(17, 'Chlorpheniramine', 2000, 'viên', 400),
(18, 'Cetirizine', 8000, 'viên', 250),
(19, 'Loratadine', 6000, 'viên', 220),
(20, 'Aspirin', 3000, 'viên', 500),
(21, 'Prednisolone', 5000, 'viên', 200),
(22, 'Hydrocortisone', 4000, 'tuýp', 70),
(23, 'Naproxen', 10000, 'viên', 180),
(24, 'Clindamycin', 20000, 'viên', 90),
(25, 'Tetracycline', 10000, 'viên', 80),
(26, 'Doxycycline', 12000, 'viên', 100),
(27, 'Azathioprine', 25000, 'viên', 60),
(28, 'Methotrexate', 50000, 'lọ', 25),
(29, 'Insulin', 30000, 'lọ', 40),
(30, 'Glimepiride', 8000, 'viên', 150),
(31, 'Metformin', 6000, 'viên', 300),
(32, 'Glibenclamide', 7000, 'viên', 200),
(33, 'Carbamazepine', 10000, 'viên', 120),
(34, 'Gabapentin', 15000, 'viên', 90),
(35, 'Clonazepam', 20000, 'viên', 70),
(36, 'Diazepam', 5000, 'viên', 300),
(37, 'Fluoxetine', 15000, 'viên', 80),
(38, 'Sertraline', 20000, 'viên', 60),
(39, 'Venlafaxine', 25000, 'viên', 50),
(40, 'Amlodipine', 5000, 'viên', 400);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  ADD PRIMARY KEY (`MaBN`),
  ADD KEY `TenTK` (`TenTK`);

--
-- Chỉ mục cho bảng `chitietdonthuoc`
--
ALTER TABLE `chitietdonthuoc`
  ADD KEY `MaDonThuoc` (`MaDonThuoc`),
  ADD KEY `MaThuoc` (`MaThuoc`);

--
-- Chỉ mục cho bảng `chitietphongkham`
--
ALTER TABLE `chitietphongkham`
  ADD PRIMARY KEY (`MaCTPhongKham`);

--
-- Chỉ mục cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  ADD PRIMARY KEY (`MaCV`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`MaDV`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `donthuoc`
--
ALTER TABLE `donthuoc`
  ADD PRIMARY KEY (`MaDonThuoc`);

--
-- Chỉ mục cho bảng `giuong`
--
ALTER TABLE `giuong`
  ADD PRIMARY KEY (`MaGiuong`),
  ADD KEY `MaPhong` (`MaPhong`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `MaHDXV` (`MaHDXV`),
  ADD KEY `MaDonThuoc` (`MaDonThuoc`),
  ADD KEY `MaBN` (`MaBN`),
  ADD KEY `MaNS` (`MaNS`),
  ADD KEY `MaDDK` (`MaDDK`);

--
-- Chỉ mục cho bảng `hoadonxuatvien`
--
ALTER TABLE `hoadonxuatvien`
  ADD PRIMARY KEY (`MaHDXV`),
  ADD KEY `MaBN` (`MaBN`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`MaKhoa`);

--
-- Chỉ mục cho bảng `lichlamviec`
--
ALTER TABLE `lichlamviec`
  ADD PRIMARY KEY (`MaLLV`);

--
-- Chỉ mục cho bảng `lichnghiphep`
--
ALTER TABLE `lichnghiphep`
  ADD PRIMARY KEY (`MaLNP`),
  ADD KEY `MaNS` (`MaNS`) USING BTREE;

--
-- Chỉ mục cho bảng `nhansu`
--
ALTER TABLE `nhansu`
  ADD PRIMARY KEY (`MaNS`),
  ADD UNIQUE KEY `TenTK` (`TenTK`),
  ADD KEY `MaKhoa` (`MaKhoa`),
  ADD KEY `MaCV` (`MaCV`) USING BTREE;

--
-- Chỉ mục cho bảng `phacdo`
--
ALTER TABLE `phacdo`
  ADD PRIMARY KEY (`MaPhacDo`),
  ADD KEY `MaNS` (`MaNS`),
  ADD KEY `MaDonThuoc` (`MaDonThuoc`),
  ADD KEY `MaBN` (`MaBN`);

--
-- Chỉ mục cho bảng `phieuchamsoc`
--
ALTER TABLE `phieuchamsoc`
  ADD PRIMARY KEY (`MaPCS`),
  ADD KEY `MaBN` (`MaBN`),
  ADD KEY `MaNS` (`MaNS`);

--
-- Chỉ mục cho bảng `phieudangkykham`
--
ALTER TABLE `phieudangkykham`
  ADD PRIMARY KEY (`MaDKK`),
  ADD KEY `MaDV` (`MaDV`),
  ADD KEY `MaNS` (`MaNS`),
  ADD KEY `MaKhoa` (`MaKhoa`),
  ADD KEY `MaBN` (`MaBN`);

--
-- Chỉ mục cho bảng `phieuketquakham`
--
ALTER TABLE `phieuketquakham`
  ADD PRIMARY KEY (`MaPhieuKham`),
  ADD KEY `MaNS` (`MaNS`),
  ADD KEY `MaDonThuoc` (`MaDonThuoc`),
  ADD KEY `MaBN` (`MaBN`);

--
-- Chỉ mục cho bảng `phieunamvien`
--
ALTER TABLE `phieunamvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `MaGiuong` (`MaGiuong`) USING BTREE,
  ADD KEY `MaKhoa` (`MaKhoa`) USING BTREE,
  ADD KEY `MaNS` (`MaNS`) USING BTREE,
  ADD KEY `MaBN` (`MaBN`) USING BTREE,
  ADD KEY `MaPhong` (`MaPhong`) USING BTREE;

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaPhong`),
  ADD KEY `MaKhoa` (`MaKhoa`);

--
-- Chỉ mục cho bảng `phongkham`
--
ALTER TABLE `phongkham`
  ADD PRIMARY KEY (`MaPhong`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TenTK`);

--
-- Chỉ mục cho bảng `thuoc`
--
ALTER TABLE `thuoc`
  ADD PRIMARY KEY (`MaThuoc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `benhnhan`
--
ALTER TABLE `benhnhan`
  MODIFY `MaBN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chitietphongkham`
--
ALTER TABLE `chitietphongkham`
  MODIFY `MaCTPhongKham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `chucvu`
--
ALTER TABLE `chucvu`
  MODIFY `MaCV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `MaDV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `donthuoc`
--
ALTER TABLE `donthuoc`
  MODIFY `MaDonThuoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `giuong`
--
ALTER TABLE `giuong`
  MODIFY `MaGiuong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `hoadonxuatvien`
--
ALTER TABLE `hoadonxuatvien`
  MODIFY `MaHDXV` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `MaKhoa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `lichlamviec`
--
ALTER TABLE `lichlamviec`
  MODIFY `MaLLV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `lichnghiphep`
--
ALTER TABLE `lichnghiphep`
  MODIFY `MaLNP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `nhansu`
--
ALTER TABLE `nhansu`
  MODIFY `MaNS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phacdo`
--
ALTER TABLE `phacdo`
  MODIFY `MaPhacDo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieuchamsoc`
--
ALTER TABLE `phieuchamsoc`
  MODIFY `MaPCS` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phieudangkykham`
--
ALTER TABLE `phieudangkykham`
  MODIFY `MaDKK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `phieuketquakham`
--
ALTER TABLE `phieuketquakham`
  MODIFY `MaPhieuKham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `phieunamvien`
--
ALTER TABLE `phieunamvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phongkham`
--
ALTER TABLE `phongkham`
  MODIFY `MaPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
