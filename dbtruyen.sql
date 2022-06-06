-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th6 05, 2022 lúc 08:51 AM
-- Phiên bản máy phục vụ: 5.7.36
-- Phiên bản PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dbtruyen`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_comics`
--

DROP TABLE IF EXISTS `tb_comics`;
CREATE TABLE IF NOT EXISTS `tb_comics` (
  `comics_id` int(11) NOT NULL AUTO_INCREMENT,
  `comics_name` varchar(50) NOT NULL,
  `comics_introduce` varchar(50) DEFAULT NULL,
  `comics_style` varchar(50) DEFAULT NULL,
  `comics_img` varchar(200) DEFAULT NULL,
  `comics_cover_img` varchar(200) DEFAULT NULL,
  `like_comics` int(50) DEFAULT NULL,
  `comics_state` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`comics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tb_comics`
--

INSERT INTO `tb_comics` (`comics_id`, `comics_name`, `comics_introduce`, `comics_style`, `comics_img`, `comics_cover_img`, `like_comics`, `comics_state`, `created_at`) VALUES
(1, 'One Piece', 'One Piece', 'Hành động', 'https://i.pinimg.com/originals/6a/f3/87/6af387457739795e0b206aa27b17b457.jpg', 'https://i.pinimg.com/originals/6a/f3/87/6af387457739795e0b206aa27b17b457.jpg', 1000, 'a', '2022-06-01 01:59:34'),
(2, 'Doraemon', 'Doraemon', 'Hài hước', 'https://m.media-amazon.com/images/M/MV5BYzIzOWQ3NDYtOTFlOC00OGMwLTgwZWItNWI2ZDlmZGEwNGQ3XkEyXkFqcGdeQXVyODAzNzAwOTU@.jpg', 'https://m.media-amazon.com/images/M/MV5BYzIzOWQ3NDYtOTFlOC00OGMwLTgwZWItNWI2ZDlmZGEwNGQ3XkEyXkFqcGdeQXVyODAzNzAwOTU@.jpg', 121, 'a', '2022-05-19 01:59:34'),
(3, 'Naruto', 'Naruto', 'Hành động', 'https://img1.ak.crunchyroll.com/i/spire4/5568ffb263f6bcba85a639980b80dd9a1612993223_full.jpg', 'https://img1.ak.crunchyroll.com/i/spire4/5568ffb263f6bcba85a639980b80dd9a1612993223_full.jpg', 1214, 'a', '2022-06-02 09:42:48'),
(4, 'Conan', 'Conan', 'Trinh thám', 'http://cdn.tgdd.vn/Files/2021/06/02/1356902/danh-sach-nhung-vu-an-hay-nhat-cua-phim-tham-tu-lung-danh-conan-202202141321180691.jpg', 'http://cdn.tgdd.vn/Files/2021/06/02/1356902/danh-sach-nhung-vu-an-hay-nhat-cua-phim-tham-tu-lung-danh-conan-202202141321180691.jpg', 101, 'a', '2022-06-02 09:48:36'),
(5, 'Dragon Ball', 'Dragon Ball', 'Hành động', 'https://dragonballwiki.net/xemphim/wp-content/uploads/2017/06/b1490089c2c0f46a4058e82f9889a3aa.jpg', 'https://dragonballwiki.net/xemphim/wp-content/uploads/2017/06/b1490089c2c0f46a4058e82f9889a3aa.jpg', 1208, 'a', '2022-06-02 11:12:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_episode`
--

DROP TABLE IF EXISTS `tb_episode`;
CREATE TABLE IF NOT EXISTS `tb_episode` (
  `episode_id` int(11) NOT NULL AUTO_INCREMENT,
  `episode_name` varchar(50) NOT NULL,
  `episode_img` varchar(5000) DEFAULT NULL,
  `comics_id` int(11) NOT NULL,
  PRIMARY KEY (`episode_id`),
  KEY `comics_id` (`comics_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tb_episode`
--

INSERT INTO `tb_episode` (`episode_id`, `episode_name`, `episode_img`, `comics_id`) VALUES
(1, 'tập 1', 'https://awesomescreenshot.s3.amazonaws.com/image/3137624/27969741-e0c9b17912dbeb7712e6a52bb68c0f92.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T035950Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=081fd726ec401754e813bca9c8787a011b6bc4a23c0f1bf744b1bdf53d3a8998,https://awesomescreenshot.s3.amazonaws.com/image/3137624/27971508-3a66bfe5b710edd7bffb0fefbf997558.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T061027Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=d526113105f7c0bd8d2013d1683b2c9439e591e8ca0af9c1d49b6341ba162b12,https://awesomescreenshot.s3.amazonaws.com/image/3137624/27971753-ae13cf962eb561e12dc257c1e8e01d63.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T094444Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=401de620cad8c7631bfa9539ac8b9556892fec581a63024a754f5d5b95ae37cf,https://awesomescreenshot.s3.amazonaws.com/image/3137624/27971789-7cc0854b9d6e9522f96dc5b467701653.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T094606Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=06654a221e4a25eb92d543b3528633ce6b0f62f2e5d77b7d325fa473450b135f', 1),
(2, 'tập 2', 'https://awesomescreenshot.s3.amazonaws.com/image/3137624/27971819-0ff268cf7188e0fc21dcad294c054546.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T110859Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=e1b4bf75c0677a12f8871fc78e3960592f8cc29cb74ba0e0e3fb5867d4ccb3f9,https://awesomescreenshot.s3.amazonaws.com/image/3137624/27971849-35e79e2bdb83541f5d82e71c9dae0086.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T110927Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=19c2a3d1b13c897a3b26b5c80ed3b854c98bfb6c93bb188f36d6261d004ce52b,https://awesomescreenshot.s3.amazonaws.com/image/3137624/27972011-b050461e13fa6231af54a913f7ad52ed.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T110945Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=6ee30ff93deb581c7b02e841f7b4bc5e90a2dcf605d4018c7d4c4f7c7d8683fa,https://awesomescreenshot.s3.amazonaws.com/image/3137624/27972029-95f16c6488a6e103512bd81a29a5a3a3.png?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAJSCJQ2NM3XLFPVKA%2F20220531%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220531T111008Z&X-Amz-Expires=28800&X-Amz-SignedHeaders=host&X-Amz-Signature=850321c26ab8127041816e4408ae5bca5f85fb52b1bc8e531c8311c63f8ce121', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_favorite_comics`
--

DROP TABLE IF EXISTS `tb_favorite_comics`;
CREATE TABLE IF NOT EXISTS `tb_favorite_comics` (
  `favorite_comics_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `comics_id` varchar(50) DEFAULT NULL,
  `favorite_comics_state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`favorite_comics_id`),
  KEY `comics_id` (`comics_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tb_favorite_comics`
--

INSERT INTO `tb_favorite_comics` (`favorite_comics_id`, `user_id`, `comics_id`, `favorite_comics_state`) VALUES
(1, '1', '3', NULL),
(2, '1', '2', NULL),
(53, '2', '1', NULL),
(47, '2', '2', NULL),
(55, '2', '5', NULL),
(52, '2', '4', NULL),
(45, '1', '6', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_favorite_styles`
--

DROP TABLE IF EXISTS `tb_favorite_styles`;
CREATE TABLE IF NOT EXISTS `tb_favorite_styles` (
  `favorite_styles_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) DEFAULT NULL,
  `style_id` varchar(50) DEFAULT NULL,
  `favorite_styles_state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`favorite_styles_id`),
  KEY `style_id` (`style_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tb_favorite_styles`
--

INSERT INTO `tb_favorite_styles` (`favorite_styles_id`, `user_id`, `style_id`, `favorite_styles_state`) VALUES
(5, '1', '2', NULL),
(6, '1', '12', NULL),
(3, '1', '1', NULL),
(4, '1', '6', NULL),
(7, '1', '11', NULL),
(8, '2', '10', NULL),
(10, '2', '2', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_like_comics`
--

DROP TABLE IF EXISTS `tb_like_comics`;
CREATE TABLE IF NOT EXISTS `tb_like_comics` (
  `like_comics_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `comics_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`like_comics_id`),
  KEY `comics_id` (`comics_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tb_like_comics`
--

INSERT INTO `tb_like_comics` (`like_comics_id`, `user_id`, `comics_id`) VALUES
(1, '1', '2'),
(2, '1', '3'),
(3, '2', '4'),
(4, '2', '3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_styles`
--

DROP TABLE IF EXISTS `tb_styles`;
CREATE TABLE IF NOT EXISTS `tb_styles` (
  `styles_id` int(11) NOT NULL AUTO_INCREMENT,
  `styles_name` varchar(50) NOT NULL,
  PRIMARY KEY (`styles_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tb_styles`
--

INSERT INTO `tb_styles` (`styles_id`, `styles_name`) VALUES
(1, 'Hài hước'),
(2, 'Phiêu lưu'),
(3, 'Tiểu thuyết'),
(4, 'Lãng mạng'),
(5, 'Cổ tích'),
(6, 'Kinh dị'),
(7, 'Lịch sử'),
(8, 'Trinh thám'),
(9, 'Quân sự'),
(10, 'Xuyên không'),
(11, 'Viễn tưởng'),
(12, 'Thần thoại'),

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tb_user`
--

DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE IF NOT EXISTS `tb_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) NOT NULL,
  `user_avata` varchar(200) DEFAULT NULL,
  `user_cover_img` varchar(200) DEFAULT NULL,
  `favorite_comics` varchar(50) DEFAULT NULL,
  `favorite_styles` varchar(50) DEFAULT NULL,
  `user_pass` varchar(30) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `user_name`, `user_avata`, `user_cover_img`, `favorite_comics`, `favorite_styles`, `user_pass`) VALUES
(1, 'ad', 'http://res.cloudinary.com/robotic/image/upload/v1654418516/b8v38drriru7o1hqkbsz.jpg', 'https://mondaycareer.com/wp-content/uploads/2020/11/background-%C4%91%E1%BA%B9p-3-1024x682.jpg', 'Conan', 'Hành động', '123'),
(2, 'ad2', 'http://res.cloudinary.com/robotic/image/upload/v1654417781/jimixjjhqljsmlmlbiak.jpg', 'http://res.cloudinary.com/robotic/image/upload/v1654418331/fj61wfimzq8oqtizosdg.jpg', NULL, NULL, '123');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
