-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 02:29 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `camlanka`
--
CREATE DATABASE IF NOT EXISTS `camlanka` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `camlanka`;

-- --------------------------------------------------------

--
-- Table structure for table `ad`
--

CREATE TABLE `ad` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `phonenumber` varchar(15) NOT NULL,
  `whatsapp` int(2) NOT NULL,
  `category` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `image` varchar(400) NOT NULL,
  `userid` int(5) NOT NULL,
  `date` datetime DEFAULT NULL,
  `paid_ad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ad`
--

INSERT INTO `ad` (`id`, `title`, `phonenumber`, `whatsapp`, `category`, `location`, `description`, `image`, `userid`, `date`, `paid_ad`) VALUES
(145, 'hgfhfhgf', '94777777777', 0, '0', '0', 'hgfhgf', '94777777777Screenshot 2023-03-02 170045.png', 0, '2023-03-04 07:40:13', 0),
(146, 'hgfhgfkjhj', '94777777777', 0, '0', '0', 'hgfhgf', '94777777777Screenshot 2023-03-02 170045.png', 0, '2023-03-04 07:42:02', 1),
(147, 'jhghjg', '94777777777', 0, '0', '0', 'jhgjhg', '94777777777Screenshot 2023-03-02 204419.png', 0, '2023-03-04 07:42:29', 0),
(148, 'jhgj', ' 94111234567', 0, '0', '0', 'jhgjhg', ' 94111234567Screenshot 2023-03-02 204419.png', 5, '2023-03-04 07:43:05', 0),
(150, 'jhhjgjhgjhg', '94111111111', 0, '5', '13', 'ghgfhgfhvbbvcbvc', '94111111111Screenshot_20230221_121514.png', 5, '2023-03-04 07:50:32', 0),
(151, 'kjhkj', ' 94111234567', 0, '0', '0', 'kjhjkh', '94111234567_1760696155906548.jpg', 5, '2023-03-18 20:11:42', 0),
(152, 'hgfhgf', ' 94111234567', 0, '0', '0', 'hgfhgf', '94111234567_1760696172934298.png', 5, '2023-03-18 20:11:59', 0),
(153, 'hjgjjhg', ' 94111234567', 0, '0', '0', 'jhgjhg', '94111234567_1760696322761947.jpg', 5, '2023-03-18 20:14:22', 0),
(154, 'hgfghf', ' 94111234567', 0, '0', '0', 'hgfhgf', '94111234567_1760696394785779.jpg', 5, '2023-03-18 20:15:30', 0),
(155, 'kjkjh', ' 94111234567', 0, '0', '0', 'kjhkjh', '94111234567_1760699409017529.png', 5, '2023-03-18 21:03:25', 0),
(156, 'hgghf', ' 94111234567', 0, '0', '0', 'hgfhgf', '94111234567_1760801052375570.jpg', 5, '2023-03-19 23:59:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'wesakolla', '01abad8b575ede05ca8b26c93561f549');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `login_type` varchar(50) NOT NULL,
  `verified` int(11) DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `token`, `created_at`, `login_type`, `verified`, `is_active`) VALUES
