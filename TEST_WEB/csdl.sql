-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2021 at 09:21 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_tt`
--

-- --------------------------------------------------------

--
-- Table structure for table `bangcap`
--

CREATE TABLE `bangcap` (
  `id` bigint(20) NOT NULL,
  `BC_TEN` varchar(50) NOT NULL,
  `BC_HINHANH` varchar(100) NOT NULL DEFAULT 'NO IMAGE',
  `id_GIAOVIEN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bangcap`
--

INSERT INTO `bangcap` (`id`, `BC_TEN`, `BC_HINHANH`, `id_GIAOVIEN`) VALUES
(1, 'Bằng nấu ăn', 'laptop.png', 1),
(3, 'Bằng nấu ăn', 'laptop.png', 2),
(5, 'Bằng trung cấp nghề điện', 'link lưu file ex: public\\File\\bangcapgv\\bang1.pdf', 3),
(6, 'Bằng trung cấp kinh doanh online', 'link lưu file ex: public\\File\\bangcapgv\\bang1.pdf', 3),
(7, 'Bằng trung cấp nghề điện', 'link lưu file ex: public\\File\\bangcapgv\\bang1.pdf', 4),
(8, 'Bằng trung cấp kinh doanh online', 'link lưu file ex: public\\File\\bangcapgv\\bang1.pdf', 4),
(12, 'Bằng  cử nhân IT CTU Cần Thơ', '1200px-Logo_Dai_hoc_Can_Tho.svg.png', 7),
(13, 'Bằng cử nhân IT ĐHCT', '1200px-Logo_Dai_hoc_Can_Tho.svg.png', 6),
(15, 'Bằng pha chế', 'baking.png', 2),
(16, 'Bằng pha chế', 'baking.png', 2),
(17, 'Bằng pha chế', 'baking.png', 1),
(18, 'Bằng pha chế', 'baking.png', 1),
(19, 'TTT2', '068846a63888cfd69699.jpg', 8),
(20, 'TTT2', '068846a63888cfd69699.jpg', 9),
(21, 'Bằng nấu ăn', 'bangneu.jpg', 10),
(22, 'Bằng pha chế', 'bangneu.jpg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `C_TUKHOA` varchar(300) NOT NULL,
  `C_TRALOI` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `C_TUKHOA`, `C_TRALOI`) VALUES
(6, 'xin chào', 'Chào bạn, bạn cần hỗ trợ gì ạ!.'),
(7, 'Học phí pha chế nước ép bao nhiêu ạ', 'Học phí lớp pha chế nước ép là 6.000.000 vnd ạ'),
(8, 'học phí pha chế trà sữa bao nhiêu tiền ạ', 'Học phí pha chế trà sửa là 5.000.000 vnd a!.'),
(9, 'địa chỉ cơ sở ở đâu ạ', 'Đường 3/2, P. Xuân Khánh, Q. Ninh Kiều, TP Cần Thơ'),
(10, 'số điện thoại', 'Số điện thoại: 0365476962');

-- --------------------------------------------------------

--
-- Table structure for table `chuongtrinh`
--

CREATE TABLE `chuongtrinh` (
  `id` bigint(20) NOT NULL,
  `CT_TEN` varchar(100) NOT NULL,
  `CT_SOTIET` int(11) NOT NULL DEFAULT 0,
  `CT_TENFILE` varchar(100) NOT NULL DEFAULT 'NO FILE',
  `id_MODULE` bigint(20) DEFAULT NULL,
  `id_LOAICHUONGTRINH` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chuongtrinh`
--

INSERT INTO `chuongtrinh` (`id`, `CT_TEN`, `CT_SOTIET`, `CT_TENFILE`, `id_MODULE`, `id_LOAICHUONGTRINH`) VALUES
(64, 'Bài học 1 tin học lý thuyết', 3, 'NO FILE', 33, 1),
(65, 'Bài học 2 tin hoc lý thuyết', 3, 'NO FILE', 33, 1),
(68, 'Bài học 1 tin học thực hành', 3, 'NO FILE', 33, 2),
(69, 'Bài học 2 tin học thực hành', 3, 'NO FILE', 33, 2),
(72, 'Thiết kế môn 1 bài 1 (lý thuyết)', 3, '', 35, 1),
(74, 'Thiết kế môn 1 bài 1(thực hành)', 3, '', 35, 2),
(76, 'Thiết kế môn 1 (kiểm tra)', 3, '', 35, 3),
(77, 'Thiết kế môn 2 bài 1 (lý thuyết)', 3, '', 36, 1),
(78, 'Thiết kế môn 2 bài 1 (thực hành)', 3, '', 36, 2),
(79, 'Kiểm tra môn 2 bài 1', 3, '', 36, 3),
(91, 'Lý thuyết pha chế nước ép bài 1', 3, '', 48, 1),
(92, 'Lý thuyết pha chế nước ép bài 2', 3, '', 48, 1),
(97, 'Lý thuyết pha chế nước ép bài 3', 3, '', 48, 1),
(98, 'Thực hành pha chế nước ép bài 1', 3, '', 48, 2),
(99, 'Thực hành pha chế nước ép bài 2', 3, '', 48, 2),
(100, 'Thực hành pha chế nước ép bài 3', 3, '', 48, 2),
(101, 'Thi thực hành', 3, '', 48, 3),
(103, 'Thi lý thuyết', 3, '', 48, 3),
(107, 'Thi thực hành', 6, '', 34, 1),
(108, 'Thi thực hành', 6, '', 34, 1),
(109, 'Thi thực hành', 3, '', 34, 1);

--
-- Triggers `chuongtrinh`
--
DELIMITER $$
CREATE TRIGGER `cap_nhat_so_tiet_module` AFTER INSERT ON `chuongtrinh` FOR EACH ROW BEGIN
                IF NEW.id_LOAICHUONGTRINH = 1 THEN
                    UPDATE module 
                    SET MD_LYTHUYET = MD_LYTHUYET + NEW.CT_SOTIET
                    WHERE id = NEW.id_MODULE;
                END IF;

                IF NEW.id_LOAICHUONGTRINH = 2 THEN
                    UPDATE module 
                    SET MD_THUCHANH = MD_THUCHANH + NEW.CT_SOTIET
                    WHERE id = NEW.id_MODULE;
                END IF;

                IF NEW.id_LOAICHUONGTRINH = 3 THEN
                    UPDATE module 
                    SET MD_KIEMTRA = MD_KIEMTRA + NEW.CT_SOTIET
                    WHERE id = NEW.id_MODULE;
                 END IF;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `cap_nhat_so_tiet_module_2` AFTER DELETE ON `chuongtrinh` FOR EACH ROW BEGIN
                IF OLD.id_LOAICHUONGTRINH = 1 THEN
                    UPDATE module 
                    SET MD_LYTHUYET = MD_LYTHUYET - OLD.CT_SOTIET
                    WHERE id = OLD.id_MODULE;
                END IF;

                IF OLD.id_LOAICHUONGTRINH = 2 THEN
                    UPDATE module 
                    SET MD_THUCHANH = MD_THUCHANH - OLD.CT_SOTIET
                    WHERE id = OLD.id_MODULE;
                END IF;

                IF OLD.id_LOAICHUONGTRINH = 3 THEN
                    UPDATE module 
                    SET MD_KIEMTRA = MD_KIEMTRA - OLD.CT_SOTIET
                    WHERE id = OLD.id_MODULE;
                END IF;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `cap_nhat_so_tiet_module_3` BEFORE UPDATE ON `chuongtrinh` FOR EACH ROW BEGIN
                IF OLD.id_LOAICHUONGTRINH = 1 THEN
                    UPDATE module 
                    SET MD_LYTHUYET = MD_LYTHUYET - OLD.CT_SOTIET
                    WHERE id = OLD.id_MODULE;
                END IF;

                IF OLD.id_LOAICHUONGTRINH = 2 THEN
                    UPDATE module 
                    SET MD_THUCHANH = MD_THUCHANH - OLD.CT_SOTIET
                    WHERE id = OLD.id_MODULE;
                END IF;

                IF OLD.id_LOAICHUONGTRINH = 3 THEN
                    UPDATE module 
                    SET MD_KIEMTRA = MD_KIEMTRA - OLD.CT_SOTIET
                    WHERE id = OLD.id_MODULE;
                END IF;
                
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `cap_nhat_so_tiet_module_4` AFTER UPDATE ON `chuongtrinh` FOR EACH ROW BEGIN
                IF NEW.id_LOAICHUONGTRINH = 1 THEN
                    UPDATE module 
                    SET MD_LYTHUYET = MD_LYTHUYET + NEW.CT_SOTIET
                    WHERE id = NEW.id_MODULE;
                END IF;

                IF NEW.id_LOAICHUONGTRINH = 2 THEN
                    UPDATE module 
                    SET MD_THUCHANH = MD_THUCHANH + NEW.CT_SOTIET
                    WHERE id = NEW.id_MODULE;
                END IF;

                IF NEW.id_LOAICHUONGTRINH = 3 THEN
                    UPDATE module 
                    SET MD_KIEMTRA = MD_KIEMTRA + NEW.CT_SOTIET
                    WHERE id = NEW.id_MODULE;
                END IF;
                
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `congty`
--

