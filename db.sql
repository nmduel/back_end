-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2023 lúc 04:21 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db`
--
CREATE DATABASE IF NOT EXISTS `db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SPORTSWEAR', 0, 'sportswear', '2023-10-15 01:23:25', '2023-10-15 01:23:25', NULL),
(2, 'MENS', 0, 'mens', '2023-10-15 01:23:51', '2023-10-15 01:23:51', NULL),
(3, 'WOMENS', 0, 'womens', '2023-10-15 01:23:57', '2023-10-15 01:23:57', NULL),
(4, 'KIDS', 0, 'kids', '2023-10-15 01:24:04', '2023-10-15 01:24:04', NULL),
(5, 'FASHION', 0, 'fashion', '2023-10-15 01:24:15', '2023-10-15 01:24:15', NULL),
(6, 'HOUSEHOLDS', 0, 'households', '2023-10-15 01:24:24', '2023-10-15 01:24:24', NULL),
(7, 'HOUSEHOLDS', 0, 'households', '2023-10-15 01:24:25', '2023-10-15 20:29:44', '2023-10-15 20:29:44'),
(8, 'INTERIORS', 0, 'interiors', '2023-10-15 01:24:31', '2023-10-17 08:55:02', '2023-10-17 08:55:02'),
(9, 'INTERIORS', 0, 'interiors', '2023-10-15 01:24:32', '2023-10-15 20:29:31', '2023-10-15 20:29:31'),
(10, 'CLOTHING', 0, 'clothing', '2023-10-15 01:24:37', '2023-10-17 08:54:42', '2023-10-17 08:54:42'),
(11, 'BAGS', 0, 'bags', '2023-10-15 01:24:42', '2023-10-17 08:54:07', '2023-10-17 08:54:07'),
(12, 'SHOES', 0, 'shoes', '2023-10-15 01:24:47', '2023-10-17 08:54:14', '2023-10-17 08:54:14'),
(13, 'NIKE', 12, 'nike', '2023-10-15 01:25:09', '2023-10-15 01:25:13', '2023-10-15 01:25:13'),
(14, 'NIKE', 1, 'nike', '2023-10-15 01:25:18', '2023-10-15 01:25:18', NULL),
(15, 'UNDER ARMOUR', 1, 'under-armour', '2023-10-15 01:25:27', '2023-10-15 01:25:27', NULL),
(16, 'ADIDAS', 1, 'adidas', '2023-10-15 01:25:34', '2023-10-15 01:25:34', NULL),
(17, 'ADIDAS', 1, 'adidas', '2023-10-15 01:25:34', '2023-10-15 20:29:26', '2023-10-15 20:29:26'),
(18, 'PUMA', 1, 'puma', '2023-10-15 01:25:42', '2023-10-15 01:25:42', NULL),
(19, 'FENDI', 2, 'fendi', '2023-10-15 01:26:20', '2023-10-15 01:26:20', NULL),
(20, 'GUESS', 2, 'guess', '2023-10-15 01:26:28', '2023-10-15 01:26:28', NULL),
(21, 'VALENTINO', 2, 'valentino', '2023-10-15 01:26:36', '2023-10-17 08:53:40', '2023-10-17 08:53:40'),
(22, 'FENDI woman', 3, 'fendi-woman', '2023-10-15 01:26:57', '2023-10-15 01:26:57', NULL),
(23, 'ADIDAS children', 16, 'adidas-children', '2023-10-15 20:14:19', '2023-10-15 20:14:19', NULL),
(24, 'ADIDAS children 2', 16, 'adidas-children-2', '2023-10-15 20:14:42', '2023-10-17 08:53:37', '2023-10-17 08:53:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `parent_id`, `created_at`, `updated_at`, `slug`, `deleted_at`) VALUES
(1, 'menu 1', 0, NULL, NULL, '', NULL),
(2, 'menu 2', 0, NULL, NULL, '', NULL),
(3, 'menu 3', 0, NULL, NULL, '', NULL),
(4, 'menu 2.1-edit', 2, NULL, '2023-10-14 19:44:26', 'menu-21-edit', '2023-10-14 19:44:26'),
(5, 'menu 1.2', 1, NULL, NULL, '', NULL),
(6, 'menu 1.1.1', 4, NULL, NULL, '', NULL),
(7, 'menu 1.2.1', 5, NULL, NULL, '', NULL),
(8, 'menu 2.1', 2, NULL, NULL, '', NULL),
(10, 'menu 1.1.1.1', 6, '2023-10-07 02:43:38', '2023-10-07 02:43:38', '', NULL),
(13, 'menu 1.2.1.1', 7, '2023-10-14 19:42:55', '2023-10-14 19:45:01', 'menu-1211', '2023-10-14 19:45:01'),
(14, '1.2.2.1', 5, '2023-10-14 19:44:08', '2023-10-14 19:47:16', '1221', '2023-10-14 19:47:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_06_032325_create_categories_table', 1),
(6, '2023_10_06_091954_add_column_deleted_at_table_categories', 2),
(7, '2023_10_06_093201_create_menus_table', 3),
(8, '2023_10_08_031114_add_column_slug_menus_table', 4),
(9, '2023_10_06_091954_add_column_deleted_at_table_menus', 5),
(10, '2023_10_09_012531_create_products_table', 6),
(11, '2023_10_09_012828_create_product_images_table', 6),
(12, '2023_10_09_013016_create_tags_table', 6),
(13, '2023_10_09_013109_create_product_tags_table', 6),
(14, '2023_10_09_093730_add_column_feature_image_name', 7),
(15, '2023_10_09_100837_add_column_image_name_to_table_product_image', 8),
(16, '2023_10_10_074510_add_column_deleted_at_to_product_table', 9),
(17, '2023_10_10_093433_create_sliders_table', 10),
(18, '2023_10_11_023911_add_column_deleted_at_to_sliders', 11),
(20, '2023_10_11_031128_create_settings_table', 12),
(21, '2023_10_11_044008_add_column_type_settings_table', 13),
(28, '2023_10_11_064448_create_roles_table', 14),
(29, '2023_10_11_064513_create_permissions_table', 14),
(30, '2023_10_11_064633_create_table_user_role', 14),
(31, '2023_10_11_064726_create_table_permission_role', 14),
(32, '2023_10_11_083533_add_column_parent_id_permission', 14),
(33, '2023_10_11_085550_add_column_key_permission_table', 15),
(34, '2023_10_13_030220_add_column_deleted_at_to_settings', 16),
(35, '2023_10_15_150858_add_column_views_products', 17);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `key_code` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`, `parent_id`, `key_code`) VALUES
(1, 'category', 'category', '2023-10-12 02:07:48', '2023-10-12 02:07:48', 0, 'NULL'),
(2, 'list', 'list', '2023-10-12 02:07:48', '2023-10-12 02:07:48', 1, 'category_list'),
(3, 'add', 'add', '2023-10-12 02:07:48', '2023-10-12 02:07:48', 1, 'category_add'),
(4, 'edit', 'edit', '2023-10-12 02:07:48', '2023-10-12 02:07:48', 1, 'category_edit'),
(5, 'delete', 'delete', '2023-10-12 02:07:48', '2023-10-12 02:07:48', 1, 'category_delete'),
(6, 'slider', 'slider', '2023-10-12 02:07:52', '2023-10-12 02:07:52', 0, 'NULL'),
(7, 'list', 'list', '2023-10-12 02:07:53', '2023-10-12 02:07:53', 6, 'slider_list'),
(8, 'add', 'add', '2023-10-12 02:07:53', '2023-10-12 02:07:53', 6, 'slider_add'),
(9, 'edit', 'edit', '2023-10-12 02:07:53', '2023-10-12 02:07:53', 6, 'slider_edit'),
(10, 'delete', 'delete', '2023-10-12 02:07:53', '2023-10-12 02:07:53', 6, 'slider_delete'),
(11, 'menu', 'menu', '2023-10-12 02:07:57', '2023-10-12 02:07:57', 0, 'NULL'),
(12, 'list', 'list', '2023-10-12 02:07:57', '2023-10-12 02:07:57', 11, 'menu_list'),
(13, 'add', 'add', '2023-10-12 02:07:57', '2023-10-12 02:07:57', 11, 'menu_add'),
(14, 'edit', 'edit', '2023-10-12 02:07:57', '2023-10-12 02:07:57', 11, 'menu_edit'),
(15, 'delete', 'delete', '2023-10-12 02:07:57', '2023-10-12 02:07:57', 11, 'menu_delete'),
(16, 'product', 'product', '2023-10-12 02:08:01', '2023-10-12 02:08:01', 0, 'NULL'),
(17, 'list', 'list', '2023-10-12 02:08:01', '2023-10-12 02:08:01', 16, 'product_list'),
(18, 'add', 'add', '2023-10-12 02:08:01', '2023-10-12 02:08:01', 16, 'product_add'),
(19, 'edit', 'edit', '2023-10-12 02:08:01', '2023-10-12 02:08:01', 16, 'product_edit'),
(20, 'delete', 'delete', '2023-10-12 02:08:01', '2023-10-12 02:08:01', 16, 'product_delete'),
(21, 'setting', 'setting', '2023-10-12 02:08:05', '2023-10-12 02:08:05', 0, 'NULL'),
(22, 'list', 'list', '2023-10-12 02:08:05', '2023-10-12 02:08:05', 21, 'setting_list'),
(23, 'add', 'add', '2023-10-12 02:08:05', '2023-10-12 02:08:05', 21, 'setting_add'),
(24, 'edit', 'edit', '2023-10-12 02:08:05', '2023-10-12 02:08:05', 21, 'setting_edit'),
(25, 'delete', 'delete', '2023-10-12 02:08:05', '2023-10-12 02:08:05', 21, 'setting_delete'),
(26, 'user', 'user', '2023-10-12 02:08:09', '2023-10-12 02:08:09', 0, 'NULL'),
(27, 'list', 'list', '2023-10-12 02:08:09', '2023-10-12 02:08:09', 26, 'user_list'),
(28, 'add', 'add', '2023-10-12 02:08:09', '2023-10-12 02:08:09', 26, 'user_add'),
(29, 'edit', 'edit', '2023-10-12 02:08:09', '2023-10-12 02:08:09', 26, 'user_edit'),
(30, 'delete', 'delete', '2023-10-12 02:08:09', '2023-10-12 02:08:09', 26, 'user_delete'),
(31, 'role', 'role', '2023-10-12 02:08:13', '2023-10-12 02:08:13', 0, 'NULL'),
(32, 'list', 'list', '2023-10-12 02:08:13', '2023-10-12 02:08:13', 31, 'role_list'),
(33, 'add', 'add', '2023-10-12 02:08:14', '2023-10-12 02:08:14', 31, 'role_add'),
(34, 'edit', 'edit', '2023-10-12 02:08:14', '2023-10-12 02:08:14', 31, 'role_edit'),
(35, 'delete', 'delete', '2023-10-12 02:08:14', '2023-10-12 02:08:14', 31, 'role_delete');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `price` bigint(191) NOT NULL,
  `feature_image_path` varchar(191) DEFAULT NULL,
  `content` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `feature_image_name` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `views_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `feature_image_path`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`, `feature_image_name`, `deleted_at`, `views_count`) VALUES
(1, 'asd', 312, '/storage/product/1/hVtOYP8rPzSCcGj9TQqr.png', '<p>adds</p>', 1, 4, '2023-10-09 02:50:14', '2023-10-17 08:47:58', '354460148_786376859531721_3344333958040216084_n.png', '2023-10-17 08:47:58', 7),
(2, 'bbbbv', 123123, '/storage/product/1/6oilRgGCjm7I2J2Uld84.png', '<p>123213213</p>', 10, 2, '2023-10-09 08:57:18', '2023-10-17 08:47:55', '354460148_786376859531721_3344333958040216084_n.png', '2023-10-17 08:47:55', 8),
(3, 'bbbbv', 123123, '/storage/product/1/BCFL6iyJVtRCV2D8pZzi.png', '<p>123213213</p>', 1, 2, '2023-10-09 18:43:27', '2023-10-17 08:47:51', '354460148_786376859531721_3344333958040216084_n.png', '2023-10-17 08:47:51', 5),
(4, 'iphone 12', 12000000, '/storage/product/1/tdZzKv6ouTrG4Mk0vBVI.png', 'dien thoai', 1, 1, '2023-10-09 19:00:03', '2023-10-17 08:53:21', '354460148_786376859531721_3344333958040216084_n.png', '2023-10-17 08:53:21', 3),
(5, 'iphone 4', 1200000, '/storage/product/1/J0ZxPKQ5AOYUvvPMG523.png', '<p>dien thoai</p>', 1, 1, '2023-10-09 19:01:46', '2023-10-17 08:53:24', '354460148_786376859531721_3344333958040216084_n.png', '2023-10-17 08:53:24', 4),
(16, 'abcdasaqweqwezxc', 10000000000, '/storage/product/19/ln5CIzPyFtzG74blALkQ.png', 'ád', 19, 9, '2023-10-14 19:49:58', '2023-10-17 08:47:46', 'logo.png', '2023-10-17 08:47:46', 2),
(17, 'abcdasdasdasd', 10000000000, '/storage/product/19/rnM5VZQquyxHpMkhgUaR.PNG', 'abc', 19, 9, '2023-10-14 19:51:33', '2023-10-17 08:47:42', 'Chat.PNG', '2023-10-17 08:47:42', 0),
(18, 'ádzxczxczxczxc', 10000000000, '/storage/product/19/y1PNdAEas348pRo7aZgz.PNG', 'abc', 19, 9, '2023-10-14 19:52:06', '2023-10-14 20:18:49', 'Mess.PNG', '2023-10-14 20:18:49', 0),
(19, 'zádasdasdadzxc', 12345671, '/storage/product/19/MqJrAAVMYk8ELCw8xo6v.png', 'a', 19, 9, '2023-10-14 20:19:16', '2023-10-14 20:29:34', 'logo.png', '2023-10-14 20:29:34', 0),
(20, 'zádasdasdadzxcqqqwe', 12345671, '/storage/product/19/jkECfaocqTZ2HH5bdZrG.PNG', 'a', 19, 13, '2023-10-14 20:20:10', '2023-10-14 20:29:30', 'Mess.PNG', '2023-10-14 20:29:30', 0),
(21, 'womens picture', 12000000, '/storage/product/18/fygE0dmSeI6QcM8BYbbe.jpg', 'ok', 18, 1, '2023-10-15 19:07:34', '2023-10-15 21:10:25', 'girl1.jpg', NULL, NULL),
(22, 'human picture', 2000000, '/storage/product/18/aRnGJWykA1pq5Hjzl51l.jpg', 'ko', 18, 1, '2023-10-15 19:26:10', '2023-10-16 21:39:11', 'girl2.jpg', NULL, NULL),
(23, 'picture image', 1500000, '/storage/product/18/GKMtpVNjoCftAumoziQD.jpg', 'sas', 18, 1, '2023-10-15 21:11:03', '2023-10-15 21:11:03', 'girl3.jpg', NULL, NULL),
(24, 'product image 1', 120000, '/storage/product/18/qzYANSB8PcVTI17XTns3.jpg', 'ok', 18, 1, '2023-10-17 08:50:59', '2023-10-17 08:50:59', 'product1.jpg', NULL, NULL),
(25, 'product image 2', 200000, '/storage/product/18/PLy2UTFIphJmV7B0xfMK.jpg', 'as', 18, 14, '2023-10-17 08:51:34', '2023-10-17 08:51:34', 'product2.jpg', NULL, NULL),
(26, 'product image 3', 150000, '/storage/product/18/Xl6NJwfGs8tB8aGSW2lO.jpg', 'armour', 18, 15, '2023-10-17 08:52:08', '2023-10-17 08:52:08', 'product3.jpg', NULL, NULL),
(27, 'product image 4', 100000, '/storage/product/18/akh4FsN2GMDgXhVZfDRR.jpg', 'asds', 18, 16, '2023-10-17 08:52:40', '2023-10-17 08:52:40', 'product4.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` varchar(191) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_name` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `image_path`, `product_id`, `created_at`, `updated_at`, `image_name`) VALUES
(1, '/storage/product/1/sn5zL9k7cP0Lg36tBwX9.PNG', 8, '2023-10-09 19:25:17', '2023-10-09 19:25:17', 'Chat.PNG'),
(2, '/storage/product/1/qIJOljnqCTr2XHhiNAOg.png', 8, '2023-10-09 19:25:17', '2023-10-09 19:25:17', 'logo.png'),
(3, '/storage/product/1/8g5fXVQ55fkz6EJWy1xD.PNG', 8, '2023-10-09 19:25:17', '2023-10-09 19:25:17', 'Mess.PNG'),
(4, '/storage/product/1/OvBny14KHyOswGGBmm2p.PNG', 9, '2023-10-09 19:26:54', '2023-10-09 19:26:54', 'Chat.PNG'),
(5, '/storage/product/1/zglo7QHHqKnteozu4kMn.png', 9, '2023-10-09 19:26:54', '2023-10-09 19:26:54', 'logo.png'),
(6, '/storage/product/1/pZKqkB5utkObDaWd3DPp.PNG', 9, '2023-10-09 19:26:54', '2023-10-09 19:26:54', 'Mess.PNG'),
(7, '/storage/product/1/nx7NngQj7TJNa1isl8zY.PNG', 10, '2023-10-09 19:44:37', '2023-10-09 19:44:37', 'Chat.PNG'),
(8, '/storage/product/1/HiCuFkNK2vrCrco9rVQg.PNG', 10, '2023-10-09 19:44:38', '2023-10-09 19:44:38', 'Mess.PNG'),
(9, '/storage/product/1/6sb0mgTlYC0bsmyFza13.png', 11, '2023-10-09 19:47:43', '2023-10-09 19:47:43', 'logo.png'),
(10, '/storage/product/1/cJjTpR205Q4tr4C8eMur.PNG', 11, '2023-10-09 19:47:43', '2023-10-09 19:47:43', 'Mess.PNG'),
(14, '/storage/product/1/lbSoaprizITsbQhlhOg6.PNG', 13, '2023-10-10 00:40:56', '2023-10-10 00:40:56', 'Chat.PNG'),
(15, '/storage/product/1/FD6qqi9AEo4PUzEJlT2U.png', 13, '2023-10-10 00:40:56', '2023-10-10 00:40:56', 'logo.png'),
(16, '/storage/product/1/iZpFvowzuFmcnPbYGnuw.PNG', 13, '2023-10-10 00:40:56', '2023-10-10 00:40:56', 'Mess.PNG'),
(19, '/storage/product/1/TQ8g4yhzNNkWsWvt6d9M.PNG', 5, '2023-10-11 02:59:40', '2023-10-11 02:59:40', 'Chat.PNG'),
(20, '/storage/product/1/Xm4q6rvllwE6GbUeQKFj.PNG', 5, '2023-10-11 02:59:40', '2023-10-11 02:59:40', 'Mess.PNG'),
(22, '/storage/product/10/P2T9qk9NguwPR3OjSWlC.PNG', 15, '2023-10-12 19:14:16', '2023-10-12 19:14:16', 'Chat.PNG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_tags`
--

CREATE TABLE `product_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_tags`
--

INSERT INTO `product_tags` (`id`, `product_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 5, 1, '2023-10-09 19:01:46', '2023-10-09 19:01:46'),
(2, 5, 2, '2023-10-09 19:01:46', '2023-10-09 19:01:46'),
(3, 6, 3, NULL, NULL),
(4, 6, 4, NULL, NULL),
(5, 7, 3, '2023-10-09 19:15:33', '2023-10-09 19:15:33'),
(6, 7, 4, '2023-10-09 19:15:33', '2023-10-09 19:15:33'),
(7, 8, 5, '2023-10-09 19:25:17', '2023-10-09 19:25:17'),
(8, 8, 6, '2023-10-09 19:25:17', '2023-10-09 19:25:17'),
(11, 11, 7, '2023-10-09 19:47:43', '2023-10-09 19:47:43'),
(13, 9, 9, '2023-10-09 21:12:26', '2023-10-09 21:12:26'),
(14, 9, 10, '2023-10-09 21:15:12', '2023-10-09 21:15:12'),
(15, 9, 11, '2023-10-09 21:15:12', '2023-10-09 21:15:12'),
(16, 13, 12, '2023-10-10 00:40:56', '2023-10-10 00:40:56'),
(17, 13, 13, '2023-10-10 00:41:36', '2023-10-10 00:41:36'),
(18, 15, 14, '2023-10-12 19:12:14', '2023-10-12 19:12:14'),
(20, 18, 16, '2023-10-14 19:52:06', '2023-10-14 19:52:06'),
(21, 20, 17, '2023-10-14 20:20:10', '2023-10-14 20:20:10'),
(22, 21, 18, '2023-10-15 19:07:35', '2023-10-15 19:07:35'),
(23, 22, 18, '2023-10-15 21:10:17', '2023-10-15 21:10:17'),
(24, 23, 19, '2023-10-15 21:11:03', '2023-10-15 21:11:03'),
(25, 24, 20, '2023-10-17 08:51:00', '2023-10-17 08:51:00'),
(26, 25, 21, '2023-10-17 08:51:35', '2023-10-17 08:51:35'),
(27, 26, 22, '2023-10-17 08:52:08', '2023-10-17 08:52:08'),
(28, 27, 23, '2023-10-17 08:52:40', '2023-10-17 08:52:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `display_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Quản trị hệ thống', NULL, NULL),
(2, 'guest', 'Khách hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_permission`
--

CREATE TABLE `role_permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_permission`
--

INSERT INTO `role_permission` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(40, 1, 17, NULL, NULL),
(41, 1, 18, NULL, NULL),
(42, 1, 19, NULL, NULL),
(43, 1, 20, NULL, NULL),
(67, 2, 2, NULL, NULL),
(68, 2, 7, NULL, NULL),
(69, 2, 17, NULL, NULL),
(70, 1, 3, NULL, NULL),
(71, 1, 4, NULL, NULL),
(72, 1, 5, NULL, NULL),
(75, 1, 2, NULL, NULL),
(76, 1, 7, NULL, NULL),
(77, 1, 8, NULL, NULL),
(78, 1, 9, NULL, NULL),
(79, 1, 10, NULL, NULL),
(80, 1, 12, NULL, NULL),
(81, 1, 13, NULL, NULL),
(82, 1, 14, NULL, NULL),
(83, 1, 15, NULL, NULL),
(84, 1, 22, NULL, NULL),
(85, 1, 23, NULL, NULL),
(86, 1, 24, NULL, NULL),
(87, 1, 25, NULL, NULL),
(88, 1, 27, NULL, NULL),
(89, 1, 28, NULL, NULL),
(90, 1, 29, NULL, NULL),
(91, 1, 30, NULL, NULL),
(92, 1, 32, NULL, NULL),
(93, 1, 33, NULL, NULL),
(94, 1, 34, NULL, NULL),
(95, 1, 35, NULL, NULL),
(124, 2, 12, NULL, NULL),
(137, 3, 12, NULL, NULL),
(138, 3, 13, NULL, NULL),
(139, 3, 14, NULL, NULL),
(140, 3, 15, NULL, NULL),
(145, 4, 7, NULL, NULL),
(146, 4, 8, NULL, NULL),
(147, 4, 9, NULL, NULL),
(148, 4, 10, NULL, NULL),
(149, 4, 17, NULL, NULL),
(150, 4, 18, NULL, NULL),
(151, 4, 19, NULL, NULL),
(152, 4, 20, NULL, NULL),
(153, 3, 32, NULL, NULL),
(154, 3, 33, NULL, NULL),
(155, 3, 34, NULL, NULL),
(156, 3, 35, NULL, NULL),
(157, 5, 2, NULL, NULL),
(158, 5, 3, NULL, NULL),
(159, 5, 4, NULL, NULL),
(160, 5, 5, NULL, NULL),
(161, 5, 17, NULL, NULL),
(162, 5, 18, NULL, NULL),
(163, 5, 19, NULL, NULL),
(164, 5, 20, NULL, NULL),
(165, 3, 27, NULL, NULL),
(166, 3, 28, NULL, NULL),
(167, 3, 29, NULL, NULL),
(168, 3, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 8, 1, NULL, NULL),
(3, 9, 1, NULL, NULL),
(4, 9, 3, NULL, NULL),
(22, 16, 3, NULL, NULL),
(23, 16, 4, NULL, NULL),
(24, 15, 3, NULL, NULL),
(25, 15, 4, NULL, NULL),
(31, 10, 3, NULL, NULL),
(32, 10, 1, NULL, NULL),
(33, 19, 1, NULL, NULL),
(34, 20, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `config_key` varchar(191) NOT NULL,
  `config_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(191) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `config_key`, `config_value`, `created_at`, `updated_at`, `type`, `deleted_at`) VALUES
(1, 'phone', '0123456', '2023-10-10 21:15:00', '2023-10-15 19:18:08', '', '2023-10-15 19:18:08'),
(3, 'area', 'https://getbootstrap.com/docs/4.3/components/dropdowns/', '2023-10-10 21:44:02', '2023-10-14 00:59:36', 'Textarea', '2023-10-14 00:59:36'),
(6, 'ok', 'ok', '2023-10-14 20:29:56', '2023-10-15 19:18:04', 'Text', '2023-10-15 19:18:04'),
(7, 'phone_contact', '+2 95 01 88 821', '2023-10-15 19:17:59', '2023-10-15 19:17:59', 'Text', NULL),
(8, 'email', 'info@domain.com', '2023-10-15 19:18:24', '2023-10-15 19:18:24', 'Text', NULL),
(9, 'facebook_link', 'https://github.com/nmduel/back_end', '2023-10-15 19:19:42', '2023-10-15 19:19:42', 'Text', NULL),
(10, 'linkendin_link', 'https://github.com/nmduel/back_end', '2023-10-15 19:20:10', '2023-10-15 19:20:10', 'Text', NULL),
(11, 'footer_information', '<p class=\"pull-left\">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>\r\n<p class=\"pull-right\">Designed by <span><a target=\"_blank\" href=\"http://www.themeum.com\">Themeum</a></span></p>', '2023-10-15 19:22:25', '2023-10-15 19:22:25', 'Textarea', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `description` varchar(191) NOT NULL,
  `image_path` varchar(191) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `description`, `image_path`, `image_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'slider 1', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/10/xqZxM4GewDIt3z8IkLWv.jpg', 'girl1.jpg', '2023-10-13 20:29:22', '2023-10-13 20:29:22', NULL),
(5, 'Slider 2', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/10/wdvWYoMoeK8FsX4YP0Hs.jpg', 'girl2.jpg', '2023-10-13 20:30:57', '2023-10-13 20:30:57', NULL),
(6, 'Slider 3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '/storage/slider/10/bRJ40H71DejCbMjNOVe2.jpg', 'girl3.jpg', '2023-10-13 20:31:37', '2023-10-13 20:31:37', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'iphone 4', '2023-10-09 19:01:46', '2023-10-09 19:01:46'),
(2, 'iphone 4 pro', '2023-10-09 19:01:46', '2023-10-09 19:01:46'),
(3, 'iphone 5', '2023-10-09 19:13:59', '2023-10-09 19:13:59'),
(4, 'iphone 5pro', '2023-10-09 19:13:59', '2023-10-09 19:13:59'),
(5, 'asdsad', '2023-10-09 19:25:17', '2023-10-09 19:25:17'),
(6, 'asdasd', '2023-10-09 19:25:17', '2023-10-09 19:25:17'),
(7, 'dsa', '2023-10-09 19:47:43', '2023-10-09 19:47:43'),
(8, '5', '2023-10-09 21:12:26', '2023-10-09 21:12:26'),
(9, 'rest', '2023-10-09 21:12:26', '2023-10-09 21:12:26'),
(10, 'test123', '2023-10-09 21:15:12', '2023-10-09 21:15:12'),
(11, 'tes465', '2023-10-09 21:15:12', '2023-10-09 21:15:12'),
(12, 'qaasd', '2023-10-10 00:40:56', '2023-10-10 00:40:56'),
(13, '2123', '2023-10-10 00:41:36', '2023-10-10 00:41:36'),
(14, 'icon', '2023-10-12 19:12:14', '2023-10-12 19:12:14'),
(15, 'icon2', '2023-10-12 19:14:16', '2023-10-12 19:14:16'),
(16, 'ádasdsad', '2023-10-14 19:52:06', '2023-10-14 19:52:06'),
(17, 'ád', '2023-10-14 20:20:10', '2023-10-14 20:20:10'),
(18, 'womens', '2023-10-15 19:07:35', '2023-10-15 19:07:35'),
(19, 'ws', '2023-10-15 21:11:03', '2023-10-15 21:11:03'),
(20, 'sport', '2023-10-17 08:51:00', '2023-10-17 08:51:00'),
(21, 'nike', '2023-10-17 08:51:35', '2023-10-17 08:51:35'),
(22, 'under', '2023-10-17 08:52:08', '2023-10-17 08:52:08'),
(23, 'Adidas', '2023-10-17 08:52:40', '2023-10-17 08:52:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(19, 'ad1', 'nmd@gmail.com', NULL, '$2y$10$4KqZSjQZxlF6/jwxZ4gY7evVEI9n4qIo4SDVky6vJt./atcw9vqhq', NULL, '2023-10-14 19:24:32', '2023-10-14 19:24:32'),
(20, 'abc', 'abc@gmail.com', NULL, '$2y$10$Zf0Fu6iXy/Iy4/agTAmKmeGUUqQ/aCSFUgrb9Q3QVnYWvJC8O8IKG', NULL, '2023-10-24 08:37:52', '2023-10-24 08:37:52');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `product_tags`
--
ALTER TABLE `product_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT cho bảng `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
