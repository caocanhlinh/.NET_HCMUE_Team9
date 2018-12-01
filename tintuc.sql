-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 01, 2018 lúc 08:45 AM
-- Phiên bản máy phục vụ: 10.1.35-MariaDB
-- Phiên bản PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tintuc`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(20) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `MatKhau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `HoTen`, `MatKhau`) VALUES
(1, 'Nguyen Van A', '123456'),
(2, 'Tran Van B', '123456'),
(3, 'Tran Thi D', '123456'),
(4, 'Tran Van C', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `MaTheLoai` int(20) NOT NULL,
  `TenTheLoai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`MaTheLoai`, `TenTheLoai`) VALUES
(1, 'The Thao'),
(2, 'Dien Anh'),
(3, 'Cong Nghe'),
(4, 'Thoi Trang');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `MaTin` int(11) NOT NULL,
  `TieuDe` text NOT NULL,
  `NoiDung` text NOT NULL,
  `Anh` text NOT NULL,
  `NgayDang` date NOT NULL,
  `NguoiDang` varchar(11) NOT NULL,
  `MaTheLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`MaTin`, `TieuDe`, `NoiDung`, `Anh`, `NgayDang`, `NguoiDang`, `MaTheLoai`) VALUES
(1, 'Kết Quả AFF CUP', 'Việt Nam đăng quang ngôi quán quân.', '', '2018-12-01', '1', 1),
(2, 'Phim Việt mùa tết Dương Lịch', 'Các bộ phim sắp ra mắt:', '', '2018-12-01', 'Minh Vuong', 2),
(3, 'Chung Kết UEFA champions League', '2 đội lọt vào vòng chung kết là.....', '', '2018-12-02', 'Cao Linh', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MaTheLoai`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`MaTin`),
  ADD KEY `MaTheLoai` (`MaTheLoai`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD CONSTRAINT `tintuc_ibfk_1` FOREIGN KEY (`MaTheLoai`) REFERENCES `theloai` (`MaTheLoai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
