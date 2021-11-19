-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 17, 2021 lúc 05:39 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cooking`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feature_image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feature_image_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `feature_image_path`, `feature_image_name`, `content`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'most expensive hamburger today', '/storage/blog/7/wnKbriNFNeJ7rlmTYSqs.jpg', 'bgga.jpg', 'I can\'t believe this hamburger I made is selling so well.', '2021-10-17 00:12:25', '2021-10-21 20:18:23', NULL),
(2, 'The big hambuger today', '/storage/blog/7/mm25rUttHoromSaSbXN4.jpg', 'cbbg2.jpg', '<p class=\"\" style=\"font-family: proxima-nova; line-height: 1.6em; margin-bottom: 1em; overflow-wrap: break-word; white-space: pre-wrap;\"><font color=\"#000000\" style=\"background-color: rgb(247, 247, 247);\">French and Belgian cuisines evoke savory flavors that stay with us long after our meal is done. </font></p><p class=\"\" style=\"font-family: proxima-nova; line-height: 1.6em; margin-bottom: 1em; overflow-wrap: break-word; color: rgb(227, 104, 43); background-color: rgb(252, 252, 252); white-space: pre-wrap;\"><br></p>', '2021-10-17 00:17:23', '2021-10-17 00:53:00', '2021-10-17 00:53:00'),
(3, 'asdasda', '/storage/blog/7/FegOwGb5wirpIEjaDsz3.jpg', '30-hinh-anh-gai-xinh-toc-dai-deo-kinh-bikini-2k3-2k4-dep-nhat-15.jpg', '<p>adasdsadsad</p>', '2021-10-21 20:20:03', '2021-10-21 20:20:03', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `updated_at`, `created_at`, `deleted_at`) VALUES
(3, 'chicken123123', 1, 'chicken', '2021-10-13 00:09:36', '2021-10-06 20:33:25', '2021-10-13 00:09:36'),
(8, 'Hambuger', 0, 'hambuger', '2021-10-13 00:10:07', '2021-10-13 00:10:07', NULL),
(9, 'Chicken', 0, 'chicken', '2021-10-13 00:10:26', '2021-10-13 00:10:26', NULL),
(10, 'Drink', 0, 'drink', '2021-10-13 00:10:36', '2021-10-13 00:10:36', NULL),
(11, 'beef burger', 8, 'beef-burger', '2021-10-13 00:12:10', '2021-10-13 00:12:10', NULL),
(12, 'beef cheese hamburger', 8, 'beef-cheese-hamburger', '2021-10-13 00:12:34', '2021-10-13 00:12:34', NULL),
(13, 'Chicken hambuger', 8, 'chicken-hambuger', '2021-10-13 00:13:59', '2021-10-13 00:13:59', NULL),
(14, 'Coca-cola', 10, 'coca-cola', '2021-10-13 00:14:45', '2021-10-13 00:14:45', NULL),
(15, 'Pepsi', 10, 'pepsi', '2021-10-13 00:14:58', '2021-10-13 00:14:58', NULL),
(16, '7Up', 10, '7up', '2021-10-13 00:15:08', '2021-10-13 00:15:08', NULL),
(17, 'Mirinda', 10, 'mirinda', '2021-10-13 00:15:24', '2021-10-13 00:15:24', NULL),
(18, 'chicken feet with fish sauce', 9, 'chicken-feet-with-fish-sauce', '2021-10-13 00:16:05', '2021-10-13 00:16:05', NULL),
(19, 'Combo1', 9, 'combo1', '2021-10-13 00:16:23', '2021-10-13 00:16:23', NULL),
(20, 'Coca-Cola chicken wings', 9, 'coca-cola-chicken-wings', '2021-10-13 00:17:16', '2021-10-13 00:17:16', NULL),
(21, 'Other dishes', 0, 'other-dishes', '2021-10-13 00:45:02', '2021-10-13 00:45:02', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(255) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(10000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `address`, `email`, `phone`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hades', 'lythuong kiet', 'hades@gmail.com', '12371231231', 'ok nog', '2021-10-30 06:40:24', '2021-10-30 06:40:24', NULL),
(2, 'hades', 'lythuong kiet', 'hades@gmail.com', '12371231231', 'ok nog', '2021-10-30 06:40:53', '2021-10-30 06:40:53', NULL),
(3, 'hades', 'lythuong kiet', 'hades@gmail.com', '12371231231', 'ok nog', '2021-10-30 06:42:11', '2021-10-30 06:42:11', NULL),
(4, 'hades', 'lythuong kiet', 'hades@gmail.com', '12371231231', 'ok nog', '2021-10-30 06:42:32', '2021-10-30 06:42:32', NULL),
(5, 'van', 'le duan', 'Daovanteo@gmail.com', '12312312412', 'ship nhanh nha', '2021-10-30 07:11:45', '2021-10-30 07:11:45', NULL),
(6, 'van', 'le duan', 'Daovanteo@gmail.com', '12312312412', 'ship nhanh nha', '2021-10-30 07:12:52', '2021-10-30 07:12:52', NULL),
(7, 'tao', 'le duan', 'mit@gmail.com', '123123123123', 'ship nhanh nha', '2021-10-30 07:26:16', '2021-10-30 07:26:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `list_user`
--

CREATE TABLE `list_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `list_user`
--

