-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 16, 2016 at 12:56 AM
-- Server version: 5.7.12-0ubuntu1
-- PHP Version: 7.0.4-7ubuntu2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(6, 'Doloremque asperiores dolore rerum sint pariatur.', 'Sed sapiente corrupti ea nostrum alias aut sed. Fugit quia quia quisquam quidem nostrum. Mollitia illum et natus vero. Aut explicabo assumenda sit sed.', NULL, NULL, NULL, NULL, NULL),
(7, 'Et eligendi nulla saepe enim.sfd', 'Nemo laudantium corporis numquam. Eos maxime non ea. Error velit et porro fugiat.sfdfsf', 'img06.jpg', 'fsdssfd', NULL, NULL, '2016-06-04 07:48:53'),
(8, 'Perspiciatis laborum velit magni cum.', 'Non explicabo blanditiis non fugiat magni et rem. Officiis voluptatem facere voluptas. Amet adipisci magni deleniti illum.', NULL, NULL, NULL, NULL, NULL),
(9, 'Eius cum molestiae fugiat esse itaque tempora praesentium.', 'Accusamus sed ipsa qui quae aut ducimus. Ut aut nesciunt provident aut earum.', NULL, NULL, NULL, NULL, NULL),
(10, 'Rem sint minus eaque ea illo.', 'Ea et ut enim eos eos eligendi. Sint fugiat cupiditate unde rerum. Praesentium sit provident dicta culpa eveniet libero. Perferendis reprehenderit voluptas est.', NULL, NULL, NULL, NULL, NULL),
(11, 'asdfasdf', 'adsfadfsf fds', 'img06.jpg', 'sfadsf', NULL, '2016-06-04 06:47:42', '2016-06-04 07:48:32'),
(12, 'adsf', 'adf', 'img06.jpg', '0', NULL, '2016-06-04 06:49:04', '2016-06-04 06:49:04'),
(13, 'adsf', 'adsf', 'img09.gif', '0', NULL, '2016-06-04 06:58:31', '2016-06-04 06:58:31'),
(15, 'asdf', 'adsf', 'img10.gif', '0', NULL, '2016-06-04 07:06:14', '2016-06-04 07:06:14'),
(17, 'fgdgf', 'fggdh', 'img06.jpg', 'tanim', NULL, '2016-06-04 07:27:59', '2016-06-04 07:28:51'),
(18, 'adsfadsf', 'adsfadfs', 'img07.gif', 'sdfsadsfdas', NULL, '2016-06-11 02:45:17', '2016-06-11 02:45:17'),
(19, 'tanimads', 'adsf', 'img12.gif', 'sdfsadsf', NULL, '2016-06-11 02:46:19', '2016-06-11 02:46:19');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `description`, `image`, `username`, `created_at`, `updated_at`) VALUES
(3, 'Prof.', 'Exercitationem tempora neque incidunt voluptatum facere. Pariatur libero necessitatibus sed ab optio voluptas qui. Tenetur beatae quis deserunt a quo. Est error quia placeat debitis maxime quos aspernatur.', NULL, 'Luciano', NULL, NULL),
(4, 'Mr.', 'Aut omnis rerum perferendis quas dolore nulla rerum. Doloremque velit tempora ullam expedita dignissimos dicta. Reiciendis nihil et qui est rerum ipsa.', NULL, 'Watson', NULL, NULL),
(5, 'Ms.', 'Provident sint nihil magnam quisquam molestiae odio. Unde molestiae cum repellat animi nihil recusandae necessitatibus. Aliquam eligendi deleniti fugit ipsum autem.', NULL, 'Tomasa', NULL, NULL),
(6, 'Dr.', 'Delectus possimus qui velit ut molestiae dolores. Vitae vel non quas dignissimos rem iste. Illum fuga non rerum possimus odit pariatur. Recusandae animi commodi consequatur accusamus consequatur ea qui dicta.', NULL, 'Sim', NULL, NULL),
(7, 'Prof.', 'Magnam voluptatem quia molestiae. Officia incidunt et ducimus sit ipsam et. Voluptas quo ullam minima. Optio est quam non eius assumenda esse animi.', NULL, 'Carlie', NULL, NULL),
(8, 'Dr.', 'Recusandae rem quod voluptas eos voluptas. Sunt vel dolores velit consectetur voluptas maiores. Non numquam vel atque incidunt velit qui nisi. Impedit nostrum consequatur voluptatem cupiditate.', NULL, 'Filomena', NULL, NULL),
(9, 'Dr.', 'Reprehenderit non voluptates esse consequatur facilis quis laborum. Aut porro velit dolor est tempore sapiente. Ratione autem deserunt laudantium voluptatem velit.', NULL, 'Cedrick', NULL, NULL),
(10, 'Dr.', 'Qui quis necessitatibus ut sint nihil. Laudantium expedita et vero nam. Ut ipsum enim laudantium et dolorem ut dolores.', NULL, 'Zachery', NULL, NULL),
(11, 'dsf', 'sfd', 'img09.gif', 'dsf', '2016-06-04 05:18:11', '2016-06-04 05:18:11');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_05_27_061508_create_articles_table', 2),
('2016_05_28_102743_create_blogs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