CREATE TABLE `congty` (
  `id` int(11) NOT NULL,
  `CT_TEN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CT_NOIDUNG` varchar(500) CHARACTER SET utf8 NOT NULL,
  `CT_DIACHI` varchar(200) CHARACTER SET utf8 NOT NULL,
  `CT_VITRITUYEN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `CT_HINHANH` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `id_NGANHNGHEDAOTAO` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `congty`
--

INSERT INTO `congty` (`id`, `CT_TEN`, `CT_NOIDUNG`, `CT_DIACHI`, `CT_VITRITUYEN`, `CT_HINHANH`, `id_NGANHNGHEDAOTAO`) VALUES
(1, 'Công Ty ABC', 'Song song với việc đào tạo theo chương trình chung, trung tâm luôn tích cực hỗ trợ tìm việc cho các bạn học viên.Song song với việc đào tạo theo chương trình chung, trung tâm luôn tích cực hỗ trợ tìm việc cho các bạn học viên.Song song với việc đào tạo theo chương trình chung.', 'Ô Môn, Bình Thủy, Cần Thơ', 'Đâu bếp trưởng', 'https://phunggia.vn/public/upload/31.jpg?1', 15),
(2, 'Nhà Hàng', 'Song song với việc đào tạo theo chương trình chung, trung tâm luôn tích cực hỗ trợ tìm việc cho các bạn học viên.Song song với việc đào tạo theo chương trình chung, trung tâm luôn tích cực hỗ trợ tìm việc cho các bạn học viên.Song song với việc đào tạo theo chương trình chung.', 'Xuân Khánh, Ninh Kiều, Cần Thơ', 'Phục vụ', 'https://hotrohocsinh.vn/wp-content/uploads/2018/12/10-luu-y-khi-khoi-nghiep-kinh-doanh-nha-hang-7460-1.jpg', 16);

-- --------------------------------------------------------

--
-- Table structure for table `congviec`
--

CREATE TABLE `congviec` (
  `id` bigint(20) NOT NULL,
  `CV_TEN` varchar(50) NOT NULL DEFAULT 'Chưa',
  `CV_NOILAM` varchar(50) NOT NULL DEFAULT 'Không',
  `CV_TGNHAN` date NOT NULL DEFAULT current_timestamp(),
  `id_HOCVIEN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `congviec`
--

INSERT INTO `congviec` (`id`, `CV_TEN`, `CV_NOILAM`, `CV_TGNHAN`, `id_HOCVIEN`) VALUES
(1, 'Bartender', 'Coffe Highland', '2018-01-01', 1),
(2, 'Chạy Grab', 'Không', '2019-05-31', 2),
(3, 'Giảng viên', 'Cao đẳng Cần Thơ', '2018-03-25', 5),
(9, 'Chưa', 'Không', '2021-07-23', 4),
(80, 'Bartender', 'Coffe Highland', '2021-09-10', 62),
(81, 'Bartender', 'Coffe Highland', '2021-09-10', 62),
(82, 'Bartender 11', 'Coffe Highland', '2021-09-15', 63),
(83, 'Bartender 11', 'Coffe Highland', '2021-09-15', 63),
(84, 'Chưa', 'Không', '2021-09-08', 64),
(85, 'Chưa', 'Không', '2021-09-08', 64),
(86, 'Bartender', 'Coffe Highland', '2021-09-15', 65),
(87, 'Bartender', 'Coffe Highland', '2021-09-15', 65),
(88, 'Bartender', 'Coffe Highland', '2021-09-15', 66),
(89, 'Bartender', 'Coffe Highland', '2021-09-15', 66);

-- --------------------------------------------------------

--
-- Table structure for table `cosodaotao`
--

CREATE TABLE `cosodaotao` (
  `id` bigint(20) NOT NULL,
  `CS_TEN` varchar(50) NOT NULL,
  `CS_SDT` varchar(12) DEFAULT NULL,
  `CS_DIACHI` varchar(100) NOT NULL,
  `id_XA` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cosodaotao`
--

INSERT INTO `cosodaotao` (`id`, `CS_TEN`, `CS_SDT`, `CS_DIACHI`, `id_XA`) VALUES
(1, 'Trung tâm đào tạo ngành nghề', '0365476962', 'Đương 3/2, Q.Ninh kiều', 3),
(2, 'Trung tâm đào tạo ngành nghề', '0365476962', 'Số 16/C, đường Mạc Thiên Tích', 2),
(3, 'Cơ sở 111', '0365476962', 'Số 16/C, đường Mạc Thiên Tích', 2),
(4, 'Cơ sở 111', '0365476962', 'Số 16/C, đường Mạc Thiên Tích', 2),
(5, 'Cơ sở 111', '0365476962', 'Số 16/C, đường Mạc Thiên Tích', 2),
(6, 'Trung tâm Hỗ trợ việc làm Cần Thơ 1', '0365476962', 'Số 16/C, đường Mạc Thiên Tích', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cutrugv`
--

CREATE TABLE `cutrugv` (
  `id` bigint(20) NOT NULL,
  `DIA_CHI` varchar(100) NOT NULL,
  `THUONG_TRU` varchar(3) NOT NULL,
  `id_GIAOVIEN` bigint(20) DEFAULT NULL,
  `id_XA` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cutrugv`
--

INSERT INTO `cutrugv` (`id`, `DIA_CHI`, `THUONG_TRU`, `id_GIAOVIEN`, `id_XA`) VALUES
(1, '78/B3 đường 30/4', 'YES', 1, 3),
(2, '78/B3 đường 30/4', 'NO', 1, 3),
(3, '56/C4 Nguyễn Văn Linh', 'YES', 2, 3),
(4, '478, ấp Khánh Hòa C', 'NO', 2, 4),
(5, '89/51, đường 3/2', 'YES', 3, 3),
(6, '89/51, đường 3/2', 'NO', 3, 3),
(7, '68/21, Trần Khánh Dư', 'YES', 4, 3),
(8, '99, ấp Thạnh Lợi A2', 'NO', 4, 1),
(11, 'Ấp Thạnh Lợi A2', 'NO', 6, 1),
(12, 'KTX B, đường 3/2, Đại Học Cần Thơ', 'YES', 6, 3),
(13, 'Số 43, Phan Đình Dót', 'NO', 7, 2),
(14, '45/B1 khu vực 2, Phan Khánh Hòa', 'YES', 7, 3),
(15, 'Số 334, ấp Xẻo Vong C', 'NO', 8, 3),
(16, 'KTX A, đường 3/2, Đại học Cần Th', 'YES', 8, 4),
(17, 'Số 334, ấp Xẻo Vong C', 'NO', 9, 4),
(18, 'KTX A, đường 3/2, Đại học Cần Th', 'YES', 9, 4),
(19, 'Số 334, ấp Xẻo Vong C', 'NO', 10, 1),
(20, 'Số 200', 'YES', 10, 3),
(21, 'Số 225,', 'NO', 11, 1),
(22, 'Số 200', 'YES', 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cutruhv`
--

CREATE TABLE `cutruhv` (
  `id` bigint(20) NOT NULL,
  `DIA_CHI` varchar(100) NOT NULL,
  `THUONG_TRU` varchar(3) NOT NULL,
  `id_HOCVIEN` bigint(20) DEFAULT NULL,
  `id_XA` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cutruhv`
--

INSERT INTO `cutruhv` (`id`, `DIA_CHI`, `THUONG_TRU`, `id_HOCVIEN`, `id_XA`) VALUES
(1, 'Số 357, Quốc Lộ 1A, ấp Thạnh Lợi A2', 'NO', 1, 1),
(2, 'KTX A, đường 3/2, Đại học Cần Thơ', 'YES', 1, 3),
(3, 'Số 334, ấp Xẻo Vong C', 'NO', 2, 2),
(4, 'KTX B, đường 3/2, Đại Học Cần Thơ', 'YES', 2, 3),
(7, 'ấp 34/7 đường U Minh thượng', 'NO', 4, 5),
(8, 'Số 367, đường Trần Ngọc Quế', 'YES', 4, 3),
(9, 'Số 225, đại lộ Hòa Bình', 'NO', 5, 3),
(10, 'Số 225, đại lộ Hòa Bình', 'YES', 5, 3),
(81, 'Số 334, ấp Xẻo Vong C', 'NO', 62, 1),
(82, 'KTX A, đường 3/2, Đại học Cần Th', 'YES', 62, 1),
(83, 'Ấp Trung Thống', 'NO', 63, 1),
(84, 'Cần Thơ', 'YES', 63, 1),
(85, 'Soc trăng', 'NO', 64, 2),
(86, 'Cần Thơ', 'YES', 64, 2),
(87, 'Soc trăng', 'NO', 65, 1),
(88, 'Cần Thơ', 'YES', 65, 1),
(89, 'Soc trăng', 'NO', 66, 1),
(90, 'Cần Thơ', 'YES', 66, 2),
(91, 'Soc trăng', 'NO', 67, 1),
(92, 'Cần Thơ', 'YES', 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `danhsachchungchi`
--

CREATE TABLE `danhsachchungchi` (
  `id` bigint(20) NOT NULL,
  `CC_SOHIEU` varchar(20) NOT NULL,
  `CC_LOAI` varchar(30) NOT NULL,
  `CC_XEPLOAI` varchar(20) NOT NULL,
  `CC_NGAYCAP` date NOT NULL,
  `CC_NGAYNHAN` date NOT NULL,
  `CC_FILE` varchar(100) NOT NULL DEFAULT 'NO FILE',
  `CC_KHOA` varchar(15) NOT NULL,
  `CC_MALOP` varchar(15) NOT NULL,
  `CC_MANGHE` varchar(15) NOT NULL,
  `id_HOCVIEN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhsachchungchi`
--

INSERT INTO `danhsachchungchi` (`id`, `CC_SOHIEU`, `CC_LOAI`, `CC_XEPLOAI`, `CC_NGAYCAP`, `CC_NGAYNHAN`, `CC_FILE`, `CC_KHOA`, `CC_MALOP`, `CC_MANGHE`, `id_HOCVIEN`) VALUES
(1, '00001/2019', 'Sơ cấp', 'Khá', '2019-02-01', '2019-01-03', 'Route.jpg', 'K1', 'L01', 'THVP', 1),
(2, '00002/2019', 'Trung cấp', 'Khá', '2019-05-30', '2019-07-30', 'View.jpg', 'K1', 'L02', 'TK', 2),
(5, '001/2021', 'Khá', 'Khá', '2021-09-01', '0000-00-00', 'NO FILE', 'K3', 'L08', 'PCTS', 5);

-- --------------------------------------------------------

--
-- Table structure for table `day_nghe`
--

CREATE TABLE `day_nghe` (
  `id` bigint(20) NOT NULL,
  `id_GIAOVIEN` bigint(20) DEFAULT NULL,
  `id_NGANHNGHEDAOTAO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day_nghe`
--

INSERT INTO `day_nghe` (`id`, `id_GIAOVIEN`, `id_NGANHNGHEDAOTAO`) VALUES
(15, 1, 9),
(16, 4, 9),
(17, 2, 15),
(18, 3, 15),
(19, 8, 10),
(20, 9, 9),
(21, 6, 10),
(22, 6, 11),
(23, 9, 13),
(24, 4, 14),
(25, 4, 15),
(26, 4, 16),
(28, 4, 25),
(29, 1, 16),
(30, 1, 24),
(31, 10, 15),
(32, 11, 24);

-- --------------------------------------------------------

--
-- Table structure for table `day_o_lop`
--

CREATE TABLE `day_o_lop` (
  `id` bigint(20) NOT NULL,
  `id_LOP` bigint(20) DEFAULT NULL,
  `id_GIAOVIEN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `day_o_lop`
--

INSERT INTO `day_o_lop` (`id`, `id_LOP`, `id_GIAOVIEN`) VALUES
(19, 1, 1),
(22, 3, 3),
(23, 4, 4),
(27, 5, 6),
(28, 6, 7),
(33, 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `id` bigint(20) NOT NULL,
  `D_GIATRI` float NOT NULL DEFAULT 0,
  `id_HOCVIEN` bigint(20) DEFAULT NULL,
  `id_LOP` bigint(20) DEFAULT NULL,
  `id_LOAIDIEM` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`id`, `D_GIATRI`, `id_HOCVIEN`, `id_LOP`, `id_LOAIDIEM`) VALUES
(37, 8, 1, 1, 5),
(38, 7, 1, 1, 6),
(49, 8, 2, 2, 5),
(50, 7, 2, 2, 6),
(53, 9, 62, 2, 5),
(54, 5, 62, 2, 6),
(55, 6, 67, 1, 5),
(56, 1, 67, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `diemdanh`
--

CREATE TABLE `diemdanh` (
  `id` bigint(20) NOT NULL,
  `id_HOCVIEN` bigint(20) DEFAULT NULL,
  `id_THOIKHOABIEU` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `diemdanh`
--

INSERT INTO `diemdanh` (`id`, `id_HOCVIEN`, `id_THOIKHOABIEU`) VALUES
(33, 1, 49),
(35, 1, 48),
(38, 1, 52);

-- --------------------------------------------------------

--
-- Table structure for table `doituong`
--

CREATE TABLE `doituong` (
  `id` bigint(20) NOT NULL,
  `DT_MASO` varchar(15) NOT NULL,
  `DT_TEN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doituong`
--

INSERT INTO `doituong` (`id`, `DT_MASO`, `DT_TEN`) VALUES
(1, 'DT1', 'Người không có BHTN'),
(2, 'DT2', 'Người có BHTN'),
(3, 'DT122', 'PP3'),
(4, 'DT122', 'PP');

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `id` bigint(20) NOT NULL,
  `GV_CMND` varchar(20) NOT NULL,
  `GV_HOTEN` varchar(50) NOT NULL,
  `GV_HINHANH` varchar(200) DEFAULT NULL,
  `GV_GIOITINH` varchar(5) NOT NULL,
  `GV_NGAYSINH` date NOT NULL DEFAULT '1990-01-01',
  `GV_SDT` varchar(15) NOT NULL,
  `GV_TRINHDO` varchar(30) NOT NULL,
  `GV_LYLICH` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`id`, `GV_CMND`, `GV_HOTEN`, `GV_HINHANH`, `GV_GIOITINH`, `GV_NGAYSINH`, `GV_SDT`, `GV_TRINHDO`, `GV_LYLICH`) VALUES
(1, '787989765', 'Nguyễn Văn A', 'Son-Tran-12.jpg', 'Nam', '1994-01-11', '0122334455', 'Thạc sĩ', 'B1706794_Nguyen_Thanh_Duy.docx'),
(2, '787968255', 'Nguyễn Văn B', 'Anh-giang-vien-dai-hoc-3.jpg', 'Nam', '1990-01-01', '012345678', 'PGS', 'lưu đường dẫn hoặc tên file Ex: public\\File\\lylichgiaovien\\lylich1.docx'),
(3, '899879660', 'Nguyễn Thị C', '9302263968_690841895-601x900.jpg', 'Nam', '1990-01-01', '0987544322', 'Tiến sĩ', 'lưu đường dẫn hoặc tên file Ex: public\\File\\lylichgiaovien\\lylich1.docx'),
(4, '999999999', 'Nguyễn Thị D', '157116018923236.jpg', 'Nam', '1990-01-01', '0909090099', 'Thạc sĩ', 'lưu đường dẫn hoặc tên file Ex: public\\File\\lylichgiaovien\\lylich1.docx'),
(6, '363969243', 'Nguyễn Văn E', 'MG_2419.jpg', 'Nam', '1990-01-01', '0337154039', 'Cử nhân', 'B1706794_Nguyen_Thanh_Duy.docx'),
(7, '123456789', 'La Văn Tống', 'Anh-Doanh-Nhan-35.jpg', 'Nam', '1993-07-01', '098335678', 'Thạc sĩ', 'mau-bien-ban-cam-ket (1).doc'),
(8, '3665476962', 'Phan Thanh Phú', 'team-3.jpg', 'Nam', '1996-02-20', '0365476962', 'Tiến sĩ', '068846a63888cfd69699.jpg'),
(9, '3665476962', 'Lê Thị Đỉnh', 'cach-tao-dang-chup-anh-doanh-nhan-1.jpg', 'Nam', '1997-05-20', '0365476962', 'Thạc sĩ', '068846a63888cfd69699.jpg'),
(10, '3665476969', 'Đinh Lê Anh Quang', 'ao-vest-nam-lich-lam-2018.jpg', 'Nam', '1995-10-04', '0923050651', 'Thạc sĩ', 'bangneu.jpg'),
(11, '3665476969', 'Võ Long Đĩnh', 'Anh-giang-vien-dai-hoc-3.jpg', 'Nam', '1997-10-03', '0923050651', 'Thạc sĩ', 'bangneu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hocvien`
--

CREATE TABLE `hocvien` (
  `id` bigint(20) NOT NULL,
  `HV_CMND` varchar(20) NOT NULL,
  `HV_HOTEN` varchar(30) NOT NULL,
  `HV_HINHANH` varchar(200) NOT NULL,
  `HV_SDT` varchar(15) NOT NULL,
  `HV_NGAYSINH` date NOT NULL,
  `HV_GIOITINH` varchar(5) NOT NULL,
  `HV_TTVIECLAM` varchar(3) NOT NULL,
  `HV_DANTOC` varchar(10) NOT NULL,
  `HV_HOCVAN` varchar(20) NOT NULL,
  `HV_NOILAMVIECDUKIEN` varchar(50) DEFAULT NULL,
  `HV_TINHTRANG` int(3) NOT NULL DEFAULT 0,
  `HV_LYDONGHI` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `id_USER` int(11) DEFAULT NULL,
  `id_DOITUONG` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hocvien`
--

INSERT INTO `hocvien` (`id`, `HV_CMND`, `HV_HOTEN`, `HV_HINHANH`, `HV_SDT`, `HV_NGAYSINH`, `HV_GIOITINH`, `HV_TTVIECLAM`, `HV_DANTOC`, `HV_HOCVAN`, `HV_NOILAMVIECDUKIEN`, `HV_TINHTRANG`, `HV_LYDONGHI`, `id_USER`, `id_DOITUONG`) VALUES
(1, '366159861', 'Đinh Lê Anh Quang', '', '0337254039', '1999-08-06', 'Nam', 'YES', 'Kinh', '12/12', 'Chưa có', 0, 'ok', 0, 1),
(2, '366159860', 'Phan Thanh Phú', '', '0337474508', '1999-01-01', 'Nam', 'YES', 'Kinh', '12/12', 'Chưa có', 0, NULL, 0, 1),
(4, '366258489', 'Huỳnh Tiến Anh', '', '0974563487', '1998-04-12', 'Nam', 'NO', 'Khơ me', '12/12', 'Cty Tân Lộc, tp. Hồ Chí Minh', 0, NULL, 0, 2),
(5, '345678900', 'Ngô Vũ Bão', '', '0832474567', '1998-12-06', 'Nam', 'YES', 'Hoa', 'Cao đẳng', 'CTU Cần Thơ', 0, NULL, 0, 2),
(62, '322145867', 'Phạm Dương Ngôi', 'chậu.jpg', '0365476962', '2021-09-03', 'Nam', 'YES', 'Kinh', '1/12', 'Cần thơ', 0, NULL, 32, 1),
(63, '366186204', 'Trần Hải Thịnh', 'tinngan_111904_385349643_0.jpg', '03124652874', '2004-03-16', 'Nam', 'YES', 'Khơ me', '4/12', 'Cần thơ', 0, NULL, 36, 1),
(64, '352147896', 'Lý Hồng Sơn', 'logo.jpg', '031246874', '1997-02-04', 'Nam', 'YES', 'Khơ me', '1/12', 'Cần thơ', 0, NULL, 36, 1),
(65, '366547820', 'Đinh Lê Thịnh', 'logo.jpg', '0337254039', '2000-02-09', 'Nam', 'YES', 'Kinh', '1/12', 'Cần thơ', 0, NULL, NULL, 3),
(66, '355147862', 'Đinh Lê Thịnh An', 'logo.jpg', '0337254039', '2001-07-24', 'Nam', 'YES', 'Kinh', '1/12', 'Cần thơ', 0, NULL, NULL, 3),
(67, '355248962', 'Nguyễn Hoàng Anh', '—Pngtree—golden texture certificate_5396717.png', '0365476962', '1987-06-24', 'Nam', 'YES', 'Kinh', '1/12', 'Cần thơ', 1, 'ok1', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hocviendangky`
--

CREATE TABLE `hocviendangky` (
  `id` int(11) NOT NULL,
  `id_USER` int(11) NOT NULL,
  `id_NGANHNGHEDAOTAO` int(11) NOT NULL,
  `id_LOAIHINH` int(11) NOT NULL,
  `id_COSO` int(11) NOT NULL,
  `TRANG_THAI` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hocviendangky`
--

INSERT INTO `hocviendangky` (`id`, `id_USER`, `id_NGANHNGHEDAOTAO`, `id_LOAIHINH`, `id_COSO`, `TRANG_THAI`) VALUES
(18, 21, 10, 2, 1, 0),
(23, 22, 9, 2, 1, 0),
(33, 23, 9, 2, 1, 1),
(34, 32, 10, 2, 1, 1),
(38, 36, 25, 2, 1, 1),
(39, 36, 24, 2, 1, 1),
(41, 40, 24, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `hoc_tai_lop`
--

CREATE TABLE `hoc_tai_lop` (
  `id` bigint(20) NOT NULL,
  `id_HOCVIEN` bigint(20) DEFAULT NULL,
  `id_LOP` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoc_tai_lop`
--

INSERT INTO `hoc_tai_lop` (`id`, `id_HOCVIEN`, `id_LOP`) VALUES
(28, 2, 2),
(60, 1, 1),
(63, 63, 17),
(64, 64, 18),
(65, 65, 6),
(66, 66, 6),
(67, 67, 1);

-- --------------------------------------------------------

--
-- Table structure for table `huyen`
--

CREATE TABLE `huyen` (
  `id` bigint(20) NOT NULL,
  `TEN_HUYEN` varchar(50) NOT NULL,
  `id_TINH` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `huyen`
--

INSERT INTO `huyen` (`id`, `TEN_HUYEN`, `id_TINH`) VALUES
(1, 'Phụng Hiệp', 1),
(2, 'Ninh Kiều', 3),
(3, 'Trà Ôn', 2),
(4, 'Ô Môn', 4),
(5, 'Đất Mũi', 5);

-- --------------------------------------------------------

--
-- Table structure for table `khoahoc`
--

CREATE TABLE `khoahoc` (
  `id` bigint(20) NOT NULL,
  `KH_MASO` varchar(10) NOT NULL,
  `KH_TEN` varchar(20) DEFAULT NULL,
  `KH_THOIGIANBD` date NOT NULL,
  `KH_THOIGIANKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khoahoc`
--

INSERT INTO `khoahoc` (`id`, `KH_MASO`, `KH_TEN`, `KH_THOIGIANBD`, `KH_THOIGIANKT`) VALUES
(1, 'K1', 'Khóa 1', '2020-03-21', '2020-10-14'),
(2, 'K2', 'Khóa 2', '2021-01-31', '2021-12-16'),
(5, 'K3', 'Khóa 3', '2019-04-10', '2019-07-30'),
(6, 'K4', 'Khóa 4', '2021-08-04', '2021-08-17'),
(7, 'K5', 'Khóa 5', '2021-08-13', '2021-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `loaichuongtrinh`
--

CREATE TABLE `loaichuongtrinh` (
  `id` bigint(20) NOT NULL,
  `LCT_TEN` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaichuongtrinh`
--

INSERT INTO `loaichuongtrinh` (`id`, `LCT_TEN`) VALUES
(1, 'Lý thuyết'),
(2, 'Thực hành'),
(3, 'Kiểm tra'),
(4, 'Kiểm tra tổng');

-- --------------------------------------------------------

--
-- Table structure for table `loaidiem`
--

CREATE TABLE `loaidiem` (
  `id` bigint(20) NOT NULL,
  `LD_TEN` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaidiem`
--

INSERT INTO `loaidiem` (`id`, `LD_TEN`) VALUES
(5, 'Thi lý thuyết'),
(6, 'Thi thực hành');

-- --------------------------------------------------------

--
-- Table structure for table `loaihinhdaotao`
--

CREATE TABLE `loaihinhdaotao` (
  `id` bigint(20) NOT NULL,
  `LH_TEN` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaihinhdaotao`
--

INSERT INTO `loaihinhdaotao` (`id`, `LH_TEN`) VALUES
(1, 'Sơ cấp'),
(2, 'Trung cấp'),
(4, 'Sơ cấp 3 tháng');

-- --------------------------------------------------------

--
-- Table structure for table `loainganhdaotao`
--

CREATE TABLE `loainganhdaotao` (
  `id` int(20) NOT NULL,
  `LN_TEN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `LN_HINHANH` varchar(200) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loainganhdaotao`
--

INSERT INTO `loainganhdaotao` (`id`, `LN_TEN`, `LN_HINHANH`) VALUES
(15, 'Tin Học', 'images-removebg-preview (4).png'),
(16, 'Nấu ăn', 'cat-1.png'),
(17, 'Pha chế', 'cat-3.png'),
(18, 'Thẫm mỹ', 'cat-4.png');

-- --------------------------------------------------------

--
-- Table structure for table `loaiuser`
--

CREATE TABLE `loaiuser` (
  `id` bigint(20) NOT NULL,
  `LU_TEN` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaiuser`
--

INSERT INTO `loaiuser` (`id`, `LU_TEN`) VALUES
(1, 'Admin'),
(2, 'Giáo viên'),
(3, 'Cán bộ quản lý');

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `id` bigint(20) NOT NULL,
  `L_MASO` varchar(15) NOT NULL,
  `L_TEN` varchar(50) NOT NULL,
  `L_HINHANH` varchar(300) DEFAULT NULL,
  `L_SOLUONG` int(5) NOT NULL,
  `id_KHOAHOC` bigint(20) DEFAULT NULL,
  `id_PHONG` bigint(20) DEFAULT NULL,
  `id_NGANHNGHEDAOTAO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`id`, `L_MASO`, `L_TEN`, `L_HINHANH`, `L_SOLUONG`, `id_KHOAHOC`, `id_PHONG`, `id_NGANHNGHEDAOTAO`) VALUES
(1, 'L01', 'Tin Học Văn Phòng', 'tinhocvanphong.jpg', 30, 1, 1, 9),
(2, 'L02', 'Thiết Kế Đồ Họa', 'thietkedohoa.png', 3, 1, 1, 10),
(3, 'L03', 'Lập Trình Android', 'laptrinhandroid.jpg', 30, 1, 1, 11),
(4, 'L04', 'An Ninh Mạng', 'anninhmang.jpg.crdownload', 30, 1, 1, 12),
(5, 'L05', 'Xử Lý Ảnh', 'tố_chất_để_học_thiết_kế_đồ_họa_2.jpg', 30, 1, 5, 13),
(6, 'L06', 'Thiết Kế Video', 'videp.jpg', 30, 1, 1, 14),
(7, 'L07', 'Nấu ăn châu Âu', 'nau_an_chau_au.jpg', 30, 2, 5, 16),
(15, 'L08', 'Nấu Ăn Châu Á', 'nau_an_chau_a.jpg', 30, 2, 1, 15),
(17, 'L13', 'Pha chế nước ép', 'bartender1.jpg', 30, 5, 2, 24),
(18, 'L14', 'Pha chế trà sửa', 'nen-lac-tra-va-sua-that-deu-voi-da-de-tra-sua-khi-uong-thom-ngon-hon-2-2019-01-11-07-57.jpg', 30, 5, 2, 25),
(19, 'L15', 'Pha chế thức uống có cồn', 'Bartender-Blueberry-Mojito-2.jpg', 30, 5, 4, 26),
(20, 'L09', 'Làm bánh mì', 'banh_mi.jpg', 30, 2, 4, 17),
(21, 'L10', 'Làm Bánh Kem', 'banh_kem.png', 30, 2, 4, 18),
(22, 'L11', 'Chế Biến Hải Sản', 'che_bien_hai_san.jpg', 30, 2, 4, 19),
(23, 'L12', 'Làm Bánh Ngọt', 'banh_ngot.jpg', 30, 2, 5, 20),
(24, 'L16', 'Pha Chế Coocktail', 'cocktail-mocktail-la-gi-cach-pha-che-don-gian.jpeg', 30, 5, 5, 26),
(25, 'L17', 'Pha Chế SoDa', 'BartendersBusiness-01222019060923000000-5c46b393188eb.jpg', 30, 5, 4, 31),
(26, 'L18', 'Pha Chế Cafe', '1496249022_356215p6.jpg', 30, 5, 5, 32);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_07_06_022831_cap_nhat_so_gio', 1),
(2, '2021_07_06_041935_cap_nhat_so_gio_2', 2),
(3, '2021_07_06_042600_cap_nhat_so_gio_3', 3),
(4, '2021_07_06_043355_cap_nhat_so_gio_4', 4);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` bigint(20) NOT NULL,
  `MD_MASO` varchar(15) NOT NULL,
  `MD_TEN` varchar(50) NOT NULL,
  `MD_LYTHUYET` int(11) NOT NULL DEFAULT 0,
  `MD_THUCHANH` int(11) NOT NULL DEFAULT 0,
  `MD_KIEMTRA` int(11) NOT NULL DEFAULT 0,
  `id_NGANHNGHEDAOTAO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `MD_MASO`, `MD_TEN`, `MD_LYTHUYET`, `MD_THUCHANH`, `MD_KIEMTRA`, `id_NGANHNGHEDAOTAO`) VALUES
(33, 'TH/M1', 'Môn học 1', 6, 6, 3, 9),
(34, 'TH/M2', 'Môn học 2', 15, 6, 3, 9),
(35, 'TK/M1', 'Môn học 1', 3, 3, 3, 10),
(36, 'TK/M2', 'Môn học 2', 18, 18, 6, 10),
(48, 'MD10', 'Môn học 1', 9, 9, 6, 24);

--
-- Triggers `module`
--
DELIMITER $$
CREATE TRIGGER `cap_nhat_ctr_kt_tong` AFTER INSERT ON `module` FOR EACH ROW BEGIN

IF NEW.MD_MASO = 'KTT' THEN
	
INSERT INTO `chuongtrinh`(`CT_TEN`, `CT_SOTIET`,`id_MODULE`, `id_LOAICHUONGTRINH`) VALUES ('Kiểm tra cuối khóa học',NEW.MD_KIEMTRA,NEW.id,'4');

END IF;


END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `nganhnghedaotao`
--

CREATE TABLE `nganhnghedaotao` (
  `id` bigint(20) NOT NULL,
  `NN_MASO` varchar(15) NOT NULL,
  `NN_TEN` varchar(50) NOT NULL,
  `NN_TOMTAT` varchar(300) CHARACTER SET utf8 NOT NULL,
  `NN_GIA` bigint(20) NOT NULL,
  `NN_HINHANH` varchar(200) NOT NULL,
  `NN_CHUAN` text NOT NULL,
  `NN_KTKETTHUC` int(11) NOT NULL DEFAULT 0,
  `NN_THILT` int(11) NOT NULL DEFAULT 0,
  `NN_THITH` int(11) NOT NULL DEFAULT 0,
  `id_LOAIHINHDAOTAO` bigint(20) DEFAULT NULL,
  `id_COSODAOTAO` bigint(20) DEFAULT NULL,
  `id_LOAINGANHDAOTAO` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nganhnghedaotao`
--

INSERT INTO `nganhnghedaotao` (`id`, `NN_MASO`, `NN_TEN`, `NN_TOMTAT`, `NN_GIA`, `NN_HINHANH`, `NN_CHUAN`, `NN_KTKETTHUC`, `NN_THILT`, `NN_THITH`, `id_LOAIHINHDAOTAO`, `id_COSODAOTAO`, `id_LOAINGANHDAOTAO`) VALUES
(9, 'THVP', 'Tin học văn phòng', 'Chương trình học đào tạo tin học văn phòng, bằng tốt nghiệp khóa học có giá trị toàn quốc.', 7000000, 'tinhocvanphong.jpg', '<div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\"><span style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(255, 0, 0);\"><strong style=\"margin: 0px; padding: 0px;\">Đào tạo theo vị trí công việc</strong></span></div><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; line-height: 2em; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\">&nbsp; &nbsp; Nội dung đào tạo có tính thực tế cao, học viên sẽ được trải nghiệm nhiều kinh nghiệm thực tế từ những chuyên gia nhân sự hàng đầu, tạo được cho học viên cảm giác như chính học viên đang xử lý các vấn đề trong môi trường công sở tại khóa học đào tạo thực hành C&amp;B của Lê Ánh HR.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; line-height: 2em; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\">&nbsp; &nbsp; Đào tạo để học viên có thể làm được các công việc khác nhau trong lĩnh vực hành chính nhân sự, chứ không phải chỉ một hoặc một vài vị trí như các chương trình đào tạo khác trên thị trường. </p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 10px 0px 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; line-height: 2em; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\">&nbsp; &nbsp;Giúp học viên làm được hoặc xin được việc ngay sau khi kết thúc khóa học tại trung tâm.</p>', 0, 0, 0, 2, 1, 15),
(10, 'TK', 'Thiết kế đồ họa', 'Chương trình đào tạo thiết kế chuyên sâu các phương pháp, thiết kế nâng cao, bổ sung tiếng Anh.', 8000000, 'thietkedohoa.png', '<div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\">&nbsp; &nbsp;Nắm vững các nguyên lý cơ bản trong thiết kế: bố cục, cách phối màu, kết hợp text trong thiết kế\r\nKỹ năng sử dụng cơ bản 2 công cụ chính trong thiết kế: Illustrator, Photoshop.</div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\">&nbsp; &nbsp;Có khả năng chuyển ý tưởng của bạn thành sản phẩm thiết kế sau khóa học.\r\nNâng cao khả năng nhận xét, đánh giá các sản phẩm thiết kế, dễ dàng truyền đạt ý tưởng cho designer nhằm phục vụ cho công việc marketing.\r\n</div><div style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\">&nbsp; &nbsp; Chứng nhận khóa học \"Thiết kế cho Marketer\" do Trung Tâm Tin Học&nbsp;</div><ol style=\"box-sizing: border-box; margin: 0px 0px 10px 30px; padding: 0px; list-style: square; font-size: 14px; color: rgb(21, 20, 20); line-height: 22px; font-family: Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\"><ol><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Nắm vững các nguyên lý cơ bản trong thiết kế: bố cục, cách phối màu, kết hợp text trong thiết kế</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Kỹ năng sử dụng cơ bản 2 công cụ chính trong thiết kế: Illustrator, Photoshop.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Có khả năng chuyển ý tưởng của bạn thành sản phẩm thiết kế sau khóa học.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Nâng cao khả năng nhận xét, đánh giá các sản phẩm thiết kế, dễ dàng truyền đạt ý tưởng cho designer nhằm phục vụ cho công việc marketing.</li><li style=\"box-sizing: border-box; margin: 0px; padding: 0px;\">Chứng nhận khóa học<span>&nbsp;</span><strong style=\"box-sizing: border-box; font-weight: bold;\">\"Thiết kế cho Marketer\"</strong><span>&nbsp;</span>do Trung Tâm Tin Học - Trường ĐH Khoa Học Tự Nhiên cấp&nbsp;</li></ol><li style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; color: rgb(0, 0, 0); font-family: TeXGyreAdventor, Arial, sans-serif; text-align: justify;\"><br></li></ol>', 0, 3, 3, 2, 1, 15),
(11, 'LT', 'Lập trình Android', 'Chương trình đào tạo lập trình Android giúp cho học viên nắm vững tư duy lập trình tốt.', 4000000, 'laptrinhandroid.jpg', 'Thành thạo lập trình android', 0, 3, 3, 2, 1, 15),
(12, 'ANM', 'An ninh mạng', 'Chương trình giúp cho học viên có kiến thức về quy trình bảo mật hệ thống mạng an toàn hơn.', 3000000, 'anninhmang.jpg.crdownload', 'Thành thạo bảo mật hệ thống', 0, 3, 3, 2, 1, 15),
(13, 'XLA', 'Xử lý ảnh', 'Chương trình học đào tạo xử lý ảnh chuyên nghiệp, độ phân giải cao, bằng tốt nghiệp khóa học có giá trị toàn quốc.', 5000000, 'xulyanh.jpg', 'Thành thạo kỹ năng làm video và chỉnh sửa hình ảnh', 0, 3, 3, 2, 1, 15),
(14, 'VD', 'Thiết kế video', 'Chương trình học đào tạo thiết kế video chuyên nghiệp, bằng tốt nghiệp khóa học có giá trị toàn quốc.', 3000000, 'videp.jpg', 'Thông thường các video nhạc ghép ảnh thường được tạo dưới hình thức sóng nhạc 3D. Bạn có thể sử dụng After Effect – một phần mềm đồ hoạ được tạo ra với mục đích xử lý hiệu ứng video, và làm chuyển động số. Tuy nhiên, chinh phục phần mềm này mất khá nhiều thời gian, đòi hỏi bạn cần đầu tư vào việc học nó khá nhiều.', 0, 3, 3, 1, 1, 15),
(15, 'NA1', 'Nấu ăn châu Á', 'Chương trình đào tạo kỹ thuật làm đồ ăn chuyên sâu các phương pháp, kỹ thuật làm bánh nâng cao, bổ sung tiếng Anh, phổ cập.', 1200000, 'nau_an_chau_a.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\"><br></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Trên thực tế, 100% học viên</span><span style=\"color: rgb(75, 0, 130);\">&nbsp;</span><a href=\"https://www.hoteljob.vn/tin-tuc/7-suy-nghi-sai-lam-ve-nghe-dau-bep\" target=\"_blank\" style=\"color: rgb(0, 153, 204); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">nghề đầu bếp</a><span style=\"color: rgb(75, 0, 130);\">&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">sau khi tốt nghiệp đều có việc làm. </span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Đây là một nghề dễ học, dễ tìm việc&nbsp;nhưng đòi hỏi sự kiên trì, niềm đam mê và tình yêu với nghề.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Hơn nữa, theo dự kiến, trong nhiều&nbsp;năm tới, nghề đầu bếp sẽ tiếp tục nằm trong&nbsp;Top những nghề nghiệp có tương lai tương sáng nhất&nbsp;với nhiều triển vọng: lương tốt, cân bằng cuộc sống tốt và triển vọng phát triển sự nghiệp&nbsp;tốt.&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Bên cạnh đó học viên còn thành thạo tiếng Anh sử dụng trong nhà bếp.</span></p>', 0, 3, 3, 2, 1, 16),
(16, 'NA2', 'Nấu ăn châu Âu', 'Chương trình đào tạo kỹ thuật nấu ăn  chuyên sâu các phương pháp, theo phong cách nấu ăn châu Âu, hỗ trợ thêm tiếng Anh.', 5000000, 'nau_an_chau_au.jpg', '<div><br></div><div><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Sau khi hoàn thành khóa học, học viên</span><span style=\"color: rgb(75, 0, 130);\">&nbsp;</span><a href=\"https://www.hoteljob.vn/tin-tuc/7-suy-nghi-sai-lam-ve-nghe-dau-bep\" target=\"_blank\" style=\"color: rgb(0, 153, 204); background-image: initial; background-position: 0px 0px; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">nghề đầu bếp</a><span style=\"color: rgb(75, 0, 130);\">&nbsp;</span><span style=\"color: rgb(0, 0, 0);\">sau khi tốt nghiệp đều có việc làm.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Đây là một nghề dễ học, dễ tìm việc&nbsp;nhưng đòi hỏi sự kiên trì, niềm đam mê và tình yêu với nghề.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Hơn nữa, theo dự kiến, trong nhiều&nbsp;năm tới, nghề đầu bếp sẽ tiếp tục nằm trong&nbsp;Top những nghề nghiệp có tương lai tương sáng nhất&nbsp;với nhiều triển vọng: lương tốt, cân bằng cuộc sống tốt và triển vọng phát triển sự nghiệp&nbsp;tốt.&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Bên cạnh đó học viên còn thành thạo tiếng Anh sử dụng trong nhà bếp.</span></p></div>', 0, 3, 3, 1, 1, 16),
(17, 'NA3', 'Bánh mì', 'Chương trình đào tạo kỹ thuật làm bánh chuyên sâu các phương pháp, kỹ thuật làm bánh nâng cao, bổ sung tiếng Anh, phổ cập', 2000000, 'banh_mi.jpg', '<div><br></div><div><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Sau khi hoàn thành khóa học làm bánh mì, học viên thành thạo được các công thức làm bánh mì.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Khi tốt nghiệp học viên sẽ được giới thiệu việc làm.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Đây là một nghề dễ học, dễ tìm việc&nbsp;nhưng đòi hỏi sự kiên trì, niềm đam mê và tình yêu với nghề.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Hơn nữa, theo dự kiến, trong nhiều&nbsp;năm tới, nghề đầu bếp sẽ tiếp tục nằm trong&nbsp;Top những nghề nghiệp có tương lai tương sáng nhất&nbsp;với nhiều triển vọng: lương tốt, cân bằng cuộc sống tốt và triển vọng phát triển sự nghiệp&nbsp;tốt.&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Bên cạnh đó học viên còn thành thạo tiếng Anh sử dụng trong nhà bếp.</span></p></div>', 0, 3, 3, 2, 1, 16),
(18, 'NA4', 'Bánh kem', 'Chương trình đào tạo kỹ thuật làm bánh chuyên sâu các phương pháp, kỹ thuật làm bánh nâng cao, bổ sung tiếng Anh, phổ cập', 3000000, 'banh_kem.png', '<div><br></div><div><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Sau khi hoàn thành khóa học làm bánh kem, học viên thành thạo được các công thức làm bánh kem.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Khi tốt nghiệp học viên sẽ được giới thiệu việc làm.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Đây là một nghề dễ học, dễ tìm việc&nbsp;nhưng đòi hỏi sự kiên trì, niềm đam mê và tình yêu với nghề.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Hơn nữa, theo dự kiến, trong nhiều&nbsp;năm tới, nghề đầu bếp sẽ tiếp tục nằm trong&nbsp;Top những nghề nghiệp có tương lai tương sáng nhất&nbsp;với nhiều triển vọng: lương tốt, cân bằng cuộc sống tốt và triển vọng phát triển sự nghiệp&nbsp;tốt.&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Bên cạnh đó học viên còn thành thạo tiếng Anh sử dụng trong nhà bếp.</span></p></div>', 0, 3, 3, 2, 1, 16),
(19, 'NA5', 'Chế biến hải sản', 'Chương trình đào tạo kỹ thuật chế biến hải sản chuyên sâu các phương pháp, kỹ thuật làm bánh nâng cao, bổ sung tiếng Anh, phổ cập', 3000000, 'che_bien_hai_san.jpg', '<div><br></div><div><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Sau khi hoàn thành khóa học chế biến hải sản, học viên thành thạo được các công thức làm đồ ăn chuyên về hải sản.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Khi tốt nghiệp học viên sẽ được giới thiệu việc làm.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Đây là một nghề dễ học, dễ tìm việc&nbsp;nhưng đòi hỏi sự kiên trì, niềm đam mê và tình yêu với nghề.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Hơn nữa, theo dự kiến, trong nhiều&nbsp;năm tới, nghề đầu bếp sẽ tiếp tục nằm trong&nbsp;Top những nghề nghiệp có tương lai tương sáng nhất&nbsp;với nhiều triển vọng: lương tốt, cân bằng cuộc sống tốt và triển vọng phát triển sự nghiệp&nbsp;tốt.&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Bên cạnh đó học viên còn thành thạo tiếng Anh sử dụng trong nhà bếp.</span></p></div>', 0, 3, 3, 1, 1, 16),
(20, 'NA6', 'Bánh ngọt', 'Chương trình đào tạo kỹ thuật làm bánh chuyên sâu các phương pháp, kỹ thuật làm bánh nâng cao, bổ sung tiếng Anh, phổ cập', 3000000, 'banh_ngot.jpg', '<div><br></div><div><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Sau khi hoàn thành khóa học làm bánh ngọc, học viên thành thạo được các công thức làm bánh ngọc.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Khi tốt nghiệp học viên sẽ được giới thiệu việc làm.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Đây là một nghề dễ học, dễ tìm việc&nbsp;nhưng đòi hỏi sự kiên trì, niềm đam mê và tình yêu với nghề.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Hơn nữa, theo dự kiến, trong nhiều&nbsp;năm tới, nghề đầu bếp sẽ tiếp tục nằm trong&nbsp;Top những nghề nghiệp có tương lai tương sáng nhất&nbsp;với nhiều triển vọng: lương tốt, cân bằng cuộc sống tốt và triển vọng phát triển sự nghiệp&nbsp;tốt.&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(48, 48, 48); font-family: &quot;Times New Roman&quot;; font-size: 17px;\"><span style=\"color: rgb(0, 0, 0);\">- Bên cạnh đó học viên còn thành thạo tiếng Anh sử dụng trong nhà bếp.</span></p></div>', 0, 3, 3, 2, 1, 16),
(24, 'PC', 'Pha chế nước ép', 'Học pha chế chuyên nghiệp là bước khởi đầu để chinh phục những vị trí cấp cao trong ngành dịch vụ kinh doanh đồ uống, nhà hàng, khách sạn...', 6000000, 'bartender1.jpg', '<p><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify; font-size: 1rem;\">- Học pha chế chuyên nghiệp là bước khởi đầu để chinh phục những vị trí cấp cao trong ngành dịch vụ kinh doanh đồ uống, nhà hàng, khách sạn, đồng thời cũng là sự lựa chọn của rất nhiều bạn trẻ có nhu cầu học nghề, mở quán kinh doanh.</span><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\"> </span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Hướng Nghiệp Á Âu xây dựng nhiều khóa học đảm bảo tiêu chuẩn mà nhà tuyển dụng trong và ngoài nước đặt ra.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Không chỉ dừng lại ở các khóa học ngắn hạn, chương trình dạy pha chế chuyên nghiệp còn chú trọng các khóa đào tạo chuyên sâu gắn liền với lịch thực tập bài bản, các chuyến đi thực tế, sự kiện, workshop cập nhật xu hướng, đáp ứng nhu cầu học ngày càng tăng cao hiện nay.</span></p>', 0, 3, 3, 2, 1, 17),
(25, 'PCTS', 'Pha chế trà sửa', 'Thị trường trà sữa ngày nay không còn là một xu hướng mang tính thời điểm mà nó như đã trở thành thức uống tinh thần của mọi người.', 5000000, 'nen-lac-tra-va-sua-that-deu-voi-da-de-tra-sua-khi-uong-thom-ngon-hon-2-2019-01-11-07-57.jpg', '<div><br></div><div><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify; font-size: 1rem;\">- Học pha chế trà sữa chuyên nghiệp là bước khởi đầu để chinh phục những vị trí cấp cao trong ngành dịch vụ kinh doanh đồ uống, nhà hàng, khách sạn, đồng thời cũng là sự lựa chọn của rất nhiều bạn trẻ có nhu cầu học nghề, mở quán kinh doanh.</span><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\"></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Hướng Nghiệp Á Âu xây dựng nhiều khóa học đảm bảo tiêu chuẩn mà nhà tuyển dụng trong và ngoài nước đặt ra.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Không chỉ dừng lại ở các khóa học ngắn hạn, chương trình dạy pha chế chuyên nghiệp còn chú trọng các khóa đào tạo chuyên sâu gắn liền với lịch thực tập bài bản, các chuyến đi thực tế, sự kiện, workshop cập nhật xu hướng, đáp ứng nhu cầu học ngày càng tăng cao hiện nay.</span></p></div>', 0, 3, 3, 2, 1, 17),
(26, 'PCCT', 'Pha chế coocktail', 'Dạy Pha Chế Á Âu áp dụng phương pháp dạy học trực tuyến kết hợp trực tiếp theo hướng sáng tạo với sự hỗ trợ của công nghệ hiện đại', 3000000, 'Bartender-Blueberry-Mojito-2.jpg', '<p><br></p><p>- Học viên sau khi hoàn thành khóa học Bartender chuyên nghiệp đủ điều kiện trở thành người pha chế rượu và các loại đồ uống có cồn – công việc đang rất thịnh hành với tính chất năng động, thú vị. </p><p>- Mức lương Bartender cũng rất hấp dẫn nên được nhiều bạn trẻ lựa chọn. Lớp học Bartender giúp nắm vững kiến thức về các loại rượu mạnh, rượu mùi, rượu vang, bia… cách pha chế rượu, thành thạo kỹ năng pha chế chuyên nghiệp như: shaking, rolling, layering, building, domino… để có thể trở thành Mixologist.</p>', 0, 3, 3, 2, 1, 17),
(27, 'N', 'Nail chuyên nghiệp', 'Học nail chuyên nghiệp tại KellyPang Nail, bạn sẽ được học những kỹ thuật vẽ nail căn bản nhất đến chuyên sâu và chỉ khoảng 2-3 tháng, bạn sẽ vẽ được tất cả các mẫu móng đã học.', 1200000, '6-cach-son-mong-tay-khong-bi-soc-005-1200x900-1.jpg', 'Học các kỹ thuật chăm sóc móng hiện đại nhất: cắt da tay và chân, sơn móng, sơn đầu móng và đánh bóng móng; phương pháp cắt da trong, dưỡng phao, tròn khoé; kỹ thuật dũa các dáng móng – form, shape – thời thượng.', 0, 3, 3, 2, 1, 18),
(28, 'NM', 'Nối mi', 'Nối mi là một trong những dịch vụ đắt khách nhất hiện nay. Một hàng mi cong vút, hút hồn là mơ ước của nhiều chị em phụ nữ.', 2500000, '24398_20140208152451_jpg1.jpg', 'Nối mi là một trong những dịch vụ đắt khách nhất hiện nay. Một hàng mi cong vút, hút hồn là mơ ước của nhiều chị em phụ nữ. Do vậy, tiềm năng nghề nối mi trong tương lai sẽ vô cùng lớn nếu bạn học tập và rèn luyện bài bản.', 0, 3, 3, 2, 1, 18),
(29, 'MK', 'Makeup', 'Học Makeup đang là xu hướng của thế giới, ở các nước phát triển như Anh, Mỹ, Pháp, Hàn Quốc… nghề trang điểm rất được coi trọng', 9000000, 'khoa-hoc-trang-diem.png', 'Học Makeup đang là xu hướng của thế giới, ở các nước phát triển như Anh, Mỹ, Pháp, Hàn Quốc… nghề trang điểm rất được coi trọng. Các chuyên gia trang điểm thường được coi là những người làm nghệ thuật. Tại Việt Nam, nghề Makeup được tôn vinh là người vẽ sắc đẹp thầm lặng. Không những vậy, đây là nghề có thu nhập cao tại các thành phố lớn như Hà Nội, Hồ Chí Minh và Đà Nẵng… Tuy nhiên, đối với các khu vực khác. Việc kinh doanh Makeup cũng rất phát triển. Cũng chính vì điều này, đã có rất nhiều khóa học makeup ra đời nhằm đáp ứng được nhu cầu học Makeup của các bạn trẻ.', 0, 3, 3, 2, 1, 18),
(30, 'PCMT', 'Pha chế Mocktail', 'Chương trình đào tạo pha chế Mocktail chuyên nghiệp, bổ sung  tiếng Anh cho học viên', 3300000, 'cocktail-mocktail-la-gi-cach-pha-che-don-gian.jpeg', '<div><br></div><div><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify; font-size: 1rem;\">- Học pha chế Mocktail&nbsp;</span><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; font-size: 1rem; text-align: justify;\">chuyên nghiệp là bước khởi đầu để chinh phục những vị trí cấp cao trong ngành dịch vụ kinh doanh đồ uống, nhà hàng, khách sạn, đồng thời cũng là sự lựa chọn của rất nhiều bạn trẻ có nhu cầu học nghề, mở quán kinh doanh.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\"></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Hướng Nghiệp Á Âu xây dựng nhiều khóa học đảm bảo tiêu chuẩn mà nhà tuyển dụng trong và ngoài nước đặt ra.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Không chỉ dừng lại ở các khóa học ngắn hạn, chương trình dạy pha chế chuyên nghiệp còn chú trọng các khóa đào tạo chuyên sâu gắn liền với lịch thực tập bài bản, các chuyến đi thực tế, sự kiện, workshop cập nhật xu hướng, đáp ứng nhu cầu học ngày càng tăng cao hiện nay.</span></p></div>', 0, 3, 3, 2, 1, 17),
(31, 'PCSD', 'Pha chế SoDa', 'Áp dụng chương trình đào tạo pha chế Soda chuyên nghiệp bên cạnh đó trung tâm luôn trao dồi tiếng anh cho học viên.', 1200000, 'BartendersBusiness-01222019060923000000-5c46b393188eb.jpg', '<div><br></div><div><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify; font-size: 1rem;\">- Học pha chế Soda chuyên nghiệp là bước khởi đầu để chinh phục những vị trí cấp cao trong ngành dịch vụ kinh doanh đồ uống, nhà hàng, khách sạn, đồng thời cũng là sự lựa chọn của rất nhiều bạn trẻ có nhu cầu học nghề, mở quán kinh doanh.</span><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\"></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Hướng Nghiệp Á Âu xây dựng nhiều khóa học đảm bảo tiêu chuẩn mà nhà tuyển dụng trong và ngoài nước đặt ra.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Không chỉ dừng lại ở các khóa học ngắn hạn, chương trình dạy pha chế chuyên nghiệp còn chú trọng các khóa đào tạo chuyên sâu gắn liền với lịch thực tập bài bản, các chuyến đi thực tế, sự kiện, workshop cập nhật xu hướng, đáp ứng nhu cầu học ngày càng tăng cao hiện nay.</span></p></div>', 0, 3, 3, 2, 1, 17),
(32, 'PCCF', 'Pha chế Cafe', 'Trung tâm áp dụng công nghệ chuyên nghiệp vào pha chế giúp học viên tiếp cận được công nghệ mới.', 5000000, '1496249022_356215p6.jpg', '<div><br></div><div><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify; font-size: 1rem;\">- Học pha chế cafe chuyên nghiệp là bước khởi đầu để chinh phục những vị trí cấp cao trong ngành dịch vụ kinh doanh đồ uống, nhà hàng, khách sạn, đồng thời cũng là sự lựa chọn của rất nhiều bạn trẻ có nhu cầu học nghề, mở quán kinh doanh.</span><br></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\"></span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Hướng Nghiệp Á Âu xây dựng nhiều khóa học đảm bảo tiêu chuẩn mà nhà tuyển dụng trong và ngoài nước đặt ra.</span></p><p><span style=\"color: rgb(51, 51, 51); font-family: Roboto, &quot;Helvetica Neue&quot;, helvetica, arial, sans-serif; text-align: justify;\">- Không chỉ dừng lại ở các khóa học ngắn hạn, chương trình dạy pha chế chuyên nghiệp còn chú trọng các khóa đào tạo chuyên sâu gắn liền với lịch thực tập bài bản, các chuyến đi thực tế, sự kiện, workshop cập nhật xu hướng, đáp ứng nhu cầu học ngày càng tăng cao hiện nay.</span></p></div>', 0, 3, 3, 2, 1, 17),
(33, 'KT', 'Tạo kiểu tóc', 'Tạo mẫu tóc chuyên nghiệp sử dụng công nghệ hiện đại trong đào tạo mẫu tóc.', 15000000, 'cat-toc-1536.jpg', 'kk', 0, 3, 3, 2, 1, 18);

--
-- Triggers `nganhnghedaotao`
--
DELIMITER $$
CREATE TRIGGER `cap_nhat_module_kt_tong` AFTER INSERT ON `nganhnghedaotao` FOR EACH ROW BEGIN

INSERT INTO `module`(`MD_MASO`, `MD_TEN`,`MD_KIEMTRA`,`id_NGANHNGHEDAOTAO`) VALUES ('KTT','Module kiểm tra tổng',NEW.NN_KTKETTHUC,NEW.id);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `nguoiquen`
--

CREATE TABLE `nguoiquen` (
  `id` bigint(20) NOT NULL,
  `NQ_HOTEN` varchar(30) NOT NULL,
  `NQ_SDT` varchar(15) NOT NULL,
  `NQ_DIACHI` varchar(100) NOT NULL DEFAULT 'Không',
  `id_HOCVIEN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nguoiquen`
--

INSERT INTO `nguoiquen` (`id`, `NQ_HOTEN`, `NQ_SDT`, `NQ_DIACHI`, `id_HOCVIEN`) VALUES
(1, 'Nguyễn Hồng Phượng', '0383343365', 'Số 357, Quốc Lộ 1A, ấp Thạnh Lợi A2, Tân Long, Phụng Hiệp, Hậu Giang', 1),
(2, 'Nguyễn Thanh Hải', '0383343368', 'Số 334, ấp Xẻo Vong C, Trà Ôn, Thốt Nốt, Sóc Trăng', 2),
(4, 'Trần Hải Long', '0383343369', 'ấp 34/7 đường U Minh thượng, Long Phụng, Đất Mũi, Cà Mau', 4),
(5, 'Trần Ái Quốc', '0383343378', 'Số 226, đại lộ Hòa Bình, Xuân Khánh, Ninh Kiều, Cần Thơ', 5),
(41, 'Phan Văn A', '09393466', 'Cần Thơ1', 62),
(42, 'Phan Văn A', '09393466', 'Cần Thơ1', 63),
(43, 'Phan Văn A', '09393466', 'Cần Thơ1', 64),
(44, 'Phan Văn A', '09393466', 'Cần Thơ1', 65),
(45, 'Phan Văn A', '09393466', 'Cần Thơ1', 66),
(46, 'Phan Văn A', '09393466', 'Cần Thơ1', 67);

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `id` bigint(20) NOT NULL,
  `P_MASO` varchar(15) NOT NULL,
  `P_TEN` varchar(50) NOT NULL,
  `id_COSODAOTAO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`id`, `P_MASO`, `P_TEN`, `id_COSODAOTAO`) VALUES
(1, 'T1/01', 'Phòng 01 tầng 01', 1),
(2, 'T1/02', 'Phòng 02 tầng 01 ', 1),
(4, 'T1/03', 'Phòng 03 tầng 01', 1),
(5, 'T1/04', 'Phòng 04 tầng 01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sap_lich`
--

CREATE TABLE `sap_lich` (
  `id` bigint(20) NOT NULL,
  `id_LOP` bigint(20) DEFAULT NULL,
  `id_THICU` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sap_lich`
--

INSERT INTO `sap_lich` (`id`, `id_LOP`, `id_THICU`) VALUES
(13, 1, 8),
(14, 2, 9),
(15, 20, 10);

-- --------------------------------------------------------

--
-- Table structure for table `thicu`
--

CREATE TABLE `thicu` (
  `id` bigint(20) NOT NULL,
  `TC_NGAYTHI` date NOT NULL,
  `TC_GIO` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thicu`
--

INSERT INTO `thicu` (`id`, `TC_NGAYTHI`, `TC_GIO`) VALUES
(1, '2021-11-22', '08:00:00'),
(2, '2021-11-22', '14:00:00'),
(8, '2021-08-29', '16:35:00'),
(9, '2021-09-08', '14:29:00'),
(10, '2021-09-24', '13:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `thoikhoabieu`
--

CREATE TABLE `thoikhoabieu` (
  `id` bigint(20) NOT NULL,
  `TKB_BUOI` varchar(10) NOT NULL,
  `TKB_NGAYHOC` date NOT NULL,
  `id_LOP` bigint(20) DEFAULT NULL,
  `id_CHUONGTRINH` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thoikhoabieu`
--

INSERT INTO `thoikhoabieu` (`id`, `TKB_BUOI`, `TKB_NGAYHOC`, `id_LOP`, `id_CHUONGTRINH`) VALUES
(48, 'Sáng', '2021-09-04', 1, 64),
(49, 'Chiều', '2021-08-31', 1, 65),
(52, 'Chiều', '2021-09-03', 1, 68),
(53, 'Sáng', '2021-09-04', 1, 69),
(86, 'Sáng', '2021-09-27', 17, 91),
(87, 'Sáng', '2021-09-29', 17, 92),
(88, 'Sáng', '2021-10-01', 17, 97),
(89, 'Sáng', '2021-10-04', 17, 98),
(90, 'Sáng', '2021-10-06', 17, 99),
(91, 'Sáng', '2021-10-08', 17, 100),
(92, 'Sáng', '2021-10-09', 17, 101),
(93, 'Sáng', '2021-10-10', 17, 103);

-- --------------------------------------------------------

--
-- Table structure for table `thoi_gian`
--

CREATE TABLE `thoi_gian` (
  `id` int(11) NOT NULL,
  `NGAY_DEN` date NOT NULL,
  `NOI_DUNG` varchar(300) CHARACTER SET utf8 NOT NULL,
  `id_USER` bigint(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thoi_gian`
--

INSERT INTO `thoi_gian` (`id`, `NGAY_DEN`, `NOI_DUNG`, `id_USER`) VALUES
(1, '2021-08-28', 'ok', 23),
(2, '2021-08-21', 'Chào em', 23),
(3, '2021-08-14', 'Kính gửi', 23),
(4, '2021-08-19', 'Kính gửi Anh Phú đẹp trai,\r\nMời bạn đến trung tâm đào tạo nghề nghiệp', 23),
(5, '2021-08-06', 'k', 23),
(6, '2021-08-21', 'ok', 23),
(7, '2021-08-05', 'ok', 23),
(8, '2021-08-21', 'bạn đã đăng ký ngành tại trung tâm.', 23),
(9, '2021-08-21', 'Test', 23),
(10, '2021-08-27', 'ok', 22),
(11, '2021-08-15', 'Xin chào', 23),
(12, '2021-09-08', 'ok', 23),
(13, '2021-09-25', 'jnckcs', 40),
(14, '2021-09-26', 'đên làm hồ sơ', 40);

-- --------------------------------------------------------

--
-- Table structure for table `tinh`
--

CREATE TABLE `tinh` (
  `id` bigint(20) NOT NULL,
  `TEN_TINH` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tinh`
--

INSERT INTO `tinh` (`id`, `TEN_TINH`) VALUES
(1, 'Hậu Giang'),
(2, 'Sóc Trăng'),
(3, 'Cần Thơ'),
(4, 'An Giang'),
(5, 'Cà Mau');

-- --------------------------------------------------------

--
-- Table structure for table `trang`
--

CREATE TABLE `trang` (
  `id` int(11) NOT NULL,
  `HINHANH` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trang`
--

INSERT INTO `trang` (`id`, `HINHANH`) VALUES
(2, 'about-video.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tuvan`
--

CREATE TABLE `tuvan` (
  `id` int(11) NOT NULL,
  `TV_TEN` varchar(50) CHARACTER SET utf8 NOT NULL,
  `TV_MAIL` varchar(50) CHARACTER SET utf8 NOT NULL,
  `TV_SDT` varchar(12) CHARACTER SET utf8 NOT NULL,
  `TV_THOIGIAN` varchar(20) CHARACTER SET utf8 NOT NULL,
  `TV_TRANGTHAI` int(2) DEFAULT 0,
  `id_NGANHNGHEDAOTAO` bigint(20) NOT NULL,
  `id_TINH` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tuvan`
--

INSERT INTO `tuvan` (`id`, `TV_TEN`, `TV_MAIL`, `TV_SDT`, `TV_THOIGIAN`, `TV_TRANGTHAI`, `id_NGANHNGHEDAOTAO`, `id_TINH`) VALUES
(4, 'phu', 'phu@gmail.com', '0365476962', '7h00 - 9h00', 1, 9, 1),
(6, 'phu', 'phu@gmail.com', '0365476962', '7h00 - 9h00', 1, 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `USER_MASO` varchar(15) DEFAULT NULL,
  `USER_TEN` varchar(50) NOT NULL,
  `USER_GMAIL` varchar(50) DEFAULT NULL,
  `USER_SDT` varchar(12) DEFAULT NULL,
  `USER_HINHANH` varchar(200) DEFAULT NULL,
  `USER_PASS` varchar(100) NOT NULL,
  `id_LOAIUSER` bigint(20) DEFAULT NULL,
  `id_GIAOVIEN` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `USER_MASO`, `USER_TEN`, `USER_GMAIL`, `USER_SDT`, `USER_HINHANH`, `USER_PASS`, `id_LOAIUSER`, `id_GIAOVIEN`) VALUES
(1, 'admin', 'admin', '', NULL, NULL, '$2y$10$EK0vXoNTAoY0LePgyO.O0.KnhWckhrlpkdbVPav4E67RAjNwrxuEi', 1, NULL),
(13, '', 'Nhân viên 111', 'phu@123456.com', NULL, 'ttt.jpg', '$2y$10$Mj/5nJMQFC6PUaPzASaKfubEf3pU9lz/f6LdT5Hv5TjgqOXDeC3eu', NULL, NULL),
(15, '', 'Thanh Phu', 'phub17067492@gmail.com', NULL, 'B612_20200301_180647_453.jpg', '$2y$10$qIz4ihN6Xt0.TcloLqu0F.k5hEQQY5ckDCIgNksWwvK3TtHykm4G6', NULL, NULL),
(16, '', 'Phú', 'phu@11.com', '0365476962', 'banh_kem.png', '$2y$10$t68WW0IYLy7kHT0IXfmwWeEO1Xtiuzu0ez7794a2FOM7q7FwWeHVy', NULL, NULL),
(17, '', 'USER1', 'user11@gmail.com', '0365476962', 'user.jpg', '$2y$10$KjtJd1cBj5nJpRQRO5ssQOvgawKIts8ePQDBTmsjxi7KgKH.t7pXS', NULL, NULL),
(20, '', 'Thanh Phu', 'phu@123.com', '0365476962', '068846a63888cfd69699.jpg', '$2y$10$meBoL3K04VpL78XXfadQ1uOBZpQBWKNO4CokiVMQc2UzBVsm7oCD2', NULL, NULL),
(21, '', 'Thanh Phu', 'phu@111.com', '0365476962', '068846a63888cfd69699.jpg', '$2y$10$HW3swkqyYjwCdo/bGWu4U.FDzLKE37jrMaqvdaNylSI/0LLIKAhHW', NULL, NULL),
(22, '', 'Phan Thanh Phú', 'phu1999@gmail.com', '0365476962', '068846a63888cfd69699.jpg', '$2y$10$qIz4ihN6Xt0.TcloLqu0F.k5hEQQY5ckDCIgNksWwvK3TtHykm4G6', NULL, NULL),
(23, '', 'Thanh Phu', 'phub1706742@student.ctu.edu.vn', '0365476962', '068846a63888cfd69699.jpg', '$2y$10$qIz4ihN6Xt0.TcloLqu0F.k5hEQQY5ckDCIgNksWwvK3TtHykm4G6', NULL, NULL),
(25, 'Nguyễn Văn A', 'Nguyễn Văn A', NULL, NULL, NULL, '$2y$10$IGSMf9TohV3fLcFbVXQz7OgiKV4Sez21cUISXQwsS.6C99l1MRZfq', 2, 1),
(26, '', 'Quang', 'quang@gmail.com', '0365476962', 'chậu.jpg', '$2y$10$.lnkjDO/IppwwDjzCMJgAeJwlW.qEa0JgUScJwgTnYYm4Y9Xxkn1K', NULL, NULL),
(27, '', 'bi', 'bi@gmail.com', '0365476962', 'chậu.jpg', '$2y$10$qIz4ihN6Xt0.TcloLqu0F.k5hEQQY5ckDCIgNksWwvK3TtHykm4G6', NULL, NULL),
(28, '', 'Võ Long Đĩnh', 'dinh@gmail.com', '0365476962', 'chậu.jpg', '$2y$10$cpAQlTjJ8vaqhlPxHhmyhev7nKhMaRQWbf6.6bo4HxHimFAv1DYN6', NULL, NULL),
(29, '', 'Thanh Phu', 'phu22@gmail.com', '0365476962', '4.PNG', '$2y$10$sJC73gejuWUAqCdotj.B4uHnO6s1Att6Hflr52oZLKFQLsP7q4jD2', NULL, NULL),
(30, ' ', 'Thanh Phú', 'phub170776742@student.ctu.edu.vn', '0365476962', NULL, '$2y$10$sdilvohzv9TS6v.OzyKjTu0cbFJKD0xUmcxjSJD8tzyZ1x3hZjhaq', NULL, NULL),
(31, ' ', 'Thanh Phú', 'phub170776742@student.ctu.edu.vn', '0365476962', NULL, '$2y$10$MbEudKtjCo/QcCg.hQK3Eu3baiI2RpOxNXkLwILgF33KSXmiArWci', NULL, NULL),
(32, '', 'Thinh', 'thinh123456@gmail.com', '0365476962', 'Screenshot (55).png', '$2y$10$gjcAdNOGzxZjcVLpbR6eAeRvKiVUSpbAQ5kVmv43pAGCdFGI7m1pW', NULL, NULL),
(33, ' ', 'Thanh Sang', 'sang1234@gmail.com', '0365476965', NULL, '$2y$10$/PAUWCgTkS.hMyKaQgOE1.Uow2MUMKR8j.MCRRKfxxAO4diVrWRRi', NULL, NULL),
(34, ' ', 'Thanh Sang', 'sang1234@gmail.com', '0365476965', NULL, '$2y$10$awlXe9UZQKR2LB3Fv6EWwOl4gw/DytMtoxsf5Uy.1sqsSIiMm6lSy', NULL, NULL),
(35, ' ', 'Thanh Sang', 'sang1234@gmail.com', '0365476965', NULL, '$2y$10$qgPDdhGoM33Ew.TyYQwg/uczESUklKbxTkqE94c3cauE3JGeeixz.', NULL, NULL),
(36, ' ', 'Thanh Thanh', 'thanh@gmail.com', '031246874', NULL, '$2y$10$1bVYifRNcVcH/1nBUC7f8.H7K5UVgYjmVYMX2Q/7FECeaDDDZHcUm', NULL, NULL),
(37, ' ', 'Thanh Thanh', 'thanh@gmail.com', '031246874', NULL, '$2y$10$0D.X6gR.jhvD1.B8hOlHueQ7ctema77zI8B2zjn9FRBu1iInbCa3.', NULL, NULL),
(38, ' ', 'Thanh Thanh', 'thanh@gmail.com', '031246874', NULL, '$2y$10$uiGO3BJWGs.8csMOgjKvVOm.uFoXBaGNdcF6hIHUmm2lUUqGoz4jm', NULL, NULL),
(39, ' ', 'Thanh Thanh', 'thanh@gmail.com', '0365476962', NULL, '$2y$10$2FcpXcy2GtE8P0EQellD6.4sv0G7cVLaZR.ka4vx2IGKP3oyAZauS', NULL, NULL),
(40, '', 'Phan Thanh Phú', 'phub1706742@gmail.com', '0365476962', '88.jpg', '$2y$10$YywxocJDhdriynfII81TT.Olm667D4D9ECsuWpLGmhR8Ozk2akAiO', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vanbanhanhchanh`
--

CREATE TABLE `vanbanhanhchanh` (
  `id` bigint(20) NOT NULL,
  `VB_TENFILE` varchar(100) NOT NULL,
  `VB_TEN` varchar(100) NOT NULL,
  `id_NGANHNGHEDAOTAO` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `xa`
--

CREATE TABLE `xa` (
  `id` bigint(20) NOT NULL,
  `TEN_XA` varchar(50) NOT NULL,
  `id_HUYEN` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xa`
--

INSERT INTO `xa` (`id`, `TEN_XA`, `id_HUYEN`) VALUES
(1, 'Tân Long', 1),
(2, 'Thốt Nốt', 3),
(3, 'Xuân Khánh', 2),
(4, 'Mỹ Tú', 4),
(5, 'Long Phụng', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bangcap`
--
ALTER TABLE `bangcap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CO_BANG_CAP` (`id_GIAOVIEN`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuongtrinh`
--
ALTER TABLE `chuongtrinh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CO_BAI_HOC` (`id_MODULE`),
  ADD KEY `FK_THUOC_LOAI2` (`id_LOAICHUONGTRINH`);

--
-- Indexes for table `congty`
--
ALTER TABLE `congty`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_NGANHNGHEDAOTAO` (`id_NGANHNGHEDAOTAO`);

--
-- Indexes for table `congviec`
--
ALTER TABLE `congviec`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_NHAN_VIEC` (`id_HOCVIEN`);

--
-- Indexes for table `cosodaotao`
--
ALTER TABLE `cosodaotao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_XA` (`id_XA`);

--
-- Indexes for table `cutrugv`
--
ALTER TABLE `cutrugv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CU_TRU_GV` (`id_XA`),
  ADD KEY `FK_CU_TRU_GV2` (`id_GIAOVIEN`);

--
-- Indexes for table `cutruhv`
--
ALTER TABLE `cutruhv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CU_TRU_HV` (`id_XA`),
  ADD KEY `FK_CU_TRU_HV2` (`id_HOCVIEN`);

--
-- Indexes for table `danhsachchungchi`
--
ALTER TABLE `danhsachchungchi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CO_CHUNG_CHI` (`id_HOCVIEN`);

--
-- Indexes for table `day_nghe`
--
ALTER TABLE `day_nghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DAY_NGHE` (`id_NGANHNGHEDAOTAO`),
  ADD KEY `FK_DAY_NGHE2` (`id_GIAOVIEN`);

--
-- Indexes for table `day_o_lop`
--
ALTER TABLE `day_o_lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DAY_O_LOP` (`id_GIAOVIEN`),
  ADD KEY `FK_DAY_O_LOP2` (`id_LOP`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CO_DIEM` (`id_HOCVIEN`),
  ADD KEY `FK_GHI_DIEM` (`id_LOP`),
  ADD KEY `FK_THUOC_LOAI_DIEM` (`id_LOAIDIEM`);

--
-- Indexes for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_DIEM_DANH` (`id_HOCVIEN`),
  ADD KEY `FK_DIEM_DANH2` (`id_THOIKHOABIEU`);

--
-- Indexes for table `doituong`
--
ALTER TABLE `doituong`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_DOI_TUONG` (`id_DOITUONG`);

--
-- Indexes for table `hocviendangky`
--
ALTER TABLE `hocviendangky`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoc_tai_lop`
--
ALTER TABLE `hoc_tai_lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_HOC_TAI_LOP` (`id_LOP`),
  ADD KEY `FK_HOC_TAI_LOP2` (`id_HOCVIEN`);

--
-- Indexes for table `huyen`
--
ALTER TABLE `huyen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_TINH` (`id_TINH`);

--
-- Indexes for table `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaichuongtrinh`
--
ALTER TABLE `loaichuongtrinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaidiem`
--
ALTER TABLE `loaidiem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaihinhdaotao`
--
ALTER TABLE `loaihinhdaotao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loainganhdaotao`
--
ALTER TABLE `loainganhdaotao`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loaiuser`
--
ALTER TABLE `loaiuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_KHOA` (`id_KHOAHOC`),
  ADD KEY `FK_THUOC_PHONG` (`id_PHONG`),
  ADD KEY `FK_THEO_NGHE` (`id_NGANHNGHEDAOTAO`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_NGANH_NGHE` (`id_NGANHNGHEDAOTAO`);

--
-- Indexes for table `nganhnghedaotao`
--
ALTER TABLE `nganhnghedaotao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_CO_SO` (`id_COSODAOTAO`),
  ADD KEY `FK_THUOC_LOAI_HINH` (`id_LOAIHINHDAOTAO`),
  ADD KEY `FK_THUOC_LOAI_NGANH` (`id_LOAINGANHDAOTAO`);

--
-- Indexes for table `nguoiquen`
--
ALTER TABLE `nguoiquen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_QUEN_BIET` (`id_HOCVIEN`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_CO_SO2` (`id_COSODAOTAO`);

--
-- Indexes for table `sap_lich`
--
ALTER TABLE `sap_lich`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_SAP_LICH` (`id_THICU`),
  ADD KEY `FK_SAP_LICH2` (`id_LOP`);

--
-- Indexes for table `thicu`
--
ALTER TABLE `thicu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_CO_TKB` (`id_LOP`),
  ADD KEY `FK_CO_TKB2` (`id_CHUONGTRINH`);

--
-- Indexes for table `thoi_gian`
--
ALTER TABLE `thoi_gian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_USER` (`id_USER`);

--
-- Indexes for table `tinh`
--
ALTER TABLE `tinh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trang`
--
ALTER TABLE `trang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tuvan`
--
ALTER TABLE `tuvan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_NGANHNGHEDAOTAO` (`id_NGANHNGHEDAOTAO`),
  ADD KEY `id_TINH` (`id_TINH`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_LOAI_USER` (`id_LOAIUSER`),
  ADD KEY `id_GIAOVIEN` (`id_GIAOVIEN`);

--
-- Indexes for table `vanbanhanhchanh`
--
ALTER TABLE `vanbanhanhchanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_NGHE` (`id_NGANHNGHEDAOTAO`);

--
-- Indexes for table `xa`
--
ALTER TABLE `xa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_THUOC_HUYEN` (`id_HUYEN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bangcap`
--
ALTER TABLE `bangcap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `chatbot`
--
ALTER TABLE `chatbot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chuongtrinh`
--
ALTER TABLE `chuongtrinh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `congty`
--
ALTER TABLE `congty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `congviec`
--
ALTER TABLE `congviec`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `cosodaotao`
--
ALTER TABLE `cosodaotao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cutrugv`
--
ALTER TABLE `cutrugv`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `cutruhv`
--
ALTER TABLE `cutruhv`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `danhsachchungchi`
--
ALTER TABLE `danhsachchungchi`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `day_nghe`
--
ALTER TABLE `day_nghe`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `day_o_lop`
--
ALTER TABLE `day_o_lop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `diem`
--
ALTER TABLE `diem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `doituong`
--
ALTER TABLE `doituong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `hocvien`
--
ALTER TABLE `hocvien`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `hocviendangky`
--
ALTER TABLE `hocviendangky`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `hoc_tai_lop`
--
ALTER TABLE `hoc_tai_lop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `huyen`
--
ALTER TABLE `huyen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `loaichuongtrinh`
--
ALTER TABLE `loaichuongtrinh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loaidiem`
--
ALTER TABLE `loaidiem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loaihinhdaotao`
--
ALTER TABLE `loaihinhdaotao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loainganhdaotao`
--
ALTER TABLE `loainganhdaotao`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `loaiuser`
--
ALTER TABLE `loaiuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `nganhnghedaotao`
--
ALTER TABLE `nganhnghedaotao`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `nguoiquen`
--
ALTER TABLE `nguoiquen`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sap_lich`
--
ALTER TABLE `sap_lich`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `thicu`
--
ALTER TABLE `thicu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `thoi_gian`
--
ALTER TABLE `thoi_gian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tinh`
--
ALTER TABLE `tinh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trang`
--
ALTER TABLE `trang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tuvan`
--
ALTER TABLE `tuvan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `vanbanhanhchanh`
--
ALTER TABLE `vanbanhanhchanh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `xa`
--
ALTER TABLE `xa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bangcap`
--
ALTER TABLE `bangcap`
  ADD CONSTRAINT `FK_CO_BANG_CAP` FOREIGN KEY (`id_GIAOVIEN`) REFERENCES `giaovien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chuongtrinh`
--
ALTER TABLE `chuongtrinh`
  ADD CONSTRAINT `FK_CO_BAI_HOC` FOREIGN KEY (`id_MODULE`) REFERENCES `module` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_LOAI` FOREIGN KEY (`id_LOAICHUONGTRINH`) REFERENCES `loaichuongtrinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_LOAI2` FOREIGN KEY (`id_LOAICHUONGTRINH`) REFERENCES `loaichuongtrinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `congty`
--
ALTER TABLE `congty`
  ADD CONSTRAINT `congty_ibfk_1` FOREIGN KEY (`id_NGANHNGHEDAOTAO`) REFERENCES `nganhnghedaotao` (`id`);

--
-- Constraints for table `congviec`
--
ALTER TABLE `congviec`
  ADD CONSTRAINT `FK_NHAN_VIEC` FOREIGN KEY (`id_HOCVIEN`) REFERENCES `hocvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cosodaotao`
--
ALTER TABLE `cosodaotao`
  ADD CONSTRAINT `FK_THUOC_XA` FOREIGN KEY (`id_XA`) REFERENCES `xa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cutrugv`
--
ALTER TABLE `cutrugv`
  ADD CONSTRAINT `FK_CU_TRU_GV` FOREIGN KEY (`id_XA`) REFERENCES `xa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CU_TRU_GV2` FOREIGN KEY (`id_GIAOVIEN`) REFERENCES `giaovien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cutruhv`
--
ALTER TABLE `cutruhv`
  ADD CONSTRAINT `FK_CU_TRU_HV` FOREIGN KEY (`id_XA`) REFERENCES `xa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CU_TRU_HV2` FOREIGN KEY (`id_HOCVIEN`) REFERENCES `hocvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `danhsachchungchi`
--
ALTER TABLE `danhsachchungchi`
  ADD CONSTRAINT `FK_CO_CHUNG_CHI` FOREIGN KEY (`id_HOCVIEN`) REFERENCES `hocvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `day_nghe`
--
ALTER TABLE `day_nghe`
  ADD CONSTRAINT `FK_DAY_NGHE` FOREIGN KEY (`id_NGANHNGHEDAOTAO`) REFERENCES `nganhnghedaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DAY_NGHE2` FOREIGN KEY (`id_GIAOVIEN`) REFERENCES `giaovien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `day_o_lop`
--
ALTER TABLE `day_o_lop`
  ADD CONSTRAINT `FK_DAY_O_LOP` FOREIGN KEY (`id_GIAOVIEN`) REFERENCES `giaovien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DAY_O_LOP2` FOREIGN KEY (`id_LOP`) REFERENCES `lop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diem`
--
ALTER TABLE `diem`
  ADD CONSTRAINT `FK_CO_DIEM` FOREIGN KEY (`id_HOCVIEN`) REFERENCES `hocvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_GHI_DIEM` FOREIGN KEY (`id_LOP`) REFERENCES `lop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_LOAI_DIEM` FOREIGN KEY (`id_LOAIDIEM`) REFERENCES `loaidiem` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `FK_DIEM_DANH` FOREIGN KEY (`id_HOCVIEN`) REFERENCES `hocvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DIEM_DANH2` FOREIGN KEY (`id_THOIKHOABIEU`) REFERENCES `thoikhoabieu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hocvien`
--
ALTER TABLE `hocvien`
  ADD CONSTRAINT `FK_THUOC_DOI_TUONG` FOREIGN KEY (`id_DOITUONG`) REFERENCES `doituong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoc_tai_lop`
--
ALTER TABLE `hoc_tai_lop`
  ADD CONSTRAINT `FK_HOC_TAI_LOP` FOREIGN KEY (`id_LOP`) REFERENCES `lop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_HOC_TAI_LOP2` FOREIGN KEY (`id_HOCVIEN`) REFERENCES `hocvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `huyen`
--
ALTER TABLE `huyen`
  ADD CONSTRAINT `FK_THUOC_TINH` FOREIGN KEY (`id_TINH`) REFERENCES `tinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `FK_THEO_NGHE` FOREIGN KEY (`id_NGANHNGHEDAOTAO`) REFERENCES `nganhnghedaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_KHOA` FOREIGN KEY (`id_KHOAHOC`) REFERENCES `khoahoc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_PHONG` FOREIGN KEY (`id_PHONG`) REFERENCES `phong` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `module`
--
ALTER TABLE `module`
  ADD CONSTRAINT `FK_THUOC_NGANH_NGHE` FOREIGN KEY (`id_NGANHNGHEDAOTAO`) REFERENCES `nganhnghedaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nganhnghedaotao`
--
ALTER TABLE `nganhnghedaotao`
  ADD CONSTRAINT `FK_THUOC_CO_SO` FOREIGN KEY (`id_COSODAOTAO`) REFERENCES `cosodaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_LOAI_HINH` FOREIGN KEY (`id_LOAIHINHDAOTAO`) REFERENCES `loaihinhdaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_THUOC_LOAI_NGANH` FOREIGN KEY (`id_LOAINGANHDAOTAO`) REFERENCES `loainganhdaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nguoiquen`
--
ALTER TABLE `nguoiquen`
  ADD CONSTRAINT `FK_QUEN_BIET` FOREIGN KEY (`id_HOCVIEN`) REFERENCES `hocvien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `FK_THUOC_CO_SO2` FOREIGN KEY (`id_COSODAOTAO`) REFERENCES `cosodaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sap_lich`
--
ALTER TABLE `sap_lich`
  ADD CONSTRAINT `FK_SAP_LICH` FOREIGN KEY (`id_THICU`) REFERENCES `thicu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_SAP_LICH2` FOREIGN KEY (`id_LOP`) REFERENCES `lop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD CONSTRAINT `FK_CO_TKB` FOREIGN KEY (`id_LOP`) REFERENCES `lop` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CO_TKB2` FOREIGN KEY (`id_CHUONGTRINH`) REFERENCES `chuongtrinh` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `thoi_gian`
--
ALTER TABLE `thoi_gian`
  ADD CONSTRAINT `thoi_gian_ibfk_1` FOREIGN KEY (`id_USER`) REFERENCES `user` (`id`);

--
-- Constraints for table `tuvan`
--
ALTER TABLE `tuvan`
  ADD CONSTRAINT `tuvan_ibfk_1` FOREIGN KEY (`id_NGANHNGHEDAOTAO`) REFERENCES `nganhnghedaotao` (`id`),
  ADD CONSTRAINT `tuvan_ibfk_2` FOREIGN KEY (`id_TINH`) REFERENCES `tinh` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_THUOC_LOAI_USER` FOREIGN KEY (`id_LOAIUSER`) REFERENCES `loaiuser` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_GIAOVIEN`) REFERENCES `giaovien` (`id`);

--
-- Constraints for table `vanbanhanhchanh`
--
ALTER TABLE `vanbanhanhchanh`
  ADD CONSTRAINT `FK_THUOC_NGHE` FOREIGN KEY (`id_NGANHNGHEDAOTAO`) REFERENCES `nganhnghedaotao` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `xa`
--
ALTER TABLE `xa`
  ADD CONSTRAINT `FK_THUOC_HUYEN` FOREIGN KEY (`id_HUYEN`) REFERENCES `huyen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