INSERT INTO `list_user` (`id`, `name`, `email_user`, `password_user`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hades', 'hades@gmail.com', '$2y$10$JPhp3Ugf3bfJh5LxlKhsiOAMCiO633x/PE1c.rkmrb77OanctC3Gu', NULL, '2021-10-22 07:42:15', '2021-10-22 07:42:15'),
(2, 'vanteo', 'vanteo@gmail.com', '$2y$10$VAmwucj5Ifwqtx2UajZQKOdeOJXcJMJuTO6evfZKZWgvFuP1DBbQ.', NULL, '2021-10-22 18:56:24', '2021-10-22 18:56:24'),
(3, 'mai', 'mai@gmail.com', '$2y$10$zk5Yl8VQqCzQvDIBNzOysO6hXWpLjRmGpfdstvWv4xbIlJvrBCD1q', NULL, '2021-10-22 19:09:46', '2021-10-22 19:09:46'),
(4, 'mai', 'mai@gmail.com', '$2y$10$4U73H7W2zMYohMJhbzg17OLwI5hwSyNr5ihJJuim.Qst9K33a/CNW', NULL, '2021-10-22 19:11:38', '2021-10-22 19:11:38'),
(5, 'nho', 'nho@gmail.com', '$2y$10$zzRUDQ1VoE1wPVBqM2yTwO8vJrC3YdG4GU25pC6STIhfbAej/IRNu', NULL, '2021-10-23 05:31:01', '2021-10-23 05:31:01'),
(6, 'tao', 'tao@gmail.com', '$2y$10$Y23tmepgGpuGepz2lrdIGug8h.FjelehMbbSMNumWhiELT7086wI.', NULL, '2021-10-23 06:03:59', '2021-10-23 06:03:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `slug`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'Menu', 0, 'menu', '2021-10-06 20:38:19', '2021-10-06 20:38:19', NULL),
(2, 'menu1', 1, 'menu1', '2021-10-06 20:51:07', '2021-10-06 20:51:07', NULL),
(3, 'menu2', 0, 'menu2', '2021-10-06 20:51:16', '2021-10-06 20:51:16', NULL),
(4, 'menu2.1', 3, 'menu21', '2021-10-06 20:51:26', '2021-10-06 20:51:26', NULL),
(5, 'menu2.1.1', 4, 'menu211', '2021-10-06 20:51:44', '2021-10-06 20:51:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `customer_id` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `customer_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, NULL, 4, 1, '2021-10-30 06:42:32', '2021-10-30 06:42:32', NULL),
(2, NULL, 5, 1, '2021-10-30 07:11:45', '2021-10-30 07:11:45', NULL),
(3, NULL, 6, 1, '2021-10-30 07:12:52', '2021-10-30 07:12:52', NULL),
(4, NULL, 7, 1, '2021-10-30 07:26:16', '2021-10-30 07:26:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name_food` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT 1,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name_food`, `quantity`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 1, 6, '', 1, '2021-10-30 06:42:32', '2021-10-30 06:42:32', '2021-10-30 13:42:32'),
(2, 1, 5, '', 1, '2021-10-30 06:42:32', '2021-10-30 06:42:32', '2021-10-30 13:42:32'),
(3, 3, 5, 'beef burger', 1, '2021-10-30 07:12:52', '2021-10-30 07:12:52', '2021-10-30 14:12:52'),
(4, 3, 7, 'Chicken hambuger', 1, '2021-10-30 07:12:52', '2021-10-30 07:12:52', '2021-10-30 14:12:52'),
(5, 4, 5, 'beef burger', 1, '2021-10-30 07:26:16', '2021-10-30 07:26:16', '2021-10-30 14:26:16'),
(6, 4, 10, 'combo1', 1, '2021-10-30 07:26:16', '2021-10-30 07:26:16', '2021-10-30 14:26:16'),
(7, 4, 8, 'chicken feet with fish sauce', 1, '2021-10-30 07:26:16', '2021-10-30 07:26:16', '2021-10-30 14:26:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` int(10) NOT NULL,
  `key_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `parent_id`, `key_code`, `created_at`, `updated_at`) VALUES
(1, 'category', 'category', 0, NULL, '2021-10-10 23:53:46', '2021-10-10 23:53:46'),
(2, 'list', 'list', 1, 'category_list', '2021-10-10 23:53:46', '2021-10-10 23:53:46'),
(3, 'add', 'add', 1, 'category_add', '2021-10-10 23:53:46', '2021-10-10 23:53:46'),
(4, 'edit', 'edit', 1, 'category_edit', '2021-10-10 23:53:46', '2021-10-10 23:53:46'),
(5, 'delete', 'delete', 1, 'category_delete', '2021-10-10 23:53:46', '2021-10-10 23:53:46'),
(6, 'menus', 'menus', 0, NULL, '2021-10-10 23:54:06', '2021-10-10 23:54:06'),
(7, 'list', 'list', 6, 'menus_list', '2021-10-10 23:54:06', '2021-10-10 23:54:06'),
(8, 'add', 'add', 6, 'menus_add', '2021-10-10 23:54:06', '2021-10-10 23:54:06'),
(9, 'edit', 'edit', 6, 'menus_edit', '2021-10-10 23:54:06', '2021-10-10 23:54:06'),
(10, 'delete', 'delete', 6, 'menus_delete', '2021-10-10 23:54:06', '2021-10-10 23:54:06'),
(11, 'product', 'product', 0, NULL, '2021-10-10 23:54:10', '2021-10-10 23:54:10'),
(12, 'list', 'list', 11, 'product_list', '2021-10-10 23:54:10', '2021-10-10 23:54:10'),
(13, 'add', 'add', 11, 'product_add', '2021-10-10 23:54:10', '2021-10-10 23:54:10'),
(14, 'edit', 'edit', 11, 'product_edit', '2021-10-10 23:54:10', '2021-10-10 23:54:10'),
(15, 'delete', 'delete', 11, 'product_delete', '2021-10-10 23:54:10', '2021-10-10 23:54:10'),
(16, 'slider', 'slider', 0, NULL, '2021-10-10 23:54:14', '2021-10-10 23:54:14'),
(17, 'list', 'list', 16, 'slider_list', '2021-10-10 23:54:14', '2021-10-10 23:54:14'),
(18, 'add', 'add', 16, 'slider_add', '2021-10-10 23:54:14', '2021-10-10 23:54:14'),
(19, 'edit', 'edit', 16, 'slider_edit', '2021-10-10 23:54:14', '2021-10-10 23:54:14'),
(20, 'delete', 'delete', 16, 'slider_delete', '2021-10-10 23:54:14', '2021-10-10 23:54:14'),
(21, 'setting', 'setting', 0, NULL, '2021-10-10 23:54:19', '2021-10-10 23:54:19'),
(22, 'list', 'list', 21, 'setting_list', '2021-10-10 23:54:19', '2021-10-10 23:54:19'),
(23, 'add', 'add', 21, 'setting_add', '2021-10-10 23:54:19', '2021-10-10 23:54:19'),
(24, 'edit', 'edit', 21, 'setting_edit', '2021-10-10 23:54:19', '2021-10-10 23:54:19'),
(25, 'delete', 'delete', 21, 'setting_delete', '2021-10-10 23:54:19', '2021-10-10 23:54:19'),
(26, 'user', 'user', 0, NULL, '2021-10-10 23:54:24', '2021-10-10 23:54:24'),
(27, 'list', 'list', 26, 'user_list', '2021-10-10 23:54:24', '2021-10-10 23:54:24'),
(28, 'add', 'add', 26, 'user_add', '2021-10-10 23:54:24', '2021-10-10 23:54:24'),
(29, 'edit', 'edit', 26, 'user_edit', '2021-10-10 23:54:24', '2021-10-10 23:54:24'),
(30, 'delete', 'delete', 26, 'user_delete', '2021-10-10 23:54:24', '2021-10-10 23:54:24'),
(31, 'role', 'role', 0, NULL, '2021-10-10 23:54:28', '2021-10-10 23:54:28'),
(32, 'list', 'list', 31, 'role_list', '2021-10-10 23:54:28', '2021-10-10 23:54:28'),
(33, 'add', 'add', 31, 'role_add', '2021-10-10 23:54:28', '2021-10-10 23:54:28'),
(34, 'edit', 'edit', 31, 'role_edit', '2021-10-10 23:54:28', '2021-10-10 23:54:28'),
(35, 'delete', 'delete', 31, 'role_delete', '2021-10-10 23:54:28', '2021-10-10 23:54:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) NOT NULL,
  `permission_id` int(10) NOT NULL,
  `role_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(2, 3, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(3, 4, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(4, 5, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(5, 7, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(6, 8, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(7, 9, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(8, 10, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(9, 12, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(10, 13, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(11, 14, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(12, 15, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(13, 17, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(14, 18, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(15, 19, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(16, 20, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(17, 22, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(18, 23, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(19, 24, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(20, 25, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(21, 27, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(22, 28, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(23, 29, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(24, 30, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(25, 32, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(26, 33, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(27, 34, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(28, 35, 6, '2021-10-09 02:06:27', '2021-10-09 02:06:27'),
(32, 2, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(33, 3, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(34, 4, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(35, 5, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(36, 7, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(37, 8, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(38, 9, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(39, 10, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(40, 12, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(41, 13, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(42, 14, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(43, 15, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(44, 17, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(45, 18, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(46, 19, 1, '2021-10-11 07:05:37', '2021-10-11 07:05:37'),
(47, 20, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(48, 22, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(49, 23, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(50, 24, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(51, 25, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(52, 27, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(53, 28, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(54, 29, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(55, 30, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(56, 32, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(57, 33, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(58, 34, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(59, 35, 1, '2021-10-11 07:05:38', '2021-10-11 07:05:38'),
(60, 2, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(61, 3, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(62, 4, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(63, 5, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(64, 7, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(65, 8, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(66, 9, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(67, 10, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(68, 12, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(69, 13, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(70, 14, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(71, 15, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(72, 17, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(73, 18, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(74, 19, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(75, 20, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(76, 22, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(77, 23, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(78, 24, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(79, 25, 3, '2021-10-11 07:05:52', '2021-10-11 07:05:52'),
(113, 2, 2, '2021-10-11 07:55:18', '2021-10-11 07:55:18'),
(124, 2, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(125, 3, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(126, 4, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(127, 5, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(128, 17, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(129, 18, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(130, 19, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(131, 20, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(132, 22, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(133, 23, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(134, 24, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32'),
(135, 25, 4, '2021-10-12 06:51:32', '2021-10-12 06:51:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `feature_image_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `feature_image_name` varchar(255) DEFAULT NULL,
  `content` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `view_count` int(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `feature_image_name`, `content`, `user_id`, `category_id`, `view_count`, `updated_at`, `created_at`, `deleted_at`) VALUES
(3, 'nho xanh cham muoi', '1000000', '/storage/product/1/YH82CEYDuid6u16N88Yf.jpg', 'nho.jpg', '<p>ngon ngon ngon</p>', 1, 3, 0, '2021-10-13 04:49:50', '2021-10-07 23:21:11', '2021-10-13 04:49:50'),
(4, 'mang cau trung quoc', '123123123123', '/storage/product/1/91B3236MS7gmFy2IXgbr.jpg', 'mangcau.jpg', '<p>không mua thì phí của trời</p><p><br></p>', 1, 3, 0, '2021-10-07 23:37:42', '2021-10-07 23:37:19', '2021-10-07 23:37:42'),
(5, 'beef burger', '12', '/storage/product/1/CxskO92qvcGcg9btVDvN.jpg', 'SF1.jpg', '<p>Fresh taste, rich beef flavor, soft and smooth crust baby skin, a combination that is too perfect to eat.<br></p>', 1, 11, 3, '2021-10-13 04:53:59', '2021-10-13 04:53:59', NULL),
(6, 'beef cheess burger', '14', '/storage/product/1/4Jxsu8PzdIZa0jauxByY.jpg', 'SF2.jpg', '<p>Fresh taste, rich beef flavor, soft and smooth crust baby skin, a combination that is too perfect to eat.<br></p>', 1, 12, 2, '2021-10-13 04:58:47', '2021-10-13 04:58:47', NULL),
(7, 'Chicken hambuger', '12', '/storage/product/1/ZpFnpwubV5icPKYr9xcv.jpg', 'bgga.jpg', '<p>Fresh taste, rich beef flavor, soft and smooth crust baby skin, a combination that is too perfect to eat.<br></p>', 1, 13, 9, '2021-10-13 19:42:49', '2021-10-13 05:02:35', NULL),
(8, 'chicken feet with fish sauce', '18', '/storage/product/1/ofA2vShzP5iUwTYYg7oF.jpg', 'canhgarimmam.jpg', '<p>Fresh taste, rich beef flavor, soft and smooth crust baby skin, a combination that is too perfect to eat.<br></p>', 1, 18, 8, '2021-10-13 05:18:09', '2021-10-13 05:05:17', NULL),
(10, 'combo1', '25', '/storage/product/1/nEH6ffAhiRveO5Ow0wKQ.jpg', 'cbgavskhoaitay.jpg', '<p>Fresh taste, rich beef flavor, soft and smooth crust baby skin, a combination that is too perfect to eat.<br></p>', 1, 19, 7, '2021-10-13 05:16:29', '2021-10-13 05:09:49', NULL),
(11, 'Coca-Cola chicken wings', '20', '/storage/product/1/UMEEHhZ6oB76y1L4zwEX.jpg', 'garancoca.jpg', '<p>Super delicious, reasonable price, fatty and fragrant, soft meat is immediately infatuated<br></p>', 1, 20, 5, '2021-10-13 05:20:08', '2021-10-13 05:20:08', NULL),
(12, 'coca-cola lala', '5', '/storage/product/1/X5h5yrFtaWlyv0QXaDSg.jpg', 'coca.jpg', '<p>Drink it and feel so refreshed that you can\'t wait to eat more delicious<br></p>', 1, 14, 6, '2021-10-13 05:22:42', '2021-10-13 05:22:42', NULL),
(13, 'pepsi newyork', '5', '/storage/product/1/BJTwbfdtFH33Za2Qox90.jpg', 'pepsi.jpg', '<p>Drink it and feel so refreshed that you can\'t wait to eat more delicious<br></p>', 1, 15, 4, '2021-10-13 05:24:14', '2021-10-13 05:24:14', NULL),
(14, '7Up Mehico', '5', '/storage/product/1/8bAE4HFb4tsSMt0jPZUI.jpg', '7up.jpg', '<p>Drink it and feel so <b>refreshed</b> that you can\'t wait to eat more delicious<br></p>', 1, 16, 10, '2021-10-13 05:25:50', '2021-10-13 05:25:50', NULL),
(15, 'mirinda Cam', '6', '/storage/product/1/jcGvbxZrD7cKIahofmRg.jpg', 'mirindacam.jpg', '<p>very good</p>', 1, 10, 0, '2021-10-13 20:53:20', '2021-10-13 19:43:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_name`, `image_path`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'mangcau.jpg', '/storage/product/1/3Y5Y9HH3LFfrqSjHa2QT.jpg', 3, '2021-10-07 23:21:11', '2021-10-07 23:21:11', NULL),
(5, 'nho.jpg', '/storage/product/1/5axEVv1LlOSMZMleuB2b.jpg', 3, '2021-10-07 23:21:11', '2021-10-07 23:21:11', NULL),
(6, 'oi.jpg', '/storage/product/1/Cwr2HzISbgGsmeaELNlq.jpg', 3, '2021-10-07 23:21:11', '2021-10-07 23:21:11', NULL),
(7, 'melons-4507974__340.jpg', '/storage/product/1/cS1lv6SQfuRgPQIxe6ns.jpg', 4, '2021-10-07 23:37:19', '2021-10-07 23:37:19', NULL),
(8, 'nho.jpg', '/storage/product/1/e6A51gzn3hBRW1aY5aST.jpg', 4, '2021-10-07 23:37:19', '2021-10-07 23:37:19', NULL),
(9, 'oi.jpg', '/storage/product/1/46XA5E9WejXs32V24KIa.jpg', 4, '2021-10-07 23:37:19', '2021-10-07 23:37:19', NULL),
(10, 'canhgarimmam.jpg', '/storage/product/1/izIGRfjLPNlorY8rCEh5.jpg', 8, '2021-10-13 05:18:09', '2021-10-13 05:18:09', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 3, 3, '2021-10-07 23:21:11', '2021-10-07 23:21:11', NULL),
(2, 3, 4, '2021-10-07 23:21:11', '2021-10-07 23:21:11', NULL),
(3, 4, 5, '2021-10-07 23:37:19', '2021-10-07 23:37:19', NULL),
(4, 4, 6, '2021-10-07 23:37:19', '2021-10-07 23:37:19', NULL),
(5, 5, 7, '2021-10-13 04:53:59', '2021-10-13 04:53:59', NULL),
(6, 5, 8, '2021-10-13 04:53:59', '2021-10-13 04:53:59', NULL),
(7, 5, 9, '2021-10-13 04:53:59', '2021-10-13 04:53:59', NULL),
(8, 6, 10, '2021-10-13 04:58:47', '2021-10-13 04:58:47', NULL),
(9, 7, 11, '2021-10-13 05:02:35', '2021-10-13 05:02:35', NULL),
(10, 7, 12, '2021-10-13 05:02:35', '2021-10-13 05:02:35', NULL),
(11, 8, 13, '2021-10-13 05:05:17', '2021-10-13 05:05:17', NULL),
(12, 8, 14, '2021-10-13 05:05:17', '2021-10-13 05:05:17', NULL),
(13, 8, 12, '2021-10-13 05:05:17', '2021-10-13 05:05:17', NULL),
(16, 10, 13, '2021-10-13 05:16:29', '2021-10-13 05:16:29', NULL),
(17, 10, 11, '2021-10-13 05:16:29', '2021-10-13 05:16:29', NULL),
(18, 10, 17, '2021-10-13 05:16:29', '2021-10-13 05:16:29', NULL),
(19, 11, 13, '2021-10-13 05:20:08', '2021-10-13 05:20:08', NULL),
(20, 11, 12, '2021-10-13 05:20:08', '2021-10-13 05:20:08', NULL),
(21, 11, 11, '2021-10-13 05:20:08', '2021-10-13 05:20:08', NULL),
(22, 12, 13, '2021-10-13 05:22:42', '2021-10-13 05:22:42', NULL),
(23, 12, 18, '2021-10-13 05:22:42', '2021-10-13 05:22:42', NULL),
(24, 13, 13, '2021-10-13 05:24:14', '2021-10-13 05:24:14', NULL),
(25, 13, 19, '2021-10-13 05:24:14', '2021-10-13 05:24:14', NULL),
(26, 14, 13, '2021-10-13 05:25:50', '2021-10-13 05:25:50', NULL),
(27, 14, 19, '2021-10-13 05:25:50', '2021-10-13 05:25:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'system management', '2021-10-08 13:11:22', '2021-10-08 13:11:22', NULL),
(2, 'guest', 'customer', '2021-10-08 13:11:22', '2021-10-08 13:11:22', NULL),
(3, 'developer', 'system developer', '2021-10-08 13:11:22', '2021-10-08 13:11:22', NULL),
(4, 'content', 'edit content', '2021-10-08 13:11:22', '2021-10-08 13:11:22', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) NOT NULL,
  `user_id` int(50) NOT NULL,
  `role_id` int(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2021-10-08 13:24:03', '2021-10-08 13:24:03'),
(2, 7, 3, '2021-10-08 13:24:03', '2021-10-08 13:24:03'),
(3, 8, 2, '2021-10-08 13:27:37', '2021-10-08 13:27:37'),
(4, 1, 2, '2021-10-11 07:00:19', '2021-10-11 07:00:19'),
(5, 7, 6, '2021-10-11 07:09:04', '2021-10-11 07:09:04'),
(7, 1, 1, '2021-10-14 14:56:09', '2021-10-14 14:56:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `session_users`
--

CREATE TABLE `session_users` (
  `id` int(11) NOT NULL,
  `token` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `refresh_token` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `token_expried` datetime DEFAULT NULL,
  `refresh_token_expried` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `config_key` varchar(255) DEFAULT NULL,
  `config_value` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `type`, `updated_at`, `created_at`, `deleted_at`) VALUES
(1, 'youtube_link', 'dao hai ytbi', 'Text', '2021-10-17 00:38:28', '2021-10-07 21:03:46', NULL),
(2, 'facebook', 'https://www.facebook.com/eatquickfood', 'Text', '2021-10-13 20:16:02', '2021-10-07 23:39:12', NULL),
(3, 'phone_contact', '84+ 1633534646', 'Text', '2021-10-13 19:33:01', '2021-10-13 19:33:01', NULL),
(4, 'email', 'ys@gmail.com', 'Text', '2021-10-13 19:33:30', '2021-10-13 19:33:30', NULL),
(5, 'zalo', '01633534646', 'Text', '2021-10-13 19:34:13', '2021-10-13 19:34:13', NULL),
(6, 'footer_infomation', '<p class=\"pull-left\">Quick Foods. All rights reserved.</p><p class=\"pull-right\">Designed by <span><a target=\"_blank\" href=\"https://www.facebook.com/daohai2712002\">DaoHai</a></span></p>', 'Textarea', '2021-10-13 20:22:48', '2021-10-13 19:37:46', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_name`, `image_path`, `updated_at`, `created_at`, `deleted_at`) VALUES
(3, 'Hamburger', 'Delicious', 'SF0.jpg', '/storage/slider/1/hamburger02.jpg', '2021-11-10 07:11:20', '2021-11-10 07:11:20', NULL),
(4, 'Pepsi', 'Soft drink', 'SF1.jpg', '/storage/slider/1/drinkpepsi.jpg', '2021-11-10 07:08:22', '2021-11-10 07:08:22', NULL),
(5, 'Combo beef', 'Delicious blue cheese hamburger with greasy beef.', 'SF2.jpg', '/storage/slider/1/foodcb01.jpeg', '2021-10-12 23:16:59', '2021-10-12 23:16:59', NULL),
(6, 'Cocacola', 'Come to our website you will be able to choose beautiful hamburgers', 'SF3.jpg', '/storage/slider/1/drinkcoca01.jpg', '2021-10-12 23:18:23', '2021-10-12 23:18:23', NULL),
(7, 'Cocacola', 'Just looking at it makes me hungry, if I take a bite...', 'SF4.jpg', '/storage/slider/1/drinkcoca02.jpg', '2021-10-12 23:19:43', '2021-10-12 23:19:43', NULL),
(8, 'combo', 'Just eat one and you\'ll be full until morning', 'SF5.jpg', '/storage/slider/1/foodcb01.jpeg', '2021-10-12 23:20:53', '2021-10-12 23:20:53', NULL),
(9, 'Mirinda ', 'Mlem Mlem', 'SF6.jpg', '/storage/slider/1/drinkmirinda.jpg', '2021-10-12 23:21:38', '2021-10-12 23:21:38', NULL),
(10, 'Chicken', 'Just 1 sip will make you surprisingly refreshing', 'SF7.jpg', '/storage/slider/1/food01.jpg', '2021-10-12 23:22:59', '2021-10-12 23:22:59', NULL),
(11, 'Hamburger', 'super delicious to drink', 'SF8.png', '/storage/slider/1/hamburger.jpg', '2021-10-12 23:26:07', '2021-10-12 23:26:07', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `updated_at`, `created_at`) VALUES
(3, 'ưdwd', '2021-10-07 23:21:11', '2021-10-07 23:21:11'),
(4, 'ădf', '2021-10-07 23:21:11', '2021-10-07 23:21:11'),
(5, 'ffefe', '2021-10-07 23:37:19', '2021-10-07 23:37:19'),
(6, 'fefefe', '2021-10-07 23:37:19', '2021-10-07 23:37:19'),
(7, 'cheap', '2021-10-13 04:53:59', '2021-10-13 04:53:59'),
(8, 'tasty', '2021-10-13 04:53:59', '2021-10-13 04:53:59'),
(9, 'tonic', '2021-10-13 04:53:59', '2021-10-13 04:53:59'),
(10, 'very good', '2021-10-13 04:58:47', '2021-10-13 04:58:47'),
(11, 'Crispy', '2021-10-13 05:02:35', '2021-10-13 05:02:35'),
(12, 'soft', '2021-10-13 05:02:35', '2021-10-13 05:02:35'),
(13, 'delicious', '2021-10-13 05:05:17', '2021-10-13 05:05:17'),
(14, 'fat', '2021-10-13 05:05:17', '2021-10-13 05:05:17'),
(15, 'aefafv', '2021-10-13 05:09:49', '2021-10-13 05:09:49'),
(16, 'tjrfyjrf', '2021-10-13 05:09:49', '2021-10-13 05:09:49'),
(17, 'fatty', '2021-10-13 05:16:29', '2021-10-13 05:16:29'),
(18, 'refreshing', '2021-10-13 05:22:42', '2021-10-13 05:22:42'),
(19, 'refeshing', '2021-10-13 05:24:14', '2021-10-13 05:24:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tèo', 'Daovanteo@gmail.com', NULL, '$2y$10$ccL5FrFSJBA4ATvD9dPNCO7iiuRXjGQz8sHVnOnunoRH85bD70cJa', 'qrshU7Zne23UpgeIOHaUgVnKDLnYj5PT6ix9cKuYVYUQHnBbo1Az3ny81usk', '2021-10-08 03:32:56', '2021-10-14 07:56:09'),
(7, 'admin', 'admin@gmail.com', NULL, '$2y$10$LZipZwv.VWKpxRtAHcghMu4ltRebzvr9Imoxv3RBhNM5lshDttga6', 'egickt5eyNGGv3J3jyCVJQqvS80toDJAFjxPG9Yj4P8qqIvOR05CH1bg0nYo', '2021-10-08 06:24:03', '2021-10-11 00:09:04'),
(9, 'Nguyễn Văn Mít', 'mit@gmail.com', NULL, '$2y$10$QAETtfHUgp.j8rfopgzCt.ZkEy5P16uxlK18SrI3Z6AvS2UukIxeS', 'BTPi3y4cC8vWN6yssshuVhnfcV6JojERdNsdtwXErHbQ9h7uCmsZsOtVMEB7', '2021-10-24 06:09:39', '2021-10-24 06:09:39'),
(10, 'nhocam', 'cam@gmail.com', NULL, '$2y$10$wLWd5kVdyOEBqlkv8gQqN.kF9W15hMRry4XcoIBZK1BzDuIPYzt8W', NULL, '2021-10-29 06:58:52', '2021-10-29 06:58:52'),
(13, 'nguyễn thị hương lan', 'lanhuong27072002@gmail.com', NULL, '$2y$10$UxWBVuOYj.Et7bSeBGxph.U1BOgwhUcKsWSdbt47n/sHqzi9VqNKa', 'xvRSbz0AzqGKXeEvnv6tlLlaVxiqrQAGxutfvWMdNTvVVKGTvF0eRyjCsQx7', '2021-11-09 23:28:18', '2021-11-09 23:28:18'),
(14, 'lan', 'nthlan.20it12@vku.udn.vn', NULL, '$2y$10$bbtteuBZrAo4oEmRwVzx6uPdwGg7hL//7Invy5BfYhX435ykOwygC', 'GLv68aT960WkUkigS0WcM8jHHEdT32Sy1hQ7olo6hlyu9hZo78Q6w3RA6lVi', '2021-11-13 02:51:36', '2021-11-13 02:51:36'),
(15, 'lanhuong', 'nthlan.20it12@vku.udn.vn', NULL, '$2y$10$pVqhoCr3h7X0es4YYa34Z.aK9.Thm28IQDmQEz43jtCQs0.Gr7Opy', NULL, '2021-11-13 08:56:57', '2021-11-13 08:56:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_role`
--

CREATE TABLE `user_role` (
  `id` int(10) NOT NULL,
  `user_id` int(50) NOT NULL,
  `role_id` int(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `list_user`
--
ALTER TABLE `list_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `session_users`
--
ALTER TABLE `session_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `list_user`
--
ALTER TABLE `list_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `session_users`
--
ALTER TABLE `session_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD CONSTRAINT `product_tags_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`),
  ADD CONSTRAINT `product_tags_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `session_users`
--
ALTER TABLE `session_users`
  ADD CONSTRAINT `session_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `list_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
