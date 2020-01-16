-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 16, 2020 at 03:10 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_16_112434_create_topics_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 'ody testb', '2020-01-05 11:49:23', '2020-01-05 11:49:23'),
(2, 2, 'ody testb', '2020-01-05 11:49:26', '2020-01-05 11:49:26'),
(3, 3, 'ody testb', '2020-01-05 11:49:28', '2020-01-05 11:49:28'),
(4, 4, 'ody update', '2020-01-05 11:49:30', '2020-01-08 02:09:49'),
(5, 5, 'ody testb', '2020-01-08 01:52:24', '2020-01-08 01:52:24'),
(6, 6, 'ody testb', '2020-01-08 02:22:33', '2020-01-08 02:22:33'),
(7, 7, 'ody testb', '2020-01-08 02:22:36', '2020-01-08 02:22:36'),
(8, 8, 'ody testb', '2020-01-08 02:22:38', '2020-01-08 02:22:38'),
(9, 9, 'ody testb', '2020-01-08 02:22:39', '2020-01-08 02:22:39'),
(10, 10, 'ody testb', '2020-01-08 02:22:41', '2020-01-08 02:22:41'),
(11, 11, 'ody testb', '2020-01-08 02:22:43', '2020-01-08 02:22:43'),
(12, 12, 'ody testb', '2020-01-08 02:22:44', '2020-01-08 02:22:44'),
(13, 13, 'ody testb', '2020-01-08 02:22:46', '2020-01-08 02:22:46'),
(14, 14, 'ody testb', '2020-01-08 02:22:48', '2020-01-08 02:22:48'),
(15, 15, 'ody testb', '2020-01-08 02:22:50', '2020-01-08 02:22:50'),
(16, 16, 'ody testb', '2020-01-08 02:22:54', '2020-01-08 02:22:54'),
(17, 17, 'ody testb', '2020-01-08 02:22:59', '2020-01-08 02:22:59'),
(18, 18, 'ody testb', '2020-01-08 02:23:01', '2020-01-08 02:23:01'),
(19, 19, 'ody testb', '2020-01-08 02:23:03', '2020-01-08 02:23:03'),
(20, 20, 'ody testb', '2020-01-08 02:23:04', '2020-01-08 02:23:04'),
(21, 21, 'ody testb', '2020-01-08 02:23:06', '2020-01-08 02:23:06'),
(22, 22, 'ody testb', '2020-01-08 02:23:09', '2020-01-08 02:23:09'),
(23, 23, 'ody testb', '2020-01-08 02:23:11', '2020-01-08 02:23:11'),
(24, 24, 'ody testb', '2020-01-08 02:23:13', '2020-01-08 02:23:13'),
(25, 25, 'ody testb', '2020-01-08 02:23:14', '2020-01-08 02:23:14'),
(26, 26, 'ody testb', '2020-01-08 02:23:16', '2020-01-08 02:23:16'),
(27, 27, 'ody testb', '2020-01-08 02:23:18', '2020-01-08 02:23:18'),
(28, 28, 'ody testb', '2020-01-08 02:23:20', '2020-01-08 02:23:20'),
(29, 29, 'ody testb', '2020-01-08 02:23:21', '2020-01-08 02:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'test new', '1-test-new', '2020-01-05 11:49:23', '2020-01-05 11:49:23', NULL),
(2, 'test new', '2-test-new', '2020-01-05 11:49:26', '2020-01-05 11:49:26', NULL),
(3, 'test new', '3-test-new', '2020-01-05 11:49:28', '2020-01-05 11:49:28', NULL),
(4, 'test update', '4-test-new', '2020-01-05 11:49:30', '2020-01-08 02:09:49', NULL),
(5, 'test new', '5-test-new', '2020-01-08 01:52:24', '2020-01-08 01:52:24', NULL),
(6, 'test new', '6-test-new', '2020-01-08 02:22:33', '2020-01-08 02:22:33', NULL),
(7, 'test new', '7-test-new', '2020-01-08 02:22:35', '2020-01-08 02:22:35', NULL),
(8, 'test new', '8-test-new', '2020-01-08 02:22:38', '2020-01-08 02:22:38', NULL),
(9, 'test new', '9-test-new', '2020-01-08 02:22:39', '2020-01-08 02:22:39', NULL),
(10, 'test new', '10-test-new', '2020-01-08 02:22:41', '2020-01-08 02:22:41', NULL),
(11, 'test new', '11-test-new', '2020-01-08 02:22:42', '2020-01-08 02:22:42', NULL),
(12, 'test new', '12-test-new', '2020-01-08 02:22:44', '2020-01-08 02:22:44', NULL),
(13, 'test new', '13-test-new', '2020-01-08 02:22:46', '2020-01-08 02:22:46', NULL),
(14, 'test new', '14-test-new', '2020-01-08 02:22:47', '2020-01-08 02:22:47', NULL),
(15, 'test new', '15-test-new', '2020-01-08 02:22:50', '2020-01-08 02:22:50', NULL),
(16, 'test new', '16-test-new', '2020-01-08 02:22:53', '2020-01-08 02:22:53', NULL),
(17, 'test new', '17-test-new', '2020-01-08 02:22:59', '2020-01-08 02:22:59', NULL),
(18, 'test new', '18-test-new', '2020-01-08 02:23:01', '2020-01-08 02:23:01', NULL),
(19, 'test new', '19-test-new', '2020-01-08 02:23:03', '2020-01-08 02:23:03', NULL),
(20, 'test new', '20-test-new', '2020-01-08 02:23:04', '2020-01-08 02:23:04', NULL),
(21, 'test new', '21-test-new', '2020-01-08 02:23:06', '2020-01-08 02:23:06', NULL),
(22, 'test new', '22-test-new', '2020-01-08 02:23:09', '2020-01-08 02:23:09', NULL),
(23, 'test new', '23-test-new', '2020-01-08 02:23:11', '2020-01-08 02:23:11', NULL),
(24, 'test new', '24-test-new', '2020-01-08 02:23:13', '2020-01-08 02:23:13', NULL),
(25, 'test new', '25-test-new', '2020-01-08 02:23:14', '2020-01-08 02:23:14', NULL),
(26, 'test new', '26-test-new', '2020-01-08 02:23:16', '2020-01-08 02:23:16', NULL),
(27, 'test new', '27-test-new', '2020-01-08 02:23:18', '2020-01-08 02:23:18', NULL),
(28, 'test new', '28-test-new', '2020-01-08 02:23:19', '2020-01-08 02:23:19', NULL),
(29, 'test new', '29-test-new', '2020-01-08 02:23:21', '2020-01-08 02:23:21', NULL);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `topics_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
