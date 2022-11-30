-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2019 at 10:05 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moji`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL,
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `MaSanPham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `SoLuong`, `GiaBan`, `MaDonDatHang`, `MaSanPham`) VALUES
('16121900100', 5, 50500, '161219001', 1),
('16121900200', 2, 50500, '161219002', 1),
('22121900100', 1, 50000, '221219001', 51),
('22121900101', 1, 85000, '221219001', 52),
('22121900200', 1, 150000, '221219002', 43);

-- --------------------------------------------------------

--
-- Table structure for table `chitietloaisanpham`
--

CREATE TABLE `chitietloaisanpham` (
  `MaChiTietLoaiSanPham` int(11) NOT NULL,
  `TenChiTietLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `BiXoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietloaisanpham`
--

INSERT INTO `chitietloaisanpham` (`MaChiTietLoaiSanPham`, `TenChiTietLoaiSanPham`, `MaLoaiSanPham`, `BiXoa`) VALUES
(11, 'Gấu bông cute xinh đẹp đáng yêu', 1, 0),
(12, 'Gối chữ U', 1, 0),
(21, 'Túi đeo', 2, 0),
(22, 'Balo', 2, 0),
(31, 'Dụng cụ học tập', 3, 0),
(32, 'Sổ vở', 3, 0),
(41, 'Phụ kiện điện thoại', 4, 0),
(42, 'Máy làm tóc', 4, 0),
(51, 'Quần áo', 5, 0),
(52, 'Phụ kiện', 5, 0),
(61, 'Đồ gia dụng', 6, 0),
(62, 'Dụng cụ nhà bếp', 6, 0),
(71, 'Gương lược', 7, 0),
(72, 'Đựng mỹ phẩm', 7, 0),
(81, 'Chiết mỹ phẩm/Bình xịt', 8, 0),
(82, 'Bọc hộ chiếu', 8, 0),
(91, 'Đồ chơi', 9, 0),
(92, 'Đồ thú cưng', 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime DEFAULT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTaiKhoan` int(11) NOT NULL,
  `MaTinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `NgayLap`, `TongThanhTien`, `MaTaiKhoan`, `MaTinhTrang`) VALUES
('161219001', '2019-12-16 17:15:18', 252500, 1, 3),
('161219002', '2019-12-16 17:19:43', 101000, 1, 2),
('221219001', '2019-12-22 18:34:11', 85000, 1, 2),
('221219002', '2019-12-22 19:16:08', 150000, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `hangsanxuat`
--

CREATE TABLE `hangsanxuat` (
  `MaHangSanXuat` int(11) NOT NULL,
  `TenHangSanXuat` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `LogoURL` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `BiXoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsanxuat`
--

INSERT INTO `hangsanxuat` (`MaHangSanXuat`, `TenHangSanXuat`, `LogoURL`, `BiXoa`) VALUES
(1, 'MOJI', 'logo.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `TenLoaiSanPham` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `TenLoaiSanPham`, `BiXoa`) VALUES
(1, 'Gấu bông và gối', 0),
(2, 'Túi ví', 0),
(3, 'Văn phòng phẩm', 0),
(4, 'Điện tử & Điện thoại', 0),
(5, 'Phụ kiện thời trang', 0),
(6, 'Đồ gia dụng', 0),
(7, 'Trang điểm', 0),
(8, 'Du lịch', 0),
(9, 'Đồ chơi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `MaLoaiTaiKhoan` int(11) NOT NULL,
  `TenLoaiTaiKhoan` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`MaLoaiTaiKhoan`, `TenLoaiTaiKhoan`) VALUES
(1, 'User'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhURL` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaSanPham` int(11) DEFAULT NULL,
  `NgayNhap` datetime DEFAULT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT NULL,
  `SoLuocXem` int(11) DEFAULT NULL,
  `MoTa` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaChiTietLoaiSanPham` int(11) NOT NULL,
  `MaHangSanXuat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `HinhURL`, `GiaSanPham`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuocXem`, `MoTa`, `BiXoa`, `MaChiTietLoaiSanPham`, `MaHangSanXuat`) VALUES
