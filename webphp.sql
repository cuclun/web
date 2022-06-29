-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2022 lúc 04:00 AM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accessories`
--

CREATE TABLE `accessories` (
  `id` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `performance` varchar(50) DEFAULT NULL,
  `capacity` varchar(50) DEFAULT NULL,
  `input` varchar(50) DEFAULT NULL,
  `output` varchar(50) DEFAULT NULL,
  `slot` varchar(100) DEFAULT NULL,
  `longs` varchar(100) DEFAULT NULL,
  `speed` varchar(100) DEFAULT NULL,
  `rs` varchar(100) DEFAULT NULL,
  `ws` varchar(100) DEFAULT NULL,
  `compatible` varchar(100) DEFAULT NULL,
  `core` varchar(50) DEFAULT NULL,
  `extensions` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `made` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `level` tinyint(4) DEFAULT 1,
  `avatar` varchar(100) DEFAULT NULL,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `address`, `email`, `password`, `phone`, `status`, `level`, `avatar`, `create_at`, `update_at`) VALUES
(10, 'Cúc Trần', 'Liên Chiểu, Đà Nẵng', 'cuctran123@gmail.com', 'c8837b23ff8aaa8a2dde915473ce0991', '0774565149', 1, 2, NULL, '2022-03-24 20:07:54', '2022-03-24 20:07:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `images` varchar(100) DEFAULT NULL,
  `banner` varchar(100) NOT NULL,
  `home` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `images`, `banner`, `home`, `status`, `level`, `created_at`, `updated_at`) VALUES
(12, 'Gà rán', 'ga-ran', NULL, '', 0, 1, 0, '2022-03-26 17:46:13', '2022-05-25 22:53:56'),
(29, 'Combo', 'combo', NULL, '', 0, 1, 0, '2022-04-02 17:36:25', '2022-04-02 17:36:25'),
(30, 'Burger', 'burger', NULL, '', 0, 1, 0, '2022-04-02 17:39:18', '2022-04-02 17:39:18'),
(31, 'Cơm', 'com', NULL, '', 0, 1, 0, '2022-04-02 17:39:30', '2022-04-02 17:39:30'),
(32, 'Set', 'set', NULL, '', 0, 1, 0, '2022-04-02 17:39:58', '2022-04-02 17:39:58'),
(33, 'SuShi', 'sushi', NULL, '', 0, 1, 0, '2022-05-12 06:53:49', '2022-05-12 06:53:49'),
(34, 'Kem', 'kem', NULL, '', 0, 1, 0, '2022-05-12 06:55:33', '2022-05-12 06:55:33'),
(35, 'Trà', 'tra', NULL, '', 0, 1, 0, '2022-05-12 06:55:36', '2022-05-12 06:55:36'),
(36, 'Trà sữa', 'tra-sua', NULL, '', 0, 1, 0, '2022-05-12 06:55:39', '2022-05-12 06:55:39'),
(37, 'Nước Ngọt', 'nuoc-ngot', NULL, '', 0, 1, 0, '2022-05-12 06:55:44', '2022-05-12 06:55:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `address`, `content`, `title`, `created_at`, `update_at`) VALUES
(2, 'Trần Thị Thanh Cúc', 'thanhcuc123@gmail.com', '0774565149', 'Điện Bàn, Quảng Nam', 'Gà rất ngon', 'phản hồi', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `qty` tinyint(4) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `transaction_id`, `product_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(39, 35, 170, 1, 38000, '2022-05-28 23:54:27', '2022-05-28 23:54:27'),
(45, 40, 169, 5, 40000, '2022-05-29 01:33:54', '2022-05-29 01:33:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phone`
--

CREATE TABLE `phone` (
  `id` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `ManHinh` varchar(50) DEFAULT NULL,
  `HDH` varchar(50) DEFAULT NULL,
  `Camtruoc` varchar(50) DEFAULT NULL,
  `Camsau` varchar(50) DEFAULT NULL,
  `CPU` varchar(50) DEFAULT NULL,
  `RAM` varchar(50) DEFAULT NULL,
  `ROM` varchar(50) DEFAULT NULL,
  `SDCar` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phone`
--

INSERT INTO `phone` (`id`, `id2`, `ManHinh`, `HDH`, `Camtruoc`, `Camsau`, `CPU`, `RAM`, `ROM`, `SDCar`, `Pin`) VALUES
(169, 86, '', '', '', '', '', '', '', '', ''),
(170, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `sale` tinyint(4) DEFAULT 0,
  `thundar` varchar(200) DEFAULT NULL,
  `rated` int(11) NOT NULL DEFAULT 0,
  `comment` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `head` int(11) DEFAULT 0,
  `view` int(11) DEFAULT 0,
  `hot` tinyint(4) DEFAULT 0,
  `number` int(11) NOT NULL DEFAULT 0,
  `create_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `sale`, `thundar`, `rated`, `comment`, `category_id`, `content`, `head`, `view`, `hot`, `number`, `create_at`, `update_at`) VALUES
(169, 'Gà rán HS - 1 miếng (HS Chicken - 1 PC)', 'ga-ran-hs---1-mieng-hs-chicken---1-pc', 45000, 0, 'HS.jpg', 5, 1, 12, 'Giòn, giòn thơm ngon', 0, 0, 0, 100, '2022-04-02 17:43:09', '2022-04-02 17:43:09'),
(170, 'Gà rán Sốt Phô Mai - 1 miếng (Cheese Chicken - 1 PC)', 'ga-ran-sot-pho-mai---1-mieng-cheese-chicken---1-pc', 40000, 0, 'chicken_1_pc.jpg', 5, 1, 12, 'Giòn, giòn thơm ngon + phô mai béo ngậy', 0, 0, 0, 100, '2022-04-02 17:46:27', '2022-04-02 17:46:27'),
(171, 'Cơm gà ngũ vị', 'com-ga-ngu-vi', 65000, 0, 'c_m_g_n_ng_g_c_t_.png', 0, 0, 31, 'Cơm gà ngon ngon', 0, 0, 0, 100, '2022-05-15 00:16:43', '2022-05-15 00:16:43'),
(172, 'Cơm gà đùi', 'com-ga-dui', 65000, 0, 'c_m_g_n_ng.png', 0, 0, 31, 'Cơm gà + kim chi', 0, 0, 0, 100, '2022-05-15 00:19:36', '2022-05-15 00:19:36'),
(174, 'Burger cá mòi', 'burger-ca-moi', 45000, 0, 'combo_big-star_4.png', 0, 0, 30, 'combo', 0, 0, 0, 100, '2022-05-25 12:22:31', '2022-05-25 12:22:31'),
(175, 'Cơm Gà Sốt Đậu ', 'com-ga-sot-dau', 56000, 0, 'soybeanchickenrice_4.png', 0, 0, 31, 'cơm', 0, 0, 0, 100, '2022-05-25 12:23:14', '2022-05-25 12:23:14'),
(176, 'Gà rán HS', 'ga-ran-hs', 50000, 0, 'chicken_1_pc.jpg', 0, 0, 12, 'gà', 0, 0, 0, 100, '2022-05-25 12:24:11', '2022-05-25 12:24:11'),
(177, 'Burger Hawaii', 'burger-hawaii', 60000, 0, 'hawaii_burger_1_2 (1).jpg', 0, 0, 30, 'burger', 0, 0, 0, 100, '2022-05-28 19:19:32', '2022-05-28 19:19:32'),
(178, 'Burger Mozzarella', 'burger-mozzarella', 60000, 0, 'mozzarella-burger_5 (1).jpg', 0, 0, 30, 'burger', 0, 0, 0, 100, '2022-05-28 19:20:27', '2022-05-28 19:20:27'),
(179, 'Burger Super Jumbo', 'burger-super-jumbo', 60000, 5, 'jumbo-chicken-burger_4.jpg', 0, 0, 30, 'burger', 0, 0, 0, 100, '2022-05-28 19:21:44', '2022-05-28 19:21:44'),
(180, 'Burger Big Star', 'burger-big-star', 60000, 5, 'burger_bigstar_4 (1).png', 0, 0, 30, 'burger', 0, 0, 0, 100, '2022-05-28 19:22:16', '2022-05-28 19:22:16'),
(181, 'Burger Tôm (Shrimp Burger)', 'burger-tom-shrimp-burger', 47000, 0, 'burger_shrimp_4.png', 0, 0, 30, 'burger', 0, 0, 0, 100, '2022-05-28 19:23:39', '2022-05-28 19:23:39'),
(182, 'Burger Bò Trứng', 'burger-bo-trung', 47000, 0, 'burger_b_tr_ng_update.jpg', 0, 0, 30, 'burger', 0, 0, 0, 100, '2022-05-28 19:24:09', '2022-05-28 19:24:09'),
(183, 'Big Star Combo', 'big-star-combo', 86000, 0, 'combo_big-star_4.png', 0, 0, 29, 'combo', 0, 0, 0, 100, '2022-05-28 19:25:07', '2022-05-28 19:25:07'),
(184, 'Combo Tôm ', 'combo-tom', 77000, 0, 'combo_shrimp_4.png', 0, 0, 29, 'combo', 0, 0, 0, 100, '2022-05-28 19:25:55', '2022-05-28 19:25:55'),
(185, 'Bulgogi Combo', 'bulgogi-combo', 77000, 0, 'combo_bulgogi_4.png', 0, 0, 29, 'combo', 0, 0, 0, 100, '2022-05-28 19:26:26', '2022-05-28 19:26:26'),
(186, 'Combo Phô Mai', 'combo-pho-mai', 64000, 0, 'combo_burger_ph_mai_update.jpg', 0, 0, 29, 'combo', 0, 0, 0, 100, '2022-05-28 19:27:55', '2022-05-28 19:27:55'),
(187, 'Cơm Gà Hoàng Gia ', 'com-ga-hoang-gia', 45000, 0, 'com_ga_hoang_gia.jpg', 0, 0, 31, 'cơm', 0, 0, 0, 100, '2022-05-28 19:32:06', '2022-05-28 19:32:06'),
(188, 'Sushi Cá hồi', 'sushi-ca-hoi', 28000, 0, '1.jpg', 0, 0, 33, 'sushi', 0, 0, 0, 100, '2022-05-28 19:34:17', '2022-05-28 19:34:17'),
(189, 'SuShi Trứng', 'sushi-trung', 10000, 0, '2.jpg', 0, 0, 33, 'Sushi', 0, 0, 0, 100, '2022-05-28 19:35:08', '2022-05-28 19:35:08'),
(190, 'SuShi Thanh Cua', 'sushi-thanh-cua', 25000, 0, '6e22f283-59d3-4976-bed0-46fbc1d77cfa.jpg', 0, 0, 33, 'Sushi\r\n', 0, 0, 0, 100, '2022-05-28 19:35:32', '2022-05-28 19:35:32'),
(191, 'SuShi Lươn', 'sushi-luon', 25000, 0, 'a8f39b9e-5424-4c97-b901-320fc28ee9c2.jpg', 0, 0, 33, 'súhsi\r\n', 0, 0, 0, 100, '2022-05-28 19:36:12', '2022-05-28 19:36:12'),
(192, 'Trà sữa socola', 'tra-sua-socola', 20000, 0, '0c4947a8-c58f-45dd-9c72-a32002139eb0.jpeg', 5, 1, 36, 'trà sữa', 0, 0, 0, 100, '2022-05-28 19:37:33', '2022-05-28 19:37:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rated`
--

CREATE TABLE `rated` (
  `id` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_users` int(11) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `rated` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rated`
--

INSERT INTO `rated` (`id`, `id_product`, `id_users`, `comment`, `rated`, `created_at`, `updated_at`) VALUES
(42, 170, 28, 'Amazing, good jobs', 5, '2022-05-14 06:37:32', '2022-05-14 06:37:32'),
(43, 169, 28, 'Amazing, good jobs', 5, '2022-05-15 01:38:39', '2022-05-15 01:38:39'),
(44, 192, 28, 'Trà sữa béo , đậm , mùi socola rất thơm', 5, '2022-05-28 19:57:33', '2022-05-28 19:57:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thanhtoan`
--

CREATE TABLE `thanhtoan` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `users_id`, `name`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(35, 41800, 28, 'Trần Thị Thanh Cúc', '0774565149', 'Điện Bàn, Quảng Nam', 1, '2022-05-28 23:54:27', '2022-05-29 01:53:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `update_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `update_at`) VALUES
(28, 'Trần Thị Thanh Cúc', 'thanhcuc123@gmail.com', '0774565149', 'Điện Bàn, Quảng Nam', 'c8837b23ff8aaa8a2dde915473ce0991', '', 1, '2022-05-28 20:11:10', '2022-05-28 20:11:10');
--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`id2`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`id2`),
  ADD KEY `id` (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `rated`
--
ALTER TABLE `rated`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_users` (`id_users`);

--
-- Chỉ mục cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accessories`
--
ALTER TABLE `accessories`
  MODIFY `id2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `phone`
--
ALTER TABLE `phone`
  MODIFY `id2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT cho bảng `rated`
--
ALTER TABLE `rated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `thanhtoan`
--
ALTER TABLE `thanhtoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`transaction_id`) REFERENCES `transaction` (`id`);

--
-- Các ràng buộc cho bảng `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `rated`
--
ALTER TABLE `rated`
  ADD CONSTRAINT `rated_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `rated_ibfk_2` FOREIGN KEY (`id_users`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/* trigger cập nhật hàng trong kho sau khi đặt hàng */
CREATE TRIGGER capnhatkho ON `orders` AFTER INSERT AS 
BEGIN
	UPDATE `product`
	SET `number` = `number` - (
		SELECT `qty`
		FROM `inserted`
		WHERE `product_id` = `product`.`id`
	)
	FROM `product`
	JOIN `inserted` ON `product`.`id` = `inserted`.`product_id`
END
GO

/* trigger số lượng đặt nhỏ hơn số lượng còn */
CREATE TRIGGER `DatHang` ON `orders` FOR INSERT AS
BEGIN
	DECLARE @SoLuongDat tinyint
	DECLARE @SoLuongCon int

	SELECT @SoLuongDat = `qty` FROM `inserted`
	SELECT @SoLuongCon = `number` FROM `product`
	IF (@SoLuongDat > @SoLuongCon)
	BEGIN
		PRINT N'Vượt quá số lượng trong kho'
		ROLLBACK TRANSACTION
	END
END
GO

/* store procedure khi thêm sản phẩm */
CREATE PROC ThemSP (@name varchar(100),
					@category_id int(11),
					@price int(11),
					@number int,
					@thundar varchar(200) null,
					@content text,
					@sale tinyint(4) null)
AS
BEGIN
	IF EXISTS (SELECT name FROM `product` WHERE name = @name)
	BEGIN
		PRINT N'Tên sản phẩm đã tồn tại'
		RETURN
	END

	IF (@price < 0)
	BEGIN
		PRINT N'Giá sản phẩm phải lớn hơn 0'
		RETURN 
	END

	IF (@number < 0)
	BEGIN
		PRINT N'Số lượng sản phẩm phải lớn hơn 0'
		RETURN
	END

	INSERT INTO `product`	VALUES (@name,
								@category_id,
								@price,
								@number
								@thundar,
								@content,
								@sale)
END
GO

/* store procedure khi thêm danh mục sản phẩm */
CREATE PROC `ThemDMSP` (@name varchar(100),
					@images varchar(100) null)
AS
BEGIN
	IF EXISTS (SELECT name FROM `category` WHERE name = @name)
	BEGIN
		PRINT N'Tên danh mục đã tồn tại!'
		RETURN
	END
	INSERT INTO `category` VALUES (@name,
								@images)
END
GO

/* function liệt kê số lượng sản phẩm đã bán */
CREATE FUNCTION SoLuong (@id varchar(100))
RETURNS INT
AS
BEGIN
	DECLARE @sl int
	SELECT @sl = SUM(qty)
	FROM orders WHERE @id = product_id
	RETURN @sl
END

/* FUNCTION liệt kê sản phẩm mà user truyền vào đã mua */
CREATE FUNCTION XemSP (@id int(11))
RETURNS TABLE
AS
	RETURN (SELECT u.name, o.* FROM users u JOIN orders o ON u.id = o.users_id WHERE u.id = @id)

----- Trigger 1 --- Không thể đặt hàng nếu số lượng đặt nhiều hơn số lượng còn lại của sản phẩm
DELIMITER //

CREATE TRIGGER dat_hang BEFORE INSERT ON orders
FOR EACH ROW
BEGIN
	DECLARE so_luong_dat INT;
	DECLARE so_luong_con INT;

	SET so_luong_dat = NEW.qty;
	SELECT number INTO so_luong_con FROM product WHERE id=NEW.product_id;
	IF (so_luong_dat > so_luong_con) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Khong du hang";
	END IF;
END//

DELIMITER ;

--- Trigger 2 ---
/* trigger cập nhật hàng trong kho sau khi đặt hàng */
DELIMITER //

CREATE TRIGGER cap_nhat_kho AFTER INSERT ON orders
FOR EACH ROW 
BEGIN
	UPDATE product
	SET number = number - NEW.qty WHERE id=NEW.product_id;
END//

DELIMITER ;