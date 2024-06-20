-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 05:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Alat Diagnostik', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(2, 'Alat Bedah', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(3, 'Alat Laboratorium', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(4, 'Alat Terapi', '2024-06-05 02:39:23', '2024-06-05 02:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `price`, `category_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Inhaler Asma', 100000, 4, 'inhaler-asma.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(2, 'Inhaler Plossa', 20000, 4, 'inhaler-plossa.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(3, 'Alat Tes Gula Darah', 120000, 1, 'tes-gula-darah.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(4, 'Tensimeter', 355000, 1, 'tensimeter.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(5, 'Pulse Oximeter', 175000, 1, 'pulse-oximeter.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(6, 'Tabung Oksigen', 348000, 4, 'tabung-oksigen.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(7, 'Termometer', 70000, 1, 'termometer.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(8, 'Timbangan', 80000, 1, 'timbangan.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(9, 'Alat Tes Urine', 40000, 1, 'urine-tester.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(10, 'Dental Explorer', 300000, 2, 'dental-explorers.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(11, 'Dental Instrument Set', 50000000, 2, 'dental-set.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(12, 'Hazmat Suit', 120000, 2, 'hazmat.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(13, 'Mikroskop', 75000000, 3, 'mikroskop.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(14, 'Urine Analyzer', 5000000, 3, 'urine-analyzer.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23'),
(16, 'Rapid Test', 125000, 3, 'rapid-test.jpg', '2024-06-05 02:39:23', '2024-06-05 02:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_06_03_111118_add_userdata_to_user', 1),
(5, '2024_06_03_111131_create_categories_table', 1),
(6, '2024_06_03_111222_create_items_table', 1),
(7, '2024_06_03_111230_create_transacations_table', 1),
(8, '2024_06_03_111415_create_transaction_item_table', 1),
(9, '2024_06_04_100828_add_role_to_users', 1),
(10, '2024_06_05_052109_add_price_to_transaction_item', 1),
(11, '2024_06_05_054010_add_status_to_transactions', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lje068NyEfQNUSrQ52X79YMOb0C5tCt0OlcvchQF', 22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiSnUzcVhWTndVSGdXeW9ya1o4VVhiaHRNZzZ3c01rWmJzVE9QV2VtZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC90cmFuc2FjdGlvbi8yMy9wZGYiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyMjt9', 1718295400);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `total` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('pending','shipped','canceled','done') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `payment_method`, `total`, `created_at`, `updated_at`, `status`) VALUES
(1, 21, 'debit', 2400000, '2024-06-05 02:53:31', '2024-06-05 02:53:31', 'pending'),
(2, 22, 'cod', 2150000, '2024-06-12 08:13:02', '2024-06-12 08:13:02', 'pending'),
(3, 22, 'cod', 900000, '2024-06-12 08:13:18', '2024-06-12 08:13:18', 'pending'),
(4, 22, 'cod', 100000, '2024-06-12 14:08:08', '2024-06-12 14:08:08', 'pending'),
(5, 22, 'credit', 120000, '2024-06-12 14:18:55', '2024-06-12 14:18:55', 'pending'),
(6, 22, 'cod', 388000, '2024-06-12 14:23:31', '2024-06-12 14:23:31', 'pending'),
(7, 22, 'credit', 50000000, '2024-06-12 14:27:01', '2024-06-12 14:27:01', 'pending'),
(8, 22, 'cod', 160000, '2024-06-12 14:27:33', '2024-06-12 14:27:33', 'pending'),
(9, 21, 'cod', 625000, '2024-06-12 14:34:13', '2024-06-12 14:34:13', 'pending'),
(18, 22, 'debit', 125000, '2024-06-12 14:46:45', '2024-06-12 14:46:45', 'pending'),
(19, 22, 'debit', 300000, '2024-06-12 14:47:33', '2024-06-12 14:47:33', 'pending'),
(20, 22, 'cod', 60000, '2024-06-12 14:48:15', '2024-06-12 14:48:15', 'pending'),
(21, 22, 'cod', 5348000, '2024-06-12 14:50:46', '2024-06-12 14:50:46', 'pending'),
(22, 22, 'cod', 468000, '2024-06-12 15:07:40', '2024-06-12 15:07:40', 'pending'),
(23, 22, 'credit', 458000, '2024-06-12 15:08:08', '2024-06-12 15:08:08', 'pending'),
(24, 22, 'cod', 468000, '2024-06-12 15:15:36', '2024-06-12 15:15:36', 'pending'),
(25, 22, 'debit', 255000, '2024-06-12 15:16:06', '2024-06-12 15:16:06', 'pending'),
(26, 22, 'debit', 523000, '2024-06-12 15:16:32', '2024-06-12 15:16:32', 'pending'),
(27, 22, 'credit', 530000, '2024-06-12 15:17:15', '2024-06-12 15:17:15', 'pending'),
(28, 22, 'debit', 703000, '2024-06-12 15:23:15', '2024-06-12 15:23:15', 'pending'),
(29, 22, 'cod', 663000, '2024-06-12 15:23:28', '2024-06-12 15:23:28', 'pending'),
(30, 22, 'cod', 245000, '2024-06-12 17:00:04', '2024-06-12 17:00:04', 'pending'),
(31, 22, 'credit', 595000, '2024-06-12 18:49:38', '2024-06-12 18:49:38', 'pending'),
(32, 22, 'credit', 0, '2024-06-12 18:50:18', '2024-06-12 18:50:18', 'pending'),
(33, 22, 'cod', 495000, '2024-06-12 18:54:57', '2024-06-12 18:54:57', 'pending'),
(34, 22, 'cod', 695000, '2024-06-12 19:50:11', '2024-06-12 19:50:11', 'pending'),
(35, 22, 'credit', 505000, '2024-06-12 22:50:45', '2024-06-12 22:50:45', 'pending'),
(36, 23, 'cod', 495000, '2024-06-12 23:24:24', '2024-06-12 23:24:24', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_item`
--

