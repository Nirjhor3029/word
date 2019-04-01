-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2019 at 05:37 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `words`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2019_01_18_080826_create_topics_table', 1),
(8, '2019_01_18_163914_create_words_table', 1),
(9, '2014_10_12_000000_create_users_table', 2),
(10, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'A', '2019-03-19 20:42:49', '2019-03-19 20:42:49'),
(2, 'B', '2019-03-19 20:42:51', '2019-03-19 20:42:51'),
(3, 'C', '2019-03-19 20:42:55', '2019-03-19 20:42:55'),
(4, 'D', '2019-03-19 20:42:57', '2019-03-19 20:42:57'),
(5, 'E', '2019-03-19 20:42:59', '2019-03-19 20:42:59'),
(6, 'F', '2019-03-19 20:43:02', '2019-03-19 20:43:02'),
(7, 'G', '2019-03-19 20:43:04', '2019-03-19 20:43:04'),
(8, 'H', '2019-03-19 20:43:06', '2019-03-19 20:43:06'),
(9, 'I', '2019-03-19 20:43:08', '2019-03-19 20:43:08'),
(10, 'J', '2019-03-19 20:43:10', '2019-03-19 20:43:10'),
(11, 'K', '2019-03-19 20:43:12', '2019-03-19 20:43:12'),
(12, 'L', '2019-03-19 20:43:14', '2019-03-19 20:43:14'),
(13, 'M', '2019-03-19 20:43:16', '2019-03-19 20:43:16'),
(14, 'N', '2019-03-19 20:43:19', '2019-03-19 20:43:19'),
(15, 'O', '2019-03-19 20:43:21', '2019-03-19 20:43:21'),
(16, 'P', '2019-03-19 20:43:23', '2019-03-19 20:43:23'),
(17, 'Q', '2019-03-19 20:43:26', '2019-03-19 20:43:26'),
(18, 'R', '2019-03-19 20:43:29', '2019-03-19 20:43:29'),
(19, 'S', '2019-03-19 20:43:31', '2019-03-19 20:43:31'),
(20, 'T', '2019-03-19 20:43:34', '2019-03-19 20:43:34'),
(21, 'U', '2019-03-19 20:43:36', '2019-03-19 20:43:36'),
(22, 'V', '2019-03-19 20:43:39', '2019-03-19 20:43:39'),
(23, 'W', '2019-03-19 20:43:42', '2019-03-19 20:43:42'),
(24, 'X', '2019-03-19 20:43:45', '2019-03-19 20:43:45'),
(25, 'Y', '2019-03-19 20:43:47', '2019-03-19 20:43:47'),
(26, 'Z', '2019-03-19 20:43:49', '2019-03-19 20:43:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$sFWTlW16WVGwrCGk/zzpGOKYCIoqW9Ke4CUlwdnfyTXrrPekcdHZa', 1, NULL, 'ryphQOIKOeFSSwE1X1yEXj3bvmZJWhx37ukPwpSzrdBKajrYuzb1p2YM6ZMd', '2019-03-20 13:28:28', '2019-03-20 13:28:28'),
(2, 'Sharmin', 'sharmin@gmail.com', '$2y$10$J5WcuhpOpxdt9wgYL7Dza.P9/mVeNVcQV9cWUQx/.Xx4kq4aQEAd6', NULL, NULL, 'ZMVkoqsq26Wtn0fIlqhE5EZHmDiFlS4M6Dkwdkg0LaWFei2rssYW5xD0pqJH', '2019-03-20 13:34:31', '2019-03-20 13:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en_meaning` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bn_meaning` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `topic_id`, `title`, `img`, `en_meaning`, `bn_meaning`, `created_at`, `updated_at`) VALUES
(1, 1, 'Abandon (v)', 'N/A', 'V: Give up completely (a course of action, a practice, or a way of thinking). N: complete lack of inhibition or restraint.', 'V: ( বর্জিত করা, পরিত্যাগ করা, ), N: (বেপরোয়া লোক, হাল ছাড়িয়া-দেত্তয়া ভাব)', '2019-03-19 20:50:02', '2019-03-19 20:50:02');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