(4, ' 94765595154', ' 94765595154', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE1YzJiNDBhYTJmMzIyNz', '2023-02-25 12:41:24', 'Phone', 0, 1),
(5, ' 94111234567', ' 94111234567', 'eyJhbGciOiJSUzI1NiIsImtpZCI6IjE1YzJiNDBhYTJmMzIyNz', '2023-02-28 13:23:46', 'Phone', 1, 1),
(6, '65464', '654564', '65456', '', '', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad`
--
ALTER TABLE `ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad`
--
ALTER TABLE `ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `classified`
--
CREATE DATABASE IF NOT EXISTS `classified` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `classified`;

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
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `main_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `table_id` int(11) NOT NULL,
  `is_mainimage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `main_id`, `image`, `table_id`, `is_mainimage`, `created_at`, `updated_at`) VALUES
(11, 21, '94775001170_1760829833957046.jpg', 0, 1, '2023-03-19 15:06:28', '2023-03-19 15:06:28'),
(12, 22, '94775001170_1760830060597309.jpg', 0, 1, '2023-03-19 15:10:04', '2023-03-19 15:10:04'),
(13, 27, '94775001170_1760831687031908.png', 0, 1, '2023-03-19 15:35:55', '2023-03-19 15:35:55'),
(14, 28, '94775001170_1760831863244036.jpg', 0, 1, '2023-03-19 15:38:43', '2023-03-19 15:38:43'),
(15, 29, '94775001170_1760832140338252.png', 0, 1, NULL, NULL),
(16, 30, '94717095154_1762250809548388.jpg', 0, 1, NULL, NULL);

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
(13, '2014_10_12_000000_create_users_table', 1),
(14, '2014_10_12_100000_create_password_resets_table', 1),
(15, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(22, '2023_03_17_155644_vehicle_ads', 2),
(23, '2023_03_17_221047_images', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `verified_user` varchar(255) NOT NULL DEFAULT '0',
  `is_active` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `phone_number`, `name`, `verified_user`, `is_active`, `created_at`, `updated_at`) VALUES
(3, '+94775001170', NULL, '0', '1', '2023-03-16 03:10:59', '2023-03-16 03:10:59'),
(4, '+94717095154', NULL, '0', '1', '2023-03-16 03:30:45', '2023-03-16 03:30:45'),
(5, '+94711072432', NULL, '0', '1', '2023-03-16 14:40:28', '2023-03-16 14:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_ads`
--

CREATE TABLE `vehicle_ads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `vehicle_type` varchar(255) NOT NULL,
  `vehicle_condition` varchar(255) NOT NULL,
  `vehicle_make` varchar(255) NOT NULL,
  `vehicle_model` varchar(255) NOT NULL,
  `vehicle_year` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `transmission` varchar(255) NOT NULL,
  `fuel_type` varchar(255) NOT NULL,
  `engine_capacity` varchar(255) NOT NULL,
  `mileage` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT '1',
  `is_paid` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_ads`
--

INSERT INTO `vehicle_ads` (`id`, `user_id`, `vehicle_type`, `vehicle_condition`, `vehicle_make`, `vehicle_model`, `vehicle_year`, `price`, `transmission`, `fuel_type`, `engine_capacity`, `mileage`, `description`, `name`, `phone_number`, `location`, `is_active`, `is_paid`, `created_at`, `updated_at`) VALUES
(21, 3, 'Double Cab', 'Registered(Used)', 'Audi', 'Panda', '1776', '19000', 'Manual', 'Petrol', '1000', '12000', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum h', 'Jude nimal', '+94775001170', 'Piliyandala', '1', '0', '2023-03-19 15:06:27', '2023-03-19 15:06:27'),
(22, 3, 'Three Wheel', 'Brand New', 'Acura', 'Bajaj', '5567', '787686', 'Manual', 'Diesel', '876786', '876786', 'supiri jhgjhgjhg jhgjhghjg jhgjhghjg jgjhg', 'Vimal', '+94775001170', 'Boralesgamuwa', '1', '0', '2023-03-19 15:10:04', '2023-03-19 15:10:04'),
(27, 3, 'Crew Cab', 'Unregistered(Recondition)', 'Acura', 'Eranga', '7676', '87686876', 'Manual', 'Diesel', '87687686', '876876', 'jhgjhgjhghjg', 'hgfghf', '+94775001170', 'Colombo', '1', '0', '2023-03-19 15:35:54', '2023-03-19 15:35:54'),
(28, 3, 'Car', 'Registered(Used)', 'Acura', 'hgfghf', '76575', '76575', 'Manual', 'Diesel', '76575', '76575', 'hgfhfhf', 'hgfh', '+94775001170', 'Colombo', '1', '0', '2023-03-19 15:38:43', '2023-03-19 15:38:43'),
(29, 3, 'Car', 'Registered(Used)', 'Ashok-Leyland', 'hghgf', '8787', '876876', 'Manual', 'Diesel', '87876', '876', 'hgfhgfhhgf', 'hghgf', '+94775001170', 'Colombo', '1', '0', '2023-03-19 15:43:08', '2023-03-19 15:43:08'),
(30, 4, 'Car', 'Registered(Used)', 'Acura', 'CT 100', '6778', '19000', 'Auto', 'Electric', '564564', '6546546', 'cupriri badu', 'jude', '+94717095154', 'Homagama', '1', '0', '2023-04-04 07:32:16', '2023-04-04 07:32:16');

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
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_ads`
--
ALTER TABLE `vehicle_ads`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_ads`
--
ALTER TABLE `vehicle_ads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Database: `lankabuy`
--
CREATE DATABASE IF NOT EXISTS `lankabuy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lankabuy`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'isurangabtk@gmail.com', 'b0e3002dfb33fb575f035e18306b19b8', 'Kelum Isuranga', '0775001170', NULL, NULL),
(2, 'isurangait@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Madura', '0774005510', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` varchar(255) NOT NULL,
  `category_isactive` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `category_isactive`, `created_at`, `updated_at`) VALUES
(15, 'Mobile Phones & Accessories', 'Mobiles Devices', 1, NULL, NULL),
(16, 'Computers & Accessories', 'Computer Products', 1, NULL, NULL),
(17, 'Kids & Toys', 'Electronic Toys', 1, NULL, NULL),
(18, 'Women’s Clothing', 'Women’s Clothing', 1, NULL, NULL),
(19, 'Cellphones & Accessories', 'Cellphones & Accessories', 0, NULL, NULL),
(20, 'Computer, Office, Security', 'Computer, Office, Security', 1, NULL, NULL),
(21, 'Consumer Electronics', 'Consumer Electronics', 1, NULL, NULL),
(22, 'Toys, Kids & Baby', 'Toys, Kids & Baby', 1, NULL, NULL),
(23, 'Sports & Outdoors', 'Sports & Outdoors', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cus_id` int(10) UNSIGNED NOT NULL,
  `cus_name` varchar(255) NOT NULL,
  `cus_email` varchar(255) NOT NULL,
  `cus_password` varchar(255) NOT NULL,
  `cus_mobile` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cus_id`, `cus_name`, `cus_email`, `cus_password`, `cus_mobile`, `created_at`, `updated_at`) VALUES
(1, 'kelum isuranga', 'isurangabtk@gmail.com', 'b0e3002dfb33fb575f035e18306b19b8', '0775001170', NULL, NULL),
(2, 'kelum isuranga', 'isurangabtk@gmail.com', 'b0e3002dfb33fb575f035e18306b19b8', '0775001170', NULL, NULL),
(3, '12345', 'shamil@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '0775006670', NULL, NULL),
(4, 'Shamil', 'shamilnara@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '077399559', NULL, NULL);

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
(1, '2019_02_14_082234_create_admin_table', 1),
(2, '2019_02_15_095428_create_category_table', 2),
(3, '2019_02_16_110529_create_products_table', 3),
(4, '2019_05_11_095021_create_customer_table', 4),
(5, '2019_05_11_111902_create_shipping_table', 5),
(6, '2019_05_18_100343_create_payment_table', 6),
(7, '2019_05_18_100428_create_order_table', 6),
(8, '2019_05_18_101553_create_order_details_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `cus_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`order_id`, `cus_id`, `shipping_id`, `payment_id`, `total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 5, '2,074.00', 'Completed', NULL, NULL),
(2, 1, 5, 6, '2,074.00', 'Completed', NULL, NULL),
(3, 1, 5, 7, '2,074.00', 'Pending', NULL, NULL),
(4, 1, 6, 8, '30,724.00', 'Completed', NULL, NULL),
(5, 1, 6, 9, '30,724.00', 'Pending', NULL, NULL),
(6, 1, 6, 10, '30,724.00', 'Pending', NULL, NULL),
(7, 1, 6, 11, '30,724.00', 'Completed', NULL, NULL),
(8, 1, 6, 12, '30,724.00', 'Pending', NULL, NULL),
(9, 1, 6, 13, '30,724.00', 'Pending', NULL, NULL),
(10, 1, 6, 14, '30,724.00', 'Pending', NULL, NULL),
(11, 1, 6, 15, '30,724.00', 'Pending', NULL, NULL),
(12, 1, 6, 16, '30,724.00', 'Pending', NULL, NULL),
(13, 1, 6, 17, '30,724.00', 'Pending', NULL, NULL),
(14, 1, 6, 18, '30,724.00', 'Pending', NULL, NULL),
(15, 1, 6, 19, '30,724.00', 'Pending', NULL, NULL),
(16, 1, 6, 20, '30,724.00', 'Pending', NULL, NULL),
(17, 1, 6, 21, '30,724.00', 'Pending', NULL, NULL),
(18, 1, 6, 22, '30,724.00', 'Pending', NULL, NULL),
(19, 1, 6, 23, '30,724.00', 'Pending', NULL, NULL),
(20, 1, 6, 24, '30,724.00', 'Pending', NULL, NULL),
(21, 1, 6, 25, '30,724.00', 'Pending', NULL, NULL),
(22, 1, 6, 26, '30,724.00', 'Pending', NULL, NULL),
(23, 1, 6, 27, '30,724.00', 'Pending', NULL, NULL),
(24, 1, 6, 28, '30,724.00', 'Pending', NULL, NULL),
(25, 1, 6, 29, '30,724.00', 'Pending', NULL, NULL),
(26, 1, 6, 30, '30,724.00', 'Pending', NULL, NULL),
(27, 1, 6, 31, '30,724.00', 'Pending', NULL, NULL),
(28, 1, 6, 32, '30,724.00', 'Pending', NULL, NULL),
(29, 1, 6, 33, '30,724.00', 'Pending', NULL, NULL),
(30, 1, 6, 34, '30,724.00', 'Pending', NULL, NULL),
(31, 1, 6, 35, '30,724.00', 'Pending', NULL, NULL),
(32, 1, 7, 36, '1,998.00', 'Pending', NULL, NULL),
(33, 1, 7, 37, '0.00', 'Pending', NULL, NULL),
(34, 3, 8, 38, '34,000.00', 'Pending', NULL, NULL),
(35, 4, 9, 39, '1,000.00', 'Completed', NULL, NULL),
(36, 4, 10, 40, '1,075.00', 'Pending', NULL, NULL),
(37, 4, 11, 41, '22,400.00', 'Pending', NULL, NULL),
(38, 4, 12, 42, '13,464.00', 'Pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 10, 'Phone 2', '76', '1', '2019-05-18 11:30:21', NULL),
(2, 2, 10, 'Phone 2', '76', '1', '2019-05-18 11:30:30', NULL),
(3, 3, 10, 'Phone 2', '76', '1', '2019-05-18 11:30:34', NULL),
(4, 4, 12, 'gfdgfd', '5654', '5', '2019-05-18 11:47:45', NULL),
(5, 5, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 11:48:57', NULL),
(6, 5, 10, 'Phone 2', '76', '6', '2019-05-18 11:48:57', NULL),
(7, 5, 12, 'gfdgfd', '5654', '5', '2019-05-18 11:48:57', NULL),
(8, 6, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 11:57:47', NULL),
(9, 6, 10, 'Phone 2', '76', '6', '2019-05-18 11:57:47', NULL),
(10, 6, 12, 'gfdgfd', '5654', '5', '2019-05-18 11:57:47', NULL),
(11, 7, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:01:01', NULL),
(12, 7, 10, 'Phone 2', '76', '6', '2019-05-18 12:01:01', NULL),
(13, 7, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:01:01', NULL),
(14, 8, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:01:54', NULL),
(15, 8, 10, 'Phone 2', '76', '6', '2019-05-18 12:01:54', NULL),
(16, 8, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:01:54', NULL),
(17, 9, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:02:58', NULL),
(18, 9, 10, 'Phone 2', '76', '6', '2019-05-18 12:02:58', NULL),
(19, 9, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:02:58', NULL),
(20, 10, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:11:55', NULL),
(21, 10, 10, 'Phone 2', '76', '6', '2019-05-18 12:11:55', NULL),
(22, 10, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:11:55', NULL),
(23, 11, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:12:10', NULL),
(24, 11, 10, 'Phone 2', '76', '6', '2019-05-18 12:12:10', NULL),
(25, 11, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:12:10', NULL),
(26, 12, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:19:00', NULL),
(27, 12, 10, 'Phone 2', '76', '6', '2019-05-18 12:19:00', NULL),
(28, 12, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:19:00', NULL),
(29, 13, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:19:30', NULL),
(30, 13, 10, 'Phone 2', '76', '6', '2019-05-18 12:19:30', NULL),
(31, 13, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:19:30', NULL),
(32, 14, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:21:00', NULL),
(33, 14, 10, 'Phone 2', '76', '6', '2019-05-18 12:21:00', NULL),
(34, 14, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:21:00', NULL),
(35, 15, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:24:23', NULL),
(36, 15, 10, 'Phone 2', '76', '6', '2019-05-18 12:24:23', NULL),
(37, 15, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:24:23', NULL),
(38, 16, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:25:15', NULL),
(39, 16, 10, 'Phone 2', '76', '6', '2019-05-18 12:25:15', NULL),
(40, 16, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:25:15', NULL),
(41, 17, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:26:46', NULL),
(42, 17, 10, 'Phone 2', '76', '6', '2019-05-18 12:26:46', NULL),
(43, 17, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:26:46', NULL),
(44, 18, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:27:24', NULL),
(45, 18, 10, 'Phone 2', '76', '6', '2019-05-18 12:27:24', NULL),
(46, 18, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:27:24', NULL),
(47, 19, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:27:46', NULL),
(48, 19, 10, 'Phone 2', '76', '6', '2019-05-18 12:27:46', NULL),
(49, 19, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:27:46', NULL),
(50, 20, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:29:42', NULL),
(51, 20, 10, 'Phone 2', '76', '6', '2019-05-18 12:29:42', NULL),
(52, 20, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:29:42', NULL),
(53, 21, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:31:28', NULL),
(54, 21, 10, 'Phone 2', '76', '6', '2019-05-18 12:31:28', NULL),
(55, 21, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:31:28', NULL),
(56, 22, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:31:53', NULL),
(57, 22, 10, 'Phone 2', '76', '6', '2019-05-18 12:31:53', NULL),
(58, 22, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:31:53', NULL),
(59, 23, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:33:22', NULL),
(60, 23, 10, 'Phone 2', '76', '6', '2019-05-18 12:33:22', NULL),
(61, 23, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:33:22', NULL),
(62, 24, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:33:40', NULL),
(63, 24, 10, 'Phone 2', '76', '6', '2019-05-18 12:33:40', NULL),
(64, 24, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:33:40', NULL),
(65, 25, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:37:14', NULL),
(66, 25, 10, 'Phone 2', '76', '6', '2019-05-18 12:37:14', NULL),
(67, 25, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:37:14', NULL),
(68, 26, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:39:20', NULL),
(69, 26, 10, 'Phone 2', '76', '6', '2019-05-18 12:39:20', NULL),
(70, 26, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:39:20', NULL),
(71, 27, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:40:04', NULL),
(72, 27, 10, 'Phone 2', '76', '6', '2019-05-18 12:40:04', NULL),
(73, 27, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:40:04', NULL),
(74, 28, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:45:32', NULL),
(75, 28, 10, 'Phone 2', '76', '6', '2019-05-18 12:45:32', NULL),
(76, 28, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:45:32', NULL),
(77, 29, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:50:02', NULL),
(78, 29, 10, 'Phone 2', '76', '6', '2019-05-18 12:50:02', NULL),
(79, 29, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:50:02', NULL),
(80, 30, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:50:06', NULL),
(81, 30, 10, 'Phone 2', '76', '6', '2019-05-18 12:50:06', NULL),
(82, 30, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:50:06', NULL),
(83, 31, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-18 12:50:35', NULL),
(84, 31, 10, 'Phone 2', '76', '6', '2019-05-18 12:50:35', NULL),
(85, 31, 12, 'gfdgfd', '5654', '5', '2019-05-18 12:50:35', NULL),
(86, 32, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '2', '2019-05-25 09:27:50', NULL),
(87, 34, 8, 'Original Xiaomi Mi Colorful version', '1000', '34', '2019-05-25 20:10:17', NULL),
(88, 35, 8, 'Original Xiaomi Mi Colorful version', '1000', '1', '2019-05-26 09:55:00', NULL),
(89, 36, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '1', '2019-05-26 10:14:47', NULL),
(90, 36, 10, 'Phone 2', '76', '1', '2019-05-26 10:14:47', NULL),
(91, 37, 10, 'Phone 2', '76', '14', '2019-05-26 11:13:57', NULL),
(92, 37, 6, 'Earphones TWS Wireless Headphones', '3556', '6', '2019-05-26 11:13:57', NULL),
(93, 38, 7, 'i7s TWS Mini Wireless Bluetooth Earphone', '999', '12', '2019-05-26 11:20:40', NULL),
(94, 38, 9, 'Phone 1', '123', '12', '2019-05-26 11:20:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'bank', 'Pending', '2019-05-18 11:22:48', NULL),
(2, 'bank', '1', '2019-05-18 11:26:33', NULL),
(3, 'bank', 'Pending', '2019-05-18 11:27:32', NULL),
(4, 'check', 'Pending', '2019-05-18 11:28:04', NULL),
(5, 'check', 'Pending', '2019-05-18 11:30:21', NULL),
(6, 'cashondelivery', 'Pending', '2019-05-18 11:30:30', NULL),
(7, 'bank', '1', '2019-05-18 11:30:34', NULL),
(8, 'bank', 'Pending', '2019-05-18 11:47:45', NULL),
(9, 'bank', 'Pending', '2019-05-18 11:48:57', NULL),
(10, 'bank', 'Pending', '2019-05-18 11:57:47', NULL),
(11, 'bank', 'Pending', '2019-05-18 12:01:01', NULL),
(12, 'bank', 'Pending', '2019-05-18 12:01:54', NULL),
(13, 'bank', 'Pending', '2019-05-18 12:02:58', NULL),
(14, 'bank', 'Pending', '2019-05-18 12:11:55', NULL),
(15, 'bank', 'Pending', '2019-05-18 12:12:10', NULL),
(16, 'bank', 'Pending', '2019-05-18 12:19:00', NULL),
(17, 'bank', 'Pending', '2019-05-18 12:19:30', NULL),
(18, 'bank', 'Pending', '2019-05-18 12:21:00', NULL),
(19, 'bank', 'Pending', '2019-05-18 12:24:23', NULL),
(20, 'bank', 'Pending', '2019-05-18 12:25:15', NULL),
(21, 'bank', 'Pending', '2019-05-18 12:26:46', NULL),
(22, 'bank', 'Pending', '2019-05-18 12:27:24', NULL),
(23, 'bank', 'Pending', '2019-05-18 12:27:46', NULL),
(24, 'bank', 'Pending', '2019-05-18 12:29:42', NULL),
(25, 'bank', 'Pending', '2019-05-18 12:31:28', NULL),
(26, 'bank', 'Pending', '2019-05-18 12:31:53', NULL),
(27, 'bank', 'Pending', '2019-05-18 12:33:22', NULL),
(28, 'bank', 'Pending', '2019-05-18 12:33:40', NULL),
(29, 'bank', 'Pending', '2019-05-18 12:37:14', NULL),
(30, 'bank', 'Pending', '2019-05-18 12:39:20', NULL),
(31, 'bank', 'Pending', '2019-05-18 12:40:04', NULL),
(32, 'bank', 'Pending', '2019-05-18 12:45:32', NULL),
(33, 'bank', 'Pending', '2019-05-18 12:50:02', NULL),
(34, 'bank', '1', '2019-05-18 12:50:06', NULL),
(35, 'bank', '1', '2019-05-18 12:50:35', NULL),
(36, 'check', 'Pending', '2019-05-25 09:27:50', NULL),
(37, 'cashondelivery', 'Pending', '2019-05-25 09:28:16', NULL),
(38, 'cashondelivery', 'Pending', '2019-05-25 20:10:17', NULL),
(39, 'cashondelivery', 'Pending', '2019-05-26 09:55:00', NULL),
(40, 'cashondelivery', 'Pending', '2019-05-26 10:14:47', NULL),
(41, 'bank', 'Pending', '2019-05-26 11:13:57', NULL),
(42, 'cashondelivery', 'Pending', '2019-05-26 11:20:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_short_description` longtext NOT NULL,
  `product_long_description` longtext NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_weight` double(8,2) NOT NULL,
  `product_brand` varchar(255) NOT NULL,
  `product_isactive` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_weight`, `product_brand`, `product_isactive`, `created_at`, `updated_at`) VALUES
(6, 'Earphones TWS Wireless Headphones', 16, 'Keyboardf', 'hgfhjgfjhfg', 3556.00, 'image/YubFA1tnL1nfZyzesD9I.jpg', 3465.00, 'Logitechi', 1, NULL, NULL),
(7, 'i7s TWS Mini Wireless Bluetooth Earphone', 15, 'earphone', 'Brand Name: HESTIA\r\nWireless Type: bluetooth\r\nPlug Type: Wireless\r\nFunction: For Mobile Phone,HiFi Headphone,For iPod,Sport,Common Headphone\r\nConnectors: None\r\nCommunication: Wireless\r\nActive Noise-Cancellation: Yes\r\nSupport Memory Card: No\r\nModel Number: T33/HQB-Q32\r\nSensitivity: 40±2dB\r\nIs wireless: Yes\r\nSupport APP: No\r\nStyle: Ear Hook\r\nLine Length: None\r\nWith Microphone: Yes\r\nResistance: 32Ω\r\nSupport Apt-x: No\r\nWaterproof: Yes\r\nFrequency Response Range: 20-24000Hz\r\nVolume Control: No\r\nControl Button: Yes\r\nVocalism Principle: Balanced Armature\r\nWaterproof upgrade: IPX5', 999.00, 'image/8hdknRI6Yx0zoi7cBb3v.jpg', 1.00, 'Xiaomi', 1, NULL, NULL),
(8, 'Original Xiaomi Mi Colorful version', 15, 'Earhpone', 'kjhkjhkh', 1000.00, 'image/sMCSzrgnfexRC8Cw3msW.jpg', 1.00, 'Xiaomi', 1, NULL, NULL),
(9, 'Phone 1', 15, 'phone', 'phone', 123.00, 'image/TyAIgG7RuDaXPBJJmzD7.jpg', 132.00, 'Dogee', 1, NULL, NULL),
(10, 'Phone 2', 16, 'kjhkjh', 'kjhjkh', 76.00, 'image/nCaLQPg05jH4TEOFbEQp.jpg', 564.00, 'Xiaomi', 1, NULL, NULL),
(11, 'hgjhg', 15, 'jhgjg', 'jhgjhg', 765.00, 'image/KqpoyPE34ZFeuzVcKLGF.jpg', 6756.00, 'gfd', 1, NULL, NULL),
(12, 'gfdgfd', 15, 'gfdgfd', 'gfdgfd', 5654.00, 'image/ugu5uUBaa8pC54kUmra4.jpg', 564.00, 'gfdgf', 1, NULL, NULL),
(13, 'gfdgf', 15, 'gfdgfd', 'gfdf', 65456.00, 'image/suKFuVhbYmDOsKiNCHNw.jpg', 6565.00, 'gfdgfd', 1, NULL, NULL),
(14, 'gfdh', 15, 'gfdgh', 'ghdfhfd', 654564.00, 'image/aVZTMyHyGHsmmGNeQlZ7.jpg', 65654.00, 'gfdhfd', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `shipping_id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) NOT NULL,
  `shipping_fname` varchar(255) NOT NULL,
  `shipping_lname` varchar(255) NOT NULL,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_zipcode` varchar(255) NOT NULL,
  `shipping_phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`shipping_id`, `shipping_email`, `shipping_fname`, `shipping_lname`, `shipping_address`, `shipping_city`, `shipping_zipcode`, `shipping_phone`, `created_at`, `updated_at`) VALUES
(1, 'jhg', 'jhg', 'jhg', 'jhg', 'jhg', 'kjh', 'kjh', NULL, NULL),
(2, 'jhghjg@jhg.com', 'kwlum', 'isuranga', '2187/aj', 'kirama', '823423', '0775001170', NULL, NULL),
(3, 'hgf', 'hgf', 'hgf', 'hgf', 'hgf', 'hgf', 'hgf', NULL, NULL),
(4, 'jhg', 'hg', 'hg', 'hg', 'jhg', '76', '876876', NULL, NULL),
(5, 'kjh', 'kjh', 'jkh', 'kjh', 'kjh', 'jkh', 'jkh', NULL, NULL),
(6, 'kjh', 'kjh', 'kjh', 'kjh', 'kjh', '987', '9879', NULL, NULL),
(7, 'hgf', 'hgf', 'hgf', 'hgf', 'hgf', 'hgf', '76565', NULL, NULL),
(8, 'jhgghjg@gmail.com', 'shamil', 'narada', '213/A', 'colombo', '98797', '0775006670', NULL, NULL),
(9, 'naradashamil@gmail.com', 'Shamil', 'Narada', '217/B Walasmulla', 'South', '987987', '077600550', NULL, NULL),
(10, 'Isuranga', 'jhgj', 'jhghj', 'jhgj', 'jhg', 'hjg', '98789', NULL, NULL),
(11, 'jhg', 'jhg', 'jhg', 'jhg', 'jhg', 'jhg', 'jhg', NULL, NULL),
(12, 'Kkjh@gmail.com', 'kjhkjh', 'kjhkjh', 'kjhkjh', 'kjhjkh', '987897', '98987975', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cus_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `shipping_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `lottery`
--
CREATE DATABASE IF NOT EXISTS `lottery` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lottery`;

-- --------------------------------------------------------

--
-- Table structure for table `lotterytypes`
--

CREATE TABLE `lotterytypes` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `costpernumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uuid` varchar(100) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `userbalance` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uuid`, `phonenumber`, `userbalance`) VALUES
('ade3f6ca-d2d1-402e-a686-8a95155ac53e', '+94775001170', 200);

-- --------------------------------------------------------

--
-- Table structure for table `usertickets`
--

CREATE TABLE `usertickets` (
  `id` int(11) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `purchasedNo` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `lotteryTypeId` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertickets`
--

INSERT INTO `usertickets` (`id`, `uid`, `purchasedNo`, `date`, `timestamp`, `lotteryTypeId`) VALUES
(31, 'ade3f6ca-d2d1-402e-a686-8a95155ac53e', 71, '6/2/2023', '2023-06-01 20:07:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `winninglotteries`
--

CREATE TABLE `winninglotteries` (
  `id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `TypeId` int(10) NOT NULL,
  `winningNumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lotterytypes`
--
ALTER TABLE `lotterytypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD UNIQUE KEY `uuid` (`uuid`);

--
-- Indexes for table `usertickets`
--
ALTER TABLE `usertickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winninglotteries`
--
ALTER TABLE `winninglotteries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lotterytypes`
--
ALTER TABLE `lotterytypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertickets`
--
ALTER TABLE `usertickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `winninglotteries`
--
ALTER TABLE `winninglotteries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `node`
--
CREATE DATABASE IF NOT EXISTS `node` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `node`;

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `description` varchar(500) NOT NULL,
  `image` varchar(100) NOT NULL,
  `user_id` int(2) NOT NULL,
  `date` datetime NOT NULL,
  `paid_ad` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `title`, `phone_number`, `category`, `location`, `description`, `image`, `user_id`, `date`, `paid_ad`) VALUES
(1, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682078803497.png', 5, '0000-00-00 00:00:00', 0),
(2, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682079016296.png', 5, '2012-10-16 00:00:00', 0),
(3, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682079111179.png', 5, '0000-00-00 00:00:00', 0),
(4, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682079508818.png', 5, '0000-00-00 00:00:00', 0),
(5, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682079579241.png', 5, '0000-00-00 00:00:00', 0),
(6, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682079689510.png', 5, '0000-00-00 00:00:00', 0),
(7, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682079771218.png', 5, '2023-04-21 17:52:51', 0),
(8, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682081233762.png', 5, '2023-04-21 18:17:13', 0),
(9, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682081251272.png', 5, '2023-04-21 18:17:31', 0),
(10, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682081274089.png', 5, '2023-04-21 18:17:54', 0),
(11, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682081388634.png', 5, '2023-04-21 18:19:48', 0),
(12, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682081653399.png', 5, '2023-04-21 18:24:13', 0),
(13, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682159427520.png', 5, '2023-04-22 16:00:27', 0),
(14, 'ythgfhgjh', '+94775001170', 'hgfhgfhgf', 'jkhkhkh', 'fhghfghf', '1682159430245.png', 5, '2023-04-22 16:00:30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `is_active` int(2) NOT NULL,
  `verified` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `phone_number`, `is_active`, `verified`) VALUES
(5, '+94775001170', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"lottery\",\"table\":\"user\"},{\"db\":\"lottery\",\"table\":\"usertickets\"},{\"db\":\"lottery\",\"table\":\"winninglotteries\"},{\"db\":\"lottery\",\"table\":\"lotterytypes\"},{\"db\":\"node\",\"table\":\"ads\"},{\"db\":\"camlanka\",\"table\":\"ad\"},{\"db\":\"node\",\"table\":\"user\"},{\"db\":\"classified\",\"table\":\"users\"},{\"db\":\"camlanka\",\"table\":\"users\"},{\"db\":\"classified\",\"table\":\"vehicle_ads\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'camlanka', 'users', '{\"sorted_col\":\"`users`.`is_active` ASC\"}', '2023-03-15 08:58:34'),
('root', 'classified', 'vehicle_ads', '{\"sorted_col\":\"`vehicle_ads`.`mileage` ASC\"}', '2023-03-20 09:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-06-01 20:23:51', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phonenumber` int(100) NOT NULL,
  `school` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `phonenumber`, `school`) VALUES
(1, 'Student 1', 555, 0),
(2, 'Student 2', 555, 0),
(3, 'Student 3', 555, 0),
(4, 'Student 4', 555, 0),
(5, 'Student 5', 555, 0),
(6, 'Student 6', 555, 0),
(7, 'Student 7', 555, 0),
(8, 'Student 8', 555, 0),
(9, 'Student 9', 555, 0),
(10, 'Student 10', 555, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
