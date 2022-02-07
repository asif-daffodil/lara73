-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 03:48 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara73`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_12_19_143441_create_sessions_table', 1),
(7, '2021_12_26_124301_create_sfroms_table', 2),
(8, '2022_01_03_143134_create_products_table', 3),
(9, '2022_01_10_142813_create_pro_images_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `Brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `proImage_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `Brand`, `description`, `proImage_id`, `created_at`, `updated_at`) VALUES
(8, 'Running Sneakers', 2500, 'Sprint', 'Upper Material: Synthetic\nFeature: Hard-Wearing, Massage, Breathable, Anti-Odor, Sweat-Absorbant\nClosure Type: Lace-Up\nOutsole Material: Rubber\nLining Material: Mesh\nSeason: Summer\nInsole Material: EVA\nPattern Type: Mixed Colors\nFit: Fits smaller than usual. Please check this store\'s sizing info\nShoe Type: Basic\nDepartment Name: Adult\nItem Type: casual shoes', 8, '2022-01-16 07:21:00', '2022-01-16 07:21:00'),
(9, 'CURREN New 8398-Black', 60000, 'Naviforce', 'Description:\n– 100% brand new and high quality.\n– Precise Japanese imported quartz movement for accurate timekeeping.\n– 3ATM water-resistant, perfect for protecting little water like washing hand/sweat/rain, but can not put into water or shower or swim.\n– Color may not appear as exactly as in real life due to variations between the computer monitors and naked eye color difference.\n– Pack with/without a gift box,It is a pretty good gift for family/friends/lover/yourself.\n– Welcome for wholesale and dropship,please contact us at any time to get wholesale and drophsip price.', 9, '2022-01-16 07:23:40', '2022-01-16 07:23:40'),
(10, 'Men Socks Low Cut Solid Color', 200, 'Solid Color', 'Material: Cotton,polyester\nSize: Fit for EU 38-41(US 6-8)\nFabric Feature: Breathable, Soft, Elastic\nThickness: Moderate\nElasticity: High Elastic\nTexture: Soft\nLength: Ankle socks\nWashing Recommendations: 40℃ Washing, Hang to Dry, Low Temperature Ironing\n\nPackage Includes: 10 Pair Socks', 10, '2022-01-16 07:26:56', '2022-01-16 07:26:56'),
(11, 'Sleeping Bag', 1200, 'Nike', 'habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi ', 11, '2022-01-16 07:29:49', '2022-01-16 07:29:49'),
(12, 'Bagpack 3', 2500, 'BagPack', 'habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi ', 12, '2022-01-16 07:31:28', '2022-01-16 07:31:28'),
(13, 'Testing', 2000, 'Asif', 'demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text', 13, '2022-01-16 08:48:34', '2022-01-16 08:48:34'),
(14, 'Running Sneakers', 2500, 'Sprint', 'Upper Material: Synthetic\r\nFeature: Hard-Wearing, Massage, Breathable, Anti-Odor, Sweat-Absorbant\r\nClosure Type: Lace-Up\r\nOutsole Material: Rubber\r\nLining Material: Mesh\r\nSeason: Summer\r\nInsole Material: EVA\r\nPattern Type: Mixed Colors\r\nFit: Fits smaller than usual. Please check this store\'s sizing info\r\nShoe Type: Basic\r\nDepartment Name: Adult\r\nItem Type: casual shoes', 8, '2022-01-16 07:21:00', '2022-01-16 07:21:00'),
(15, 'CURREN New 8398-Black', 60000, 'Naviforce', 'Description:\r\n– 100% brand new and high quality.\r\n– Precise Japanese imported quartz movement for accurate timekeeping.\r\n– 3ATM water-resistant, perfect for protecting little water like washing hand/sweat/rain, but can not put into water or shower or swim.\r\n– Color may not appear as exactly as in real life due to variations between the computer monitors and naked eye color difference.\r\n– Pack with/without a gift box,It is a pretty good gift for family/friends/lover/yourself.\r\n– Welcome for wholesale and dropship,please contact us at any time to get wholesale and drophsip price.', 9, '2022-01-16 07:23:40', '2022-01-16 07:23:40'),
(16, 'Men Socks Low Cut Solid Color', 200, 'Solid Color', 'Material: Cotton,polyester\r\nSize: Fit for EU 38-41(US 6-8)\r\nFabric Feature: Breathable, Soft, Elastic\r\nThickness: Moderate\r\nElasticity: High Elastic\r\nTexture: Soft\r\nLength: Ankle socks\r\nWashing Recommendations: 40℃ Washing, Hang to Dry, Low Temperature Ironing\r\n\r\nPackage Includes: 10 Pair Socks', 10, '2022-01-16 07:26:56', '2022-01-16 07:26:56'),
(17, 'Sleeping Bag', 1200, 'Nike', 'habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi ', 11, '2022-01-16 07:29:49', '2022-01-16 07:29:49'),
(18, 'Bagpack 3', 2500, 'BagPack', 'habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi ', 12, '2022-01-16 07:31:28', '2022-01-16 07:31:28'),
(19, 'Testing', 2000, 'Asif', 'demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text', 13, '2022-01-16 08:48:34', '2022-01-16 08:48:34'),
(20, 'Running Sneakers', 2500, 'Sprint', 'Upper Material: Synthetic\r\nFeature: Hard-Wearing, Massage, Breathable, Anti-Odor, Sweat-Absorbant\r\nClosure Type: Lace-Up\r\nOutsole Material: Rubber\r\nLining Material: Mesh\r\nSeason: Summer\r\nInsole Material: EVA\r\nPattern Type: Mixed Colors\r\nFit: Fits smaller than usual. Please check this store\'s sizing info\r\nShoe Type: Basic\r\nDepartment Name: Adult\r\nItem Type: casual shoes', 8, '2022-01-16 07:21:00', '2022-01-16 07:21:00'),
(21, 'CURREN New 8398-Black', 60000, 'Naviforce', 'Description:\r\n– 100% brand new and high quality.\r\n– Precise Japanese imported quartz movement for accurate timekeeping.\r\n– 3ATM water-resistant, perfect for protecting little water like washing hand/sweat/rain, but can not put into water or shower or swim.\r\n– Color may not appear as exactly as in real life due to variations between the computer monitors and naked eye color difference.\r\n– Pack with/without a gift box,It is a pretty good gift for family/friends/lover/yourself.\r\n– Welcome for wholesale and dropship,please contact us at any time to get wholesale and drophsip price.', 9, '2022-01-16 07:23:40', '2022-01-16 07:23:40'),
(22, 'Men Socks Low Cut Solid Color', 200, 'Solid Color', 'Material: Cotton,polyester\r\nSize: Fit for EU 38-41(US 6-8)\r\nFabric Feature: Breathable, Soft, Elastic\r\nThickness: Moderate\r\nElasticity: High Elastic\r\nTexture: Soft\r\nLength: Ankle socks\r\nWashing Recommendations: 40℃ Washing, Hang to Dry, Low Temperature Ironing\r\n\r\nPackage Includes: 10 Pair Socks', 10, '2022-01-16 07:26:56', '2022-01-16 07:26:56'),
(23, 'Sleeping Bag', 1200, 'Nike', 'habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi ', 11, '2022-01-16 07:29:49', '2022-01-16 07:29:49'),
(24, 'Bagpack 3', 2500, 'BagPack', 'habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi ', 12, '2022-01-16 07:31:28', '2022-01-16 07:31:28'),
(25, 'Testing', 2000, 'Asif', 'demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text', 13, '2022-01-16 08:48:34', '2022-01-16 08:48:34'),
(26, 'Running Sneakers', 2500, 'Sprint', 'Upper Material: Synthetic\r\nFeature: Hard-Wearing, Massage, Breathable, Anti-Odor, Sweat-Absorbant\r\nClosure Type: Lace-Up\r\nOutsole Material: Rubber\r\nLining Material: Mesh\r\nSeason: Summer\r\nInsole Material: EVA\r\nPattern Type: Mixed Colors\r\nFit: Fits smaller than usual. Please check this store\'s sizing info\r\nShoe Type: Basic\r\nDepartment Name: Adult\r\nItem Type: casual shoes', 8, '2022-01-16 07:21:00', '2022-01-16 07:21:00'),
(27, 'CURREN New 8398-Black', 60000, 'Naviforce', 'Description:\r\n– 100% brand new and high quality.\r\n– Precise Japanese imported quartz movement for accurate timekeeping.\r\n– 3ATM water-resistant, perfect for protecting little water like washing hand/sweat/rain, but can not put into water or shower or swim.\r\n– Color may not appear as exactly as in real life due to variations between the computer monitors and naked eye color difference.\r\n– Pack with/without a gift box,It is a pretty good gift for family/friends/lover/yourself.\r\n– Welcome for wholesale and dropship,please contact us at any time to get wholesale and drophsip price.', 9, '2022-01-16 07:23:40', '2022-01-16 07:23:40'),
(28, 'Men Socks Low Cut Solid Color', 200, 'Solid Color', 'Material: Cotton,polyester\r\nSize: Fit for EU 38-41(US 6-8)\r\nFabric Feature: Breathable, Soft, Elastic\r\nThickness: Moderate\r\nElasticity: High Elastic\r\nTexture: Soft\r\nLength: Ankle socks\r\nWashing Recommendations: 40℃ Washing, Hang to Dry, Low Temperature Ironing\r\n\r\nPackage Includes: 10 Pair Socks', 10, '2022-01-16 07:26:56', '2022-01-16 07:26:56'),
(29, 'Sleeping Bag', 1200, 'Nike', 'habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi habi jabi ', 11, '2022-01-16 07:29:49', '2022-01-16 07:29:49'),
(30, 'Bagpack 3', 2500, 'BagPack', 'habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi habijabi ', 12, '2022-01-16 07:31:28', '2022-01-16 07:31:28'),
(31, 'Testing', 2000, 'Asif', 'demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text demo text', 13, '2022-01-16 08:48:34', '2022-01-16 08:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `pro_images`
--

CREATE TABLE `pro_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fImage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allImages` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_images`
--