(1, 'Chăn mền kèm gối gấu bông We bare bears Cospl', 'webarebear.jpg', 50500, '2019-12-15 00:00:00', 48, 39, 265, 'Gấu trắng phim hoạt hình We bare bear', 0, 11, 1),
(2, 'Gấu bông MJ lớn Mèo má hồng nằm 60cm', 'meomahong.jpg', 380000, '2019-12-15 00:00:00', 60, 13, 1, 'Mèo đầu to eo thon', 0, 11, 1),
(3, 'Gấu bông MJ ấm tay Khủng long mập há miệng 25', 'khunglongmap.jpg', 130000, '2019-12-15 00:00:00', 45, 16, 1, 'Khủng long miệng rất to', 0, 11, 1),
(4, 'Gấu bông MJ Cún Shiba mập cosplay 20cm - Mix', 'shibamap.jpg', 90000, '2019-12-15 00:00:00', 40, 18, 356, 'Cún shiba mập siêu dễ thương', 0, 11, 1),
(5, 'Gấu bông chữ U có mũ Stitch Sleepy tai dài ca', 'stitchsleepy.jpg', 220000, '2019-12-15 00:00:00', 50, 39, 1, 'Phim hoạt hình stitch', 0, 12, 1),
(6, 'Gấu bông chữ U Animals phối màu có tai cute', 'uanimal.jpg', 140000, '2019-12-15 00:00:00', 60, 16, 358, 'Đeo cổ thoải mái', 0, 12, 1),
(7, 'Gấu bông chữ U Fruit Watermelon Dưa hấu kèm b', 'uwatermelon.jpg', 160000, '2019-12-15 00:00:00', 45, 16, 264, 'Trái dưa hấu màu anh đào', 0, 12, 1),
(8, 'Gấu bông chữ U Black Rabbit - Đen', 'ublackrabbit.jpg', 160000, '2019-12-15 00:00:00', 40, 39, 199, 'Thỏ đen kuro kuro', 0, 12, 1),
(9, 'Túi đeo chéo vải Stitch Baby ôm người 8x13x24', 'tui deo cheo.jpg', 190000, '2019-12-15 00:00:00', 50, 13, 358, 'Túi đeo stitch dễ thương', 0, 21, 1),
(10, 'Túi đeo vải Space Moon 34x38', 'spacemoon.jpg', 120000, '2019-12-15 00:00:00', 60, 16, 199, 'Không gian và mặt trăng', 0, 21, 1),
(11, 'Túi đeo vải Little Xương rồng Cactus 34x38', 'littlecatus.jpg', 120000, '2019-12-15 00:00:00', 45, 39, 264, 'Cây xương rồng nhỏ màu xanh', 0, 21, 1),
(12, 'Túi đeo vải Snoopy nằm bẹp 35x39 - Trắng', 'snoopy.jpg', 140000, '2019-12-15 00:00:00', 40, 13, 199, 'Cún Snoopy dễ thương nằm', 0, 21, 1),
(13, 'Balo vải 3 PUBG Battle Grounds rằn ri 14x33x4', 'pubg.jpg', 300000, '2019-12-15 00:00:00', 50, 16, 264, 'Winner Winner Chicken Dinner', 0, 22, 1),
(14, 'Balo vải dù thêu Fruit Avocado Trái bơ/ Dưa h', 'avocadowatermelon.jpg', 320000, '2019-12-15 00:00:00', 60, 39, 358, 'Bơ đang là xu thế', 0, 22, 1),
(15, 'Balo vải Sesame Street want cookies 13x29x40', 'sesamestreet.jpg', 270000, '2019-12-15 00:00:00', 45, 13, 199, 'Cây mè bên dường', 0, 22, 1),
(16, 'Balo vải Maple Leaves 12x29x38 - Đen', 'mappleleaves.jpg', 300000, '2019-12-15 00:00:00', 40, 16, 264, 'Lá phong giống lá cần', 0, 22, 1),
(17, 'Bút viết Vegetable Defense cartoon - Mix', 'vegetabledefense.jpg', 25000, '2019-12-15 00:00:00', 50, 39, 199, 'Rau củ nhưng giống trái dâu or trái cà', 0, 31, 1),
(18, 'Bút viết Fruit Mango Cartoon cute - Mix', 'fruitmango.jpg', 25000, '2019-12-15 00:00:00', 60, 13, 358, 'Đây là trái xoài', 0, 31, 1),
(19, 'Bút viết Little Monster - Mix', 'littlemonster.jpg', 25000, '2019-12-15 00:00:00', 45, 16, 264, 'Quỷ nhỏ ', 0, 31, 1),
(20, 'Hộp bút MJ hologram Hamster flowers love 8x22', 'hologramhamster.jpg', 90000, '2019-12-15 00:00:00', 40, 39, 199, 'Chuột hamster ú nu ', 0, 31, 1),
(21, 'Sổ vở B5 MJ giấy đen Hamster Mouse Art Good L', 'hamsterden.jpg', 30000, '2019-12-15 00:00:00', 50, 13, 264, 'Chuột hamster extra dễ thương', 0, 32, 1),
(22, 'Sổ vở kế hoạch 100 days My Shirley Mouse Slog', 'kehoach100day.jpg', 110000, '2019-12-15 00:00:00', 60, 16, 358, 'Vở có 100 ngày fill đầy', 0, 32, 1),
(23, 'Sổ vở cao cấp bọc da nhiều mèo activities 14x', 'nhieumeo.jpg', 60000, '2019-12-15 00:00:00', 45, 39, 264, 'So many cat so cute', 0, 32, 1),
(24, 'Sổ vở từ vựng MJ Dinosaur art little friends ', 'dinisaurart.jpg', 25000, '2019-12-15 00:00:00', 40, 13, 199, 'Khủng long nhỏ bé dễ thương', 0, 32, 1),
(25, 'Ốp điện thoại Khủng long mập phun lửa', 'opkhunglong.jpg', 40000, '2019-12-15 00:00:00', 50, 16, 199, 'Mập nhưng vẫn hot', 0, 41, 1),
(26, 'Mojipop Mèo may mắn cute - Mix', 'mjphienhien.jpg', 20000, '2019-12-15 00:00:00', 60, 39, 358, 'Mèo ú đáng yêu', 0, 41, 1),
(27, 'Mojipop Starbucks Coffee Logo - Xanh rêu', 'mjpstarbuck.jpg', 20000, '2019-12-15 00:00:00', 45, 13, 199, 'Starkbuck mắc lắm', 0, 41, 1),
(28, 'Mojipop Siêu nhân Captain America basic - Đỏ', 'opcap.jpg', 20000, '2019-12-15 00:00:00', 40, 16, 199, 'Avenger Assemble!', 0, 41, 1),
(29, 'Lược giúp sấy tóc Cat Funny How are you doing', 'stcatfunny.jpg', 40000, '2019-12-15 00:00:00', 50, 39, 358, 'Lược chứ không phải máy sấy', 0, 42, 1),
(30, 'Lược giúp sấy tóc Color cán tai gấu - Mix', 'stcolor.jpg', 70000, '2019-12-15 00:00:00', 60, 13, 199, 'Đây cũng là lược', 0, 42, 1),
(31, 'Lược giúp sấy tóc Bobo cán chân mèo', 'stbobo.jpg', 70000, '2019-12-15 00:00:00', 45, 16, 199, 'Đây vẫn là lược', 0, 42, 1),
(32, 'Lược giúp sấy tóc Bobo Three lines - Mix', 'stbobothreeline.jpg', 60000, '2019-12-15 00:00:00', 40, 39, 358, 'Chỉ có lược', 0, 42, 1),
(33, 'Bộ quần áo hình thú Cat Belly - Đen - L', 'qacatbelly.png', 340000, '2019-12-15 00:00:00', 50, 13, 264, 'Mèo siêu to', 0, 51, 1),
(34, 'Bộ quần áo hình thú Cá mập răng lớn - Xanh in', 'qacamap.png', 360000, '2019-12-15 00:00:00', 60, 16, 199, 'Cá mập siêu cute', 0, 51, 1),
(35, 'Bộ quần áo hình thú Cat cute - Trắng', 'qacatcute.png', 290000, '2019-12-15 00:00:00', 45, 39, 358, 'Mèo siêu Omo', 0, 51, 1),
(36, 'Bộ quần áo hình thú Adventure Time Finn Smile', 'qaadventuretime.jpg', 320000, '2019-12-15 00:00:00', 40, 13, 199, 'Finn tóc vàng đẹp trai', 0, 51, 1),
(37, 'Quần chip MJ lưới Fruit Strawberry Dâu lớn - ', 'chipstrawberry.jpg', 50000, '2019-12-15 00:00:00', 50, 16, 200, 'Đỏ mặt', 0, 52, 1),
(38, 'Quần chip MJ lưới Fruit Avocado Trái bơ Carto', 'chipavocado.jpg', 50000, '2019-12-15 00:00:00', 60, 39, 358, 'Xanh mặt', 0, 52, 1),
(39, 'Quần chip MJ lưới Fruit Cherry thắt nơ - Hồng', 'chipcherryno.jpg', 50000, '2019-12-15 00:00:00', 45, 13, 264, 'Nơ cute', 0, 52, 1),
(40, 'Quần chip MJ lưới Star thắt nơ - Đen', 'chipstarno.jpg', 55000, '2019-12-15 00:00:00', 40, 16, 200, 'Quân chip...', 0, 52, 1),
(41, 'Ly cốc sứ Cat Fish Good Weather nổi cao cấp 4', 'lycatfish.jpg', 175000, '2019-12-15 00:00:00', 50, 39, 358, 'Cat trong nước nhưng không phải fish', 0, 61, 1),
(42, 'Bình nước giữ nhiệt Think Different cao cấp 5', 'binhthinkdifferent.jpg', 200000, '2019-12-15 00:00:00', 60, 13, 356, 'Do the same', 0, 61, 1),
(43, 'Bình nước giữ nhiệt Children Bear cute 400ml ', 'binhchildrenbear.jpg', 150000, '2019-12-15 00:00:00', 44, 16, 201, 'Bé gấu đáng yêu', 0, 61, 1),
(44, 'Ly cốc sứ Khủng long Little Dino Im Hungry 35', 'lylittedino.jpg', 120000, '2019-12-15 00:00:00', 40, 39, 356, 'Khủng long đói rồi', 0, 61, 1),
(45, 'Hộp cơm nhựa Little Dinosaur art funny 8x10x1', 'comlittedino.jpg', 100000, '2019-12-15 00:00:00', 50, 13, 264, 'Ăn cơm khủng long', 0, 62, 1),
(46, 'Hộp cơm lò vi sóng Khủng long baby cute 2 tần', 'combabydino.jpg', 90000, '2019-12-15 00:00:00', 60, 18, 200, 'Có thể bỏ vào lò vi sóng', 0, 62, 1),
(47, 'Hộp cơm nhựa I love Corn 2 tầng 8x9x16 - Cà r', 'comilovecorn.jpg', 60000, '2019-12-15 00:00:00', 45, 39, 264, 'Thích ăn bắp cũng thích ăn cà rốt', 0, 62, 1),
(48, 'Hộp cơm nhựa I love Bean 2 tầng 8x9x16 - Xanh', 'comilovebean.jpg', 60000, '2019-12-15 00:00:00', 40, 13, 199, 'Đậu xanh', 0, 62, 1),
(49, 'Gương gập để bàn Sunny day 15x21 - Mix', 'guongsunnyday.jpg', 50000, '2019-12-15 00:00:00', 50, 18, 356, 'Gương nắng đẹp', 0, 71, 1),
(50, 'Gương gập để bàn Leaves always collection 15x', 'guongleavesalways.jpg', 50000, '2019-12-15 00:00:00', 60, 39, 1, 'Nhiều lá lắm luôn', 0, 71, 1),
(51, 'Gương gập để bàn Forever I will love you endl', 'guongforever.jpg', 50000, '2019-12-15 00:00:00', 44, 13, 1, 'Really', 0, 71, 1),
(52, 'Gương cầm tay Heart Strawberry Rainbow Moon t', 'guongheartstraw.jpg', 85000, '2019-12-15 00:00:00', 39, 18, 1, 'Trái dâu có hình trái tim', 0, 71, 1),
(53, 'Hộp đựng mỹ phẩm Gấu nâu\'face có quai 11x18x2', 'mpgaunau.jpg', 180000, '2019-12-15 00:00:00', 50, 39, 356, 'Đựng mỹ phẩm có con gấu rất xinh', 0, 72, 1),
(54, 'Hộp đựng trang sức Basic Color cao cấp 8x17x2', 'tsnbasiccolor.jpg', 190000, '2019-12-15 00:00:00', 60, 13, 264, 'Cái này dùng đựng trang sức', 0, 72, 1),
(55, 'Túi đựng mỹ phẩm trong suốt MZ Baby Shark x W', 'mpbabyshark.jpg', 85000, '2019-12-15 00:00:00', 45, 18, 200, 'Do Do Do Do', 0, 72, 1),
(56, 'Túi đựng mỹ phẩm trong suốt MZ Vô Diện activi', 'mpvodien.jpg', 85000, '2019-12-15 00:00:00', 40, 39, 356, 'Ăn ăn ăn ăn', 0, 72, 1),
(57, 'Bộ chiết mỹ phẩm Shirley Mouse - Mix', 'cmpshirley.jpg', 75000, '2019-12-15 00:00:00', 50, 13, 264, 'Chỉ biết mickey, jerry', 0, 81, 1),
(58, 'Dụng cụ pha chiết mỹ phẩm Malian có nắp - Mix', 'cmpmalian.jpg', 45000, '2019-12-15 00:00:00', 60, 18, 200, 'Malian là ai', 0, 81, 1),
(59, 'Bộ chiết mỹ phẩm Little Forest - Mix', 'cmplittleforest.jpg', 75000, '2019-12-15 00:00:00', 45, 39, 356, 'Khu rừng nhỏ xíu, Bé Lâm đó', 0, 81, 1),
(60, 'Bộ chiết mỹ phẩm Art mini Slogan set3 - Mix', 'cpartmini.jpg', 50000, '2019-12-15 00:00:00', 40, 13, 264, 'SLOGAN là gì', 0, 81, 1),
(61, 'Passport bọc hộ chiếu MZ idol BTS cartoon Foo', 'passportbts.jpg', 95000, '2019-12-15 00:00:00', 50, 18, 200, 'Lên nan sky ơi', 0, 82, 1),
(62, 'Passport bọc hộ chiếu MZ BMO 10x14 - Mix', 'passportbmo.jpg', 95000, '2019-12-15 00:00:00', 60, 39, 356, 'Advanture time', 0, 82, 1),
(63, 'Passport bọc hộ chiếu MZ Supreme x Jordan 10x', 'passportsupreme.jpg', 95000, '2019-12-15 00:00:00', 45, 13, 264, 'Hai hãng này có chơi chung', 0, 82, 1),
(64, 'Passport bọc hộ chiếu MZ Ice bear Donut 10x14', 'passporticebear.jpg', 95000, '2019-12-15 00:00:00', 40, 18, 200, 'Gấu nghiêm túc', 0, 82, 1),
(65, 'Đồ chơi máy game cầm tay mini Máy bay phản lự', 'maybay.jpg', 60000, '2019-12-15 00:00:00', 50, 39, 356, 'Có game bắn máy bay', 0, 91, 1),
(66, 'Đồ chơi máy game cầm tay mini Steering dùng p', 'steering.jpg', 60000, '2019-12-15 00:00:00', 60, 18, 264, 'Có game đua xe', 0, 91, 1),
(67, 'Đồ chơi boardgame Bom lắc - Mix', 'bomlac.jpg', 160000, '2019-12-15 00:00:00', 45, 13, 200, 'Đánh bom với valak', 0, 91, 1),
(68, 'Đồ chơi boardgame U Lầy - Mix', 'ulay.jpg', 70000, '2019-12-15 00:00:00', 40, 39, 356, 'Uno phiên bản lầy', 0, 91, 1),
(69, 'Mũ nón thú cưng bờm Sư tử', 'mubomsutu.jpg', 70000, '2019-12-15 00:00:00', 50, 18, 264, 'Mũ nón thú cưng bờm Sư tử siêu xinh đẹp', 0, 92, 1),
(70, 'Mũ nón thú cưng tai Thỏ - Trắng', 'mutaitho.jpg', 90000, '2019-12-15 00:00:00', 60, 13, 200, 'Mũ nón thú cưng tai Thỏ - Trắng siêu xinh đẹp', 0, 92, 1),
(71, 'Bánh mì', 'carousel3.jpg', 123123, '2019-12-16 03:34:56', 123, 0, 0, '123', 1, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTaiKhoan` int(11) NOT NULL,
  `TenDangNhap` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MatKhau` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TenHienThi` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DiaChi` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BiXoa` tinyint(1) DEFAULT 0,
  `MaLoaiTaiKhoan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTaiKhoan`, `TenDangNhap`, `MatKhau`, `TenHienThi`, `DiaChi`, `DienThoai`, `Email`, `BiXoa`, `MaLoaiTaiKhoan`) VALUES
(1, 'ndhuy', 'ndhuy', 'Đức Huy', '227 - Nguyễn Văn Cừ - Q.5', '01234567890', 'ndhuy@gmail.com', 0, 1),
(5, 'admin', 'admin', 'Admin website', 'Baby Shop', '0909123456', 'admin@babyshop.vn', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tinhtrang`
--

CREATE TABLE `tinhtrang` (
  `MaTinhTrang` int(11) NOT NULL,
  `TenTinhTrang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tinhtrang`
--

INSERT INTO `tinhtrang` (`MaTinhTrang`, `TenTinhTrang`) VALUES
(1, 'Đặt hàng'),
(2, 'Đang giao hàng'),
(3, 'Thanh toán'),
(4, 'Hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Indexes for table `chitietloaisanpham`
--
ALTER TABLE `chitietloaisanpham`
  ADD PRIMARY KEY (`MaChiTietLoaiSanPham`),
  ADD KEY `FK_CTLoaiSanPham_LoaiSanPham` (`MaLoaiSanPham`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_TaiKhoan1_idx` (`MaTaiKhoan`),
  ADD KEY `fk_DonDatHang_TinhTrang1_idx` (`MaTinhTrang`);

--
-- Indexes for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  ADD PRIMARY KEY (`MaHangSanXuat`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Indexes for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`MaLoaiTaiKhoan`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `FK_SanPham_CTLoaiSanPham` (`MaChiTietLoaiSanPham`),
  ADD KEY `FK_SanPham_HangSanXuat` (`MaHangSanXuat`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaTaiKhoan`),
  ADD KEY `fk_TaiKhoan_LoaiTaiKhoan_idx` (`MaLoaiTaiKhoan`);

--
-- Indexes for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  ADD PRIMARY KEY (`MaTinhTrang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietloaisanpham`
--
ALTER TABLE `chitietloaisanpham`
  MODIFY `MaChiTietLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `hangsanxuat`
--
ALTER TABLE `hangsanxuat`
  MODIFY `MaHangSanXuat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `MaLoaiTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaTaiKhoan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tinhtrang`
--
ALTER TABLE `tinhtrang`
  MODIFY `MaTinhTrang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `chitietloaisanpham`
--
ALTER TABLE `chitietloaisanpham`
  ADD CONSTRAINT `FK_CTLoaiSanPham_LoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`);

--
-- Constraints for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_TaiKhoan1` FOREIGN KEY (`MaTaiKhoan`) REFERENCES `taikhoan` (`MaTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrang1` FOREIGN KEY (`MaTinhTrang`) REFERENCES `tinhtrang` (`MaTinhTrang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_SanPham_CTLoaiSanPham` FOREIGN KEY (`MaChiTietLoaiSanPham`) REFERENCES `chitietloaisanpham` (`MaChiTietLoaiSanPham`),
  ADD CONSTRAINT `FK_SanPham_HangSanXuat` FOREIGN KEY (`MaHangSanXuat`) REFERENCES `hangsanxuat` (`MaHangSanXuat`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `fk_TaiKhoan_LoaiTaiKhoan` FOREIGN KEY (`MaLoaiTaiKhoan`) REFERENCES `loaitaikhoan` (`MaLoaiTaiKhoan`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
