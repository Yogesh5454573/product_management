-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2026 at 04:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity_log`
--

CREATE TABLE `tbl_activity_log` (
  `id` int(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(25) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_activity_log`
--

INSERT INTO `tbl_activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `ip_address`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(48, 'login', 'Login', 'App\\Models\\Admin', 'login', 1, 'App\\Models\\Admin', 1, '127.0.0.1', '{\"id\":1,\"name\":\"Super Admin\",\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/142.0.0.0 Safari\\/537.36\"}', NULL, '2025-12-03 11:52:26', '2025-12-03 11:52:26'),
(49, 'logout', 'Logout', 'App\\Models\\Admin', 'logout', 1, 'App\\Models\\Admin', 1, '127.0.0.1', '{\"id\":1,\"name\":\"Super Admin\",\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/142.0.0.0 Safari\\/537.36\"}', NULL, '2025-12-03 12:05:35', '2025-12-03 12:05:35'),
(50, 'default', 'updated', 'App\\Models\\Admin', 'updated', 1, NULL, NULL, '127.0.0.1', '{\"attributes\":{\"password\":\"$2y$12$x2kdYFwgneb6J4YZ2LEeFOkquvvb9St70W9wGegV0j41.kkB5l.ti\",\"updated_at\":\"2026-01-15T15:21:29.000000Z\"},\"old\":{\"password\":\"$2y$10$5u2c1YN.mV4KHflsF3ERcOVJ2B3UeGtBav5eb\\/8w21CWjTYTQsVh6\",\"updated_at\":\"2025-12-03T17:19:27.000000Z\"}}', NULL, '2026-01-15 09:51:29', '2026-01-15 09:51:29'),
(51, 'login', 'Login', 'App\\Models\\Admin', 'login', 1, 'App\\Models\\Admin', 1, '127.0.0.1', '{\"id\":1,\"name\":\"Super Admin\",\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', NULL, '2026-01-15 09:51:29', '2026-01-15 09:51:29'),
(52, 'login', 'Login', 'App\\Models\\Admin', 'login', 1, 'App\\Models\\Admin', 1, '127.0.0.1', '{\"id\":1,\"name\":\"Super Admin\",\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', NULL, '2026-01-15 10:01:41', '2026-01-15 10:01:41'),
(53, 'login', 'Login', 'App\\Models\\Admin', 'login', 1, 'App\\Models\\Admin', 1, '127.0.0.1', '{\"id\":1,\"name\":\"Super Admin\",\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', NULL, '2026-01-15 11:14:55', '2026-01-15 11:14:55'),
(54, 'Product Log', 'created', 'App\\Models\\Product', 'created', 1, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 1\",\"sku\":\"SKU-0001\",\"price\":\"33.20\",\"stock\":32,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(55, 'Product Log', 'created', 'App\\Models\\Product', 'created', 2, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 2\",\"sku\":\"SKU-0002\",\"price\":\"30.50\",\"stock\":8,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(56, 'Product Log', 'created', 'App\\Models\\Product', 'created', 3, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 3\",\"sku\":\"SKU-0003\",\"price\":\"77.90\",\"stock\":41,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(57, 'Product Log', 'created', 'App\\Models\\Product', 'created', 4, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 4\",\"sku\":\"SKU-0004\",\"price\":\"13.40\",\"stock\":12,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(58, 'Product Log', 'created', 'App\\Models\\Product', 'created', 5, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 5\",\"sku\":\"SKU-0005\",\"price\":\"19.90\",\"stock\":40,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(59, 'Product Log', 'created', 'App\\Models\\Product', 'created', 6, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 6\",\"sku\":\"SKU-0006\",\"price\":\"46.30\",\"stock\":48,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(60, 'Product Log', 'created', 'App\\Models\\Product', 'created', 7, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 7\",\"sku\":\"SKU-0007\",\"price\":\"99.20\",\"stock\":37,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(61, 'Product Log', 'created', 'App\\Models\\Product', 'created', 8, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 8\",\"sku\":\"SKU-0008\",\"price\":\"89.30\",\"stock\":39,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(62, 'Product Log', 'created', 'App\\Models\\Product', 'created', 9, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 9\",\"sku\":\"SKU-0009\",\"price\":\"95.70\",\"stock\":49,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(63, 'Product Log', 'created', 'App\\Models\\Product', 'created', 10, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 10\",\"sku\":\"SKU-0010\",\"price\":\"19.90\",\"stock\":9,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(64, 'Product Log', 'created', 'App\\Models\\Product', 'created', 11, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 11\",\"sku\":\"SKU-0011\",\"price\":\"66.40\",\"stock\":42,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(65, 'Product Log', 'created', 'App\\Models\\Product', 'created', 12, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 12\",\"sku\":\"SKU-0012\",\"price\":\"23.10\",\"stock\":15,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(66, 'Product Log', 'created', 'App\\Models\\Product', 'created', 13, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 13\",\"sku\":\"SKU-0013\",\"price\":\"65.30\",\"stock\":38,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(67, 'Product Log', 'created', 'App\\Models\\Product', 'created', 14, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 14\",\"sku\":\"SKU-0014\",\"price\":\"57.10\",\"stock\":14,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(68, 'Product Log', 'created', 'App\\Models\\Product', 'created', 15, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 15\",\"sku\":\"SKU-0015\",\"price\":\"36.60\",\"stock\":16,\"is_active\":1}}', NULL, '2026-01-15 12:04:06', '2026-01-15 12:04:06'),
(69, 'Product Log', 'created', 'App\\Models\\Product', 'created', 16, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 1\",\"sku\":\"SKU-PQ5CZ1\",\"price\":\"102.00\",\"stock\":40,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(70, 'Product Log', 'created', 'App\\Models\\Product', 'created', 17, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 2\",\"sku\":\"SKU-V2BTL2\",\"price\":\"481.00\",\"stock\":88,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(71, 'Product Log', 'created', 'App\\Models\\Product', 'created', 18, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 3\",\"sku\":\"SKU-TIKEZ3\",\"price\":\"48.00\",\"stock\":5,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(72, 'Product Log', 'created', 'App\\Models\\Product', 'created', 19, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 4\",\"sku\":\"SKU-GHZNB4\",\"price\":\"227.00\",\"stock\":22,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(73, 'Product Log', 'created', 'App\\Models\\Product', 'created', 20, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 5\",\"sku\":\"SKU-ATAJJ5\",\"price\":\"303.00\",\"stock\":8,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(74, 'Product Log', 'created', 'App\\Models\\Product', 'created', 21, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 6\",\"sku\":\"SKU-5KH0W6\",\"price\":\"479.00\",\"stock\":61,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(75, 'Product Log', 'created', 'App\\Models\\Product', 'created', 22, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 7\",\"sku\":\"SKU-CEKY17\",\"price\":\"99.00\",\"stock\":70,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(76, 'Product Log', 'created', 'App\\Models\\Product', 'created', 23, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 8\",\"sku\":\"SKU-QXQPQ8\",\"price\":\"421.00\",\"stock\":69,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(77, 'Product Log', 'created', 'App\\Models\\Product', 'created', 24, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 9\",\"sku\":\"SKU-Z3DTS9\",\"price\":\"145.00\",\"stock\":32,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(78, 'Product Log', 'created', 'App\\Models\\Product', 'created', 25, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 10\",\"sku\":\"SKU-30DQK10\",\"price\":\"159.00\",\"stock\":59,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(79, 'Product Log', 'created', 'App\\Models\\Product', 'created', 26, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 11\",\"sku\":\"SKU-DTPZI11\",\"price\":\"33.00\",\"stock\":97,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(80, 'Product Log', 'created', 'App\\Models\\Product', 'created', 27, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 12\",\"sku\":\"SKU-I9YOT12\",\"price\":\"83.00\",\"stock\":90,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(81, 'Product Log', 'created', 'App\\Models\\Product', 'created', 28, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 13\",\"sku\":\"SKU-ZIOS613\",\"price\":\"303.00\",\"stock\":43,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(82, 'Product Log', 'created', 'App\\Models\\Product', 'created', 29, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 14\",\"sku\":\"SKU-GFBZ714\",\"price\":\"237.00\",\"stock\":73,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(83, 'Product Log', 'created', 'App\\Models\\Product', 'created', 30, NULL, NULL, NULL, '{\"attributes\":{\"name\":\"Product 15\",\"sku\":\"SKU-M5CRC15\",\"price\":\"71.00\",\"stock\":80,\"is_active\":1}}', NULL, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(84, 'login', 'Login', 'App\\Models\\Admin', 'login', 1, 'App\\Models\\Admin', 1, '127.0.0.1', '{\"id\":1,\"name\":\"Super Admin\",\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', NULL, '2026-01-15 20:25:40', '2026-01-15 20:25:40'),
(85, 'Product Log', 'created', 'App\\Models\\Product', 'created', 31, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"name\":\"Product 16\",\"sku\":\"SKU-ATAJJ16\",\"price\":\"304.00\",\"stock\":30,\"is_active\":1}}', NULL, '2026-01-15 21:22:34', '2026-01-15 21:22:34'),
(86, 'Product Log', 'deleted', 'App\\Models\\Product', 'deleted', 31, 'App\\Models\\Admin', 1, NULL, '{\"old\":{\"name\":\"Product 16\",\"sku\":\"SKU-ATAJJ16\",\"price\":\"304.00\",\"stock\":30,\"is_active\":1}}', NULL, '2026-01-15 21:29:08', '2026-01-15 21:29:08'),
(87, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:38:11', '2026-01-15 21:38:11'),
(88, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:38:12', '2026-01-15 21:38:12'),
(89, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:38:21', '2026-01-15 21:38:21'),
(90, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:38:22', '2026-01-15 21:38:22'),
(91, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:38:22', '2026-01-15 21:38:22'),
(92, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:38:24', '2026-01-15 21:38:24'),
(93, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:38:24', '2026-01-15 21:38:24'),
(94, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:38:24', '2026-01-15 21:38:24'),
(95, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:38:24', '2026-01-15 21:38:24'),
(96, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 22, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:38:25', '2026-01-15 21:38:25'),
(97, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:41:59', '2026-01-15 21:41:59'),
(98, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:41:59', '2026-01-15 21:41:59'),
(99, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:42:00', '2026-01-15 21:42:00'),
(100, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:42:00', '2026-01-15 21:42:00'),
(101, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:42:02', '2026-01-15 21:42:02'),
(102, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:42:03', '2026-01-15 21:42:03'),
(103, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:42:04', '2026-01-15 21:42:04'),
(104, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:42:04', '2026-01-15 21:42:04'),
(105, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:42:04', '2026-01-15 21:42:04'),
(106, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:42:04', '2026-01-15 21:42:04'),
(107, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:42:04', '2026-01-15 21:42:04'),
(108, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:42:05', '2026-01-15 21:42:05'),
(109, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:45:14', '2026-01-15 21:45:14'),
(110, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:45:18', '2026-01-15 21:45:18'),
(111, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:45:23', '2026-01-15 21:45:23'),
(112, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:45:26', '2026-01-15 21:45:26'),
(113, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:45:26', '2026-01-15 21:45:26'),
(114, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:45:27', '2026-01-15 21:45:27'),
(115, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:45:27', '2026-01-15 21:45:27'),
(116, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:45:38', '2026-01-15 21:45:38'),
(117, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 18, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:45:44', '2026-01-15 21:45:44'),
(118, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 17, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:45:46', '2026-01-15 21:45:46'),
(119, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:45:50', '2026-01-15 21:45:50'),
(120, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 18, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:45:53', '2026-01-15 21:45:53'),
(121, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":0},\"old\":{\"is_active\":1}}', NULL, '2026-01-15 21:48:37', '2026-01-15 21:48:37'),
(122, 'Product Log', 'updated', 'App\\Models\\Product', 'updated', 16, 'App\\Models\\Admin', 1, NULL, '{\"attributes\":{\"is_active\":1},\"old\":{\"is_active\":0}}', NULL, '2026-01-15 21:50:38', '2026-01-15 21:50:38'),
(123, 'login', 'Login', 'App\\Models\\Admin', 'login', 1, 'App\\Models\\Admin', 1, '127.0.0.1', '{\"id\":1,\"name\":\"Super Admin\",\"ip_address\":\"127.0.0.1\",\"user_agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/143.0.0.0 Safari\\/537.36\"}', NULL, '2026-01-15 21:51:49', '2026-01-15 21:51:49');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `admin_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `token`, `status`, `admin_type`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'admin', 'active', 'admin', 'Super Admin', 'superadmin@temp.te', NULL, '$2y$12$x2kdYFwgneb6J4YZ2LEeFOkquvvb9St70W9wGegV0j41.kkB5l.ti', '', NULL, '2026-01-15 09:51:29', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_migrations`
--

CREATE TABLE `tbl_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_migrations`
--

INSERT INTO `tbl_migrations` (`id`, `migration`, `batch`) VALUES
(2, '2026_01_15_171631_create_products_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`id`, `token`, `name`, `sku`, `price`, `stock`, `is_active`, `created_at`, `updated_at`) VALUES
(16, '505DC156-B0CB-45CE-A4A1-8A5EEEBFA2E3', 'Product 1', 'SKU-PQ5CZ1', 102.00, 40, 1, '2026-01-15 12:27:01', '2026-01-15 21:50:38'),
(17, 'A6EC6EC9-895A-4733-96BB-708CA1112C5D', 'Product 2', 'SKU-V2BTL2', 481.00, 88, 1, '2026-01-15 12:27:01', '2026-01-15 21:45:46'),
(18, 'CB790491-DCC0-4EDB-B066-B77CB10F9B43', 'Product 3', 'SKU-TIKEZ3', 48.00, 5, 1, '2026-01-15 12:27:01', '2026-01-15 21:45:53'),
(19, '519294D2-00D8-453C-B2FC-A893618F5DC7', 'Product 4', 'SKU-GHZNB4', 227.00, 22, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(20, '1454EF9C-1694-473F-B102-8015FD98CFEB', 'Product 5', 'SKU-ATAJJ5', 303.00, 8, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(21, '07A86545-BA7F-423A-ADC3-C5D35C72907E', 'Product 6', 'SKU-5KH0W6', 479.00, 61, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(22, 'AB992F85-5DF3-4C82-9A72-5690800BCA41', 'Product 7', 'SKU-CEKY17', 99.00, 70, 1, '2026-01-15 12:27:01', '2026-01-15 21:38:25'),
(23, '5B7CE3C8-D1A5-4E21-A247-D4BB06E10814', 'Product 8', 'SKU-QXQPQ8', 421.00, 69, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(24, '0AF15645-69C4-495D-B4D8-1095BA80951B', 'Product 9', 'SKU-Z3DTS9', 145.00, 32, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(25, 'A017FD6A-59C9-45B6-83AA-7865CD6B87DC', 'Product 10', 'SKU-30DQK10', 159.00, 59, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(26, '64778557-6C33-49A3-8A4D-C2C0D55B9DF4', 'Product 11', 'SKU-DTPZI11', 33.00, 97, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(27, '6C280D87-D15C-47C7-8497-B916F7AB86F8', 'Product 12', 'SKU-I9YOT12', 83.00, 90, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(28, 'CA1A0B91-18C9-44ED-918B-7D1469A76C6B', 'Product 13', 'SKU-ZIOS613', 303.00, 43, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(29, '747FC4E1-370D-439F-9AEF-CA304815967C', 'Product 14', 'SKU-GFBZ714', 237.00, 73, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01'),
(30, '4D02EA04-D8CB-4540-A24E-088812C5C019', 'Product 15', 'SKU-M5CRC15', 71.00, 80, 1, '2026-01-15 12:27:01', '2026-01-15 12:27:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activity_log`
--
ALTER TABLE `tbl_activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_migrations`
--
ALTER TABLE `tbl_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_tbl_products_sku_unique` (`sku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activity_log`
--
ALTER TABLE `tbl_activity_log`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_migrations`
--
ALTER TABLE `tbl_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