INSERT INTO `pro_images` (`id`, `fImage`, `allImages`, `created_at`, `updated_at`) VALUES
(6, '83688975361e41a1266ffc.png', '78564188361e41a1267566.png,195491805661e41a1267ab5.jpg', '2022-01-16 07:13:54', '2022-01-16 07:13:54'),
(7, '209354228561e41a21d57e4.png', '48314737361e41a21d5c91.png,211124325961e41a21d60a6.jpg', '2022-01-16 07:14:09', '2022-01-16 07:14:09'),
(8, '170866087461e41bbc07e1e.jpg', '10224819961e41bbc081fc.jpg,7526227361e41bbc086b1.jpg,74315485761e41bbc08ab0.jpg,187958871361e41bbc0928f.jpg,5711303861e41bbc09780.jpg', '2022-01-16 07:21:00', '2022-01-16 07:21:00'),
(9, '205771383161e41c5cae0c1.jpg', '158027289261e41c5cae8fb.jpg,16573714861e41c5caf1c0.jpg,64021793261e41c5cafdf9.jpg', '2022-01-16 07:23:40', '2022-01-16 07:23:40'),
(10, '10540616261e41d20145f1.jpg', '206803970461e41d2014b20.jpg,212961581461e41d2015093.jpg,8473595261e41d2015f23.jpg,29943443461e41d20163f7.jpg', '2022-01-16 07:26:56', '2022-01-16 07:26:56'),
(11, '77275739461e41dcdaaab7.jpg', '38038122261e41dcdab08b.jpg,84137155461e41dcdab679.jpg,66387200261e41dcdaba63.jpg', '2022-01-16 07:29:49', '2022-01-16 07:29:49'),
(12, '112744752561e41e302bce6.jpg', '147513972261e41e302c1e7.jpg,106712192861e41e302c6c5.jpg,133838288461e41e302ca36.jpg', '2022-01-16 07:31:28', '2022-01-16 07:31:28'),
(13, '23424873961e430420628d.jpg', '50282109061e4304206ed8.jpg,185241914661e43042072fe.jpg', '2022-01-16 08:48:34', '2022-01-16 08:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('AcpLrQQwnZjp8hfXaP2M93B6yXJM7uB99Q9bV5cA', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiYndlUktCNVB6UHhOTkZQc0Q5dEZpU212TU9vM2lpa0FMbjJOSXBSWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToicHJvSWQiO2E6NDp7aTowO2k6MjY7aToxO2k6Mjc7aToyO2k6MjY7aTozO2E6MTp7aTowO2k6MzE7fX19', 1644240353),
('lxnHPDxVJPYthYAsIhhaQIfGKCMnL75BkmL7K4yR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/97.0.4692.99 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiY1gwb1RXdmlLeEtSSWQ0eEV4dDA0TmR5UWFQMmtjSlUyWDljcXpaZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToicHJvSWQiO2E6MDp7fX0=', 1644245274);