CREATE TABLE `transaction_item` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_item`
--

INSERT INTO `transaction_item` (`id`, `transaction_id`, `item_id`, `qty`, `created_at`, `updated_at`, `price`) VALUES
(1, 1, 1, 1, NULL, NULL, 500000),
(2, 1, 3, 1, NULL, NULL, 100000),
(3, 1, 14, 3, NULL, NULL, 200000),
(4, 2, 3, 1, NULL, NULL, 100000),
(5, 2, 6, 1, NULL, NULL, 50000),
(6, 2, 4, 1, NULL, NULL, 2000000),
(7, 3, 3, 1, NULL, NULL, 100000),
(8, 3, 1, 1, NULL, NULL, 500000),
(9, 3, 2, 1, NULL, NULL, 300000),
(10, 4, 1, 1, NULL, NULL, 100000),
(11, 5, 2, 1, NULL, NULL, 20000),
(12, 5, 1, 1, NULL, NULL, 100000),
(13, 6, 6, 1, NULL, NULL, 348000),
(14, 6, 9, 1, NULL, NULL, 40000),
(15, 7, 11, 1, NULL, NULL, 50000000),
(16, 8, 9, 1, NULL, NULL, 40000),
(17, 8, 12, 1, NULL, NULL, 120000),
(18, 9, 3, 1, NULL, NULL, 120000),
(19, 9, 4, 1, NULL, NULL, 355000),
(20, 9, 7, 1, NULL, NULL, 70000),
(21, 9, 8, 1, NULL, NULL, 80000),
(27, 18, 16, 1, NULL, NULL, 125000),
(28, 19, 10, 1, NULL, NULL, 300000),
(29, 20, 9, 1, NULL, NULL, 40000),
(30, 20, 2, 1, NULL, NULL, 20000),
(31, 21, 14, 1, NULL, NULL, 5000000),
(32, 21, 6, 1, NULL, NULL, 348000),
(33, 22, 3, 1, NULL, NULL, 120000),
(34, 22, 6, 1, NULL, NULL, 348000),
(35, 23, 9, 1, NULL, NULL, 40000),
(36, 23, 6, 1, NULL, NULL, 348000),
(37, 23, 7, 1, NULL, NULL, 70000),
(38, 24, 3, 1, NULL, NULL, 120000),
(39, 24, 6, 1, NULL, NULL, 348000),
(40, 25, 5, 1, NULL, NULL, 175000),
(41, 25, 8, 1, NULL, NULL, 80000),
(42, 26, 5, 1, NULL, NULL, 175000),
(43, 26, 6, 1, NULL, NULL, 348000),
(44, 27, 5, 1, NULL, NULL, 175000),
(45, 27, 4, 1, NULL, NULL, 355000),
(46, 28, 4, 1, NULL, NULL, 355000),
(47, 28, 6, 1, NULL, NULL, 348000),
(48, 29, 5, 1, NULL, NULL, 175000),
(49, 29, 6, 1, NULL, NULL, 348000),
(50, 29, 3, 1, NULL, NULL, 120000),
(51, 29, 2, 1, NULL, NULL, 20000),
(52, 30, 12, 1, NULL, NULL, 120000),
(53, 30, 16, 1, NULL, NULL, 125000),
(54, 31, 4, 1, NULL, NULL, 355000),
(55, 31, 3, 1, NULL, NULL, 120000),
(56, 31, 2, 1, NULL, NULL, 20000),
(57, 31, 1, 1, NULL, NULL, 100000),
(58, 33, 4, 1, NULL, NULL, 355000),
(59, 33, 3, 1, NULL, NULL, 120000),
(60, 33, 2, 1, NULL, NULL, 20000),
(61, 34, 1, 1, NULL, NULL, 100000),
(62, 34, 8, 1, NULL, NULL, 80000),
(63, 34, 7, 1, NULL, NULL, 70000),
(64, 34, 2, 4, NULL, NULL, 20000),
(65, 34, 16, 1, NULL, NULL, 125000),
(66, 35, 4, 1, NULL, NULL, 355000),
(67, 35, 8, 1, NULL, NULL, 80000),
(68, 35, 7, 1, NULL, NULL, 70000),
(69, 36, 2, 1, NULL, NULL, 20000),
(70, 36, 4, 1, NULL, NULL, 355000),
(71, 36, 12, 1, NULL, NULL, 120000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `birthdate` date NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `metadata` text DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'visitor'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `birthdate`, `gender`, `address`, `city`, `phone`, `metadata`, `role`) VALUES
(1, 'Augusta Mosciski', 'kmoore@example.com', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'q3sgfxQ4Tt', '2024-06-05 02:39:23', '2024-06-05 02:39:23', '2020-07-17', 'female', '17488 Nikolaus Greens\nGulgowskibury, SD 29565', 'Paulachester', '351-440-1680', NULL, 'visitor'),
(2, 'Prof. Isaac Conroy I', 'aheathcote@example.org', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'a1g3LSjSoE', '2024-06-05 02:39:23', '2024-06-05 02:39:23', '1996-01-20', 'male', '475 Precious Skyway\nPort Katelin, WV 07594', 'Armandstad', '1-929-714-4416', NULL, 'visitor'),
(3, 'Harmony Boyer', 'mhickle@example.com', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'bcPsEnUHpA', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '2020-11-15', 'female', '7137 Schowalter Cove Apt. 998\nAbrahamburgh, NV 92354', 'New Nakiashire', '+12602059256', NULL, 'visitor'),
(4, 'Ms. Emma Hayes MD', 'alfonzo46@example.net', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'jl234YYRlF', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '1992-07-10', 'male', '22013 Nellie Neck Apt. 694\nSouth Elwynland, TX 38726', 'East Damienland', '+1-931-930-4436', NULL, 'visitor'),
(5, 'Dayton Ryan', 'rwunsch@example.net', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'Th7u0rWC7b', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '2001-04-26', 'female', '3644 Francisco Circle Apt. 689\nMicaelaport, NC 70758-1666', 'Volkmanshire', '+1.380.595.5559', NULL, 'visitor'),
(6, 'Chloe Fisher', 'ukoepp@example.org', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'EkcHMbs0fP', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '2012-03-01', 'male', '79141 Haylie Court Suite 839\nEast Brennan, RI 05583', 'Flossiefurt', '1-918-735-6477', NULL, 'visitor'),
(7, 'Emerald Hermann', 'lorine86@example.com', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'tM2m9phLCY', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '2020-02-27', 'female', '9688 Aidan Parkways Suite 518\nPreciouschester, KY 86033-3857', 'Port Erlingfurt', '+12562252039', NULL, 'visitor'),
(8, 'Gonzalo Feil', 'rath.werner@example.org', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'P4rRtfoUzS', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '1971-01-23', 'male', '169 Wisozk Corners\nPort Davonte, WY 12953-5102', 'Port Miracle', '(617) 530-5200', NULL, 'visitor'),
(9, 'Phyllis Osinski', 'dweimann@example.net', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'csIw0kYy4q', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '2022-08-16', 'female', '534 Larson Corners\nAlexieside, HI 01387-2496', 'Hyattfurt', '+1-551-281-1222', NULL, 'visitor'),
(10, 'Mrs. Bria Klein I', 'lgoldner@example.net', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'CyD22WKEeE', '2024-06-05 02:39:24', '2024-06-05 02:39:24', '1980-05-05', 'male', '1276 Collier Summit Apt. 869\nLake Lenniestad, TX 99555', 'Darwinbury', '+1.660.567.0212', NULL, 'visitor'),
(11, 'Josefa Runolfsson V', 'maximillia21@example.com', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'GuvJZ9Drm1', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '2015-10-06', 'male', '9565 Carroll Loop\nPort Shany, AZ 83359', 'Katheryntown', '737.949.9017', NULL, 'visitor'),
(12, 'Finn Lockman', 'nolan.evans@example.net', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'vEFUPQva5V', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '1986-08-26', 'male', '4273 Cassie Trace\nLizethport, ID 88099-7679', 'South Reyeschester', '+1-830-844-5409', NULL, 'visitor'),
(13, 'Mike Lueilwitz Jr.', 'schuster.brody@example.com', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', '0RX7TCK8sH', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '1983-08-08', 'female', '743 Walter Glen Apt. 451\nDejonbury, SD 67795', 'Brekketon', '(283) 364-8149', NULL, 'visitor'),
(14, 'Michael Stiedemann', 'zheller@example.com', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'gMXC2g6370', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '1971-07-07', 'female', '54379 Deangelo Square Suite 325\nHillaryland, WI 09248-1633', 'Gutmannport', '567.524.2021', NULL, 'visitor'),
(15, 'Maya Gerlach', 'vivianne.douglas@example.org', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'z6t8GPQizF', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '1972-11-15', 'male', '5863 Hammes Spurs\nMcDermotttown, NJ 91238-2863', 'Lake Lola', '610.930.5989', NULL, 'visitor'),
(16, 'Kiarra Volkman I', 'lilly82@example.net', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', '5IHuSpg39q', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '2016-12-08', 'female', '1688 Stiedemann Roads Suite 088\nNorth Norwood, LA 04720', 'Wolfmouth', '(281) 252-5925', NULL, 'visitor'),
(17, 'Pasquale Smith V', 'iryan@example.com', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', '7zRznytUJk', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '2019-12-01', 'female', '5406 Beier Overpass Suite 876\nNew Trentonborough, NJ 53366', 'Port Raphaellemouth', '+1 (806) 270-3806', NULL, 'visitor'),
(18, 'Esther Pagac', 'jrohan@example.org', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'y3QvxZyjl5', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '1994-02-02', 'female', '84665 Conn Light\nEbertview, MO 69761', 'East Anikaview', '520.701.9011', NULL, 'visitor'),
(19, 'Ray Schaefer III', 'sauer.myrtis@example.net', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'B4Fu6K49iz', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '1991-09-15', 'male', '476 Rath Field Suite 509\nLake Maya, NJ 46508-5145', 'North Keyonshire', '(785) 347-1549', NULL, 'visitor'),
(20, 'Doyle Becker', 'bpouros@example.org', '2024-06-05 02:39:23', '$2y$12$y2KmWnp7y5.b13YdClkvLOFGRKGc/MNuHTd54JRYj/o6WJ3DmZJC6', 'aDX7p5INC2', '2024-06-05 02:39:25', '2024-06-05 02:39:25', '1974-02-15', 'male', '60160 Nolan Glens Apt. 349\nWest Tayachester, NC 42179-8427', 'Port Torrey', '689.702.5172', NULL, 'visitor'),
(21, 'Wisnu', 'rouxelle30802@gmail.com', NULL, '$2y$12$EdOwfYbggYK4uIX5/R5peubAxJGf98Pht5.jWPwR54gvj4cFPPeHy', NULL, '2024-06-05 02:52:09', '2024-06-05 02:52:09', '2002-08-30', 'male', 'Jl. Gunung Anyar 19', 'Surabaya', '+6288996531638', NULL, 'admin'),
(22, 'Ryo', 'useracc1@gmail.com', NULL, '$2y$12$nZDbt5gK7zgyr2mUMAtZ1eVlUq7.EI0DI7P8FJvKzjv9pZVLMcwE2', 'nqutDQjxxLbSussF5nwIlvf91R1E0XKhj98DGqRGhoVgTpq4UpvqSGOEYPJ3', '2024-06-05 08:25:14', '2024-06-05 08:25:14', '2002-08-30', 'male', 'Jl. Karang Menjangan 19', 'Surabaya', '088996531638', NULL, 'visitor'),
(23, 'Wisnu', 'useracc2@gmail.com', NULL, '$2y$12$7RXH9Lq7Cs./l/NWJ4Qy/O3ZR.PT6aE42gpXWMwOK8vvCP9GxH3Ue', NULL, '2024-06-12 23:23:46', '2024-06-12 23:23:46', '2002-08-30', 'male', 'Jl. Gunung Anyar 19', 'Surabaya', '089692936383', NULL, 'visitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_category_id_foreign` (`category_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_item_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_item_item_id_foreign` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `transaction_item`
--
ALTER TABLE `transaction_item`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_item`
--
ALTER TABLE `transaction_item`
  ADD CONSTRAINT `transaction_item_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `transaction_item_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