-- --------------------------------------------------------

--
-- Table structure for table `sfroms`
--

CREATE TABLE `sfroms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sfroms`
--

INSERT INTO `sfroms` (`id`, `name`, `city`, `created_at`, `updated_at`) VALUES
(2, 'Jojon Anwar', 'Bhrammonbaria', '2021-12-26 06:56:39', '2021-12-26 06:56:39'),
(3, 'Ragib Ayon', 'Chandpur', '2021-12-26 07:11:30', '2021-12-26 07:11:30'),
(4, 'Ibrahim Student', 'Rongpur', '2021-12-26 07:13:29', '2021-12-26 07:13:29'),
(5, 'Bithi', 'Dhaka', '2021-12-26 07:57:20', '2021-12-26 07:57:20'),
(6, 'Hasibur Rahman', 'Gazipur', '2021-12-26 07:58:37', '2021-12-26 07:58:37'),
(7, 'Asif Abir', 'Dhaka', '2021-12-26 08:03:42', '2021-12-26 08:03:42'),
(8, 'sadasd', 'dasasd', '2021-12-26 08:04:53', '2021-12-26 08:04:53'),
(9, 'Kamal', 'Dhaka', '2021-12-26 08:05:34', '2021-12-26 08:05:34'),
(10, 'Jamal', 'Dhaka', '2021-12-26 08:06:46', '2021-12-26 08:06:46'),
(11, 'Rakib', 'Dhaka', '2021-12-26 08:07:12', '2021-12-26 08:07:12'),
(12, 'Akmal Khan', 'Chittagong', '2021-12-26 08:07:58', '2021-12-26 08:07:58'),
(13, 'Kamal', 'Chuyadanga', '2021-12-26 08:12:22', '2021-12-26 08:12:22'),
(14, 'Jamal', 'Khagrachori', '2021-12-26 08:15:12', '2021-12-26 08:15:12'),
(15, 'Tomal Mia', 'Khulna', '2021-12-26 08:18:10', '2021-12-26 08:18:10'),
(16, 'Kamal Chowdhury', 'Kuakata', '2021-12-26 08:52:52', '2021-12-26 08:52:52'),
(19, 'Emran Sir', 'Dhaka', '2021-12-27 06:48:22', '2021-12-27 07:32:32'),
(20, 'Jojon Anwar', 'Dhaka', '2021-12-27 07:17:08', '2021-12-27 07:32:05'),
(21, 'Kamal Khan', 'Dhaka', '2022-01-04 01:15:05', '2022-01-04 01:15:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Asif Abir', 'asif@dti.ac', NULL, '$2y$10$Dmv.WM3i73bofCQ8y9hSLu7OXeYVED/6XWw3pMenit.7ByvqYbAhu', NULL, NULL, NULL, NULL, NULL, '2021-12-19 08:39:13', '2021-12-19 08:41:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro_images`
--
ALTER TABLE `pro_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sfroms`
--
ALTER TABLE `sfroms`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pro_images`
--
ALTER TABLE `pro_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sfroms`
--
ALTER TABLE `sfroms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
