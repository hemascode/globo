-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 25, 2024 at 07:58 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `globo`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE `about_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `banner_image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `description`, `banner_image`, `status`, `created_at`, `updated_at`) VALUES
(1, '<h1 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">What is e-commerce business?<br></h1><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><b><span style=\"font-family: Nunito;\">•</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Nunito;\">E-commerce is the buying and selling of goods and services over the internet.</span></b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><b><span style=\"font-family: Nunito;\">•</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Nunito;\">It is conducted over computers, tablets, smartphones, and other smart devices.</span></b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><b><span style=\"font-family: Nunito;\">•</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Nunito;\">Almost anything can be purchased through e-commerce today, which makes e-commerce highly competitive.</span></b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><b><span style=\"font-family: Nunito;\">•</span><span style=\"white-space:pre\">	</span><span style=\"font-family: Nunito;\">It can be a substitute for brick-and-mortar stores, though some businesses choose to maintain both.</span></b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><b><span style=\"font-family: Nunito;\">•</span><span style=\"white-space: pre;\">	</span><span style=\"font-family: Nunito;\">E-commerce operates in several market segments including business-to-business, business-to-consumer, consumer-to-consumer, and consumer-to-business.</span></b></p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><br></p>', 'uploads/custom-images/about-us-2022-09-22-04-39-05-2348.png', NULL, '2022-09-20 08:21:31', '2023-12-13 15:54:08');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `state_id` int(11) NOT NULL DEFAULT 0,
  `city_id` int(11) NOT NULL DEFAULT 0,
  `address` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `default_shipping` int(11) NOT NULL DEFAULT 0,
  `default_billing` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `email`, `phone`, `country_id`, `state_id`, `city_id`, `address`, `type`, `default_shipping`, `default_billing`, `created_at`, `updated_at`) VALUES
(1, 5, 'Hari', 'hari2001@gmail.com', '8547963012', 1, 1, 2, 'Tamil Nadu', '1', 1, 1, '2022-09-21 05:45:32', '2022-09-21 05:45:32'),
(2, 5, 'kavi', 'hari2001@gmail.com', '9874563210', 1, 1, 2, 'Tamil Nadu', '1', 0, 0, '2022-09-21 05:46:27', '2022-09-21 05:46:27'),
(3, 6, 'Karthi', 'Karthi@gmail.com', '963587410', 4, 7, 10, 'Tamil Nadu', 'home', 1, 1, '2022-09-21 06:56:14', '2022-09-21 06:56:14'),
(5, 4, 'logi', 'll@gmail.com', '9632580141', 2, 4, 8, 'Tamil Nadu', '1', 1, 1, '2022-09-21 07:35:41', '2022-09-21 07:35:41'),
(7, 7, 'chithra', 'cc@gmail.com', '8745632105', 2, 4, 8, 'Tamil Nadu', '1', 1, 1, '2022-09-24 18:41:35', '2022-09-24 18:41:35'),
(10, 3, 'mubina', 'mubi@gmail.com', '9874568450', 2, 4, 8, 'Tamil Nadu', '1', 1, 1, '2022-09-26 06:27:35', '2022-09-26 06:27:35'),
(11, 7, 'ugi', 'ugi@gmail.com', '9630258147', 1, 2, 1, 'Tamil Nadu', 'home', 0, 0, '2022-11-21 04:39:22', '2023-05-01 11:59:33'),
(12, 26, 'Ali', 'ali@gmail.com', '9876541230', 2, 5, 9, 'Tamil Nadu', 'home', 1, 1, '2023-03-20 16:50:54', '2023-03-20 16:50:54'),
(13, 26, 'dhaufiq', 'dhaufiq@gmail.com', '6383254107', 2, 4, 8, 'Tamil Nadu', 'home', 0, 0, '2023-03-20 16:51:29', '2023-03-20 16:51:29'),
(14, 45, 'Mohammed', 'mohammad@pixiil.com', '8974563210', 2, 4, 8, 'Tamil Nadu', 'home', 1, 1, '2023-05-02 04:58:29', '2023-05-02 05:10:57'),
(15, 45, 'Sarah ', 'sarah@mail.com', '6987456321', 2, 5, 9, 'Tamil Nadu', 'home', 0, 0, '2023-05-02 04:59:43', '2023-05-02 05:00:19'),
(17, 6, 'Hema j', 'hh@gmail.com', '9874563210', 1, 1, 2, 'cuddalore-OT', '1', 0, 0, '2024-01-30 03:48:41', '2024-01-30 03:48:41');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_type` int(10) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `forget_password_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `admin_type`, `name`, `email`, `image`, `email_verified_at`, `password`, `remember_token`, `status`, `forget_password_token`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', 'uploads/website-images/ibrahim-khalil-2022-01-30-02-48-50-5743.jpg', NULL, '$2y$10$Gtc/CuE9RTk0HaCVeXyrGeEC/cFW9WXc9tc/EX2PwhRGAn3H9L59S', '1Ml56aSEUXgtLTAgRy42ZGV59BEh6jR9SP0COcBsM8lkbvvkHZx1HPa52J4a', 1, NULL, NULL, '2022-09-20 08:29:15'),
(12, 0, 'hema', 'hh@gmail.com', NULL, NULL, '$2y$10$GlRI5C0h5ZSVyzssOpQlde2AdXhvSSOvAT4y5EfOX3RZ8LsirnSFW', NULL, 1, NULL, '2024-01-25 09:36:01', '2024-01-25 09:36:01');

-- --------------------------------------------------------

--
-- Table structure for table `announcement_modals`
--

CREATE TABLE `announcement_modals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `expired_date` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcement_modals`
--

INSERT INTO `announcement_modals` (`id`, `status`, `title`, `description`, `image`, `expired_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'GET UP TO 75% OFF', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Exercitationem, facere nesciunt doloremque nobis debitis sint?', 'uploads/website-images/announcement-2022-11-19-12-33-21-4518.png', 5, NULL, '2022-11-19 17:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `bank_payments`
--

CREATE TABLE `bank_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_info` text DEFAULT NULL,
  `cash_on_delivery_status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_payments`
--

INSERT INTO `bank_payments` (`id`, `status`, `account_info`, `cash_on_delivery_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bank Name: Your bank name\r\nAccount Number:  Your bank account number\r\nRouting Number: Your bank routing number\r\nBranch: Your bank branch name', 1, NULL, '2022-07-30 03:48:29');

-- --------------------------------------------------------

--
-- Table structure for table `banner_images`
--

CREATE TABLE `banner_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `banner_location` varchar(255) DEFAULT NULL,
  `after_product_qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `product_slug` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_images`
--

INSERT INTO `banner_images` (`id`, `header`, `title`, `link`, `image`, `banner_location`, `after_product_qty`, `status`, `created_at`, `updated_at`, `title_one`, `title_two`, `badge`, `product_slug`) VALUES
(13, NULL, NULL, '', 'uploads/website-images/banner-2022-06-13-12-45-14-6950.jpg', 'Login page', 0, 0, NULL, '2022-06-13 06:45:14', NULL, NULL, NULL, NULL),
(15, NULL, NULL, NULL, 'uploads/website-images/default-avatar-2022-11-18-12-03-30-6530.webp', 'Default Profile Image', 0, 0, NULL, '2022-11-18 05:03:30', NULL, NULL, NULL, NULL),
(16, NULL, NULL, '#', 'uploads/website-images/Mega-menu-2022-10-27-01-41-46-7345.png', 'Slider First', 0, 1, NULL, '2022-10-30 19:07:42', 'Apple', 'Smart Watch', 'Gaming', 'electronics'),
(17, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-10-27-01-42-01-1798.png', 'Slider Second', 0, 1, NULL, '2022-10-30 19:07:48', 'Xbox', '5th Version', 'Gaming', 'electronics'),
(18, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-07-31-12-32-19-7306.jpg', 'Popular category sidebar banner', 0, 1, NULL, '2022-10-30 19:07:53', NULL, NULL, NULL, 'electronics'),
(19, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-02-7910.png', 'Two Column banner One', 0, 1, NULL, '2022-10-30 19:07:59', 'Beat wireless', 'Headphone', 'HEADSET', 'electronics'),
(20, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-27-5225.png', 'Two Column Banner two', 0, 1, NULL, '2022-10-30 19:08:04', 'Samsung', 'Smart Watch II', 'SMART WATCH', 'electronics'),
(21, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-43-51-3694.png', 'Homepage Single banner one', 0, 1, NULL, '2022-10-30 19:08:09', 'HEADPHONE', 'Get the best deal for Headphones', NULL, 'electronics'),
(22, NULL, NULL, 'https://shopo-ecom.vercel.app/single-product?slug=kospet-tank-t1-milstd-rugged-waterproof-smartwatch', 'uploads/website-images/Mega-menu-2022-10-27-01-44-06-8672.png', 'Homepage Single banner Two', 0, 1, NULL, '2022-10-30 19:08:18', 'Get the best deal for Headphones', NULL, NULL, 'electronics'),
(23, NULL, NULL, 'https://shopo-ecom.vercel.app/products?category=game', 'uploads/website-images/Mega-menu-2022-10-27-01-44-55-7811.png', 'Megamenu banner', 0, 1, NULL, '2022-10-30 19:08:38', 'SMART WATCH', 'Samsung Smart Watch', NULL, 'electronics'),
(24, NULL, '#', '#', 'uploads/website-images/Mega-menu-2022-09-20-10-59-27-3427.png', 'Homepage flash sale sidebar banner', 0, 1, NULL, '2022-09-20 04:59:27', NULL, NULL, NULL, NULL),
(25, NULL, NULL, 'https://shopo-ecom.vercel.app/products?highlight=popular_category', 'uploads/website-images/Mega-menu-2022-10-27-01-44-41-4959.png', 'Shop page center banner', 3, 1, NULL, '2022-10-30 19:08:29', 'Get the best deal for Headphones', NULL, NULL, 'electronics'),
(26, '', '', 'https://shopo-ecom.vercel.app/single-product?slug=wireless-headphones-and-earbuds-', 'uploads/website-images/Mega-menu-2022-10-27-01-44-49-1623.png', 'Shop page sidebar banner', 0, 1, NULL, '2022-10-30 19:08:34', 'HEADSET', 'Beat wireless Headphone', NULL, 'electronics'),
(27, 'Get our latest offer', 'by subscription', '', 'uploads/website-images/banner-2022-09-25-05-12-43-6914.png', 'Subscribe section banner', 0, 1, NULL, '2022-09-25 11:12:43', NULL, NULL, NULL, NULL),
(28, NULL, NULL, 'link', 'uploads/website-images/Mega-menu-2022-06-14-11-26-55-8951.jpg', 'Featured category sidebar banner', 0, 1, NULL, '2022-06-14 05:26:56', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `biztech_sms`
--

CREATE TABLE `biztech_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text NOT NULL,
  `client_id` text NOT NULL,
  `sender_id` varchar(255) NOT NULL,
  `enable_register_sms` int(11) NOT NULL DEFAULT 0,
  `enable_reset_pass_sms` int(11) NOT NULL DEFAULT 0,
  `enable_order_confirmation_sms` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biztech_sms`
--

INSERT INTO `biztech_sms` (`id`, `api_key`, `client_id`, `sender_id`, `enable_register_sms`, `enable_reset_pass_sms`, `enable_order_confirmation_sms`, `created_at`, `updated_at`) VALUES
(1, 'UpB/QWgGqJSfHJLsZdMqulqwXtU6EzNGNiwI11EUl4o=', '1a1b0bf0-07fd-402f-b1d2-15c99e130c8f', '8809617609947', 1, 1, 1, NULL, '2023-01-12 04:46:54');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `seo_title` varchar(255) NOT NULL,
  `seo_description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `show_homepage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `title`, `slug`, `blog_category_id`, `image`, `description`, `views`, `seo_title`, `seo_description`, `status`, `show_homepage`, `created_at`, `updated_at`) VALUES
(2, 1, 'Business-to-consumer that involves selling fight products and services', 'businesstoconsumer-that-involves-selling-fight-products-and-services', 2, 'uploads/custom-images/blog--2022-09-22-04-09-44-5529.jpg', '<p class=\"MsoNormal\" style=\"text-align:justify;line-height:115%\"><span style=\"font-size: 16px;\">Welcome to our dynamic B2C platform dedicated to offering top-notch fight products and services! At our online store, we pride ourselves on delivering a comprehensive range of high-quality equipment, training programs, and merchandise for enthusiasts and fighters alike. Whether you\'re a seasoned martial artist or a beginner looking to kickstart your journey, our curated selection ensures that you have access to the latest gear and expertise. Our commitment goes beyond just providing products; we aim to cultivate a vibrant community by offering educational content, organizing events, and fostering a space where fighters can connect and share experiences. With secure transactions, reliable shipping, and a customer-centric approach, we strive to enhance your fighting experience every step of the way. Join us in embracing the spirit of combat sports and take your passion to new heights with our unparalleled range of fight products and services!</span><br></p>', 25, 'Business-to-consumer that involves selling fight products and services', 'Business-to-consumer that involves selling fight products and services', 1, 1, '2022-09-22 10:09:44', '2023-12-13 15:48:56'),
(5, 1, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15-best-wordpress-newspaper-themes-to-look-out-for-in-2022', 5, 'uploads/custom-images/blog--2022-09-22-04-14-55-6716.jpg', '<p class=\"MsoNormal\" style=\"text-align:justify\"><span style=\"font-size:12.0pt;\r\nline-height:107%;font-family:&quot;Open Sans&quot;,sans-serif;color:#374151\">In 2022,\r\nWordPress users seeking dynamic and visually appealing newspaper-style websites\r\nhave a plethora of enticing options with the 15 Best WordPress Newspaper\r\nThemes. These themes, carefully curated for their features and design\r\naesthetics, offer a perfect blend of functionality and style. From responsive\r\nlayouts to customizable elements, each theme provides a unique user experience,\r\nensuring that news publishers, bloggers, and content creators can present their\r\nstories with flair. With modern design trends, intuitive navigation, and\r\ncompatibility with various plugins, these themes empower users to create\r\nengaging and professional news websites effortlessly. Whether you\'re aiming for\r\na classic, minimalist look or a bold, vibrant appearance, the 15 Best WordPress\r\nNewspaper Themes for 2022 cater to diverse preferences, promising an immersive\r\nreading experience for online audiences.</span><span style=\"font-size:\r\n12.0pt;line-height:107%;font-family:&quot;Open Sans&quot;,sans-serif\"></span></p>', 40, '15 Best WordPress Newspaper Themes to Look Out for in 2022', '15 Best WordPress Newspaper Themes to Look Out for in 2022', 1, 1, '2022-09-22 10:14:55', '2023-12-13 15:47:25');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Development', 'development', 1, '2022-09-22 10:05:56', '2022-09-22 10:05:56'),
(3, 'Guide', 'guide-', 1, '2022-09-22 10:06:06', '2022-09-22 10:06:06'),
(4, 'Inspiration', 'inspiration-', 1, '2022-09-22 10:06:13', '2022-09-22 10:06:13'),
(5, 'Latest News', 'latest-news', 1, '2022-09-22 10:06:25', '2022-09-22 10:06:25'),
(6, 'Revenue', 'revenue-', 1, '2022-09-22 10:06:37', '2022-09-22 10:06:37'),
(7, 'Start Up', 'start-up', 1, '2022-09-22 10:06:48', '2022-09-22 10:06:48'),
(8, 'Technology', 'technology', 1, '2022-09-22 10:06:56', '2022-09-22 10:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comments`
--

CREATE TABLE `blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_comments`
--

INSERT INTO `blog_comments` (`id`, `blog_id`, `name`, `email`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Roja', 'roja@mailinator.com', 'Very quality product', 1, '2022-09-25 07:43:47', '2024-01-25 09:34:32'),
(3, 5, 'Abinaya', 'abi@mailinator.com', 'customer service be good manner', 0, '2022-09-25 10:22:20', '2022-09-25 10:22:20'),
(5, 2, 'dora', 'dora@mailinator.com', 'Awesome!!!', 1, '2022-09-25 11:38:22', '2024-01-25 09:34:35'),
(6, 2, ' David', 'david@mailinator.com', 'very good Shop to buy Electronics', 0, '2022-09-25 11:39:26', '2022-09-25 11:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(13, 'Xiaomi', 'xiaomi', 'uploads/custom-images/xiaomi-2024-02-24-01-35-47-3200.png', 1, '2024-02-24 00:48:45', '2024-02-24 08:05:47'),
(14, 'Lenovo', 'lenovo', 'uploads/custom-images/lenovo-2024-02-24-01-38-00-1062.png', 1, '2024-02-24 08:08:00', '2024-02-24 08:08:00'),
(15, 'Apple', 'apple', 'uploads/custom-images/apple-2024-02-24-01-46-40-4714.png', 1, '2024-02-24 08:16:40', '2024-02-24 08:16:40'),
(16, 'Bestor', 'bestor', 'uploads/custom-images/bestor-2024-02-24-06-21-44-9068.png', 1, '2024-02-24 12:51:44', '2024-02-24 12:51:44'),
(17, 'mivi', 'mivi', 'uploads/custom-images/mivi-2024-02-24-06-59-26-9435.jpeg', 1, '2024-02-24 13:29:26', '2024-02-24 13:29:26'),
(18, 'Sony', 'sony', 'uploads/custom-images/sony-2024-02-24-07-00-22-4105.png', 1, '2024-02-24 13:30:22', '2024-02-24 13:30:22'),
(19, 'Zebronics', 'zebronics', 'uploads/custom-images/zebronics-2024-02-24-08-53-30-7608.png', 1, '2024-02-24 15:23:30', '2024-02-24 15:23:30'),
(20, 'samsung', 'samsung', 'uploads/custom-images/samsung-2024-02-24-09-20-08-2666.png', 1, '2024-02-24 15:50:08', '2024-02-24 15:50:08'),
(21, 'Vogue', 'vogue', 'uploads/custom-images/vogue-2024-02-24-09-28-59-5316.png', 1, '2024-02-24 15:58:59', '2024-02-24 15:58:59'),
(22, 'hp', 'hp', 'uploads/custom-images/hp-2024-02-24-10-10-36-9280.png', 1, '2024-02-24 16:40:36', '2024-02-24 16:40:36'),
(23, 'Sandisk', 'sandisk', 'uploads/custom-images/sandisk-2024-02-24-10-10-54-1168.png', 1, '2024-02-24 16:40:54', '2024-02-24 16:40:54'),
(24, 'one-plus', 'oneplus', 'uploads/custom-images/one-plus-2024-02-25-09-04-58-8719.jpg', 1, '2024-02-25 15:34:59', '2024-02-25 15:34:59'),
(25, 'Vivo', 'vivo', 'uploads/custom-images/vivo-2024-02-25-09-27-55-2191.jpg', 1, '2024-02-25 15:57:55', '2024-02-25 15:57:55'),
(26, 'Oppo', 'oppo', 'uploads/custom-images/oppo-2024-02-25-09-28-27-9108.png', 1, '2024-02-25 15:58:27', '2024-02-25 15:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `breadcrumb_images`
--

CREATE TABLE `breadcrumb_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `image_type` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `breadcrumb_images`
--

INSERT INTO `breadcrumb_images` (`id`, `location`, `image_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Brand Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-00-6529.jpg', NULL, '2022-02-11 09:19:03'),
(2, 'Cart Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-13-2295.jpg', NULL, '2022-02-11 09:19:16'),
(3, 'Campaign Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-26-4555.jpg', NULL, '2022-02-11 09:19:28'),
(4, 'FAQ page', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-38-5297.jpg', NULL, '2022-02-11 09:19:40'),
(5, 'User Authentication', 1, 'uploads/website-images/banner-us-2022-02-11-03-19-51-4946.jpg', NULL, '2022-02-11 09:19:53'),
(6, 'Compare Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-02-1928.jpg', NULL, '2022-02-11 09:20:04'),
(7, 'Order Tracking Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-16-5029.jpg', NULL, '2022-02-11 09:20:18'),
(8, 'Vendor Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-28-1461.jpg', NULL, '2022-02-11 09:20:30'),
(9, 'Shop Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-39-4557.jpg', NULL, '2022-02-11 09:20:41'),
(10, 'Blog page', 1, 'uploads/website-images/banner-us-2022-02-11-03-20-51-3046.jpg', NULL, '2022-02-11 09:20:54'),
(11, 'Flash Deal Page', 1, 'uploads/website-images/banner-us-2022-02-11-03-21-04-8636.jpg', NULL, '2022-02-11 09:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `icon`, `status`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Tablet', 'tablet', 'fas fa-tablet-alt', 1, 'uploads/custom-images/tablet-2024-02-25-05-19-10-5241.png', '2022-09-20 05:16:25', '2024-02-25 11:49:10'),
(2, 'Laptop', 'laptop', 'fas fa-laptop', 1, 'uploads/custom-images/laptop-2024-02-25-05-23-01-9053.png', '2022-09-20 05:16:50', '2024-02-25 11:53:01'),
(3, 'Mobile', 'mobile', 'fas fa-mobile', 1, 'uploads/custom-images/mobile-2024-02-25-05-23-20-2812.png', '2022-09-20 05:17:43', '2024-02-25 11:53:20'),
(4, 'Audio', 'audio', 'fab fa-speakap', 1, 'uploads/custom-images/audio-2024-02-25-05-23-45-6868.png', '2022-09-20 05:24:47', '2024-02-25 11:53:45'),
(10, 'Mobile  Accessories', 'mobile-accessories', 'fas fa-mobile-alt', 1, 'uploads/custom-images/mobile-accessories-2024-02-25-05-24-24-3229.png', '2022-09-20 06:05:41', '2024-02-25 11:54:24'),
(12, 'computer Accessories', 'computer-accessories', 'fas fa-user-secret', 1, 'uploads/custom-images/computer-accessories-2024-02-25-05-25-06-5537.png', '2024-01-31 01:57:26', '2024-02-25 11:55:06'),
(13, 'smart wearable watch', 'smart-wearable-watch', 'fas fa-stopwatch', 1, 'uploads/custom-images/smart-wearable-watch-2024-02-25-05-25-29-8269.png', '2024-01-31 01:59:51', '2024-02-25 11:55:29'),
(14, 'Desktop', 'desktop-service', 'fas fa-tablet-alt', 1, 'uploads/custom-images/desktop-2024-02-25-05-25-49-6654.png', '2024-01-31 22:22:35', '2024-02-25 11:55:49'),
(15, 'Camera & Acessories', 'camera-acessories', 'fas fa-camera', 1, 'uploads/custom-images/camera-acessories-2024-02-25-05-26-04-7504.png', '2024-01-31 22:32:00', '2024-02-25 11:56:04'),
(16, 'Storage', 'storage', 'fas fa-adjust', 1, 'uploads/custom-images/storage-2024-02-25-05-26-18-8641.png', '2024-01-31 23:17:41', '2024-02-25 11:56:35');

-- --------------------------------------------------------

--
-- Table structure for table `child_categories`
--

CREATE TABLE `child_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) NOT NULL,
  `sub_category_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `child_categories`
--

INSERT INTO `child_categories` (`id`, `category_id`, `sub_category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Samsung Galaxy Tab', 'samsung-galaxy-tab', 1, '2022-09-20 06:02:47', '2024-02-23 09:16:16'),
(2, 1, 1, 'Xiaomi Pad', 'xiaomi-pad-', 1, '2022-09-20 06:03:17', '2024-02-24 00:51:39'),
(3, 1, 3, 'Lenovo Yoga Tab', 'lenovo-yoga-tab', 1, '2022-09-20 07:13:18', '2024-02-23 09:20:05'),
(4, 2, 4, 'HP Spectre', 'hp-spectre', 1, '2022-09-20 07:13:29', '2024-02-23 09:21:40'),
(5, 2, 5, 'ASUS ROG Strix', 'asus-rog-strix', 1, '2022-09-20 07:13:41', '2024-02-23 09:22:26'),
(6, 2, 6, 'Lenovo ThinkPad', 'lenovo-thinkpad-', 1, '2022-09-20 07:13:51', '2024-02-23 09:23:21'),
(7, 3, 7, 'iPhone', 'iphone', 1, '2024-02-23 09:24:04', '2024-02-23 09:24:04'),
(8, 3, 8, 'Nokia', 'nokia', 1, '2024-02-23 09:26:57', '2024-02-23 09:27:52'),
(9, 3, 9, 'iPad', 'ipad', 1, '2024-02-23 09:28:45', '2024-02-23 09:28:45'),
(10, 4, 10, 'Over-ear Headphones', 'overear-headphones', 1, '2024-02-23 09:29:51', '2024-02-23 09:29:51'),
(11, 4, 21, 'Home Audio Systems', 'home-audio-systems', 1, '2024-02-23 09:30:37', '2024-02-23 09:30:37'),
(12, 1, 1, 'Xiaomi Pad 6 6 GB RAM 128 GB ROM 11.0 inch with Wi-Fi Only Tablet (Graphite grey)', 'xiaomi-pad-6-6-gb-ram-128-gb-rom-110-inch-with-wifi-only-tablet-graphite-grey', 1, '2024-02-24 08:09:59', '2024-02-24 08:09:59'),
(13, 4, 10, 'In- Ear Headphones', 'in-ear-headphones', 1, '2024-02-24 14:06:15', '2024-02-24 14:06:15'),
(14, 4, 21, 'Bluetooth Speaker', 'bluetooth-speaker', 1, '2024-02-24 14:14:41', '2024-02-24 14:14:41'),
(15, 4, 21, 'Computer Speaker', 'computer-speaker', 1, '2024-02-24 14:15:01', '2024-02-24 14:15:01'),
(16, 3, 7, 'Vivo', 'vivo', 1, '2024-02-25 16:11:14', '2024-02-25 16:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_state_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `country_state_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'India', 'thanjavur-city', 1, '2022-01-30 09:29:19', '2022-02-06 04:18:33'),
(2, 1, 'Thindugal', 'Thindugal', 1, '2022-01-30 09:29:29', '2022-02-06 04:20:30'),
(4, 2, 'kanchipuram', 'kanchipuram', 1, '2022-02-06 04:18:49', '2022-02-06 04:18:49'),
(5, 2, 'cuddalore-ot', 'cuddalore-ot', 1, '2022-02-06 04:19:56', '2022-02-06 04:19:56'),
(6, 1, 'madurai', 'madurai', 1, '2022-02-06 04:21:08', '2022-02-06 04:21:08'),
(7, 1, 'karur', 'karur', 1, '2022-02-06 04:21:26', '2022-02-06 04:21:26'),
(8, 4, 'Gandhinagar', 'gandhinagar', 1, '2022-02-06 04:22:21', '2022-02-06 04:22:21'),
(9, 5, 'tirunelveli', 'tirunelveli', 1, '2022-02-06 04:22:44', '2022-02-06 04:22:44'),
(10, 7, 'Nagarcoil', 'Nagarcoil', 1, '2022-02-06 04:23:12', '2022-02-06 04:23:12'),
(11, 7, 'thiruchy', 'thiruchy', 1, '2022-02-06 04:23:29', '2022-07-31 02:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `compare_products`
--

CREATE TABLE `compare_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compare_products`
--

INSERT INTO `compare_products` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(17, 7, 37, '2022-10-27 09:42:54', '2022-10-27 09:42:54'),
(18, 7, 4, '2022-11-21 12:25:03', '2022-11-21 12:25:03');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'hari', 'hari@gmail.com', NULL, 'send me your purchase code .  and then send me your admin access', 'asdfsdf', '2022-09-23 06:01:33', '2022-09-23 06:01:33'),
(2, 'Ibrahim ', 'agent@gmail.com', NULL, 'Subscribe Verification', 'tst', '2022-10-29 17:55:18', '2022-10-29 17:55:18'),
(3, 'John Doe', 'john@gmail.com', NULL, 'Subscribe Verification', 'test', '2022-10-29 19:07:00', '2022-10-29 19:07:00'),
(4, 'Ali', 'ali@ghmail.com', NULL, 'test', 'hello', '2023-04-18 11:37:29', '2023-04-18 11:37:29'),
(5, 'ramesh', 'ramesh@gmail.com', NULL, 'test subject', 'test message', '2023-05-02 05:12:36', '2023-05-02 05:12:36');

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `map` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `title`, `description`, `email`, `address`, `phone`, `map`, `created_at`, `updated_at`) VALUES
(1, 'Contact Information', 'Fill the form below or write us .We will help you as soon as possible.', 'kumar@gmail.com', 'Imperial Road,cuddalore', '+91 9874563210', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.94539481518!2d-74.26675559025064!3d40.69739290398433!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1656755618576!5m2!1sen!2sbd', '2022-09-22 11:08:24', '2022-09-22 11:08:24');

-- --------------------------------------------------------

--
-- Table structure for table `cookie_consents`
--

CREATE TABLE `cookie_consents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `border` varchar(255) DEFAULT NULL,
  `corners` varchar(255) DEFAULT NULL,
  `background_color` varchar(255) DEFAULT NULL,
  `text_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `btn_bg_color` varchar(255) DEFAULT NULL,
  `btn_text_color` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `link_text` varchar(255) DEFAULT NULL,
  `btn_text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cookie_consents`
--

INSERT INTO `cookie_consents` (`id`, `status`, `border`, `corners`, `background_color`, `text_color`, `border_color`, `btn_bg_color`, `btn_text_color`, `message`, `link_text`, `btn_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 1, 'thin', 'normal', '#184dec', '#fafafa', '#0a58d6', '#fffceb', '#222758', 'Our website uses cookies to make your experience better. By continuing to browse, you agree to their use. Cookies help us improve the site and offer personalized services. You can manage your preferences in your browser settings. Please note that disabling cookies may affect some features. Your privacy is important, and we handle your data in line with our privacy policy and regulations. Thank you for choosing us for your online shopping.', 'More Info', 'Yes', NULL, NULL, '2023-12-15 19:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'India', 'india', 1, '2022-01-30 09:28:39', '2022-01-30 09:28:39');

-- --------------------------------------------------------

--
-- Table structure for table `country_states`
--

CREATE TABLE `country_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_states`
--

INSERT INTO `country_states` (`id`, `country_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tamil Nadu', 'tamil-nadu', 1, '2022-01-30 09:29:00', '2024-01-25 09:31:54'),
(2, 1, 'thanjavur', 'thanjavur', 0, '2022-01-30 09:29:07', '2024-01-25 09:31:34'),
(3, 1, 'coimbatore', 'coimbatore', 0, '2022-02-05 07:49:14', '2024-01-25 09:31:32'),
(4, 2, 'chennai', 'chennai', 0, '2022-02-06 04:16:27', '2024-01-25 09:31:31'),
(5, 2, 'madurai', 'madurai', 0, '2022-02-06 04:16:39', '2024-01-25 09:31:30'),
(6, 2, 'kanyakumari', 'kanyakumari', 0, '2022-02-06 04:16:48', '2024-01-25 09:31:29'),
(7, 4, 'karur', 'karur', 0, '2022-02-06 04:17:35', '2024-01-25 09:31:28'),
(8, 4, 'vellore', 'vellore', 0, '2022-02-06 04:17:44', '2024-01-25 09:31:26'),
(9, 4, 'Kanchipuram', 'Kanchipuram', 0, '2022-02-06 04:17:53', '2024-01-25 09:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `offer_type` int(11) NOT NULL DEFAULT 0,
  `discount` double NOT NULL DEFAULT 0,
  `max_quantity` int(11) NOT NULL DEFAULT 0,
  `min_purchase_price` varchar(255) DEFAULT NULL,
  `expired_date` varchar(191) NOT NULL,
  `apply_qty` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `name`, `code`, `offer_type`, `discount`, `max_quantity`, `min_purchase_price`, `expired_date`, `apply_qty`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Happy New Year', 'newyear', 1, 10, 100, '200', '2025-12-10', 4, 1, '2022-11-16 02:18:50', '2023-05-02 05:05:41'),
(2, 'hema', 'hemapongal', 1, 5, 1, '5000', '2024-01-28', 0, 1, '2024-01-25 02:54:50', '2024-01-30 05:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'AFA', 'Afghan Afghani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'ALL', 'Albanian Lek', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'DZD', 'Algerian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'AOA', 'Angolan Kwanza', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'ARS', 'Argentine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'AMD', 'Armenian Dram', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'AWG', 'Aruban Florin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'AUD', 'Australian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'AZN', 'Azerbaijani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'BSD', 'Bahamian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'BHD', 'Bahraini Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'BDT', 'Bangladeshi Taka', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'BBD', 'Barbadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'BYR', 'Belarusian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'BEF', 'Belgian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'BZD', 'Belize Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'BMD', 'Bermudan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'BTN', 'Bhutanese Ngultrum', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'BTC', 'Bitcoin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'BOB', 'Bolivian Boliviano', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'BAM', 'Bosnia-Herzegovina Convertible Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'BWP', 'Botswanan Pula', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'BRL', 'Brazilian Real', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'GBP', 'British Pound Sterling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'BND', 'Brunei Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'BGN', 'Bulgarian Lev', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'BIF', 'Burundian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'KHR', 'Cambodian Riel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'CAD', 'Canadian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'CVE', 'Cape Verdean Escudo', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'KYD', 'Cayman Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'XOF', 'CFA Franc BCEAO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'XAF', 'CFA Franc BEAC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'XPF', 'CFP Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'CLP', 'Chilean Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'CNY', 'Chinese Yuan', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'COP', 'Colombian Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'KMF', 'Comorian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'CDF', 'Congolese Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'CRC', 'Costa Rican ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'HRK', 'Croatian Kuna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'CUC', 'Cuban Convertible Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'CZK', 'Czech Republic Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'DKK', 'Danish Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'DJF', 'Djiboutian Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'DOP', 'Dominican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'XCD', 'East Caribbean Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'EGP', 'Egyptian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'ERN', 'Eritrean Nakfa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'EEK', 'Estonian Kroon', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'ETB', 'Ethiopian Birr', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'EUR', 'Euro', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'FKP', 'Falkland Islands Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'FJD', 'Fijian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'GMD', 'Gambian Dalasi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'GEL', 'Georgian Lari', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'DEM', 'German Mark', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'GHS', 'Ghanaian Cedi', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'GIP', 'Gibraltar Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'GRD', 'Greek Drachma', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'GTQ', 'Guatemalan Quetzal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'GNF', 'Guinean Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'GYD', 'Guyanaese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'HTG', 'Haitian Gourde', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'HNL', 'Honduran Lempira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'HKD', 'Hong Kong Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'HUF', 'Hungarian Forint', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'ISK', 'Icelandic KrÃ³na', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'INR', 'Indian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'IDR', 'Indonesian Rupiah', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'IRR', 'Iranian Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'IQD', 'Iraqi Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'ILS', 'Israeli New Sheqel', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'ITL', 'Italian Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'JMD', 'Jamaican Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'JPY', 'Japanese Yen', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'JOD', 'Jordanian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'KZT', 'Kazakhstani Tenge', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'KES', 'Kenyan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'KWD', 'Kuwaiti Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'KGS', 'Kyrgystani Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'LAK', 'Laotian Kip', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'LVL', 'Latvian Lats', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'LBP', 'Lebanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'LSL', 'Lesotho Loti', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'LRD', 'Liberian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'LYD', 'Libyan Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'LTL', 'Lithuanian Litas', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'MOP', 'Macanese Pataca', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'MKD', 'Macedonian Denar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'MGA', 'Malagasy Ariary', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'MWK', 'Malawian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'MYR', 'Malaysian Ringgit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'MVR', 'Maldivian Rufiyaa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'MRO', 'Mauritanian Ouguiya', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'MUR', 'Mauritian Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'MXN', 'Mexican Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'MDL', 'Moldovan Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'MNT', 'Mongolian Tugrik', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'MAD', 'Moroccan Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'MZM', 'Mozambican Metical', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'MMK', 'Myanmar Kyat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'NAD', 'Namibian Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'NPR', 'Nepalese Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'ANG', 'Netherlands Antillean Guilder', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'TWD', 'New Taiwan Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'NZD', 'New Zealand Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'NIO', 'Nicaraguan CÃ³rdoba', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'NGN', 'Nigerian Naira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'KPW', 'North Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'NOK', 'Norwegian Krone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'OMR', 'Omani Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'PKR', 'Pakistani Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'PAB', 'Panamanian Balboa', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'PGK', 'Papua New Guinean Kina', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'PYG', 'Paraguayan Guarani', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'PEN', 'Peruvian Nuevo Sol', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'PHP', 'Philippine Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'PLN', 'Polish Zloty', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'QAR', 'Qatari Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'RON', 'Romanian Leu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'RUB', 'Russian Ruble', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'RWF', 'Rwandan Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'SVC', 'Salvadoran ColÃ³n', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'WST', 'Samoan Tala', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'SAR', 'Saudi Riyal', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'RSD', 'Serbian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'SCR', 'Seychellois Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'SLL', 'Sierra Leonean Leone', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'SGD', 'Singapore Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'SKK', 'Slovak Koruna', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'SBD', 'Solomon Islands Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'SOS', 'Somali Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'ZAR', 'South African Rand', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'KRW', 'South Korean Won', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'XDR', 'Special Drawing Rights', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'LKR', 'Sri Lankan Rupee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'SHP', 'St. Helena Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'SDG', 'Sudanese Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'SRD', 'Surinamese Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'SZL', 'Swazi Lilangeni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'SEK', 'Swedish Krona', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'CHF', 'Swiss Franc', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'SYP', 'Syrian Pound', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'STD', 'São Tomé and Príncipe Dobra', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'TJS', 'Tajikistani Somoni', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'TZS', 'Tanzanian Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'THB', 'Thai Baht', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'TOP', 'Tongan pa\'anga', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'TTD', 'Trinidad & Tobago Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'TND', 'Tunisian Dinar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'TRY', 'Turkish Lira', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'TMT', 'Turkmenistani Manat', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'UGX', 'Ugandan Shilling', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'UAH', 'Ukrainian Hryvnia', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'AED', 'United Arab Emirates Dirham', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'UYU', 'Uruguayan Peso', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'USD', 'US Dollar', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'UZS', 'Uzbekistan Som', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'VUV', 'Vanuatu Vatu', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'VEF', 'Venezuelan BolÃ­var', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'VND', 'Vietnamese Dong', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'YER', 'Yemeni Rial', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'ZMK', 'Zambian Kwacha', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currency_countries`
--

CREATE TABLE `currency_countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `currency_countries`
--

INSERT INTO `currency_countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Andorra', 'AD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Afghanistan', 'AF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Åland Islands', 'AX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Albania', 'AL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Algeria', 'DZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'American Samoa', 'AS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Angola', 'AO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Anguilla', 'AI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Antarctica', 'AQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Antigua and Barbuda', 'AG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Argentina', 'AR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Armenia', 'AM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Aruba', 'AW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Australia', 'AU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Austria', 'AT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Azerbaijan', 'AZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Bahamas', 'BS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Bahrain', 'BH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Bangladesh', 'BD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Barbados', 'BB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Belarus', 'BY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Belgium', 'BE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Belize', 'BZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Benin', 'BJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Bermuda', 'BM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Bhutan', 'BT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Bolivia (Plurinational State of)', 'BO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Bonaire, Sint Eustatius and Saba', 'BQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Bosnia and Herzegovina', 'BA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Botswana', 'BW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Bouvet Island', 'BV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Brazil', 'BR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'British Indian Ocean Territory', 'IO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Brunei Darussalam', 'BN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Bulgaria', 'BG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Burkina Faso', 'BF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Burundi', 'BI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Cabo Verde', 'CV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Cambodia', 'KH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Cameroon', 'CM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Canada', 'CA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Cayman Islands', 'KY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Central African Republic', 'CF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Chad', 'TD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Chile', 'CL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'China', 'CN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Christmas Island', 'CX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Cocos (Keeling) Islands', 'CC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Colombia', 'CO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Comoros', 'KM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Congo', 'CG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Congo (Democratic Republic of the)', 'CD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Cook Islands', 'CK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Costa Rica', 'CR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Côte d\'Ivoire', 'CI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Croatia', 'HR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Cuba', 'CU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Curaçao', 'CW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Cyprus', 'CY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Czech Republic', 'CZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Denmark', 'DK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Djibouti', 'DJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Dominica', 'DM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Dominican Republic', 'DO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Ecuador', 'EC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Egypt', 'EG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'El Salvador', 'SV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'Equatorial Guinea', 'GQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'Eritrea', 'ER', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'Estonia', 'EE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'Ethiopia', 'ET', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'Falkland Islands (Malvinas)', 'FK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'Faroe Islands', 'FO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'Fiji', 'FJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'Finland', 'FI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'France', 'FR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'French Guiana', 'GF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'French Polynesia', 'PF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'French Southern Territories', 'TF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'Gabon', 'GA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'Gambia', 'GM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'Georgia', 'GE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'Germany', 'DE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'Ghana', 'GH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 'Gibraltar', 'GI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 'Greece', 'GR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 'Greenland', 'GL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 'Grenada', 'GD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 'Guadeloupe', 'GP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 'Guam', 'GU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 'Guatemala', 'GT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 'Guernsey', 'GG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 'Guinea', 'GN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 'Guinea-Bissau', 'GW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 'Guyana', 'GY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 'Haiti', 'HT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 'Heard Island and McDonald Islands', 'HM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 'Holy See', 'VA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 'Honduras', 'HN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 'Hong Kong', 'HK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 'Hungary', 'HU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 'Iceland', 'IS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 'India', 'IN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 'Indonesia', 'ID', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 'Iran (Islamic Republic of)', 'IR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 'Iraq', 'IQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 'Ireland', 'IE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 'Isle of Man', 'IM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 'Israel', 'IL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 'Italy', 'IT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 'Jamaica', 'JM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 'Japan', 'JP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 'Jersey', 'JE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 'Jordan', 'JO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 'Kazakhstan', 'KZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 'Kenya', 'KE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 'Kiribati', 'KI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 'Korea (Democratic People\'s Republic of)', 'KP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 'Korea (Republic of)', 'KR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 'Kuwait', 'KW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 'Kyrgyzstan', 'KG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 'Lao People\'s Democratic Republic', 'LA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 'Latvia', 'LV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 'Lebanon', 'LB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 'Lesotho', 'LS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 'Liberia', 'LR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 'Libya', 'LY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 'Liechtenstein', 'LI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 'Lithuania', 'LT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 'Luxembourg', 'LU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 'Macao', 'MO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 'Macedonia (the former Yugoslav Republic of)', 'MK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 'Madagascar', 'MG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 'Malawi', 'MW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 'Malaysia', 'MY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 'Maldives', 'MV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 'Mali', 'ML', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 'Malta', 'MT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 'Marshall Islands', 'MH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 'Martinique', 'MQ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 'Mauritania', 'MR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 'Mauritius', 'MU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 'Mayotte', 'YT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 'Mexico', 'MX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 'Micronesia (Federated States of)', 'FM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 'Moldova (Republic of)', 'MD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 'Monaco', 'MC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 'Mongolia', 'MN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 'Montenegro', 'ME', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 'Montserrat', 'MS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 'Morocco', 'MA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 'Mozambique', 'MZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 'Myanmar', 'MM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 'Namibia', 'NA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 'Nauru', 'NR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 'Nepal', 'NP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 'Netherlands', 'NL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 'New Caledonia', 'NC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 'New Zealand', 'NZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 'Nicaragua', 'NI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 'Niger', 'NE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 'Nigeria', 'NG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 'Niue', 'NU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 'Norfolk Island', 'NF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 'Northern Mariana Islands', 'MP', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 'Norway', 'NO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 'Oman', 'OM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 'Pakistan', 'PK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 'Palau', 'PW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 'Palestine, State of', 'PS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 'Panama', 'PA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 'Papua New Guinea', 'PG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 'Paraguay', 'PY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 'Peru', 'PE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 'Philippines', 'PH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 'Pitcairn', 'PN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 'Poland', 'PL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 'Portugal', 'PT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 'Puerto Rico', 'PR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 'Qatar', 'QA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 'Réunion', 'RE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 'Romania', 'RO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 'Russian Federation', 'RU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 'Rwanda', 'RW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 'Saint Barthélemy', 'BL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 'Saint Helena, Ascension and Tristan da Cunha', 'SH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 'Saint Kitts and Nevis', 'KN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 'Saint Lucia', 'LC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 'Saint Martin (French part)', 'MF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 'Saint Pierre and Miquelon', 'PM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 'Saint Vincent and the Grenadines', 'VC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 'Samoa', 'WS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 'San Marino', 'SM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 'Sao Tome and Principe', 'ST', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 'Saudi Arabia', 'SA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 'Senegal', 'SN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 'Serbia', 'RS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 'Seychelles', 'SC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 'Sierra Leone', 'SL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 'Singapore', 'SG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 'Sint Maarten (Dutch part)', 'SX', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 'Slovakia', 'SK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 'Slovenia', 'SI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 'Solomon Islands', 'SB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 'Somalia', 'SO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 'South Africa', 'ZA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 'South Georgia and the South Sandwich Islands', 'GS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 'South Sudan', 'SS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 'Spain', 'ES', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 'Sri Lanka', 'LK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 'Sudan', 'SD', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 'Suriname', 'SR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 'Svalbard and Jan Mayen', 'SJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 'Swaziland', 'SZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 'Sweden', 'SE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 'Switzerland', 'CH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 'Syrian Arab Republic', 'SY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 'Taiwan, Province of China', 'TW', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 'Tajikistan', 'TJ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 'Tanzania, United Republic of', 'TZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 'Thailand', 'TH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 'Timor-Leste', 'TL', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 'Togo', 'TG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 'Tokelau', 'TK', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 'Tonga', 'TO', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 'Trinidad and Tobago', 'TT', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 'Tunisia', 'TN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 'Turkey', 'TR', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 'Turkmenistan', 'TM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 'Turks and Caicos Islands', 'TC', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 'Tuvalu', 'TV', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 'Uganda', 'UG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 'Ukraine', 'UA', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 'United Arab Emirates', 'AE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 'United Kingdom of Great Britain and Northern Ireland', 'GB', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 'Indiaes Minor Outlying Islands', 'UM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 'Indiaes of America', 'US', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 'Uruguay', 'UY', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 'Uzbekistan', 'UZ', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 'Vanuatu', 'VU', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 'Venezuela (Bolivarian Republic of)', 'VE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 'Viet Nam', 'VN', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 'Virgin Islands (British)', 'VG', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 'Virgin Islands (U.S.)', 'VI', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 'Wallis and Futuna', 'WF', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 'Western Sahara', 'EH', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 'Yemen', 'YE', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 'Zambia', 'ZM', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 'Zimbabwe', 'ZW', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `custom_pages`
--

CREATE TABLE `custom_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` longtext NOT NULL,
  `slug` varchar(191) NOT NULL,
  `description` longtext NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_pages`
--

INSERT INTO `custom_pages` (`id`, `page_name`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'kibatu', 'kibatu', '<p>beeyi nsaamu saamu bjajdbjas fdn ajsfbasf</p>', 1, '2022-11-20 22:43:08', '2022-11-23 07:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `custom_paginations`
--

CREATE TABLE `custom_paginations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_paginations`
--

INSERT INTO `custom_paginations` (`id`, `page_name`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Blog Page', 4, NULL, '2022-11-18 02:19:18'),
(2, 'Product Page', 12, NULL, '2022-11-18 02:22:39'),
(3, 'Brand Page', 10, NULL, '2022-06-11 11:13:13'),
(4, 'Blog Comment', 4, NULL, '2022-06-11 11:13:13'),
(5, 'Product Review', 8, NULL, '2022-06-11 11:13:13'),
(6, 'Seller page', 8, NULL, '2022-06-11 11:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_reviews`
--

CREATE TABLE `delivery_man_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_withdraws`
--

CREATE TABLE `delivery_man_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text NOT NULL,
  `approved_date` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_man_withdraws`
--

INSERT INTO `delivery_man_withdraws` (`id`, `delivery_man_id`, `method`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `approved_date`, `status`, `created_at`, `updated_at`) VALUES
(5, 1, 'Rocket', 100, 95, 5, '01745738777', NULL, 0, '2023-04-03 15:32:29', '2023-04-03 15:32:29'),
(6, 1, 'Rocket', 100, 95, 5, 'test', NULL, 0, '2023-04-03 20:40:51', '2023-04-03 20:40:51'),
(7, 1, 'Rocket', 102, 96.9, 5.1, 'info', NULL, 0, '2023-04-06 16:33:40', '2023-04-06 16:33:40'),
(8, 1, 'Rocket', 100, 95, 5, 'test', NULL, 0, '2023-04-10 18:53:00', '2023-04-10 18:53:00'),
(9, 1, 'Rocket', 100, 95, 5, 'Okkk', NULL, 0, '2023-04-30 12:01:52', '2023-04-30 12:01:52'),
(10, 1, 'Rocket', 100, 95, 5, 'Payment', NULL, 0, '2023-05-01 04:23:16', '2023-05-01 04:23:16');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_man_withdraw_methods`
--

CREATE TABLE `delivery_man_withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `min_amount` double NOT NULL DEFAULT 0,
  `max_amount` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_man_withdraw_methods`
--

INSERT INTO `delivery_man_withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `withdraw_charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rocket', 20, 1000, 5, '<p>Ok</p>', 1, '2023-03-29 09:27:35', '2023-05-02 04:13:46'),
(2, 'bKash', 10, 200, 18, '<p>bKash bank account number</p>', 1, '2023-05-02 04:13:35', '2023-05-02 04:13:35');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_men`
--

CREATE TABLE `delivery_men` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `man_image` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `man_type` varchar(255) NOT NULL,
  `idn_type` varchar(255) NOT NULL,
  `idn_num` varchar(255) NOT NULL,
  `idn_image` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_men`
--

INSERT INTO `delivery_men` (`id`, `man_image`, `fname`, `lname`, `email`, `man_type`, `idn_type`, `idn_num`, `idn_image`, `phone`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uploads/custom-images/man--2023-05-01-10-25-11-7429.jpg', 'Sarah', 'Jahan', 'deliveryman@gmail.com', 'passport', 'driving license', '33032178345', 'uploads/custom-images/identity--2023-03-29-01-35-00-3097.png', '012456238', '$2y$10$2zHT3QNLwJj3YNXw9ITgnO.6s8PMNDJQg72LJEhDTiQF.0deBdPDu', 1, '2023-03-29 07:35:01', '2023-05-01 04:25:11');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_messages`
--

CREATE TABLE `delivery_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sent_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `delivery_messages`
--

INSERT INTO `delivery_messages` (`id`, `delivery_man_id`, `customer_id`, `order_id`, `message`, `sent_by`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 44, 'Hlw', 'deliveryman', '2023-03-29 10:34:25', '2023-03-29 10:34:25'),
(2, 1, 7, 44, 'Hi', 'customer', '2023-03-30 02:35:20', '2023-03-30 02:35:20'),
(3, 1, 7, 44, 'Your address', 'deliveryman', '2023-03-30 02:37:03', '2023-03-30 02:37:03'),
(4, 1, 7, 44, 'Mirpur 10, kajipara', 'customer', '2023-03-30 02:37:38', '2023-03-30 02:37:38'),
(5, 1, 7, 44, 'Your location', 'customer', '2023-03-30 03:20:35', '2023-03-30 03:20:35'),
(6, 1, 7, 44, 'hlw', 'customer', '2023-03-30 04:23:41', '2023-03-30 04:23:41'),
(7, 1, 7, 44, 'Hi', 'customer', '2023-03-30 04:31:59', '2023-03-30 04:31:59'),
(8, 1, 7, 44, 'Hlw', 'deliveryman', '2023-03-30 04:32:18', '2023-03-30 04:32:18'),
(9, 1, 7, 44, 'OK', 'customer', '2023-03-30 04:35:38', '2023-03-30 04:35:38'),
(10, 0, 5, 29, 'ha ha', 'deliveryman', '2023-03-30 18:39:25', '2023-03-30 18:39:25');

-- --------------------------------------------------------

--
-- Table structure for table `email_configurations`
--

CREATE TABLE `email_configurations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mail_type` tinyint(4) DEFAULT NULL,
  `mail_host` varchar(255) DEFAULT NULL,
  `mail_port` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `smtp_username` varchar(255) DEFAULT NULL,
  `smtp_password` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_configurations`
--

INSERT INTO `email_configurations` (`id`, `mail_type`, `mail_host`, `mail_port`, `email`, `smtp_username`, `smtp_password`, `mail_encryption`, `created_at`, `updated_at`) VALUES
(1, 2, 'mail.brandmarrow.com.bd', '465', 'shopo_test_user@brandmarrow.com.bd', 'shopotest_user@brandmarrow.com.bd', 'shopotest%password', 'ssl', NULL, '2023-05-01 12:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Password Reset', 'Password Reset', '<h4>Dear <b>{{name}}</b>,</h4>\\r\\n    <p>Do you want to reset your password? Please Copy and past this code</p>', NULL, '2022-06-11 10:43:01'),
(2, 'Contact Email', 'Contact Email', '<p>Name: <b>{{name}}</b></p><p>\r\n\r\nEmail: <b>{{email}}</b></p><p>\r\n\r\nPhone: <b>{{phone}}</b></p><p><span style=\"background-color: transparent;\">Subject: <b>{{subject}}</b></span></p><p>\r\n\r\nMessage: <b>{{message}}</b></p>', NULL, '2021-12-10 23:44:34'),
(3, 'Subscribe Notification', 'Subscribe Notification', '<h2><b>Hi there</b>,</h2><p>\r\nCongratulations! Your Subscription has been created successfully. Please copy and past this code and Verified Your Subscription. If you won\'t verified, after 24hourse your subscription will be deny</p>', NULL, '2021-12-10 23:44:53'),
(4, 'User Verification', 'User Verification', '<p>Dear <b>{{user_name}}</b>,\r\n</p><p>Congratulations! Your Account has been created successfully. Please copy and past and Active your Account.</p>', NULL, '2021-12-10 23:45:25'),
(5, 'Seller Withdraw', 'Seller Withdraw Approval', '<p>Hi <b>{{seller_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', NULL, '2021-12-26 03:24:45'),
(6, 'Order Successfully', 'Order Successfully', '<p>Hi {{user_name}},</p><p> \r\nThanks for your new order. Your order id has been submited .</p><p>Total Amount : {{total_amount}},</p><p>Payment Method : {{payment_method}},</p><p>Payment Status : {{payment_status}},</p><p>Order Status : {{order_status}},</p><p>Order Date: {{order_date}},</p><p>Order Detail: {{order_detail}}</p>', NULL, '2022-01-10 21:37:03'),
(7, 'Seller Request Approved', 'Seller Request Approved', '<p>Hi {{name}},\r\n</p><p><span style=\"background-color: transparent;\">Congratulations !!&nbsp;</span>Your Shop account has been approved successfully</p>', NULL, '2022-02-05 08:59:34'),
(8, 'Delivery Man Withdraw', 'Delivery Man Withdraw Approval', '<p>Hi <b>{{delivery_man_name}}</b>,</p><p>Your withdraw Request Approval successfully. Please check your account.</p><p>Withdraw Details:</p><p>Withdraw method : <b>{{withdraw_method}}</b>,</p><p>Total Amount :<b> {{total_amount}}</b>,</p><p>Withdraw charge : <b>{{withdraw_charge}}</b>,</p><p>Withdraw&nbsp; Amount : <b>{{withdraw_amount}}</b>,</p><p>Approval Date :<b> {{approval_date}}</b></p>', '2023-03-29 09:35:53', '2023-03-29 09:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `error_pages`
--

CREATE TABLE `error_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `header` varchar(255) NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `error_pages`
--

INSERT INTO `error_pages` (`id`, `page_name`, `image`, `header`, `button_text`, `created_at`, `updated_at`) VALUES
(1, '404 page', '404.jpg', 'test header', 'Go to Home', NULL, '2022-09-20 08:24:13'),
(2, '500 Error', '500.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 09:46:52'),
(3, '505 Error', '505.jpg', 'That Page Doesn\'t Exist!', 'Go to Home', NULL, '2021-12-06 09:46:57');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_comments`
--

CREATE TABLE `facebook_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` varchar(255) DEFAULT NULL,
  `comment_type` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_comments`
--

INSERT INTO `facebook_comments` (`id`, `app_id`, `comment_type`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, NULL, '2022-06-11 11:07:29');

-- --------------------------------------------------------

--
-- Table structure for table `facebook_pixels`
--

CREATE TABLE `facebook_pixels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `app_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facebook_pixels`
--

INSERT INTO `facebook_pixels` (`id`, `status`, `app_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'fsdf45sdf4sdf', NULL, '2022-06-11 11:17:42');

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(2, 'how to download wordpress', '<ol class=\"X5LH0c\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; color: rgb(32, 33, 36); font-family: &quot;Google Sans&quot;, arial, sans-serif; font-size: 16px;\"><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Download WAMP.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Define Your Default Browser.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Launch phpMyAdmin and Log In.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Create a Database and Install WordPress.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Visit Your Testing Site.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Download and Install MAMP.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Customize Your Preferences.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Download WordPress and Move It to the Root Directory.</li></ol>', 1, '2022-09-22 13:27:39', '2023-12-13 17:20:09'),
(3, 'how to download elementor', '<b>Head over to elementor.com and click on the “Free Download” button on the top of the page.</b><ol class=\"X5LH0c\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">A popup box will appear for you to enter your email. ...</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Now head over to your WordPress website and log in. ...</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">Now click on the “Upload Plugin” button and choose the file you\'ve downloaded for Elementor.</li><li class=\"TrT0Xe\" style=\"margin: 0px 0px 4px; padding: 0px; list-style: inherit;\">From WordPress Dashboard.</li></ol>', 1, '2022-09-22 13:28:08', '2023-12-13 17:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `featured_categories`
--

CREATE TABLE `featured_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_categories`
--

INSERT INTO `featured_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 10, '2022-09-21 08:43:30', '2022-09-21 08:43:30'),
(3, 3, '2024-01-31 22:25:17', '2024-01-31 22:25:17'),
(4, 12, '2024-01-31 22:25:35', '2024-01-31 22:25:35'),
(5, 13, '2024-01-31 22:25:53', '2024-01-31 22:25:53');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sales`
--

CREATE TABLE `flash_sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `homepage_image` varchar(255) NOT NULL,
  `flashsale_page_image` varchar(255) NOT NULL,
  `end_time` datetime NOT NULL,
  `offer` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sales`
--

INSERT INTO `flash_sales` (`id`, `title`, `homepage_image`, `flashsale_page_image`, `end_time`, `offer`, `status`, `created_at`, `updated_at`) VALUES
(1, 'WOO! Flash Sale', 'uploads/website-images/flash_sale--2022-09-25-04-09-21-6554.png', 'uploads/website-images/flash_sale--2022-09-20-10-54-12-8555.png', '2025-09-14 14:57:00', 10, 1, NULL, '2022-11-21 17:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale_products`
--

CREATE TABLE `flash_sale_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale_products`
--

INSERT INTO `flash_sale_products` (`id`, `product_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-09-20 08:02:41', '2022-09-20 08:02:41'),
(2, 2, 1, '2022-09-20 08:02:45', '2022-09-20 08:02:45'),
(3, 3, 1, '2022-09-20 08:02:48', '2022-11-22 22:13:00'),
(4, 4, 1, '2022-09-20 08:02:52', '2022-09-20 08:02:52'),
(5, 8, 1, '2022-09-20 08:02:56', '2022-09-20 08:02:56'),
(6, 9, 1, '2022-09-20 08:03:01', '2022-09-20 08:03:01'),
(7, 11, 1, '2022-09-20 08:03:05', '2022-09-20 08:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `flutterwaves`
--

CREATE TABLE `flutterwaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `public_key` text NOT NULL,
  `secret_key` text NOT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flutterwaves`
--

INSERT INTO `flutterwaves` (`id`, `public_key`, `secret_key`, `currency_rate`, `country_code`, `currency_code`, `title`, `logo`, `status`, `created_at`, `updated_at`) VALUES
(1, 'FLWPUBK_TEST-5760e3ff9888aa1ab5e5cd1ec3f99cb1-X', 'FLWSECK_TEST-81cb5da016d0a51f7329d4a8057e766d-X', 417.35, 'NG', 'NGN', 'Ecommerce', 'uploads/website-images/flutterwave-2021-12-30-03-44-30-8813.jpg', 1, NULL, '2022-02-07 02:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `footers`
--

CREATE TABLE `footers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_us` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `first_column` varchar(255) DEFAULT NULL,
  `second_column` varchar(255) DEFAULT NULL,
  `third_column` varchar(255) DEFAULT NULL,
  `copyright` varchar(191) DEFAULT NULL,
  `payment_image` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footers`
--

INSERT INTO `footers` (`id`, `about_us`, `phone`, `email`, `address`, `first_column`, `second_column`, `third_column`, `copyright`, `payment_image`, `created_at`, `updated_at`) VALUES
(1, 'We know there are a lot of developers our but we pride into a firm in the industry.', '+91 00000000', 'globo@gmail.com', 'Imperial Road,cuddalore', 'Feature', 'General Links', 'Helpful', '©2023 Scode Software Solutions All rights reserved', 'uploads/website-images/payment-card-2022-09-26-12-59-29-8933.png', NULL, '2024-01-25 09:16:40');

-- --------------------------------------------------------

--
-- Table structure for table `footer_links`
--

CREATE TABLE `footer_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `column` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_links`
--

INSERT INTO `footer_links` (`id`, `column`, `link`, `title`, `created_at`, `updated_at`) VALUES
(1, '1', '/about', 'About Us', '2022-09-20 08:19:02', '2022-11-17 23:48:53'),
(2, '1', '/terms-condition', 'Terms Condition', '2022-09-20 08:19:15', '2022-11-17 23:48:57'),
(3, '1', '/products?highlight=best_product', 'Best Products', '2022-09-20 08:19:24', '2022-11-17 23:50:38'),
(4, '2', '/blogs', 'Blog', '2022-09-20 08:19:38', '2022-11-17 23:49:16'),
(5, '2', '/sellers', 'shop', '2022-09-20 08:19:46', '2022-11-17 23:49:24'),
(6, '2', '/faq', 'Support', '2022-09-20 08:19:52', '2022-11-17 23:49:30'),
(7, '3', '/about', 'About Us', '2022-09-20 08:20:05', '2022-11-17 23:49:38'),
(8, '3', '/products?highlight=popular_category', 'Popular Category', '2022-09-20 08:20:11', '2022-11-17 23:49:48'),
(9, '3', '/contact', 'Contact Us', '2022-09-20 08:20:19', '2022-11-17 23:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `footer_social_links`
--

CREATE TABLE `footer_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `footer_social_links`
--

INSERT INTO `footer_social_links` (`id`, `link`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/', 'fab fa-facebook-f', '2022-09-20 08:18:12', '2022-09-20 08:18:12'),
(2, 'https://twitter.com/mexuv', 'fab fa-twitter', '2022-09-20 08:18:29', '2022-09-28 04:35:50'),
(3, 'https://linkedin.com/', 'fab fa-linkedin', '2022-09-20 08:18:43', '2022-09-20 08:18:43');

-- --------------------------------------------------------

--
-- Table structure for table `google_analytics`
--

CREATE TABLE `google_analytics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `analytic_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_analytics`
--

INSERT INTO `google_analytics` (`id`, `analytic_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '5248-fd-5fds', 1, NULL, '2022-06-11 11:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `google_recaptchas`
--

CREATE TABLE `google_recaptchas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_key` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_recaptchas`
--

INSERT INTO `google_recaptchas` (`id`, `site_key`, `secret_key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test', 1, NULL, '2023-12-13 15:58:03');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_one_visibilities`
--

CREATE TABLE `home_page_one_visibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default_name` varchar(255) NOT NULL,
  `section_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `qty` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_page_one_visibilities`
--

INSERT INTO `home_page_one_visibilities` (`id`, `default_name`, `section_name`, `status`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'Slider', 'Slider', 1, 6, NULL, '2022-06-14 06:30:37'),
(2, 'Our Service', 'Our Service', 1, 6, NULL, '2022-06-14 06:29:47'),
(4, 'Popular Category', 'Popular Categories', 1, 24, NULL, '2022-06-14 06:29:47'),
(5, 'Brand', 'Our Brand', 1, 12, NULL, '2022-06-14 06:29:47'),
(6, 'Top Rated Product', 'Top Rated Product', 1, 16, NULL, '2022-06-14 06:29:47'),
(7, 'Best Seller', 'Best Sellers', 1, 8, NULL, '2022-06-14 06:29:47'),
(8, 'Featured Product', 'Featured Products', 1, 15, NULL, '2022-06-14 06:29:47'),
(9, 'New Arrival', 'New Arrival', 1, 19, NULL, '2022-06-14 06:29:47'),
(10, 'Best Product', 'Best Product', 1, 16, NULL, '2022-06-14 06:29:47');

-- --------------------------------------------------------

--
-- Table structure for table `instamojo_payments`
--

CREATE TABLE `instamojo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `api_key` text NOT NULL,
  `auth_token` text NOT NULL,
  `currency_rate` varchar(255) NOT NULL DEFAULT '1',
  `account_mode` varchar(255) NOT NULL DEFAULT 'Sandbox',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instamojo_payments`
--

INSERT INTO `instamojo_payments` (`id`, `api_key`, `auth_token`, `currency_rate`, `account_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'test_5f4a2c9a58ef216f8a1a688910f', 'test_994252ada69ce7b3d282b9941c2', '74.66', 'Sandbox', 1, NULL, '2022-02-07 02:32:41');

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `stock_in` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `product_id`, `stock_in`, `created_at`, `updated_at`) VALUES
(2, 12, '230', '2023-01-12 09:36:10', '2023-01-12 09:36:10'),
(3, 12, '555', '2023-01-12 09:36:16', '2023-01-12 09:36:16'),
(6, 13, '100', '2023-01-12 09:59:48', '2023-01-12 09:59:48'),
(8, 13, '80', '2023-01-12 10:00:39', '2023-01-12 10:00:39'),
(10, 36, '10', '2023-01-12 10:24:07', '2023-01-12 10:24:07'),
(11, 37, '100', '2023-01-12 10:25:21', '2023-01-12 10:25:21'),
(12, 37, '800', '2023-01-12 10:25:28', '2023-01-12 10:25:28'),
(13, 13, '4', '2024-01-25 02:51:25', '2024-01-25 02:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `maintainance_texts`
--

CREATE TABLE `maintainance_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `maintainance_texts`
--

INSERT INTO `maintainance_texts` (`id`, `status`, `image`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 'uploads/website-images/maintainance-mode-2022-09-20-02-13-54-5890.png', 'We are upgrading our site.  We will come back soon.  \r\nThank you.', NULL, '2024-01-25 03:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_categories`
--

CREATE TABLE `mega_menu_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_categories`
--

INSERT INTO `mega_menu_categories` (`id`, `category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2022-09-20 07:06:01', '2022-11-22 07:49:52'),
(2, 2, 1, 2, '2022-09-20 07:07:39', '2022-09-20 07:07:39'),
(3, 10, 1, 3, '2022-09-20 07:11:07', '2022-09-20 07:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `mega_menu_sub_categories`
--

CREATE TABLE `mega_menu_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mega_menu_category_id` int(11) NOT NULL,
  `sub_category_id` int(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mega_menu_sub_categories`
--

INSERT INTO `mega_menu_sub_categories` (`id`, `mega_menu_category_id`, `sub_category_id`, `status`, `serial`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, '2022-09-20 07:06:23', '2022-09-20 07:06:23'),
(2, 1, 2, 1, 2, '2022-09-20 07:06:34', '2022-09-20 07:06:34'),
(3, 1, 3, 1, 3, '2022-09-20 07:06:47', '2022-09-20 07:06:47'),
(4, 2, 4, 1, 1, '2022-09-20 07:10:04', '2022-09-20 07:10:04'),
(5, 2, 5, 1, 2, '2022-09-20 07:10:18', '2022-09-20 07:10:18'),
(6, 2, 6, 1, 3, '2022-09-20 07:10:29', '2022-09-20 07:10:29'),
(7, 3, 7, 1, 1, '2022-09-20 07:12:13', '2022-09-20 07:12:13'),
(8, 3, 8, 1, 2, '2022-09-20 07:12:22', '2022-09-20 07:12:22'),
(9, 3, 9, 1, 3, '2022-09-20 07:12:29', '2022-09-20 07:12:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_visibilities`
--

CREATE TABLE `menu_visibilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_visibilities`
--

INSERT INTO `menu_visibilities` (`id`, `menu_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Home', 1, NULL, '2022-01-23 20:05:32'),
(2, 'Shop', 1, NULL, '2022-01-23 20:05:31'),
(3, 'Mega Menu', 1, NULL, '2022-01-16 20:51:23'),
(4, 'Sellers', 1, NULL, '2022-01-16 20:52:31'),
(5, 'Blog', 1, NULL, '2022-01-16 20:52:32'),
(6, 'Campaign', 1, NULL, '2022-01-16 20:52:33'),
(7, 'Pages', 1, NULL, '2022-01-16 20:52:34'),
(8, 'About us', 1, NULL, '2022-01-16 20:57:27'),
(9, 'Contact Us', 1, NULL, '2022-01-16 20:57:28'),
(10, 'Checkout', 1, NULL, '2022-01-16 20:57:29'),
(11, 'Brand', 1, NULL, '2022-01-16 20:57:25'),
(12, 'FAQ', 1, NULL, '2022-01-16 20:57:26'),
(13, 'Privacy Policy', 1, NULL, '2022-01-16 20:57:23'),
(14, 'Terms and Conditions', 1, NULL, '2022-01-16 20:57:22'),
(15, 'Track Order', 1, NULL, '2022-01-16 20:52:29'),
(16, 'Flash Deal', 1, NULL, '2022-01-16 20:52:28'),
(17, 'My Account', 1, NULL, '2022-01-16 20:04:54'),
(18, 'Login/Register', 1, NULL, '2022-01-16 20:04:47'),
(19, 'Shopping Cart', 1, NULL, '2022-01-16 20:09:28'),
(20, 'Compare', 1, NULL, '2022-01-16 20:37:54'),
(21, 'Wishlist', 1, NULL, '2022-01-16 20:37:55'),
(22, 'Topbar Phone', 1, NULL, '2022-01-16 20:02:07'),
(23, 'Menu Phone', 1, NULL, '2022-01-16 20:08:00'),
(24, 'Categories', 1, NULL, '2022-01-16 23:52:39'),
(25, 'Search', 1, NULL, '2022-01-16 20:37:56');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `product_id` int(10) NOT NULL DEFAULT 0,
  `customer_read_msg` int(11) NOT NULL DEFAULT 0,
  `seller_read_msg` int(11) NOT NULL,
  `send_by` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `customer_id`, `seller_id`, `message`, `product_id`, `customer_read_msg`, `seller_read_msg`, `send_by`, `created_at`, `updated_at`) VALUES
(1, 7, 4, 'this is test message', 14, 1, 0, 'customer', '2022-12-19 15:36:56', '2022-12-19 15:36:56'),
(2, 7, 4, 'Hi, are you there ?', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2022-12-19 15:36:56'),
(3, 7, 4, 'Yes there. please tell me how can I help', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2022-12-19 15:36:56'),
(4, 7, 9, 'this is test message', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(5, 7, 9, 'Hi, are you there ?', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(6, 7, 9, 'Yes there. please tell me how can I help', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(7, 7, 8, 'this is test message', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(8, 7, 8, 'Hi, are you there ?', 0, 1, 0, 'customer', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(9, 7, 8, 'Yes there. please tell me how can I help', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(10, 7, 8, 'It\'s available now. You can buy it', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(11, 7, 8, 'It\'s available now. You can buy it', 0, 1, 1, 'seller', '2022-12-19 15:36:56', '2023-03-20 18:08:34'),
(12, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-20 14:15:11', '2022-12-20 14:15:11'),
(13, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-20 14:23:32', '2022-12-20 14:23:32'),
(14, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-20 14:24:52', '2022-12-20 14:24:52'),
(15, 7, 4, 'Hello seller', 14, 1, 0, 'customer', '2022-12-20 14:25:32', '2022-12-20 14:25:32'),
(16, 7, 4, 'Hello seller', 14, 1, 0, 'customer', '2022-12-20 14:26:26', '2022-12-20 14:26:26'),
(17, 7, 4, 'Hello seller', 0, 1, 0, 'customer', '2022-12-28 04:51:26', '2022-12-28 04:51:26'),
(18, 7, 12, 'Hello seller', 0, 1, 1, 'customer', '2022-12-28 05:48:16', '2023-03-20 20:24:01'),
(19, 7, 12, 'Are you there  ?', 0, 1, 1, 'customer', '2022-12-28 05:54:09', '2023-03-20 20:24:01'),
(20, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 05:54:17', '2023-03-20 20:24:01'),
(21, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 09:02:08', '2023-03-20 20:24:01'),
(22, 15, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 09:02:08', '2022-12-29 15:27:22'),
(23, 7, 12, 'Hello seller', 0, 1, 1, 'seller', '2022-12-28 05:48:16', '2023-03-20 20:24:01'),
(24, 7, 12, 'Are you there  ?', 0, 1, 1, 'seller', '2022-12-28 05:54:09', '2023-03-20 20:24:01'),
(25, 7, 12, 'Is it available ?', 0, 1, 1, 'seller', '2022-12-28 05:54:17', '2023-03-20 20:24:01'),
(26, 7, 12, 'Is it available ?', 0, 1, 1, 'seller', '2022-12-28 09:02:08', '2023-03-20 20:24:01'),
(27, 7, 12, 'Hello seller', 0, 1, 1, 'customer', '2022-12-28 05:48:16', '2023-03-20 20:24:01'),
(28, 7, 12, 'Are you there  ?', 0, 1, 1, 'customer', '2022-12-28 05:54:09', '2023-03-20 20:24:01'),
(29, 7, 12, 'Hi Joe', 0, 1, 1, 'seller', '2022-12-28 11:21:26', '2023-03-20 20:24:01'),
(30, 7, 12, 'do you want to purchase this ?', 0, 1, 1, 'seller', '2022-12-28 11:24:49', '2023-03-20 20:24:01'),
(31, 7, 12, 'How many item do you want ?', 0, 1, 1, 'seller', '2022-12-28 11:26:17', '2023-03-20 20:24:01'),
(32, 7, 12, 'where is ur location ?', 0, 1, 1, 'seller', '2022-12-28 11:26:40', '2023-03-20 20:24:01'),
(33, 7, 12, 'please share your phone number', 0, 1, 1, 'seller', '2022-12-28 11:28:02', '2023-03-20 20:24:01'),
(34, 15, 12, 'Yes available', 0, 0, 1, 'seller', '2022-12-28 11:44:26', '2022-12-29 15:27:22'),
(35, 15, 12, 'want to purchase ?', 0, 0, 1, 'seller', '2022-12-28 11:44:35', '2022-12-29 15:27:22'),
(36, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 11:59:51', '2023-03-20 20:24:01'),
(37, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 12:00:49', '2023-03-20 20:24:01'),
(38, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 12:08:35', '2023-03-20 20:24:01'),
(39, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-28 12:18:44', '2023-03-20 20:24:01'),
(40, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-29 03:15:15', '2023-03-20 20:24:01'),
(41, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-29 03:48:04', '2023-03-20 20:24:01'),
(42, 7, 12, 'Is it available ?', 0, 1, 1, 'customer', '2022-12-29 03:54:26', '2023-03-20 20:24:01'),
(43, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 03:59:51', '2023-03-20 20:24:01'),
(44, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:07:02', '2023-03-20 20:24:01'),
(45, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:10:56', '2023-03-20 20:24:01'),
(46, 7, 12, 'Yes I am here', 0, 1, 1, 'seller', '2022-12-29 04:11:21', '2023-03-20 20:24:01'),
(47, 7, 12, 'please tell me', 0, 1, 1, 'seller', '2022-12-29 04:11:30', '2023-03-20 20:24:01'),
(48, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:12:25', '2023-03-20 20:24:01'),
(49, 7, 12, 'Hi', 0, 1, 1, 'seller', '2022-12-29 04:12:59', '2023-03-20 20:24:01'),
(50, 7, 12, 'How can I help you?', 0, 1, 1, 'seller', '2022-12-29 04:13:09', '2023-03-20 20:24:01'),
(51, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:13:43', '2023-03-20 20:24:01'),
(52, 7, 12, 'This is new message', 0, 1, 1, 'customer', '2022-12-29 04:13:56', '2023-03-20 20:24:01'),
(53, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 04:18:05', '2023-03-20 20:24:01'),
(54, 7, 12, 'test 2', 0, 1, 1, 'seller', '2022-12-29 04:18:16', '2023-03-20 20:24:01'),
(55, 7, 12, 'test 3', 0, 1, 1, 'seller', '2022-12-29 04:18:28', '2023-03-20 20:24:01'),
(56, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 04:18:42', '2023-03-20 20:24:01'),
(57, 15, 12, 'tst', 0, 0, 1, 'seller', '2022-12-29 04:19:21', '2022-12-29 15:27:22'),
(58, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:36:46', '2023-03-20 20:24:01'),
(59, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:38:31', '2023-03-20 20:24:01'),
(60, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:39:35', '2023-03-20 20:24:01'),
(61, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:41:40', '2023-03-20 20:24:01'),
(62, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:43:49', '2023-03-20 20:24:01'),
(63, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:44:27', '2023-03-20 20:24:01'),
(64, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:44:55', '2023-03-20 20:24:01'),
(65, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:48:32', '2023-03-20 20:24:01'),
(66, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:49:33', '2023-03-20 20:24:01'),
(67, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:54:45', '2023-03-20 20:24:01'),
(68, 7, 12, 'this is message', 0, 1, 1, 'seller', '2022-12-29 05:56:21', '2023-03-20 20:24:01'),
(69, 7, 12, 'test msg', 0, 1, 1, 'seller', '2022-12-29 05:56:29', '2023-03-20 20:24:01'),
(70, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:56:47', '2023-03-20 20:24:01'),
(71, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:56:59', '2023-03-20 20:24:01'),
(72, 7, 12, 'test 2', 0, 1, 1, 'seller', '2022-12-29 05:58:14', '2023-03-20 20:24:01'),
(73, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 05:58:25', '2023-03-20 20:24:01'),
(74, 7, 12, 'nice msg', 0, 1, 1, 'seller', '2022-12-29 06:02:37', '2023-03-20 20:24:01'),
(75, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:02:54', '2023-03-20 20:24:01'),
(76, 7, 12, 'working', 0, 1, 1, 'seller', '2022-12-29 06:07:03', '2023-03-20 20:24:01'),
(77, 7, 12, 'again working', 0, 1, 1, 'seller', '2022-12-29 06:07:11', '2023-03-20 20:24:01'),
(78, 7, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:07:33', '2023-03-20 20:24:01'),
(79, 7, 12, 'hello bro', 0, 1, 1, 'seller', '2022-12-29 06:28:02', '2023-03-20 20:24:01'),
(80, 5, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:36:03', '2023-03-20 18:13:32'),
(81, 6, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:37:06', '2023-03-20 19:47:53'),
(82, 6, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:39:04', '2023-03-20 19:47:53'),
(83, 7, 12, 'hi', 0, 1, 1, 'seller', '2022-12-29 06:39:29', '2023-03-20 20:24:01'),
(84, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:41:03', '2023-01-24 12:19:27'),
(85, 6, 12, 'hello', 0, 0, 1, 'seller', '2022-12-29 06:41:47', '2023-03-20 19:47:53'),
(86, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 06:57:59', '2023-01-24 12:19:27'),
(87, 9, 12, 'hi', 0, 0, 1, 'seller', '2022-12-29 07:11:32', '2023-01-24 12:19:27'),
(88, 9, 12, 'hello', 0, 0, 1, 'seller', '2022-12-29 07:11:34', '2023-01-24 12:19:27'),
(89, 7, 12, 'hello', 0, 1, 1, 'seller', '2022-12-29 07:11:53', '2023-03-20 20:24:01'),
(90, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 07:21:22', '2023-01-24 12:19:27'),
(91, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 07:23:18', '2023-01-24 12:19:27'),
(92, 9, 12, 'This is new message 2', 0, 1, 1, 'customer', '2022-12-29 07:24:19', '2023-01-24 12:19:27'),
(93, 9, 12, 'This is new message 20', 0, 1, 1, 'customer', '2022-12-29 07:26:45', '2023-01-24 12:19:27'),
(94, 9, 12, 'This is new message 20', 0, 1, 1, 'customer', '2022-12-29 07:31:45', '2023-01-24 12:19:27'),
(95, 9, 12, 'This is new message 20', 0, 1, 1, 'customer', '2022-12-29 07:33:30', '2023-01-24 12:19:27'),
(96, 9, 12, 'This is new message 25', 0, 1, 1, 'customer', '2022-12-29 07:34:05', '2023-01-24 12:19:27'),
(97, 9, 12, 'before 26', 0, 0, 1, 'seller', '2022-12-29 07:35:50', '2023-01-24 12:19:27'),
(98, 9, 12, 'This is new message 26', 0, 1, 1, 'customer', '2022-12-29 07:36:05', '2023-01-24 12:19:27'),
(99, 9, 12, 'This is new message 27', 0, 1, 1, 'customer', '2022-12-29 07:40:07', '2023-01-24 12:19:27'),
(100, 9, 12, 'This is new message 28', 0, 1, 1, 'customer', '2022-12-29 07:41:11', '2023-01-24 12:19:27');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_11_30_035230_create_admins_table', 2),
(6, '2021_11_30_065435_create_email_configurations_table', 3),
(7, '2021_11_30_065508_create_email_templates_table', 3),
(8, '2021_12_01_035206_create_categories_table', 4),
(9, '2021_12_01_035220_create_sub_categories_table', 4),
(10, '2021_12_01_035231_create_child_categories_table', 4),
(11, '2021_12_01_035735_create_brands_table', 4),
(12, '2021_12_02_055907_create_product_taxes_table', 5),
(13, '2021_12_02_083742_create_return_policies_table', 6),
(14, '2021_12_02_084030_create_product_specification_keys_table', 6),
(15, '2021_12_03_093645_create_products_table', 7),
(16, '2021_12_03_101949_create_product_galleries_table', 7),
(17, '2021_12_04_053018_create_product_specifications_table', 8),
(18, '2021_12_06_045447_create_services_table', 9),
(19, '2021_12_06_054423_create_about_us_table', 10),
(20, '2021_12_06_055028_create_custom_pages_table', 10),
(21, '2021_12_07_030532_create_terms_and_conditions_table', 11),
(22, '2021_12_07_035810_create_blog_categories_table', 12),
(23, '2021_12_07_035822_create_blogs_table', 12),
(24, '2021_12_07_040749_create_popular_posts_table', 12),
(25, '2021_12_07_061613_create_blog_comments_table', 13),
(26, '2021_12_07_081832_create_product_variants_table', 14),
(27, '2021_12_07_081858_create_product_variant_items_table', 14),
(28, '2021_12_08_125540_create_campaigns_table', 15),
(29, '2021_12_08_130025_create_campaign_products_table', 15),
(30, '2021_12_09_095158_create_contact_messages_table', 16),
(31, '2021_12_09_095220_create_subscribers_table', 16),
(32, '2021_12_09_124226_create_settings_table', 17),
(33, '2021_12_11_022207_create_cookie_consents_table', 18),
(34, '2021_12_11_025358_create_google_recaptchas_table', 19),
(35, '2021_12_11_025449_create_facebook_comments_table', 19),
(36, '2021_12_11_025556_create_tawk_chats_table', 19),
(37, '2021_12_11_025618_create_google_analytics_table', 19),
(38, '2021_12_11_025712_create_custom_paginations_table', 19),
(39, '2021_12_11_083503_create_faqs_table', 20),
(40, '2021_12_11_094707_create_currencies_table', 21),
(41, '2021_12_13_085612_create_product_reviews_table', 22),
(42, '2021_12_13_090609_create_product_review_galleries_table', 22),
(43, '2021_12_13_101056_create_error_pages_table', 23),
(44, '2021_12_13_102725_create_maintainance_texts_table', 24),
(45, '2021_12_13_110144_create_subscribe_modals_table', 25),
(46, '2021_12_13_111140_create_announcement_modals_table', 26),
(47, '2021_12_13_132626_create_countries_table', 27),
(48, '2021_12_13_132909_create_country_states_table', 27),
(49, '2021_12_13_132935_create_cities_table', 27),
(50, '2021_12_14_032937_create_social_login_information_table', 28),
(51, '2021_12_14_042928_create_facebook_pixels_table', 29),
(52, '2021_12_14_054908_create_paypal_payments_table', 30),
(53, '2021_12_14_054922_create_stripe_payments_table', 30),
(54, '2021_12_14_054939_create_razorpay_payments_table', 30),
(55, '2021_12_14_055252_create_bank_payments_table', 30),
(56, '2021_12_14_084759_create_vendors_table', 31),
(57, '2021_12_14_090013_create_vendor_social_links_table', 31),
(58, '2021_12_15_095059_create_wholesells_table', 32),
(59, '2021_12_16_071213_create_seller_mail_logs_table', 33),
(60, '2021_12_21_093939_create_mega_menu_categories_table', 34),
(61, '2021_12_21_093958_create_mega_menu_sub_categories_table', 34),
(62, '2021_12_22_034106_create_banner_images_table', 35),
(63, '2021_12_22_044839_create_sliders_table', 36),
(64, '2021_12_22_081311_create_popular_categories_table', 37),
(65, '2021_12_23_021844_create_three_column_categories_table', 38),
(66, '2021_12_23_033230_create_shipping_methods_table', 39),
(67, '2021_12_23_065722_create_paystack_and_mollies_table', 40),
(68, '2021_12_23_085225_create_withdraw_methods_table', 41),
(71, '2021_12_25_172918_create_seller_withdraws_table', 42),
(74, '2021_12_25_200413_create_product_reports_table', 43),
(75, '2021_12_25_200707_create_product_report_images_table', 44),
(79, '2021_12_26_052326_create_billing_addresses_table', 45),
(80, '2021_12_26_053952_create_shipping_addresses_table', 45),
(81, '2021_12_26_054841_create_orders_table', 45),
(82, '2021_12_26_164912_create_order_addresses_table', 45),
(83, '2021_12_26_165705_create_order_products_table', 45),
(84, '2021_12_26_170803_create_order_product_variants_table', 45),
(87, '2021_12_28_163200_create_coupons_table', 46),
(88, '2021_12_28_192057_create_contact_pages_table', 47),
(89, '2021_12_28_200846_create_breadcrumb_images_table', 48),
(90, '2021_12_30_032959_create_flutterwaves_table', 49),
(91, '2021_12_30_034716_create_footers_table', 50),
(92, '2021_12_30_035201_create_footer_links_table', 50),
(93, '2021_12_30_035247_create_footer_social_links_table', 50),
(95, '2021_12_30_061157_create_home_page_one_visibilities_table', 51),
(96, '2022_01_11_103950_create_wishlists_table', 52),
(97, '2022_01_12_070110_create_shop_pages_table', 53),
(99, '2022_01_12_080218_create_seo_settings_table', 54),
(100, '2022_01_17_012111_create_menu_visibilities_table', 55),
(101, '2022_01_17_122016_create_instamojo_payments_table', 56),
(102, '2022_01_29_055523_create_messages_table', 57),
(103, '2022_01_29_122621_create_pusher_credentails_table', 58),
(104, '2022_04_27_083907_create_shopping_carts_table', 59),
(105, '2022_04_27_084235_create_shopping_cart_variants_table', 59),
(106, '2022_06_11_095338_create_testimonials_table', 60),
(107, '2022_06_13_053409_create_flash_sales_table', 61),
(108, '2022_06_13_053644_create_flash_sale_products_table', 62),
(109, '2022_06_14_102451_create_shippings_table', 63),
(112, '2022_06_19_073137_create_addresses_table', 64),
(113, '2022_06_19_093939_create_compare_products_table', 65),
(114, '2022_07_27_101723_create_featured_categories_table', 66),
(116, '2023_01_11_104754_create_twilio_sms_table', 67),
(117, '2023_01_11_112644_create_sms_templates_table', 68),
(118, '2023_01_12_043648_create_biztech_sms_table', 69),
(119, '2023_01_12_090356_create_inventories_table', 70),
(120, '2023_02_12_064832_create_myfatoorah_payments_table', 71),
(121, '2023_02_01_091048_create_delivery_men_table', 72),
(122, '2023_02_15_094731_create_delivery_man_withdraw_methods_table', 72),
(123, '2023_02_16_023738_create_delivery_man_withdraws_table', 72),
(124, '2023_02_16_091215_create_order_amounts_table', 72),
(125, '2023_02_18_110336_create_delivery_man_reviews_table', 72),
(126, '2023_02_20_101257_create_delivery_messages_table', 72),
(127, '2023_07_17_042611_add_user_id_to_shopping_cart_variants', 73),
(128, '2023_07_17_043209_add_version_number_to_settings', 73),
(129, '2022_01_11_105950_create_save_for_laters_table', 74);

-- --------------------------------------------------------

--
-- Table structure for table `myfatoorah_payments`
--

CREATE TABLE `myfatoorah_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `account_mode` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `currency_rate` varchar(255) NOT NULL,
  `api_key` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `myfatoorah_payments`
--

INSERT INTO `myfatoorah_payments` (`id`, `status`, `account_mode`, `currency_code`, `currency_rate`, `api_key`, `created_at`, `updated_at`) VALUES
(1, 0, 'sandbox', 'KWT', '0.31', 'rLtt6JWvbUHDDhsZnfpAhpYk4dxYDQkbcPTyGaKp2TYqQgG7FGZ5Th_WD53Oq8Ebz6A53njUoo1w3pjU1D4vs_ZMqFiz_j0urb_BH9Oq9VZoKFoJEDAbRZepGcQanImyYrry7Kt6MnMdgfG5jn4HngWoRdKduNNyP4kzcp3mRv7x00ahkm9LAK7ZRieg7k1PDAnBIOG3EyVSJ5kK4WLMvYr7sCwHbHcu4A5WwelxYK0GMJy37bNAarSJDFQsJ2ZvJjvMDmfWwDVFEVe_5tOomfVNt6bOg9mexbGjMrnHBnKnZR1vQbBtQieDlQepzTZMuQrSuKn-t5XZM7V6fCW7oP-uXGX-sMOajeX65JOf6XVpk29DP6ro8WTAflCDANC193yof8-f5_EYY-3hXhJj7RBXmizDpneEQDSaSz5sFk0sV5qPcARJ9zGG73vuGFyenjPPmtDtXtpx35A-BVcOSBYVIWe9kndG3nclfefjKEuZ3m4jL9Gg1h2JBvmXSMYiZtp9MR5I6pvbvylU_PP5xJFSjVTIz7IQSjcVGO41npnwIxRXNRxFOdIUHn0tjQ-7LwvEcTXyPsHXcMD8WtgBh-wxR8aKX7WPSsT1O8d8reb2aR7K3rkV3K82K_0OgawImEpwSvp9MNKynEAJQS6ZHe_J_l77652xwPNxMRTMASk1ZsJL', NULL, '2023-05-04 03:18:39');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `product_qty` int(11) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `payment_approval_date` varchar(255) DEFAULT NULL,
  `transection_id` varchar(255) DEFAULT NULL,
  `shipping_method` varchar(255) DEFAULT NULL,
  `shipping_cost` double NOT NULL DEFAULT 0,
  `coupon_coast` double NOT NULL DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `order_approval_date` varchar(255) DEFAULT NULL,
  `order_delivered_date` varchar(255) DEFAULT NULL,
  `order_completed_date` varchar(255) DEFAULT NULL,
  `order_declined_date` varchar(255) DEFAULT NULL,
  `delivery_man_id` int(11) NOT NULL DEFAULT 0,
  `order_request` int(11) NOT NULL DEFAULT 0,
  `order_req_date` date DEFAULT NULL,
  `order_req_accept_date` date DEFAULT NULL,
  `cash_on_delivery` int(10) NOT NULL DEFAULT 0,
  `additional_info` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `total_amount`, `product_qty`, `payment_method`, `payment_status`, `payment_approval_date`, `transection_id`, `shipping_method`, `shipping_cost`, `coupon_coast`, `order_status`, `order_approval_date`, `order_delivered_date`, `order_completed_date`, `order_declined_date`, `delivery_man_id`, `order_request`, `order_req_date`, `order_req_accept_date`, `cash_on_delivery`, `additional_info`, `created_at`, `updated_at`) VALUES
(1, '477710734', 5, 22, 2, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 3, '2022-09-21', '2022-09-21', '2022-09-21', NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 05:49:58', '2022-09-21 05:52:48'),
(2, '77398553', 4, 11, 1, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2022-09-21', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 07:35:53', '2022-09-21 12:03:41'),
(3, '1001561796', 4, 1401.75, 12, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2022-09-21', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 07:38:18', '2022-09-21 08:24:40'),
(4, '88552801', 5, 77, 7, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 2, '2022-09-21', '2022-09-21', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 08:23:42', '2022-09-21 08:25:04'),
(5, '392080209', 6, 22, 2, 'Cash on Delivery', 1, '2022-09-21', 'cash_on_delivery', 'free shipping', 0, 0, 3, NULL, NULL, '2022-09-21', NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 10:10:09', '2022-09-21 12:03:35'),
(6, '1056209451', 6, 11, 1, 'Mollie', 1, NULL, 'tr_TJe8rF9e7s', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2022-09-21 10:20:41', '2022-09-21 10:20:41'),
(7, '342810636', 6, 11, 1, 'Mollie', 1, NULL, 'tr_Gf2sJkauNw', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2022-09-21 10:26:15', '2022-09-21 10:26:15'),
(8, '1312138593', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 14:38:01', '2022-09-21 14:38:01'),
(9, '409338365', 5, 155.99, 7, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(10, '287219193', 6, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-21 16:04:14', '2022-09-21 16:04:14'),
(11, '1407165165', 5, 910.1, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(13, '135791419', 5, 100.99, 2, 'Cash on Delivery', 1, '2023-04-09', 'cash_on_delivery', 'free shipping', 0, 0, 3, '2023-04-06', NULL, '2023-04-09', NULL, 1, 3, '2023-04-06', '2023-04-06', 1, NULL, '2022-09-23 17:11:58', '2023-04-09 20:04:54'),
(15, '393840544', 7, 9.99, 1, 'Paypal', 1, NULL, 'PAYID-MMXU62A00B560099X7604116', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2022-09-24 18:41:59', '2022-09-24 18:41:59'),
(16, '1341414190', 7, 11, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 3, NULL, NULL, '2022-09-25', NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-25 06:34:28', '2022-09-25 12:21:47'),
(19, '134354270', 5, 80000, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 06:17:07', '2022-09-26 06:17:07'),
(20, '1440255744', 3, 89.99, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 06:27:39', '2022-09-26 06:27:39'),
(21, '1581228571', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 07:49:46', '2022-09-26 07:49:46'),
(22, '435181413', 5, 40000, 1, 'Bank Payment', 0, NULL, 'bbj', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 07:50:48', '2022-09-26 07:50:48'),
(24, '1353531553', 7, 179.98, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 08:25:32', '2022-09-26 08:25:32'),
(25, '1044150415', 7, 150000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 11:17:16', '2022-09-26 11:17:16'),
(26, '1155733181', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 15:29:08', '2022-09-26 15:29:08'),
(27, '111453302', 5, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 15:35:47', '2022-09-26 15:35:47'),
(28, '650118582', 5, 89.99, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 16:28:11', '2022-09-26 16:28:11'),
(29, '745308887', 5, 1807.19, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(30, '1235533632', 5, 40000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-26 18:19:41', '2022-09-26 18:19:41'),
(32, '1357194261', 7, 399, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(33, '1352443855', 5, 40399, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(34, '1135470081', 5, 15000, 3, 'Cash on Delivery', 1, '2023-12-14', 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2023-12-14', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-27 11:19:43', '2023-12-13 19:11:49'),
(35, '438531317', 5, 1798.2, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-09-27 11:20:35', '2022-09-27 11:20:35'),
(36, '738884584', 7, 179.98, 2, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-10-27 08:34:55', '2022-10-27 08:34:55'),
(37, '397979847', 7, 152.98, 3, 'Razorpay', 1, NULL, 'pay_Ka2aadbx8P721z', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, NULL, '2022-10-31 01:58:22', '2022-10-31 01:58:22'),
(38, '71828055', 7, 119.88, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'Product Price (1-2000)', 20, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-18 02:38:09', '2022-11-18 02:38:09'),
(39, '495427852', 7, 5142.99, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-18 02:57:54', '2022-11-18 02:57:54'),
(40, '872635658', 7, 292.38, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-18 03:24:20', '2022-11-18 03:24:20'),
(41, '130710951', 7, 196.51, 4, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-18 03:34:27', '2022-11-18 03:34:27'),
(42, '536812268', 7, 29.97, 3, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-19 15:42:13', '2022-11-19 15:42:13'),
(43, '1374134335', 7, 5000, 1, 'Cash on Delivery', 0, NULL, 'cash_on_delivery', 'free shipping', 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-19 16:18:48', '2022-11-19 16:18:48'),
(44, '1158316140', 7, 650, 1, 'Cash on Delivery', 1, '2023-04-09', 'cash_on_delivery', 'free shipping', 0, 0, 3, NULL, '2023-03-29', '2023-04-09', NULL, 1, 3, '2023-03-29', '2023-03-29', 1, NULL, '2022-11-19 19:23:58', '2023-04-09 20:40:39'),
(48, '1095386190', 7, 40069.39, 3, 'Cash on Delivery', 1, '2022-11-21', 'cash_on_delivery', 'free shipping', 0, 0, 3, NULL, NULL, '2022-11-21', NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-22 04:04:55', '2022-11-22 04:10:34'),
(49, '162987227', 7, 59.4, 1, 'Bank Payment', 1, '2022-11-22', '111', 'free shipping', 0, 0, 2, NULL, '2022-11-22', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-22 07:57:25', '2022-11-22 08:02:44'),
(50, '512380995', 7, 190989.09, 4, 'Cash on Delivery', 1, '2022-11-22', 'cash_on_delivery', 'free shipping', 0, 0, 2, NULL, '2022-11-22', NULL, NULL, 0, 0, NULL, NULL, 1, NULL, '2022-11-22 13:44:38', '2022-11-22 17:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_addresses`
--

CREATE TABLE `order_addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `billing_name` varchar(255) DEFAULT NULL,
  `billing_email` varchar(255) DEFAULT NULL,
  `billing_phone` varchar(255) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `billing_country` varchar(11) DEFAULT NULL,
  `billing_state` varchar(191) DEFAULT NULL,
  `billing_city` varchar(191) DEFAULT NULL,
  `billing_address_type` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) DEFAULT NULL,
  `shipping_email` varchar(255) DEFAULT NULL,
  `shipping_phone` varchar(255) DEFAULT NULL,
  `shipping_address` varchar(255) DEFAULT NULL,
  `shipping_country` varchar(191) DEFAULT NULL,
  `shipping_state` varchar(191) DEFAULT NULL,
  `shipping_city` varchar(191) DEFAULT NULL,
  `shipping_address_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_addresses`
--

INSERT INTO `order_addresses` (`id`, `order_id`, `billing_name`, `billing_email`, `billing_phone`, `billing_address`, `billing_country`, `billing_state`, `billing_city`, `billing_address_type`, `shipping_name`, `shipping_email`, `shipping_phone`, `shipping_address`, `shipping_country`, `shipping_state`, `shipping_city`, `shipping_address_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'India', 'Thiruvarur', 'Los Angeles', '1', 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'Indiae', 'Thiruvarur', 'Los Angeles', '1', '2022-09-21 05:49:58', '2022-09-21 05:49:58'),
(2, 2, 'logi', 'll@gmail.com', '9632580141', 'casagrands', 'India', 'chennai', 'Gandhinagar', '1', 'logi', 'll@gmail.com', '9632580141', 'casagrands', 'India', 'chennai', 'Gandhinagar', '1', '2022-09-21 07:35:53', '2022-09-21 07:35:53'),
(3, 3, 'nisha', 'nisha@gmail.com', '9632580141', 'casagrands', 'India', 'chennai', 'Gandhinagar', '1', 'logi', 'll@gmail.com', '9632580141', 'casagrands', 'India', 'chennai', 'Gandhinagar', '1', '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(4, 4, 'deva', 'deva@gmail.com', '9874563210', 'kumidi', 'India', 'Thiruvarur', 'Los Angeles', '1', 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'Indiae', 'Thiruvarur', 'Los Angeles', '1', '2022-09-21 08:23:42', '2022-09-21 08:23:42'),
(5, 5, 'srinitha', 'srinitha@gmail.com', '9874560126', 'sathipattu', 'India', 'karur', 'Nagarcoil', 'home', 'Karthi', 'Karthi@gmail.com', '9874560126', 'sathipattu', 'Indiaom', 'karur', 'Nagarcoil', 'home', '2022-09-21 10:10:09', '2022-09-21 10:10:09'),
(6, 6, 'harsha', 'harash@gmail.com', '9874560126', 'sathipattu', 'India', 'karur', 'Nagarcoil', 'home', 'Karthi', 'Karthi@gmail.com', '9874560126', 'sathipattu', 'Indiaom', 'karur', 'Nagarcoil', 'home', '2022-09-21 10:20:41', '2022-09-21 10:20:41'),
(7, 7, 'sivangi', 'sivangi@gmail.com', '9874560126', 'sathipattu', 'India', 'karur', 'Nagarcoil', 'home', 'Karthi', 'Karthi@gmail.com', '9874560126', 'sathipattu', 'Indiaom', 'karur', 'Nagarcoil', 'home', '2022-09-21 10:26:15', '2022-09-21 10:26:15'),
(8, 8, 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'India', 'Thiruvarur', 'Los Angeles', '1', 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'Indiae', 'Thiruvarur', 'Los Angeles', '1', '2022-09-21 14:38:01', '2022-09-21 14:38:01'),
(9, 9, '', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'India', 'Thiruvarur', 'Los Angeles', '1', 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'Indiae', 'Thiruvarur', 'Los Angeles', '1', '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(10, 10, 'Karthi', 'Karthi@gmail.com', '9874560126', 'sathipattu', 'India', 'karur', 'Nagarcoil', 'home', 'Karthi', 'Karthi@gmail.com', '9874560126', 'sathipattu', 'Indiaom', 'karur', 'Nagarcoil', 'home', '2022-09-21 16:04:14', '2022-09-21 16:04:14'),
(11, 11, 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'India', 'Thiruvarur', 'Los Angeles', '1', 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'Indiae', 'Thiruvarur', 'Los Angeles', '1', '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(13, 13, 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'India', 'Thiruvarur', 'Los Angeles', '1', 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'Indiae', 'Thiruvarur', 'Los Angeles', '1', '2022-09-23 17:11:58', '2022-09-23 17:11:58'),
(15, 15, 'chithra', 'cc@gmail.com', '754123690', 'Cuddalore', 'India', 'chennai', 'Gandhinagar', '1', 'chithra', 'cc@gmail.com', '754123690', 'Cuddalore', 'India', 'chennai', 'Gandhinagar', '1', '2022-09-24 18:41:59', '2022-09-24 18:41:59'),
(16, 16, 'chithra', 'cc@gmail.com', '754123690', 'Cuddalore', 'India', 'chennai', 'Gandhinagar', '1', 'chithra', 'cc@gmail.com', '754123690', 'Cuddalore', 'India', 'chennai', 'Gandhinagar', '1', '2022-09-25 06:34:28', '2022-09-25 06:34:28'),
(19, 19, 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'India', 'Thiruvarur', 'Los Angeles', '1', 'Hari', 'hari2001@gmail.com', '8547963012', 'devanampattinam', 'Indiae', 'Thiruvarur', 'Los Angeles', '1', '2022-09-26 06:17:07', '2022-09-26 06:17:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_amounts`
--

CREATE TABLE `order_amounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `delivery_man_id` int(11) NOT NULL,
  `total_amount` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `product_name` varchar(255) NOT NULL,
  `unit_price` double NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `seller_id`, `product_name`, `unit_price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 05:49:58', '2022-09-21 05:49:58'),
(2, 2, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 07:35:53', '2022-09-21 07:35:53'),
(3, 3, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(4, 3, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(5, 3, 11, 0, 'JBL Clip 4 Orange Portable Bluetooth Speaker #JBLCLIP40RG', 26.1, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(6, 3, 10, 0, 'PlayStation 4', 99.88, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(7, 3, 12, 0, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 9.99, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(8, 3, 12, 0, 'KOSPET TANK T1 MIL-STD Rugged Waterproof Smartwatch', 9.99, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(9, 3, 9, 0, 'Wireless Headphones and Earbuds', 10.791, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(10, 3, 5, 0, 'VISION Rice Cooker', 35.43, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(11, 3, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(12, 3, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(13, 3, 3, 0, 'Sony Play Staton 5', 61.101, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(14, 3, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-21 07:38:18', '2022-09-21 07:38:18'),
(15, 4, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 7, '2022-09-21 08:23:42', '2022-09-21 08:23:42'),
(16, 5, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 10:10:09', '2022-09-21 10:10:09'),
(17, 6, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 10:20:41', '2022-09-21 10:20:41'),
(18, 7, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 10:26:15', '2022-09-21 10:26:15'),
(19, 8, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-21 14:38:01', '2022-09-21 14:38:01'),
(20, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 3, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(21, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(22, 9, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 2, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(23, 9, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-21 14:57:18', '2022-09-21 14:57:18'),
(24, 10, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-09-21 16:04:14', '2022-09-21 16:04:14'),
(25, 11, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(26, 11, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-22 04:20:00', '2022-09-22 04:20:00'),
(28, 13, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-23 17:11:58', '2022-09-23 17:11:58'),
(29, 13, 1, 0, 'Xbox Wireless Controller', 89.991, 1, '2022-09-23 17:11:58', '2022-09-23 17:11:58'),
(31, 15, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-09-24 18:41:59', '2022-09-24 18:41:59'),
(32, 16, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 11, 1, '2022-09-25 06:34:28', '2022-09-25 06:34:28'),
(35, 19, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 06:17:07', '2022-09-26 06:17:07'),
(36, 19, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 06:17:07', '2022-09-26 06:17:07'),
(37, 20, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 06:27:39', '2022-09-26 06:27:39'),
(38, 21, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 07:49:46', '2022-09-26 07:49:46'),
(39, 22, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 07:50:48', '2022-09-26 07:50:48'),
(41, 24, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 08:25:32', '2022-09-26 08:25:32'),
(42, 24, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 08:25:32', '2022-09-26 08:25:32'),
(43, 25, 34, 4, 'Apple air 2022', 150000, 1, '2022-09-26 11:17:16', '2022-09-26 11:17:16'),
(44, 26, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 15:29:08', '2022-09-26 15:29:08'),
(45, 27, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-09-26 15:35:47', '2022-09-26 15:35:47'),
(46, 28, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-09-26 16:28:11', '2022-09-26 16:28:11'),
(47, 29, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(48, 29, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(49, 29, 8, 0, 'AirPods Pro 2', 8.991, 1, '2022-09-26 17:49:52', '2022-09-26 17:49:52'),
(50, 30, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-26 18:19:41', '2022-09-26 18:19:41'),
(52, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(53, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(54, 32, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 07:50:40', '2022-09-27 07:50:40'),
(55, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(56, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(57, 33, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(58, 33, 37, 6, 'Apple watch pro', 40000, 1, '2022-09-27 10:33:32', '2022-09-27 10:33:32'),
(59, 34, 36, 6, 'Sony joystick SJ pro', 5000, 3, '2022-09-27 11:19:43', '2022-09-27 11:19:43'),
(60, 35, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 2, '2022-09-27 11:20:35', '2022-09-27 11:20:35'),
(61, 36, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-10-27 08:34:55', '2022-10-27 08:34:55'),
(62, 36, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-10-27 08:34:55', '2022-10-27 08:34:55'),
(63, 37, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-10-31 01:58:22', '2022-10-31 01:58:22'),
(64, 37, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-10-31 01:58:22', '2022-10-31 01:58:22'),
(65, 37, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-10-31 01:58:22', '2022-10-31 01:58:22'),
(66, 38, 10, 0, 'PlayStation 4', 99.88, 1, '2022-11-18 02:38:09', '2022-11-18 02:38:09'),
(67, 39, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-18 02:57:54', '2022-11-18 02:57:54'),
(68, 39, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-11-18 02:57:54', '2022-11-18 02:57:54'),
(69, 39, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-18 02:57:54', '2022-11-18 02:57:54'),
(70, 40, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 1, '2022-11-18 03:24:20', '2022-11-18 03:24:20'),
(71, 40, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-18 03:24:20', '2022-11-18 03:24:20'),
(72, 40, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-18 03:24:20', '2022-11-18 03:24:20'),
(73, 40, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-11-18 03:24:20', '2022-11-18 03:24:20'),
(74, 41, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-18 03:34:27', '2022-11-18 03:34:27'),
(75, 41, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-18 03:34:27', '2022-11-18 03:34:27'),
(76, 41, 3, 0, 'Sony Play Staton 5', 61.101, 1, '2022-11-18 03:34:27', '2022-11-18 03:34:27'),
(77, 41, 5, 0, 'VISION Rice Cooker', 35.43, 1, '2022-11-18 03:34:27', '2022-11-18 03:34:27'),
(78, 42, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 3, '2022-11-19 15:42:13', '2022-11-19 15:42:13'),
(79, 43, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-19 16:18:48', '2022-11-19 16:18:48'),
(80, 44, 30, 2, 'JBL headphon max', 650, 1, '2022-11-19 19:23:58', '2022-11-19 19:23:58'),
(99, 48, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-11-22 04:04:55', '2022-11-22 04:04:55'),
(100, 48, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-22 04:04:55', '2022-11-22 04:04:55'),
(101, 48, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-22 04:04:55', '2022-11-22 04:04:55'),
(102, 49, 2, 0, 'FANTECH OCTANE Headset', 59.4, 1, '2022-11-22 07:57:25', '2022-11-22 07:57:25'),
(103, 50, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-22 13:44:38', '2022-11-22 13:44:38'),
(104, 50, 34, 4, 'Apple air 2022', 150000, 1, '2022-11-22 13:44:38', '2022-11-22 13:44:38'),
(105, 50, 4, 0, 'Apple MacBook Air 13.3-Inch Retina', 899.1, 1, '2022-11-22 13:44:38', '2022-11-22 13:44:38'),
(106, 50, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-22 13:44:38', '2022-11-22 13:44:38'),
(107, 51, 26, 1, 'Mi Laptop pro', 45000, 1, '2022-11-22 17:56:39', '2022-11-22 17:56:39'),
(108, 51, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-22 17:56:39', '2022-11-22 17:56:39'),
(109, 51, 32, 3, 'Realme mini music', 659, 1, '2022-11-22 17:56:39', '2022-11-22 17:56:39'),
(110, 51, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-22 17:56:39', '2022-11-22 17:56:39'),
(111, 52, 1, 0, 'Xbox Wireless Game Controller', 89.991, 1, '2022-11-22 17:57:34', '2022-11-22 17:57:34'),
(112, 52, 30, 2, 'JBL headphon max', 650, 1, '2022-11-22 17:57:34', '2022-11-22 17:57:34'),
(113, 53, 30, 2, 'JBL headphon max', 650, 1, '2022-11-22 18:03:11', '2022-11-22 18:03:11'),
(114, 54, 7, 0, 'Samsung Galaxy A52 (8/128 GB)', 9.99, 1, '2022-11-22 19:11:12', '2022-11-22 19:11:12'),
(115, 54, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-22 19:11:12', '2022-11-22 19:11:12'),
(119, 57, 30, 2, 'JBL headphon max', 650, 1, '2022-11-23 12:40:58', '2022-11-23 12:40:58'),
(120, 58, 37, 6, 'Apple watch pro', 40000, 1, '2022-11-23 14:29:13', '2022-11-23 14:29:13'),
(121, 59, 26, 1, 'Mi Laptop pro', 45000, 1, '2022-11-23 17:11:45', '2022-11-23 17:11:45'),
(122, 59, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2022-11-23 17:11:45', '2022-11-23 17:11:45'),
(123, 59, 31, 3, 'Sony joystick v1', 900, 2, '2022-11-23 17:11:45', '2022-11-23 17:11:45'),
(124, 60, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2023-03-31 21:43:25', '2023-03-31 21:43:25'),
(125, 60, 30, 2, 'JBL headphon max', 650, 4, '2023-03-31 21:43:25', '2023-03-31 21:43:25'),
(126, 61, 36, 6, 'Sony joystick SJ pro', 5000, 4, '2023-04-01 00:46:46', '2023-04-01 00:46:46'),
(127, 61, 13, 0, 'JBL Clip 4 Orange Portable Speaker', 133, 11, '2023-04-01 00:46:46', '2023-04-01 00:46:46'),
(128, 61, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2023-04-01 00:46:46', '2023-04-01 00:46:46'),
(129, 62, 34, 4, 'Apple air 2022', 150000, 1, '2023-04-01 13:01:11', '2023-04-01 13:01:11'),
(130, 63, 10, 0, 'PlayStation 4', 99.88, 1, '2023-04-08 21:10:08', '2023-04-08 21:10:08'),
(131, 64, 34, 4, 'Apple air 2022', 150000, 1, '2023-04-10 18:27:45', '2023-04-10 18:27:45'),
(132, 64, 35, 5, 'Mini sound box', 1200, 1, '2023-04-10 18:27:45', '2023-04-10 18:27:45'),
(133, 65, 36, 6, 'Sony joystick SJ pro', 5000, 1, '2023-05-01 12:06:34', '2023-05-01 12:06:34'),
(134, 66, 3, 0, 'Sony Play Staton 5', 61.101, 2, '2023-05-02 05:00:45', '2023-05-02 05:00:45'),
(135, 66, 2, 0, 'FANTECH OCTANE Headset', 59.4, 2, '2023-05-02 05:00:45', '2023-05-02 05:00:45'),
(136, 67, 37, 6, 'Apple watch pro', 40000, 1, '2023-05-02 05:05:41', '2023-05-02 05:05:41'),
(137, 68, 37, 6, 'Apple watch pro', 40000, 1, '2023-05-02 05:16:14', '2023-05-02 05:16:14');

-- --------------------------------------------------------

--
-- Table structure for table `order_product_variants`
--

CREATE TABLE `order_product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `variant_value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `paymongo_payments`
--

CREATE TABLE `paymongo_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `secret_key` varchar(255) NOT NULL,
  `public_key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(255) DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paymongo_payments`
--

INSERT INTO `paymongo_payments` (`id`, `secret_key`, `public_key`, `status`, `currency_rate`, `country_code`, `currency_code`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sk_test_TUwj85sA6XTn7nHzmP23dg36', 'pk_test_z9xACSbhH2EuxVdFaxuY8Waf', 1, 55.07, 'PH', 'PHP', '62c01dbd46dc01656757693.jpg', NULL, '2022-07-03 10:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_payments`
--

CREATE TABLE `paypal_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `account_mode` varchar(255) DEFAULT NULL,
  `client_id` text DEFAULT NULL,
  `secret_id` text DEFAULT NULL,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `currency_rate` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paypal_payments`
--

INSERT INTO `paypal_payments` (`id`, `status`, `account_mode`, `client_id`, `secret_id`, `country_code`, `currency_code`, `currency_rate`, `created_at`, `updated_at`) VALUES
(1, 1, 'sandbox', 'AWlV5x8Lhj9BRF8-TnawXtbNs-zt69mMVXME1BGJUIoDdrAYz8QIeeTBQp0sc2nIL9E529KJZys32Ipy', 'EEvn1J_oIC6alxb-FoF4t8buKwy4uEWHJ4_Jd_wolaSPRMzFHe6GrMrliZAtawDDuE-WKkCKpWGiz0Yn', 'US', 'USD', 1, NULL, '2022-02-07 02:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `paystack_and_mollies`
--

CREATE TABLE `paystack_and_mollies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mollie_key` varchar(255) DEFAULT NULL,
  `mollie_status` int(11) NOT NULL DEFAULT 0,
  `mollie_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_public_key` varchar(255) DEFAULT NULL,
  `paystack_secret_key` varchar(255) DEFAULT NULL,
  `paystack_currency_rate` double NOT NULL DEFAULT 1,
  `paystack_status` int(11) NOT NULL DEFAULT 0,
  `mollie_country_code` varchar(191) NOT NULL,
  `mollie_currency_code` varchar(191) NOT NULL,
  `paystack_country_code` varchar(191) NOT NULL,
  `paystack_currency_code` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paystack_and_mollies`
--

INSERT INTO `paystack_and_mollies` (`id`, `mollie_key`, `mollie_status`, `mollie_currency_rate`, `paystack_public_key`, `paystack_secret_key`, `paystack_currency_rate`, `paystack_status`, `mollie_country_code`, `mollie_currency_code`, `paystack_country_code`, `paystack_currency_code`, `created_at`, `updated_at`) VALUES
(1, 'test_p9qgUn7Sg22xF3Q8D9heBSVEzrzM5Q', 1, 1.27, 'pk_test_057dfe5dee14eaf9c3b4573df1e3760c02c06e38', 'sk_test_77cb93329abbdc18104466e694c9f720a7d69c97', 417.35, 1, 'CA', 'CAD', 'NG', 'NGN', NULL, '2022-08-25 07:10:34');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 47, 'google-token', '527371a62202b79aea84a92c7f89219f3891602f7ecffae2cb0f57556da3fd3d', '[\"*\"]', NULL, '2023-05-25 07:28:14', '2023-05-25 07:28:14'),
(2, 'App\\Models\\User', 47, 'google-token', 'a65f983802a38fb3e52f39dbf3e9d17a1ca6cd5937207afd2e05e86ab9873ca1', '[\"*\"]', NULL, '2023-05-25 07:35:22', '2023-05-25 07:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `popular_categories`
--

CREATE TABLE `popular_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_categories`
--

INSERT INTO `popular_categories` (`id`, `category_id`, `created_at`, `updated_at`) VALUES
(11, 1, '2024-02-23 09:36:28', '2024-02-23 09:36:28'),
(12, 2, '2024-02-23 09:36:46', '2024-02-23 09:36:46'),
(13, 10, '2024-02-23 09:36:55', '2024-02-23 09:36:55');

-- --------------------------------------------------------

--
-- Table structure for table `popular_posts`
--

CREATE TABLE `popular_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `popular_posts`
--

INSERT INTO `popular_posts` (`id`, `blog_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2022-09-22 10:19:05', '2022-09-22 10:19:05'),
(2, 5, 1, '2022-09-22 10:19:08', '2022-09-22 10:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `thumb_image` varchar(255) NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL DEFAULT 0,
  `child_category_id` int(11) NOT NULL DEFAULT 0,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `qty` int(11) NOT NULL DEFAULT 0,
  `weight` varchar(255) NOT NULL DEFAULT '0',
  `sold_qty` int(11) NOT NULL DEFAULT 0,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `video_link` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `seo_title` text NOT NULL,
  `seo_description` text NOT NULL,
  `price` double NOT NULL,
  `offer_price` double DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `show_homepage` tinyint(4) NOT NULL DEFAULT 0,
  `is_undefine` tinyint(4) NOT NULL DEFAULT 0,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `new_product` tinyint(4) NOT NULL DEFAULT 0,
  `is_top` tinyint(4) NOT NULL DEFAULT 0,
  `is_best` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `is_specification` int(10) NOT NULL DEFAULT 1,
  `approve_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(56, 'REDMI Pad 6 GB RAM 128 GB ROM 10.61 Inch with Wi-Fi Only Tablet (Mint Green)', 'Tablet', 'redmi-pad-6-gb-ram-128-gb-rom-1061-inch-with-wifi-only-tablet-mint-green', 'uploads/custom-images/redmi-2024-02-24-08-14-33-9293.jpeg', 0, 1, 1, 2, 13, 12, '12', 0, '6 GB RAM | 128 GB ROM\r\n26.95 cm (10.61 Inch) Display\r\n8 MP Primary Camera | 8 MP Front\r\nAndroid 12 | Battery: 8000 mAh\r\nIdeal Usage: Entertainment, Gaming\r\nProcessor: Octa Core\r\nEasy Payment Options\r\nEMI starting from ₹598/month\r\nCash on Delivery\r\nNet banking & Credit/ Debit/ ATM card', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">VHU4252IN</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Pad</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Ideal Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Entertainment, Gaming</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mint Green</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wi-Fi Only</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">12</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Voice Call</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Octa Core</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">26.95 cm (10.61 Inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Adapter, USB C type Cable, Sim card ejector, Quick start Guide &amp; Warranty card</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2000 X 1200 Pixel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8 megapixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">128 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.2 GHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensors</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">G Sensor, Light Sensor, E-compass, Hall sensor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sim Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">ROM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">128 GB</li></ul></td></tr></table>Battery Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8000 mAh</li></ul></td></tr></table>Camera Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8 megapixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Flash</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">NA</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">3G</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Browser</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-fi Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">802.11ac</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">LCD</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Domestic Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Period</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '56542455', '\"REDMI Pad 6GB RAM 128GB ROM 10.61 Inch Wi-Fi Tablet (Mint Green) - Buy Now\"', '\"Discover the REDMI Pad 6GB RAM 128GB ROM 10.61 Inch Wi-Fi Only Tablet in Mint Green. Enjoy seamless connectivity and immersive experiences. Order yours today!\"', 50000, 40000, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 02:44:33', '2024-02-24 08:02:36');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(57, 'Xiaomi Pad 6 6 GB RAM 128 GB ROM 11.0 inch with Wi-Fi Only Tablet (Graphite grey)', 'Tablet', 'xiaomi-pad-6-6-gb-ram-128-gb-rom-110-inch-with-wifi-only-tablet-graphite-grey', 'uploads/custom-images/xiaomi-pad-6-6-gb-ram-128-gb-rom-110-inch-with-wi-fi-only-tablet-graphite-grey-2024-02-24-01-43-13-2644.jpeg', 0, 1, 1, 12, 14, 12, '12', 0, '6 GB RAM | 128 GB ROM\r\n27.94 cm (11.0 inch) Display\r\n13 MP Primary Camera | 8 MP Front\r\nAndroid 13 | Battery: 8840 mAh\r\nIdeal Usage: Entertainment, High Processing Tasks\r\nProcessor: Qualcomm Snapdragon 870', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">VHU4404IN</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Pad 6</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Ideal Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Entertainment, High Processing Tasks</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Graphite grey</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wi-Fi Only</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">13</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Voice Call</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Call</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Video Call</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Qualcomm Snapdragon 870</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Additional Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Body: Metallic, Speakers: Dolby Atmos, Headphone Jack, Voice Control: Google Assistant</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">27.94 cm (11.0 inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Tablet, Adapter, Charging Cable</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2880 x 1800 Pixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">13 megapixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">128 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.42 GHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensors</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Accelerometer, Gyro, Proximity</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sim Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No Sim</li></ul></td></tr></table>Battery Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8840 mAh</li></ul></td></tr></table>Camera Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8 Megapixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Rear Camera: 4k (at 30 fps), 1080p (at 30 fps), 720p (at 30 fps)| Front Camera: 1080p (at 30 fps), 720p (at 30 fps) pixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Full HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Flash</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">USB</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Type C</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-fi Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">WiFi 6, WiFi 5, WiFi 4 and 802.11 a/b/g</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Microphone Jack</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3.5 mm</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Display Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Display Aspect Ratio- 16:10</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.8K LCD Display</li></ul></td></tr></table>Multimedia Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Full HD Playback</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Playback</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Playback</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year for Device and 6 Months for Battery</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '56522326', 'Xiaomi Pad 6 6GB RAM 128GB ROM 11.0-Inch Wi-Fi Tablet (Graphite Grey)', 'Explore the Xiaomi Pad 6 featuring 6GB RAM, 128GB ROM, and an expansive 11.0-inch display, available in Graphite Grey. Experience seamless connectivity with this Wi-Fi only tablet. Order yours today', 80000, 72000, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 08:13:13', '2024-02-24 08:13:13');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(58, 'Lenovo Windows Duet 4 GB RAM 128 GB ROM 10.3 inch with Wi-Fi Only Tablet (Graphite Grey)', 'Tablet', 'lenovo-windows-duet-4-gb-ram-128-gb-rom-103-inch-with-wifi-only-tablet-graphite-grey', 'uploads/custom-images/lenovo-windows-duet-4-gb-ram-128-gb-rom-103-inch-with-wi-fi-only-tablet-graphite-grey-2024-02-24-05-45-39-1921.jpeg', 0, 1, 3, 0, 14, 12, '23', 0, '4 GB RAM | 128 GB ROM\r\n26.16 cm (10.3 inch) Display\r\n5 MP Primary Camera | 2 MP Front\r\nWindows 11 Pro | Battery: 30 Wh\r\nIdeal Usage: Entertainment, Gaming, Reading and Browsing, For Kids, Business\r\nProcessor: Intel Celeron N4020', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">82AT00N2IN</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Windows Duet</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Ideal Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Entertainment, Gaming, Reading and Browsing, For Kids, Business</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Graphite Grey</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wi-Fi Only</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Windows</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">11 Pro</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Voice Call</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Intel Celeron N4020</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Additional Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Security: Firmware TPM 2.0, Dual Array Microphones, Dual Stereo Speakers, Optimized with Dolby Audio, Body: PC-ABS + Magnesium-Aluminium (Kickstand), Processor: Dual Core, Supports English Language</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">26.16 cm (10.3 inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Tablet, Folio Case, User Manual</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1920 x 1200 Pixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5 megapixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">128 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.8 GHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Multi-touch</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10 Point Multi-touch</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sim Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Clock Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1.1 GHz</li></ul></td></tr></table>Battery Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">30 Wh</li></ul></td></tr></table>Business Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Document Viewer</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Camera Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 Megapixels</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">USB</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB Type C 3.2 Gen 1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-fi Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">11ac 2x2</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Display Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Brightness: 340 nits, Glossy</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">WUXGA IPS</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Brand Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Period</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '64646515', 'Specifications General Model Number 82AT00N2IN Model Name Windows Duet Ideal Usage Entertainment, Gaming, Reading and Browsing, For Kids, Business Color Graphite Grey Connectivity Wi-Fi Only OS Windows Operating System Version 11 Pro RAM 4 GB Voice Call No Processor Type Intel Celeron N4020 Additional Features Security: Firmware TPM 2.0, Dual Array Microphones, Dual Stereo Speakers, Optimized with Dolby Audio, Body: PC-ABS + Magnesium-Aluminium (Kickstand), Processor: Dual Core, Supports English Language Product Details Display Size 26.16 cm (10.3 inch) Sales Package Tablet, Folio Case, User Manual Display Resolution 1920 x 1200 Pixels Primary Camera 5 megapixels Internal Storage 128 GB Processor Speed 2.8 GHz Multi-touch 10 Point Multi-touch Sim Type No Sim Secondary Clock Speed 1.1 GHz Battery Features Battery Capacity 30 Wh Business Features Document Viewer Yes Camera Features Secondary Camera 2 Megapixels Connectivity Features Bluetooth Version v5.0 USB USB Type C 3.2 Gen 1 Wi-fi Version 11ac 2x2 Display Features Other Display Features Brightness: 340 nits, Glossy Display Type WUXGA IPS Warranty Warranty 1 Year Warranty Summary 1 Year Brand Warranty Domestic Warranty 1 Year Covered in Warranty Manufacturing Defects Not Covered in Warranty Physical Damage Warranty Period 1 Year Manufacturing, Packaging and Import Info', 'Specifications\r\nGeneral\r\nModel Number\r\n82AT00N2IN\r\nModel Name\r\nWindows Duet\r\nIdeal Usage\r\nEntertainment, Gaming, Reading and Browsing, For Kids, Business\r\nColor\r\nGraphite Grey\r\nConnectivity\r\nWi-Fi Only\r\nOS\r\nWindows\r\nOperating System Version\r\n11 Pro\r\nRAM\r\n4 GB\r\nVoice Call\r\nNo\r\nProcessor Type\r\nIntel Celeron N4020\r\nAdditional Features\r\nSecurity: Firmware TPM 2.0, Dual Array Microphones, Dual Stereo Speakers, Optimized with Dolby Audio, Body: PC-ABS + Magnesium-Aluminium (Kickstand), Processor: Dual Core, Supports English Language\r\nProduct Details\r\nDisplay Size\r\n26.16 cm (10.3 inch)\r\nSales Package\r\nTablet, Folio Case, User Manual\r\nDisplay Resolution\r\n1920 x 1200 Pixels\r\nPrimary Camera\r\n5 megapixels\r\nInternal Storage\r\n128 GB\r\nProcessor Speed\r\n2.8 GHz\r\nMulti-touch\r\n10 Point Multi-touch\r\nSim Type\r\nNo Sim\r\nSecondary Clock Speed\r\n1.1 GHz\r\nBattery Features\r\nBattery Capacity\r\n30 Wh\r\nBusiness Features\r\nDocument Viewer\r\nYes\r\nCamera Features\r\nSecondary Camera\r\n2 Megapixels\r\nConnectivity Features\r\nBluetooth Version\r\nv5.0\r\nUSB\r\nUSB Type C 3.2 Gen 1\r\nWi-fi Version\r\n11ac 2x2\r\nDisplay Features\r\nOther Display Features\r\nBrightness: 340 nits, Glossy\r\nDisplay Type\r\nWUXGA IPS\r\nWarranty\r\nWarranty\r\n1 Year\r\nWarranty Summary\r\n1 Year Brand Warranty\r\nDomestic Warranty\r\n1 Year\r\nCovered in Warranty\r\nManufacturing Defects\r\nNot Covered in Warranty\r\nPhysical Damage\r\nWarranty Period\r\n1 Year\r\nManufacturing, Packaging and Import Info', 80000, 78000, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2024-02-24 12:15:39', '2024-02-24 12:15:39');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(59, 'Apple iPad (10th Gen) 64 GB ROM 10.9 inch with Wi-Fi Only (Blue)', 'ipad', 'apple-ipad-10th-gen-64-gb-rom-109-inch-with-wifi-only-blue', 'uploads/custom-images/apple-ipad-10th-gen-64-gb-rom-109-inch-with-wi-fi-only-blue-2024-02-24-05-49-35-8009.jpeg', 0, 1, 2, 1, 15, 12, '45', 0, '64 GB ROM\r\n27.69 cm (10.9 inch) Full HD Display\r\n12 MP Primary Camera | 12 MP Front\r\niPadOS 16 | Battery: Lithium Polymer\r\nIdeal Usage: Entertainment, For Kids, Reading and Browsing\r\nProcessor: A14 Bionic Chip (64-bit Architecture) with Neural Engine', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">MPQ13HN/A</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iPad (10th Gen)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Ideal Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Entertainment, For Kids, Reading and Browsing</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Blue</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wi-Fi Only</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iPadOS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">16</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Voice Call</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Resolution Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Full HD</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">A14 Bionic Chip (64-bit Architecture) with Neural Engine</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Additional Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Landscape Stereo Speakers, Dual Microphones for Calls, Video Recording and Audio Recording, Video Calling (FaceTime Video): iPad to Any FaceTime Enabled Device over Wi-Fi or Cellular, Audio Calling (FaceTime Audio): iPad to Any FaceTime Enabled Device over Wi-Fi or Cellular, Digital Compass, iBeacon Micro Location, Accessibility Features: VoiceOver, Magnifier, Closed Captions, Voice Control, Siri and Dictation, AssistiveTouch, Zoom, Switch Control, Speak Screen</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">27.69 cm (10.9 inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iPad, USB Type C Charge Cable (1 metre), 20 W USB Type C Power Adapter</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2360 x 1640 Pixel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">12 megapixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">64 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Multi-touch</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensors</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Touch ID, Three‐axis gyro, Accelerometer, Barometer, Ambient light sensor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sim Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">ROM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">64 GB</li></ul></td></tr></table>Battery Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Lithium Polymer</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internet Browsing Time</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Upto 10 hrs</li></ul></td></tr></table>Business Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Document Viewer</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">E-mail</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Camera Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">12 Megapixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4K, 1080P, 720P pixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Full HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Flash</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Retina Flash</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Optical Zoom</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Rear Camera: 12MP Wide camera, ƒ/1.8 aperture, Digital zoom up to 5x, Five-element lens, Autofocus with Focus Pixels, Panorama (up to 63MP) ,Smart HDR 3, Photo geotagging, Auto image stabilisation, Burst mode, mage formats captured: HEIF and JPEG. Front Camera: Landscape 12MP Ultra Wide camera, 122° field of view, ƒ/2.4 aperture, Smart HDR 3, 1080p HD video recording at 25 fps, 30 fps or 60 fps, Time-lapse video with stabilisation, Extended dynamic range for video up to 30 fps, Cinematic video stabilisation (1080p and 720p), Lens correction, Retina Flash, Auto image stabilisation, Burst mode</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Digital Zoom</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5x</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">3G</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">USB</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes, USB Type C</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Browser</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Safari</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-fi Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">802.11ax (Wi-Fi 6)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Connectivity Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Bluetooth Support, 2.4 GHz and 5 GHz Dual Band Wireless Connectivity, HT80 with MIMO</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Display Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">LED backlit Multi-Touch display with IPS technology, True Tone display, 500 nits brightness, Fingerprint-resistant oleophobic coating</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display PPI</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">264 PPI</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Liquid Retina Display</li></ul></td></tr></table>Multimedia Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Formats Supported</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Video Formats Supported Include HEVC and H.264, Supports Dolby Vision and HDR10 content</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Full HD Playback</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Playback</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Audio Formats Supported</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Supported formats include AAC, MP3, Apple Lossless, FLAC, Dolby Digital, Dolby Digital Plus and Dolby Atmos, User-conﬁgurable maximum volume limit</li></ul></td></tr></table>Navigation Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Map Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Maps</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Limited Hardware Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Carry In</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Period</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '145442', 'Apple iPad (10th Gen) 64 GB ROM 10.9 inch with Wi-Fi Only (Blue)', 'description', 800000, 780000, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 12:19:35', '2024-02-24 12:19:35'),
(60, 'Bestor USB C Hub Multiport Adapter for MacBook Pro Air 2021 2020 31C 4-in-1 USB Hub 4Port USB Hub  (Grey)', 'Acessories', 'bestor-usb-c-hub-multiport-adapter-for-macbook-pro-air-2021-2020-31c-4in1-usb-hub-4port-usb-hub-grey', 'uploads/custom-images/bestor-usb-c-hub-multiport-adapter-for-macbook-pro-air-2021-2020-31c-4-in-1-usb-hub-4port-usb-hub-grey-2024-02-24-06-23-49-3843.jpeg', 0, 12, 16, 0, 16, 12, '12', 0, 'BESTOR 4 PORT USB-C HUB Dual play mirror modes boost your efficiency 2 times. No driver or software is required, and the extra 4 USB ports can be used quickly. You can always connect to your computer and other devices to avoid frequent use of the Type-C interface that comes with your computer. The top charging port gives you easy access for fast, temporary connections of USB sticks, media readers, small accessories such as USB lights and fans and more. Connect a modem, USB printer, scanner and HD to a convenient USB hub. The 4-port hub supports cascading installation with other USB 3.1 hubs, multiple USB 3.1 device ports - a scalable solution for connecting multiple USB devices.', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 unit of Hub</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">30 g</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Net Quantity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6 Month</li></ul></td></tr></table>', NULL, '5454651', 'Bestor USB C Hub Multiport Adapter for MacBook Pro Air 2021 2020 31C 4-in-1 USB Hub 4Port USB Hub  (Grey)', 'Bestor USB C Hub Multiport Adapter for MacBook Pro Air 2021 2020 31C 4-in-1 USB Hub 4Port USB Hub  (Grey) description', 3000, 2087, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 12:25:05', '2024-02-24 12:53:49');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(61, 'SONY WH-CH720N Active Noise Cancelling, 50 Hrs. Battery life, Multipoint Connection Bluetooth Headset  (Black, On the Ear)', 'Headphone', 'sony-whch720n-active-noise-cancelling-50-hrs-battery-life-multipoint-connection-bluetooth-headset-black-on-the-ear', 'uploads/custom-images/sony-wh-ch720n-active-noise-cancelling-50-hrs-battery-life-multipoint-connection-bluetooth-headset-black-on-the-ear-2024-02-24-07-22-20-6787.jpeg', 0, 4, 10, 10, 18, 12, '11', 0, 'With Mic:Yes\r\nConnector type: 3.5 mm\r\nBluetooth version: 5.2\r\nBattery life: 35 hrs\r\nBattery life: 50 hrs.\r\nSony\'s lightest Wireless Noise-canceling headband.\r\nUp to 50 Hrs. battery with quick charging(3 min charge for up to 1 hour of playback)\r\nSuper comfortable and lightweight design (192 Grams).\r\nMulti-Point Connection helps to pair with two Bluetooth devices at the same time\r\nServices\r\n12 Months Brand Warranty', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">WH-CH720</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">On the Ear</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Inline Remote</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Headphone, USB Type-C Charging Cable, 3.5 mm Audio Cable, Operating Instruction, Instruction Manual</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Bluetooth</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Design</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Foldable Over the Head</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Devices</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Audio Player, Laptop, Mobile, Tablet</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sweat Proof</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Foldable/Collapsible</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Deep Bass</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Monaural</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Series</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">CH Series</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Circumaural/Supraaural</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Circumaural</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Open/Closed Back</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Closed</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connector Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3.5 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Indicators</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Battery Indicator (Charge Indication)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Controls</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Volume Control, Adaptive Control, Ambient Sound Control</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Technology Used</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">DSEE</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Driver Units</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">30 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Cord Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Cable</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Boom Microphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">With Microphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Sound Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Signal to Noise Ratio</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">108 dB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Audio Codec</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SBC, AAC</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wireless Range</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10 m</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Profiles</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">A2DP, AVRCP, HFP, HSP</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5.2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Power Source</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Battery</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Transmitter Power Source</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB Charger</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Life</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">35 hrs</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">520 mAh</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Play Time</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">35 hrs</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Standby Time</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">200 hrs</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5.5 cm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">26 cm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">20.8 cm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">192 g</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Cord Length</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1.2 m</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">12 Months Brand Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Visit Service Center</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Except Physical Damage</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr></table>', NULL, '978456123', 'SONY WH-CH720N Active Noise Cancelling, 50 Hrs. Battery life, Multipoint Connection Bluetooth Headset  (Black, On the Ear)', 'SONY WH-CH720N Active Noise Cancelling, 50 Hrs. Battery life, Multipoint Connection Bluetooth Headset  (Black, On the Ear) description', 899, 699, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 13:52:20', '2024-02-24 13:52:20'),
(62, 'LAPCARE WOOBUDS VII Wired Headset  (Black, In the Ear)', 'Wired Headset', 'lapcare-woobuds-vii-wired-headset-black-in-the-ear', 'uploads/custom-images/lapcare-woobuds-vii-wired-headset-black-in-the-ear-2024-02-24-07-38-58-8263.jpeg', 0, 4, 10, 13, 18, 12, '156', 0, 'With Mic:Yes\r\nConnector type: 3.5mm\r\nFlatwire: Stays tangle free even in your pocket', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">WOOBUDS VII</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">In the Ear</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Inline Remote</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 no wired earphones</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wired</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Design</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Earbud</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Devices</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mobile</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sweat Proof</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Foldable/Collapsible</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Deep Bass</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Designed For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mobile, Laptop</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">System Requirements</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mobile, Laptop</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Carrier Frequency</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">20Hz-20KHZ</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connector Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3.5 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Driver Units</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3.5 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">With Microphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Cord Length</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1.2 m</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6 Months</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical damage</li><li></li></ul></td></tr></table>', NULL, '782132225', 'LAPCARE WOOBUDS VII Wired Headset  (Black, In the Ear)', 'LAPCARE WOOBUDS VII Wired Headset  (Black, In the Ear) description', 300, 566, NULL, 0, 1, 1, 1, 1, 0, 1, 1, 1, '2024-02-24 14:08:58', '2024-02-24 14:08:58');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(63, 'Mivi DuoPods K5 TWS Earbuds Metallic Finish, HD calling, AI ENC, 50H playtime,5.3 Bluetooth Headset  (Raven Black, True Wireless)', 'Wireless Headset', 'mivi-duopods-k5-tws-earbuds-metallic-finish-hd-calling-ai-enc-50h-playtime53-bluetooth-headset-raven-black-true-wireless', 'uploads/custom-images/mivi-duopods-k5-tws-earbuds-metallic-finish-hd-calling-ai-enc-50h-playtime53-bluetooth-headset-raven-black-true-wireless-2024-02-24-07-41-58-6803.jpeg', 0, 4, 10, 0, 17, 13, '23', 0, 'With Mic:Yes\r\nBattery life: 50Hrs\r\nBluetooth version: 5.3\r\nWireless range: 10 m\r\n13 mm Drivers\r\nDual Mic - Artificial Intelligence enabled ENC (Environmental Noise Cancellation) for HD call clarity\r\nSwift charging | 10 mins charge = 500 mins playtime | Type-C cable\r\nGaming mode -Triple Tap Left earbud to activate low latency mode\r\nVoice assistance -Triple Tap Right earbud to activate\r\nServices\r\n1 Year Manufacturing Warranty', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">TEDPK5-RB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Raven Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">True Wireless</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Inline Remote</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Pair of Earbuds, Charging Case, USB Type C Charging Cable, Quick Start Guide, Warranty Card</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Bluetooth</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Design</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Earbud</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Devices</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Gaming Console, Laptop, Mobile, Desktop</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Deep Bass</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">With Microphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Manufacturing Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">support@mivi.in 8099973333</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damages</li></ul></td></tr></table>', NULL, '9846532', 'Mivi DuoPods K5 TWS Earbuds Metallic Finish, HD calling, AI ENC, 50H playtime,5.3 Bluetooth Headset  (Raven Black, True Wireless)', 'Explore this new product now... Mivi DuoPods K5 TWS Earbuds Metallic Finish, HD calling, AI ENC, 50H playtime,5.3 Bluetooth Headset  (Raven Black, True Wireless)', 400, 368, NULL, 0, 1, 1, 1, 0, 0, 1, 1, 1, '2024-02-24 14:11:58', '2024-02-24 14:11:58'),
(64, 'Mivi Play 5 W Portable Bluetooth Speaker  (Green, Mono Channel)', 'Bluetooth Speaker', 'mivi-play-5-w-portable-bluetooth-speaker-green-mono-channel', 'uploads/custom-images/mivi-play-5-w-portable-bluetooth-speaker-green-mono-channel-2024-02-24-07-47-01-6135.jpeg', 0, 4, 21, 14, 17, 12, '12', 0, 'Power Output(RMS): 5 W\r\nPower Source: Battery\r\nBattery life: 12 hr | Charging time: 2 hr\r\nBluetooth Version: 5\r\nWireless range: 10 m\r\nWireless music streaming via Bluetooth', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Speaker,USB cable, Aux cable</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">BS5PL-GN</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Play</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mobile/Tablet Speaker</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Portable</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Memory Card Slot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Configuration</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mono</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Source</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Battery</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Output (RMS)</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5 W</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Frequency Response</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">20Hz to 20Khz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Impedance</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4 Ohms</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Green</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wired/Wireless</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wireless</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Outdoor Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Configuration</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mono Channel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Devices</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mobiles, Tablets, Laptop</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Charging Time</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 hr</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Li-Polymer, Use Time 12 hr</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1000 mAh</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Range</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10 m</li></ul></td></tr></table>Audio Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Amplifier</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Audio Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">HD sound</li></ul></td></tr></table>Other Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Controls</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Easy responsive controls change music tracks, Volume control</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Driver Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 inch</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Input</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5V</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8 cm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6.8 cm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">7 cm</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Warranty. For claims please send email to support@mivi.in or call 8099973333</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 year warranty provided by the manufacturer from date of purchase</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturer Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li><li></li></ul></td></tr></table>', NULL, '52147896', 'Mivi Play 5 W Portable Bluetooth Speaker  (Green, Mono Channel)', 'Mivi Play 5 W Portable Bluetooth Speaker  (Green, Mono Channel) description', 899, 566, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, '2024-02-24 14:17:01', '2024-02-24 14:17:37');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(65, 'artis S21 5 W Laptop/Desktop Speaker  (Black, 2.0 Channel)', 'Speaker', 'artis-s21-5-w-laptopdesktop-speaker-black-20-channel', 'uploads/custom-images/artis-s21-5-w-laptopdesktop-speaker-black-20-channel-2024-02-24-07-53-48-3215.jpeg', 0, 4, 21, 15, 18, 10, '12', 0, '2.0 USB powered multimedia speaker system for laptops, desktops & smartphones. Power input is DC 5V via a USB port, Audio Output is through a 3.5mm audio jack which can be connected to a desktop PC, Laptop or a smartphone too. 2 speaker units with 2.5W RMS each provide a powerful output total of 5W RMS, Each Speaker Unit driver is 50mm in diameter, Frequency Response: 100hz-20khz. Wired volume control, Enhanced low frequency effect, Powerful bass & Superior listening experience. Box Contents: 2 wired speakers with wired volume controller & USB power input and 3.5mm audio Jack output, 1 year Warranty unless physically damaged Get in touch with us via email/toll-free number:Email:inquiry@artis.in /1800 123 8195 (Mon-Sat: 10am-6pm)', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 wired speakers with wired volume controller, USB power input and 3.5mm audio Jack output</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">S21</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">S21</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Laptop/Desktop Speaker</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Memory Card Slot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Configuration</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Source</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">DC 5V via a USB port</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Output (RMS)</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5 W</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Frequency Response</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">100hz-20khz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Impedance</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4 Ohms</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wired/Wireless</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wired</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wall Mountable Satellite</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Built-in Fm Radio</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Outdoor Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Headphone Jack</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Configuration</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.0 Channel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Driver Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 x Satellites</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Devices</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Devices with USB Ports, Desktop PC, Laptop, smartphone</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">RGB LED</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connector Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Speaker wire</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">USB Ports</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 USB Ports</li></ul></td></tr></table>Audio Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Signal to Noise Ratio</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">95 dB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Amplifier</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes, Built in</li></ul></td></tr></table>Other Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Chassis Material</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes, Plastic Chassis</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensitivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">95 dB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Controls</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Volume knob Up/Down</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Remote Control Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wired</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Input</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">DC 5V via a USB port</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">7.5 cm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">12 cm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">14 cm</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Service Centre, Walk in Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Service Centre, Walk in Warranty, For warranty claims, contact us at inquiry@artis.in or call us on 1800 123 8195 (Mon-Sat: 10am-6pm)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Main product</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage, Over Voltage, Over current burns</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '78945612', 'artis S21 5 W Laptop/Desktop Speaker  (Black, 2.0 Channel)', '\"Upgrade your desktop or laptop audio experience with the Artis S21 5W Laptop/Desktop Speaker. Designed for convenience and style, these 2.0 channel speakers deliver clear sound and deep bass in a sleek black finish. With 5 watts of total power output, compact design, and easy connectivity via 3.5mm audio jack, enjoy enhanced audio quality for music, movies, and more. Elevate your workspace with the Artis S21 speakers today!\"', 796, 563, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, '2024-02-24 14:23:48', '2024-02-24 14:23:48'),
(66, 'TGK Back Cover for Redmi 13C 5G  (Black, Dual Protection, Pack of: 1)', 'Phone Cases', 'tgk-back-cover-for-redmi-13c-5g-black-dual-protection-pack-of-1', 'uploads/custom-images/tgk-back-cover-for-redmi-13c-5g-black-dual-protection-pack-of-1-2024-02-24-08-20-15-9668.jpeg', 0, 10, 11, 0, 13, 2, '12', 0, 'Compatibility : TGK Rugged Armor Back Cover Case Compatible with Redmi 13C 5G. Rugged Protection: Thanks to the rugged design, our Back Cover Case will save your Redmi 13C 5G from accidental drops, shocks and broken. Precious Cut-Outs: Precious Cut-Outs for all Ports and Camera. Easy Access of Buttons, Camera, Audio Jack and Charging Ports. Material: design made of a TPU and Polycarbonate. Bumpers on all four corners to protect your Redmi 13C 5G from shocks. The surface uses salient point design, dust-proof, anti-skidding, wear-resistant, anti-fingerprint & easy to clean.', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Rugged_Redmi13C5G_back</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Designed For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Redmi 13C 5G</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Net Quantity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Pack of</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Output</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">-</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Rugged Protection: Thanks to the rugged design, our Back Cover Case will save your Redmi 13C 5G from accidental drops, shocks and broken., Precious Cut-Outs: Precious Cut-Outs for all Ports and Camera. Easy Access of Buttons, Camera, Audio Jack and Charging Ports., Material: design made of a TPU and Polycarbonate. Bumpers on all four corners to protect your Redmi 13C 5G from shocks., The surface uses salient point design, dust-proof, anti-skidding, wear-resistant, anti-fingerprint &amp; easy to clean.</li></ul></td></tr></table>', NULL, '789456123', 'TGK Back Cover for Redmi 13C 5G  (Black, Dual Protection, Pack of: 1)', 'Enhance the durability and style of your Redmi 13C 5G with the TGK Back Cover in Black. Offering dual protection in a single pack, this back cover ensures your device stays shielded against scratches, bumps, and everyday wear and tear. Crafted for a precise fit, the sleek design complements your phone\'s aesthetics while providing easy access to ports and buttons. Invest in reliable protection with the TGK Back Cover and safeguard your Redmi 13C 5G in style', 218, 200, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, '2024-02-24 14:50:15', '2024-02-24 14:50:15'),
(67, 'CEDO XPRO Screen Guard for iPhone 14 Pro Max  (Pack of 1)', 'Guard', 'cedo-xpro-screen-guard-for-iphone-14-pro-max-pack-of-1', 'uploads/custom-images/cedo-xpro-screen-guard-for-iphone-14-pro-max-pack-of-1-2024-02-24-08-23-21-6735.jpeg', 0, 10, 12, 0, 15, 45, '11', 0, 'Perfect to work with touch screen technology Premium Quality Anti-Static and Anti-Friction UV Protection and against abrasion Non-corrosive Adhesive Perfect fit and leaves no residue when removed this is made to protect the LCD from damage and scratches with specially processed glass that has been reinforced to increase shock absorbency. Surface hardness: 9H Delicate Touch: Coated on the back with a strong silicon adhesive that makes installation easy and attaches the film firmly so as to not affect the touch screen\'s sensitivity. Toughened glass has high transparency and the color never changes but it is breakable if not handled properly. Premium tempered glass is shatter-proof meaning it won\'t splinter into sharp fragments, making it safer than regular glass. To top it all off, this screen protector has an oleo phobic coating that makes it resistant to fingerprints Caution: product must be installed in a dust-free environment; applying excessive force during installation or removal may damage the Tempered Glass. Phone models shown in the pictures are for illustration purpose only *REAL LIFE INCIDENT: When unfortunately, your cellphone drops or caught under some accident it may seem like you may have lost your phone display screen which is so expensive to repair and then suddenly you notice nothing happened to your screen, as all the impact was taken by our tempered glass which sacrificed itself in protecting your phone screen and got itself shattered by not allowing even a single crack to pass through it towards your phone screen. So get this high rewarding tempered glass at such a low cost from us instead of using unsecured scratch guards. Happy Shopping Friends!', 'Specifications<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Designed For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iPhone 14 Pro Max</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Applied on</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Front</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Fixing Method</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Self Adhesive</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Layers</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Be aware of fake CEDO XPRO products sold by many sellers online; Buy from Seller Jaidev Mal &amp; Sons. We are the only authorized Seller to sell CEDO XPRO brand products, Disclaimer: Tempered glass will be covering the phone screen only; the curved edges of the phone will not be covered by the tempered glass. Scratch Proof: Don\'t get scratches even if scratched with keys in your pocket.</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Net Quantity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '56123', 'CEDO XPRO Screen Guard for iPhone 14 Pro Max  (Pack of 1)', 'CEDO XPRO Screen Guard for iPhone 14 Pro Max  (Pack of 1) description.', 599, 219, NULL, 0, 1, 0, 1, 1, 0, 1, 1, 1, '2024-02-24 14:53:21', '2024-02-24 14:53:21');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(68, 'Apple 20W ,USB-C Power Charging Adapter for iPhone, iPad & AirPods  (White)', 'Charger', 'apple-20w-usbc-power-charging-adapter-for-iphone-ipad-airpods-white', 'uploads/custom-images/apple-20w-usb-c-power-charging-adapter-for-iphone-ipad-airpods-white-2024-02-24-08-26-39-6370.jpeg', 0, 10, 13, 0, 15, 12, '56', 0, 'Wall Charger\r\nSuitable For: Mobile\r\nNo Cable Included\r\nUniversal Voltage\r\nOutput Current : 3 A', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Adapter</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">MHJD3HN/A</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">MHJD3HN/A</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Output Interface</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB Type-C</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connector Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB Type C Cable</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number Of Devices/Batteries Charged</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Designed For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iPhone 11, iPhone 13 / 13 Mini / 13 Pro / 13 Pro Max / 12 / 12 Mini / 12 Pro / 12 Pro Max, iPhone SE, iPhone 11 / 11 Pro / 11 Pro Max, iPhone XS / XS Max / XR / X, iPad Pro 12.9 / 11 / iPad Air 3 / iPad Mini(2019), Google Pixel 4 / 4 XL / 3 / 3 XL / 2 / 2 XL, Galaxy S20/ S10 / S10+ / S10e / S9 / S9+ / S8 / S8+ / Note 10 Iphone 13 iPhone 12 Mini iPhone 14 iPhone 14 Pro iPhone 14 Pro Max Iphone 12 iPhone 14 Plus iPhone 13 Mini iPhone SE Iphone 13 Pro Max iPhone 7 iPhone 13 Pro iPhone XR iphone 12 pro max IPhone 12 Pro iPhone SE (3rd Gen) iPhone 6s iPhone 11 Pro Iphone 11 Pro Max</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number Of Charger Pins</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">500 g</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">‎Lightweight Design, Travel, Fast Charging</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Cable Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Adapter Only</li></ul></td></tr></table>Power Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Output</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">20 W</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Source</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">‎Corded Electric</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Output Current</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3 A</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Slot Output</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">0 Amp</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Output Wattage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">20 W</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Power Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iPhone Compatability, iPad Compatability, AirPods Compatability</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">International Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '5665123', 'Apple 20W ,USB-C Power Charging Adapter for iPhone, iPad & AirPods  (White)', 'Apple 20W ,USB-C Power Charging Adapter for iPhone, iPad & AirPods  (White)  description.', 1900, 1599, NULL, 0, 1, 1, 0, 0, 1, 1, 1, 1, '2024-02-24 14:56:39', '2024-02-24 14:56:39'),
(69, 'ZEBRONICS ZEB-K35-ALEX COMBO Combo Set', 'keyboard', 'zebronics-zebk35alex-combo-combo-set', 'uploads/custom-images/zebronics-zeb-k35-alex-combo-combo-set-2024-02-24-08-57-02-6349.jpeg', 0, 12, 14, 0, 19, 12, '45', 0, 'Standard wired keyboard and mouse combo .The keyboard comes with 106 keys that provide a comfortable and silent experience and come with a rupee key too. . The mouse comes with an ergonomic design along with 3 buttons .and an accurate optical sensor with 1200 Dpi', 'SpecificationsIn The Box<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 KEYBOARD , 1 MOUSE</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Contents in Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Pack of 2</li></ul></td></tr></table>General<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">ZEBRONICS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">ZEB-K35-ALEX COMBO</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Suitable For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">COMPUTER, LAPTOP, MOBLE &amp; TABLET THROUGH OTG</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Net Quantity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 YEAR BRAND WARRANTY</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing defect</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damages</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SERVICE CENTER</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '98745612', 'zebronics-zebk35alex-combo-combo-set', 'Upgrade your computing experience with the Zebronics ZEB-K35ALEX Combo Set. This comprehensive combo includes a keyboard and mouse, offering seamless functionality and comfort for daily use. With its sleek design and durable build, the ZEB-K35ALEX Combo Set is perfect for work, gaming, and browsing. Enjoy responsive typing and precise cursor control, thanks to the high-quality components. Elevate your setup with this reliable combo set from Zebronics and unlock a new level of productivity and efficiency.\"', 500, 399, NULL, 0, 1, 0, 1, 1, 0, 1, 1, 1, '2024-02-24 15:27:02', '2024-02-24 15:27:02'),
(70, 'WD 1.5 TB Wired External Hard Disk Drive (HDD)  (Black)', 'External hard drive', 'wd-15-tb-wired-external-hard-disk-drive-hdd-black', 'uploads/custom-images/wd-15-tb-wired-external-hard-disk-drive-hdd-black-2024-02-24-09-04-00-3450.jpeg', 0, 12, 16, 0, 15, 1, '12', 0, 'Slim and lightweight, the WD Elements external hard disk drive enables you to store and carry all your favourite photos, movies, and other data, wherever you go. The USB 3.0 connectivity enables optimal data transfer while the backward-compatibility feature lets you use this drive with USB 2.0 devices. So, you can transfer data from your PC to this HDD to free up space and enjoy a better computing experience.', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Portable HDD, USB Cable, Quick Install Guide</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">WDBU6Y0015BBK-WESN</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">HDD</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1.5 TB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">System Requirements</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Windows 10,Windows 8.1,Reformatting Required for Other Operating Systems</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Form Factor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Portable</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wired|Wireless</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wired</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Cloud Backup</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr></table>Additional Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Ports</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Connector Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB 2.0, USB 3.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Data Transfer Rate</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">480 Mbps USB 2.0, 5 Gbps USB 3.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Rotational Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5400 rpm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Mobile Device Backup</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Shock Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Backward Compatible</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Password Protection</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr></table>Power Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Power Source</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB Powered</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">External Power Required</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">82 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">15 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">110.5 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">222 g</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 Years Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Carry In</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">International Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 Year</li></ul></td></tr></table>', NULL, '2156465', 'WD 1.5 TB Wired External Hard Disk Drive (HDD)  (Black)', 'Expand your digital storage with the WD 1.5TB Wired External Hard Disk Drive (HDD) in Black. This reliable storage solution offers ample space to safeguard your valuable data, from documents and multimedia files to backups and archives. With its plug-and-play simplicity and high-speed USB connectivity, accessing and transferring files is effortless. Designed for durability and performance, the WD External HDD ensures your data remains secure and easily accessible whenever you need it. Invest in dependable storage with the WD 1.5TB External Hard Disk Drive and streamline your digital life today.\"', 4999, 4798, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2024-02-24 15:34:00', '2024-02-24 15:34:00');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(71, 'Apple Watch Series7 (GPS + Cellular, 45mm)Blue Aluminium Case-Abyss Blue Sport Band  (Blue Strap, Regular)', 'Watch', 'apple-watch-series7-gps-cellular-45mmblue-aluminium-caseabyss-blue-sport-band-blue-strap-regular', 'uploads/custom-images/apple-watch-series7-gps-cellular-45mmblue-aluminium-case-abyss-blue-sport-band-blue-strap-regular-2024-02-24-09-13-17-3235.jpeg', 0, 13, 17, 0, 15, 15, '45', 0, 'Stay connected to family and friends with calls, texts and email, even when you don\'t have your phone\r\nStream music and podcasts on the go and leave your phone at home\r\nAlways-on Retina display has nearly 20% more screen area than Series 6 making everything easier to see and use\r\nThe most crack-resistant front crystal yet on an Apple Watch, IP6X dust resistance and swimproof design\r\nMeasure your blood oxygen with a powerful sensor and app\r\nTake an ECG anytime and anywhere\r\nGet high and low heart rate and irregular heart rhythm notifications', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Smartwatch, Strap, Charging Cable, User Manual</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">MKJT3HN/A</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Watch Series7 (GPS + Cellular, 45mm)Blue Aluminium Case-Abyss Blue Sport Band</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Shape</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Rectangle</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Strap Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Blue</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Strap Material</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Aluminium</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Regular</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touchscreen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistance Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">50 m</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Watchphone, Notifier, Fitness &amp; Outdoor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Material</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Aluminium Case</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Ideal For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Men &amp; Women</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible OS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iOS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand Strap Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Blue</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Blood Oxygen Sensor, Electrical Heart Sensor, Optical Heart Sensor, Altimeter, Compass, Gyroscope, Accelerometer, Ambient Light Sensor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Device</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iPhone 6s or Later with iOS 15 or Later</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Notification</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Lithium Ion</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Charge Time</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">90 min</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Life</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Upto 18 hrs (Based on Usage)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Rechargeable Battery</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Charger Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Magnetic Charger</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Digital Crown with Haptic Feedback</li></ul></td></tr></table>Platform And Storage Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">watchOS 8</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">iOS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Cores</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">S7 Dual Core Processor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Memory</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">32 GB</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Function</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Connectivity Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wi-Fi 802.11 b/g/n</li></ul></td></tr></table>Camera And Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">396 x 484 Pixel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">45 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">OLED Retina Display</li></ul></td></tr></table>Fitness And Watch Functions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Calorie Count</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Step Count</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Heart Rate Monitor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Altimeter</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Fitness Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Blood Oxygen, ECG, High and Low Heart Rate Notifications, Irregular Heart Rhythm Notification, Fall Detection</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Date &amp; Time Display</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compass</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Calendar</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Alarm Clock</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Language</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">English</li></ul></td></tr></table>Audio And Video Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Speaker</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Microphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">38.8 g</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Manufacturer Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Carry In</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '78945612', 'Apple Watch Series7 (GPS + Cellular, 45mm)Blue Aluminium Case-Abyss Blue Sport Band  (Blue Strap, Regular)', 'Alevate your active lifestyle with the Apple Watch Series 7 GPS + Cellular in 45mm size, featuring a sleek Blue Aluminium Case and vibrant Abyss Blue Sport Band. This stylish smartwatch seamlessly blends fashion with functionality, offering advanced health monitoring, fitness tracking, and connectivity on the go. With its GPS and Cellular capabilities, stay connected even when your iPhone isn\'t nearby. The Blue Strap in Regular size ensures a comfortable fit for all-day wear. Experience the ultimate in convenience and performance with the Apple Watch Series 7.', 60000, 53000, NULL, 0, 1, 1, 1, 1, 0, 1, 1, 1, '2024-02-24 15:43:17', '2024-02-24 15:43:17');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(72, 'SAMSUNG Galaxy Watch6 Classic LTE  (Silver Strap, 47mm)', 'watch', 'samsung-galaxy-watch6-classic-lte-silver-strap-47mm', 'uploads/custom-images/samsung-galaxy-watch6-classic-lte-silver-strap-47mm-2024-02-24-09-24-12-8729.jpeg', 0, 13, 17, 0, 20, 12, '48', 0, 'Introducing Contactless Secure Payments : make payments from your wrist with a simple Tap & Pay feature enabled by Samsung Wallet\r\nFreedom with LTE : Stay connected with your world even when you leave your phone behind. Enjoy seamless access to calls, messages, music streaming & much more on the go.', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Smartwatch, Wireless charger, Quick Setup Guide</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SM-R965F</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Galaxy Watch6 Classic LTE</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Silver</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Shape</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Round</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Strap Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Silver</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Strap Material</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Leather</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">47mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touchscreen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistance Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">50 m</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Fitness &amp; Outdoor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Material</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Stainless Steel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Ideal For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Men &amp; Women</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible OS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand Strap Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Silver</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Closure</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Pin Buckle</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Accelerometer, Gyro, Barometer, Ambient Light Sensor, Compass, 3D Hall Sensor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Device</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android Smartphones &amp; Tablets</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Notification</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Notification Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Text, Vibrate, Ring</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Lithium Ion</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Life</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Up to 40 hours</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Rechargeable Battery</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Charger Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wireless Charger</li></ul></td></tr></table>Platform And Storage Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wear OS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Cores</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Exynos W930</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1.4 GHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Memory</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">16 GB</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Function</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Messaging Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.3</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Email Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating Range</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10 m</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Answer, Reject, Silent Calls, Speed Dial</li></ul></td></tr></table>Camera And Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">480 x 480 Pixel</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1.47 inch</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Super AMOLED</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mode Switch, Angle Change, Zoom-in/out</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Backlight Display</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Scratch Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Fitness And Watch Functions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Calorie Count</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Step Count</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Heart Rate Monitor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Fitness Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Personalized HR Zones</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Date &amp; Time Display</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compass</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Calendar</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Alarm Clock</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Chronograph</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Language</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Multi Language</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Buttons</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Watch Functions</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">One UI 5, Samsung Health, Multi 3P Apps, Galaxy Connected Experience, Safety &amp; Emergency, Personalized HR Zone</li></ul></td></tr></table>Audio And Video Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Speaker</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Microphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Audio Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Voice Recording</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Gesture Control</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Answer Calls, Dismiss alerts &amp; calls, Quick Launch</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Voice Control</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">46.5 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">46.5 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Thickness</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10.9 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">59 mm</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '7864512', 'SAMSUNG Galaxy Watch6 Classic LTE  (Silver Strap, 47mm)', 'Discover the epitome of sophistication and technology with the SAMSUNG Galaxy Watch 6 Classic LTE. Crafted with precision and elegance, this smartwatch features a timeless Silver Strap and a distinguished 47mm case size. Seamlessly blending style with functionality, it offers LTE connectivity, allowing you to stay connected even when your phone is out of reach. Experience advanced health tracking, fitness monitoring, and personalized insights right on your wrist. Elevate your everyday with the SAMSUNG Galaxy Watch 6 Classic LTE, where style meets innovation.\"', 50000, 4599, NULL, 0, 1, 0, 1, 1, 0, 1, 1, 1, '2024-02-24 15:54:12', '2024-02-24 15:54:12');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(73, 'FITBIT Versa 3, Smartwatch  (Blue Strap, Regular)', 'Fitbit watch', 'fitbit-versa-3-smartwatch-blue-strap-regular', 'uploads/custom-images/fitbit-versa-3-smartwatch-blue-strap-regular-2024-02-24-09-32-07-9631.jpeg', 0, 13, 17, 0, 21, 12, '45', 0, 'Leave your phone at home and track pace & distance with built-in GPS, 24/7 heart rate tracking & Active Zone Minutes, Store and play music plus Spotify* - Connect & Control from your wrist, Talk hands-free with a built-in speaker, send callers to voicemail, Google Assistant and Amazon Alexa Built-in. See fitbit.com/voice for details, 6+ day battery with fast charge** *Subscriptions required for use of music service; not available in all countries. **Battery life varies with use and other factors. 12-minutes of fast charging adds 24 hours of battery life.', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 x Watch with Small Band, 1 x Additional Large Band, 1 x Charging Cable, 1 x Instruction Manual</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">FB511GLNV</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Versa 3,</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Shape</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Curved</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Strap Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Blue</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Strap Material</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Elastomer</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Regular</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touchscreen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Water Resistance Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">50 m</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Usage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Health &amp; Medical, Fitness &amp; Outdoor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dial Material</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Anodized Aluminum</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Ideal For</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Men &amp; Women</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible OS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android &amp; iOS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand Strap Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Blue</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Maximum Operating Altitude</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8534 m</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Closure</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Loop &amp; Peg</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3-Axis Accelerometer Sensor, Altimeter Sensor, Built-in GPS Receiver + GLONASS Sensor, Optical Heart Rate Tracker, Device Temperature Sensor (skin temperature variation available through Premium only), Ambient Light Sensor, Vibration Motor Sensor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Device</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Apple iOS 12.2 or Higher, Android OS 7.0 or Higher</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Notification</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Calls, Texts, Calendar Events and Apps like Gmail and Facebook—Plus Send Quick Replies and Voice Replies Right from your Wrist</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Notification Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Ringer, Vibration</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Lithium Polymer</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Charge Time</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">120 minutes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Life</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6 Days &amp; Above</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Rechargeable Battery</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Charger Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB Cable, 4-Pin Magnetic Charging</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Google Assistant &amp; Alexa Built-in, Always-on Display Mode, Fast Charging, Control Spotify, Take Bluetooth calls from Wrist, Notifications, Hundreds of Apps &amp; Clock Faces, 6+ Day Battery Life, Swimproof, Water-Resistant, Voice Assistant</li></ul></td></tr></table>Platform And Storage Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Proprietary OS</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Function</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Messaging Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Email Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Accept or Reject Calls, Adjust Volume, Mute Function, Send Caller to Voicemail</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Third Party App Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">App Store</li></ul></td></tr></table>Camera And Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">15.9 inch</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">AMOLED</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Backlight Display</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Scratch Resistant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Display Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Always-on Display, Brightness Control, Screen Wake, Screen Timeout</li></ul></td></tr></table>Fitness And Watch Functions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Calorie Count</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Step Count</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Heart Rate Monitor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Altimeter</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Fitness Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Sleep Duration, Sleep Stages, Sleep Score, 24/7 Heart Rate, Resting Heart Rate, VO2 Max, Active Zone Minutes, SpO2 Levels, Exercise Modes + SmartTrack, On-Wrist Workouts, Reminders To Move, Floor Climbed, Smart Wake, Built-in GPS, Menstrual Health Tracking, Sleep Tracking</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Date &amp; Time Display</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compass</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Calendar</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Alarm Clock</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Chronograph</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Language</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">English</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Number of Buttons</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Watch Functions</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Do Not Disturb, Sleep Mode, Focus Mode, Widget on Screen</li></ul></td></tr></table>Audio And Video Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Speaker</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Microphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Speaker Volume</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Adjust Volume dB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Voice Control</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">40.4 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">40.4 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Thickness</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">12.3 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">20 g</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Warranty Provided by the Manufacturer from Date of Purchase. For our Full Return Policy, see https://www.fitbit.com/legal/returns-and-warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Warranty Provided by the Manufacturer from Date of Purchase. For our Full Return Policy, see https://www.fitbit.com/legal/returns-and-warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Warranty Provided by the Manufacturer from Date of Purchase. For our full return policy, see https://www.fitbit.com/legal/returns-and-warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">International Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '31322', 'FITBIT Versa 3, Smartwatch  (Blue Strap, Regular)', 'Embrace a healthier lifestyle with the FITBIT Versa 3 Smartwatch. Featuring a sleek design and a vibrant Blue Strap in Regular size, this smartwatch combines style with functionality. Track your fitness goals, monitor your heart rate, and get personalized insights to optimize your workouts and overall wellness. With built-in GPS and advanced health features, stay connected and motivated on the go. Elevate your fitness journey with the FITBIT Versa 3 Smartwatch and take control of your health like never before.\"', 18999, 1530, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2024-02-24 16:02:07', '2024-02-24 16:02:07');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(74, 'HP USB 2.0/3.0 128 GB Pen Drive  (Silver)', 'pendrive', 'hp-usb-2030-128-gb-pen-drive-silver', 'uploads/custom-images/hp-usb-2030-128-gb-pen-drive-silver-2024-02-24-10-16-26-6988.jpeg', 0, 16, 25, 0, 22, 13, '89', 0, 'Introducing our High-Speed USB Flash Drive, your reliable companion for storing, sharing, and transferring data with ease. This sleek and compact pen drive offers a convenient solution for all your digital storage needs, whether it\'s documents, photos, videos, or music.', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">pendrive</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB 2.0/3.0</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Read Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">100</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Write Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">120</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">More durable than other storage options</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Net Quantity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Off side</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Replacement</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Damaged product not received</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6 manth</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">International Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '6783202', 'HP USB 2.0/3.0 128 GB Pen Drive  (Silver)', 'Get the ultimate in portable storage with the HP USB 2.0/3.0 128GB Pen Drive in Silver. This high-capacity USB drive offers lightning-fast data transfer speeds and universal compatibility with USB 2.0 and USB 3.0 ports. Safely store and transport your documents, photos, videos, and more, all while enjoying the sleek, durable design of this reliable storage solution. Whether you\'re backing up important files or sharing media between devices, the HP 128GB Pen Drive delivers convenience and performance in one compact package. Elevate your digital storage experience with HP today.\"', 900, 487, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 16:46:26', '2024-02-24 16:47:03'),
(75, 'SanDisk SDDDC4-128G-I35 128 GB OTG Drive  (Silver, Type A to Type C)', 'sandisk pendrive', 'sandisk-sdddc4128gi35-128-gb-otg-drive-silver-type-a-to-type-c', 'uploads/custom-images/sandisk-sdddc4-128g-i35-128-gb-otg-drive-silver-type-a-to-type-c-2024-02-24-10-23-31-8755.jpeg', 0, 16, 25, 0, 23, 12, '31', 0, 'You can seamlessly transfer data between your Type-C smartphone, tablet, or Mac and Type-A computer with this two-in-one SanDisk Ultra Dual Drive Luxe USB Type-C Flash Drive. Built with USB 3.1 Gen 1 connectivity offering read speeds of up to 150 MB/s, this drive lets you quickly move files and free up space on your device. Moreover, you can use the SanDisk Memory zone app to enable automatic backup, ensuring that a copy of your valuable data is saved on the drive.', 'Specifications<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 PENDRIVE</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SDDDC4-128G-I35</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Part Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SDDDC4-128G-I35</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Net Quantity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '789456123', 'SanDisk SDDDC4-128G-I35 128 GB OTG Drive  (Silver, Type A to Type C)', 'Experience seamless data transfer with the SanDisk SDDDC4-128G-I35 128GB OTG Drive in Silver, designed with Type A to Type C connectivity. This versatile on-the-go drive offers convenient storage solutions for your USB Type-C compatible devices. Easily transfer files, photos, videos, and documents between smartphones, tablets, and laptops with ease. With 128GB of storage capacity, you\'ll have plenty of space for all your digital content. Compact, durable, and efficient, the SanDisk OTG Drive is the perfect companion for your mobile lifestyle. Streamline your data management and storage needs with SanDisk today', 2100, 1998, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 16:53:31', '2024-02-24 16:53:31'),
(76, 'SanDisk Ultra 64 GB MicroSDXC Class 10 140 MB/s Memory Card', 'Mobile memory cards', 'sandisk-ultra-64-gb-microsdxc-class-10-140-mbs-memory-card', 'uploads/custom-images/sandisk-ultra-64-gb-microsdxc-class-10-140-mbs-memory-card-2024-02-24-10-28-26-9002.jpeg', 0, 16, 24, 0, 23, 12, '21', 0, 'For Camera, Computer, Gaming Console, Mobile, Tablet\r\nCapacity: 64 GB\r\nMicroSDXC\r\nClass 10\r\nRead Speed: 140 MB/s', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Ultra MicroSDXC Card</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Pack of</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Series</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Ultra</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SDSQUAB-064G-GN6MN</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Red, Silver</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Write Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">140 MB/s</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">W x H x D</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">14.99 mm x 10.92 mm x 1.02 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4.54 g</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Net Quantity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr></table>Product Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Firmware Upgrade Report</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Error Correcting Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Up to 140MB/s transfer speeds to move up to 1000 photos per minute</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Maximum Operating Temperature</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">50 degree C</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Minimum Operating Temperature</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10 degree C</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Maximum Storage Temperature</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">25 degree C</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Maximum Storage Humidity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">70 %</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Minimum Storage Humidity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">20 %</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Manufacturing Defects</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">For any warranty related issues, please call to https://www.westerndigital.com/support/international-phone-numbers (1800-419-5592/1800-120-5899 From 9:00 AM to 6:00 PM expect National Holidays)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Physical Damage</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10 Years Warranty</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">10 Year</li></ul></td></tr></table>Manufacturing, Packaging and Import Info', NULL, '7894200', 'SanDisk Ultra 64 GB MicroSDXC Class 10 140 MB/s Memory Card', 'Elevate your device\'s storage capacity with the SanDisk Ultra 64GB MicroSDXC Class 10 Memory Card. Offering blazing-fast read speeds of up to 140 MB/s, this Class 10 memory card ensures seamless performance for storing and accessing your photos, videos, music, and other digital files. Ideal for smartphones, tablets, action cameras, and more, it provides ample space for your multimedia needs. With its reliable performance and high-speed data transfer capabilities, the SanDisk Ultra 64GB MicroSDXC memory card is your go-to solution for expanding storage and capturing life\'s moments with ease', 900, 599, NULL, 0, 1, 0, 1, 1, 1, 1, 1, 1, '2024-02-24 16:58:26', '2024-02-24 16:58:26'),
(77, 'Seagate Internal 1 TB Desktop Internal Hard Disk Drive (HDD) (SATA)  (Interface: SATA, Form Factor: 3.5 inch)', 'Internal hard-drive', 'seagate-internal-1-tb-desktop-internal-hard-disk-drive-hdd-sata-interface-sata-form-factor-35-inch', 'uploads/custom-images/seagate-internal-1-tb-desktop-internal-hard-disk-drive-hdd-sata-interface-sata-form-factor-35-inch-2024-02-24-10-33-02-6266.jpeg', 0, 16, 25, 0, 20, 3, '25', 0, 'Type: HDD\r\nInterface: SATA\r\nForm Factor: 3.5 inch\r\nCapacity: 1 TB\r\nDesktop', 'SpecificationsIn The Box<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sales Package</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1</li></ul></td></tr></table>General<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Seagate</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model ID</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SATA</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Series</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Internal</li></ul></td></tr></table>Drive Configuration<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Device</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Desktop</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Device Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3.5 inch HDD</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Drive Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 TB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Interface</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SATA</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Form Factor</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3.5 inch</li></ul></td></tr></table>', NULL, '312122', 'Seagate Internal 1 TB Desktop Internal Hard Disk Drive (HDD) (SATA)  (Interface: SATA, Form Factor: 3.5 inch)', 'Seagate Internal 1 TB Desktop Internal Hard Disk Drive (HDD) (SATA)  (Interface: SATA, Form Factor: 3.5 inch) description', 4999, 2590, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-24 17:03:03', '2024-02-24 17:03:03');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(78, 'OnePlus Nord CE 3 Lite 5G (Chromatic Gray, 256 GB)  (8 GB RAM)', 'Mobile', 'oneplus-nord-ce-3-lite-5g-chromatic-gray-256-gb-8-gb-ram', 'uploads/custom-images/oneplus-nord-ce-3-lite-5g-chromatic-gray-256-gb-8-gb-ram-2024-02-25-09-18-56-3074.jpeg', 0, 3, 7, 0, 24, 6565323, '12', 0, '8 GB RAM | 256 GB ROM\r\n17.07 cm (6.72 inch) Display\r\n108MP Rear Camera\r\n5000 mAh Battery', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">In The Box</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Phone, charger, Data cable, sim ejector, user guide</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">CPH2467</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Nord CE 3 Lite 5G</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Chromatic Gray</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Browse Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Smartphones</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Dual Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Hybrid Sim Slot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touchscreen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OTG Compatible</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">17.07 cm (6.72 inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2400x1080</li></ul></td></tr></table>Os &amp; Processor Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android Android 13</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Snapdragon</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Core</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Octa Core</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Clock Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.2 GHz</li></ul></td></tr></table>Memory &amp; Storage Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">256 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Memory Card Slot Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Dedicated Slot</li></ul></td></tr></table>Camera Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">108MP Rear Camera</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dual Camera Lens</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Primary Camera</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Network Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5G</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Supported Networks</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5G</li></ul></td></tr></table>Battery &amp; Power Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5000 mAh</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Domestic Warranty of 12 months on phone &amp; 6 months on accessories</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">NA</li></ul></td></tr></table>', NULL, '53122232', 'OnePlus Nord CE 3 Lite 5G (Chromatic Gray, 256 GB)  (8 GB RAM)', 'Descriptio for this product   OnePlus Nord CE 3 Lite 5G (Chromatic Gray, 256 GB)  (8 GB RAM)', 21999, 18555, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-25 15:48:56', '2024-02-25 15:50:04');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(79, 'vivo T2x 5G (Marine Blue, 128 GB)  (6 GB RAM)#JustHere', 'Mobile', 'vivo-t2x-5g-marine-blue-128-gb-6-gb-ramjusthere', 'uploads/custom-images/vivo-t2x-5g-marine-blue-128-gb-6-gb-ramjusthere-2024-02-25-09-47-51-7257.jpeg', 0, 3, 7, 16, 25, 5, '15', 0, 'With the superb Vivo T2x 5G, you can take advantage of great pictures and a flawless user experience. With the Vivo T2x 5G, you can experience exceptional performance owing to its 7 nm 5G CPU, the octa-core Dimensity 6020, with a top clock speed of 2.2 GHz. Additionally, the 50 MP main camera on this smartphone beautifully catches every detail you see. Additionally, Super Night Selfie employs noise cancellation technology in conjunction with an Aura Screen Light to produce a calming light that is effective in low light. The pioneering Extended RAM 3.0 technology also uses ROM to expand RAM with a maximum capacity of 8 GB. This enables smooth app switching and allows up to 27 active applications to run in the background.', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">In The Box</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Handset, USB Power Adapter, USB Cable, Sim Eject Tool, Phone Case, Protective Film (Applied), Documentation</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">V2253|V2312</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">T2x 5G</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Marine Blue</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Browse Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Smartphones</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Dual Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Hybrid Sim Slot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touchscreen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OTG Compatible</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Quick Charging</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">16.71 cm (6.58 inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2408 x 1080 Pixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Resolution Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Full HD+</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Full HD+ LCD Display</li></ul></td></tr></table>Os &amp; Processor Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android 13</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mediatek</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mediatek Dimensity 6020</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Core</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Octa Core</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Clock Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2.2 GHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating Frequency</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3G WCDMA: B1/B5/B8, 4G FDD LTE: B1/B3/B5/B8, 4G TDD LTE: B38/B40/B41 (120M), 5G: n1/n3/n8/n28A/n77/n78</li></ul></td></tr></table>Memory &amp; Storage Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">128 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">6 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Memory Card Slot Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Hybrid Slot</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Log Memory</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Camera Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera Available</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">50MP + 2MP</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Dual Camera Setup: 50MP (f/1.8 Aperture) + 2MP (f/2.4 Aperture), Camera Features: Photo, Night, Portrait, Video, 50 MP, Panorama, Live Photo, Slo-Mo, Timelapse, Pro, Documents</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera Available</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8MP Front Camera</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8MP Front Camera Setup: (f/2.0 Aperture)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Flash</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Rear Flashlight</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Full HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dual Camera Lens</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Primary Camera</li></ul></td></tr></table>Call Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Phone Book</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Network Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5G, 4G, 3G</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Supported Networks</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5G, 4G LTE, WCDMA</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internet Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5G, 4G, 3G, Wi-Fi</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">3G</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Pre-installed Browser</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Micro USB Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB (Type C)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.1</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Supports 2.4 GHz and 5 GHz Dual Band</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi Hotspot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">NFC</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">USB Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Other Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Smartphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Nano Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">User Interface</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Funtouch OS 13 (Based on Android 13)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Removable Battery</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SMS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Access</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Dual Sim Dual Standby (DSDS)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensors</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Accelerometer, Ambient Light Sensor, Proximity Sensor, E-Compass, Fingerprint Sensor, Gyroscope</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Handset Material: 2.5D Plastic, 18W Fast Charging, Video Recording: MP4</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">GPS, BEIDOU, GLONASS, GALILEO, QZSS</li></ul></td></tr></table>Multimedia Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">FM Radio</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">FM Radio Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Audio Formats</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">WAV, MP3, MP2, MP1, MIDI, Vorbis, APE, FLAC, AAC, OPUS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Formats</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">MP4, 3GP, MKV, FLV</li></ul></td></tr></table>Battery &amp; Power Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5000 mAh</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Lithium</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">75.6 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">164.05 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8.15 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">184 g</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year of Device &amp; 6 Months for Inbox Accessories</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">NA</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '23212053', 'vivo T2x 5G (Marine Blue, 128 GB)  (6 GB RAM)#JustHere', 'Capture stunning moments, experience seamless performance, and stay powered all day with the vivo T2x 5G. This stylish Marine Blue phone packs a punch with a powerful 50MP main camera, a long-lasting 5000mAh battery, and smooth performance thanks to its 6GB RAM and Dimensity 6020 processor.', 18999, 17555, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-25 16:17:51', '2024-02-25 16:17:51');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(80, 'OPPO A18 (Glowing Blue, 128 GB)  (4 GB RAM)#JustHere', 'Mobile', 'oppo-a18-glowing-blue-128-gb-4-gb-ramjusthere', 'uploads/custom-images/oppo-a18-glowing-blue-128-gb-4-gb-ramjusthere-2024-02-25-09-53-22-7849.jpeg', 0, 3, 7, 16, 26, 1, '78', 0, '4 GB RAM | 128 GB ROM\r\n16.66 cm (6.56 inch) HD+ Display\r\n8MP + 2MP | 5MP Front Camera\r\n5000 mAh Battery\r\nHelio G85 Processor', 'SpecificationsGeneral<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">In The Box</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Handset, Charger, USB Data Cable, Sim Ejector Tool, Quick Guide, Safety Guide, Protective Case</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">CPH2591</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">A18</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Glowing Blue</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Browse Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Smartphones</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Dual Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Hybrid Sim Slot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touchscreen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">OTG Compatible</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">16.66 cm (6.56 inch)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1612 x 720 Pixels</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Resolution Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">HD+</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPU</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mali G52 MC2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">HD+ LCD Display</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Colors</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">16.7 Million</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Display Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Screen Ratio: 89.80%, Refresh Rate: 90 Hz/60 Hz, 90Hz Touch Sampling Rate, Color Gamut: Vivid Mode- 100% DCI-P3, Gentle Mode- 100% sRGB, Brightness: 720 Nits</li></ul></td></tr></table>Os &amp; Processor Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating System</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Android 13</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Mediatek</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Helio G85</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Processor Core</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Octa Core</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Clock Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 GHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Operating Frequency</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2G GSM: 850 MHz/900 MHz/1800 MHz/1900 MHz, 3G WCDMA: B1/B5/B8, 4G FDD LTE: B1/B3/B5/B7/B8/B20/B28, 4G TD LTE: B38/B40/B41</li></ul></td></tr></table>Memory &amp; Storage Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internal Storage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">128 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">RAM</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4 GB</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Call Log Memory</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Camera Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera Available</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8MP + 2MP</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Primary Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Dual Camera Setup: 8MP Main Camera (f/2.0 Aperture, FOV: 78 Degree, 4P Lens, Auto Focus) + 2MP Mono Camera (f/2.4 Aperture, FOV: 89.1 Degree, 3P Lens, Fixed Focus), Features: Night, Video, Photo, Portrait, Timelapse, Pro, Pano, Sticker, and Google Lens</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera Available</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5MP Front Camera</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Secondary Camera Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Front Camera: 5MP (f/2.2 Aperture, FOV: 76.8 Degree, 3P Lens, Fixed Focus), Features: Video, Photo, Portrait, Timelapse, Pano, Sticker</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Full HD Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Recording Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Rear Camera: 1080p (at 30 fps), 720p (at 30 fps) | Front Camera: 1080p (at 30 fps), 720p (at 30 fps)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Frame Rate</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">30 fps</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dual Camera Lens</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Primary Camera</li></ul></td></tr></table>Call Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Call Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Speaker Phone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Connectivity Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Network Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4G, 3G, 2G</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Supported Networks</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4G LTE, WCDMA, GSM</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Internet Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">4G, 3G, Wi-Fi</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">3G</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Micro USB Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">USB Type-C</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Bluetooth Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">v5.3</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi Version</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Wi-Fi 5 (802.11 ac), 802.11 a/b/g/n, WLAN 2.4 GHz, WLAN 5 GHz, WLAN Display, WLAN Tethering, 1x1 SOSO, Wi-Fi 5 GHz 80MHz</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wi-Fi Hotspot</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">USB Connectivity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Audio Jack</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">3.5mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Map Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Google Maps, Other Third Party Map Apps</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Support</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Other Details<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Smartphone</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SIM Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Nano Sim</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">User Interface</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">ColorOS 13.1 (Based on Android 13)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SMS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensors</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Geomagnetic Sensor, Light Sensor, Optical Proximity Sensor, Accelerometer, Step Counter, Fingerprint Sensor, Facial Recoginition Sensor</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Other Features</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">EMMC 5.1, Supports Phone Storage, Bluetooth Audio Codec: SBC, AAC, aptX HD, LDAC</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Assisted GPS (A-GPS), Beidou: B11, GPS: L1, GLONASS: G1, GALILEO: E1, QZSS: L1, WLAN and Cellular Network Positioning</li></ul></td></tr></table>Battery &amp; Power Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Capacity</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">5000 mAh</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">75.03 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">163.74 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">8.16 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">188 g</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year Manufacturer Warranty for Phone and 6 Months Warranty for In the Box Accessories</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">NA</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Domestic Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Year</li></ul></td></tr></table>', NULL, '789456133', 'OPPO A18: Glowing Style, Everyday Performance.', 'Budget-conscious users seeking a stylish and capable phone.\r\nThose who prioritize storage space for multimedia content.\r\nUsers who value everyday performance and smooth operation.\r\nTrendsetters who appreciate unique and eye-catching designs.', 15499, 10000, NULL, 0, 1, 1, 1, 0, 1, 1, 1, 1, '2024-02-25 16:23:22', '2024-02-25 16:23:22');
INSERT INTO `products` (`id`, `name`, `short_name`, `slug`, `thumb_image`, `vendor_id`, `category_id`, `sub_category_id`, `child_category_id`, `brand_id`, `qty`, `weight`, `sold_qty`, `short_description`, `long_description`, `video_link`, `sku`, `seo_title`, `seo_description`, `price`, `offer_price`, `tags`, `show_homepage`, `is_undefine`, `is_featured`, `new_product`, `is_top`, `is_best`, `status`, `is_specification`, `approve_by_admin`, `created_at`, `updated_at`) VALUES
(81, 'Canon EOS 3000D DSLR Camera 1 Camera Body, 18 - 55 mm Lens  (Black)', 'Camera', 'canon-eos-3000d-dslr-camera-1-camera-body-18-55-mm-lens-black', 'uploads/custom-images/canon-eos-3000d-dslr-camera-1-camera-body-18-55-mm-lens-black-2024-02-25-09-57-14-4199.jpeg', 0, 15, 22, 0, 19, 12, '32', 0, 'elf-Timer, Type C and Mini HDMI, 9 Auto Focus Points, 3x Optical Zoom, WiFi, Full HD, Video Recording at 1080 p on 30fps, APS-C CMOS sensor-which is 25 times larger than a typical Smartphone sensor.\r\nEffective Pixels: 18 MP\r\nSensor Type: CMOS\r\nWiFi Available\r\nFull HD', 'SpecificationsIn The Box<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"URwL2w col col-12-12\" style=\"margin: 0px; padding: 0px; width: 748.062px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Camera Body, 18 - 55 mm Lens, Battery, Battery Charger</li></ul></td></tr></table>General<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Canon</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Number</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">EOS 3000D</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Model Name</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">EOS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">SLR Variant</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1 Camera Body, 18 - 55 mm Lens</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Brand Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">DSLR</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Color</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Black</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Effective Pixels</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">18 MP</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Tripod Socket</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Wifi</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">GPS</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr></table>Sensor Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Sensor Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">CMOS</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Image Sensor Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">22.3 x 14.9mm</li></ul></td></tr></table>Lens Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Optical Zoom</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">35x</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Lens Mount</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Canon EF Mount</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Dust Reduction</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Viewfinder Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Viewfinder Coverage</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Approximate: 95 %</li></ul></td></tr></table>Shutter Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Shutter Speed</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1/4000 sec</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Self-timer</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Yes</li></ul></td></tr></table>Image Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Image Format</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">JPEG, RAW (14-bit Canon original)</li></ul></td></tr></table>Video Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Resolution</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">1920 x 1080</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Video Quality</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Full HD</li></ul></td></tr></table>Display Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Digital, single-lens reflex, AF / AE camera with built-in flash</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Display Size</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Touch Screen</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">No</li></ul></td></tr></table>Storage Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Compatible Card</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">SD Card</li></ul></td></tr></table>Power Features<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Battery Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Lithium Battery</li></ul></td></tr></table>Dimensions<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Width</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">129</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Height</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">101.6</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Depth</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">77.1 mm</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Weight</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">475 g</li></ul></td></tr></table>Warranty<table class=\"_14cfVK\" style=\"margin: 0px; padding: 0px; width: 748.062px;\"><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Warranty Summary</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">2 Year Warranty (1 year standard warranty + 1 year additional warranty from the date of purchase made by the customer.)</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Service Type</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Carry In</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px 0px 16px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Warranty of the product is limited to only manufacturing defect on camera body &amp; lens.</li></ul></td></tr><tr class=\"_1s_Smc row\" style=\"margin: 0px; padding: 0px; flex-direction: row; width: 748.062px;\"><td class=\"_1hKmbr col col-3-12\" style=\"margin: 0px; padding: 0px 8px 0px 0px; width: 187.012px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">Not Covered in Warranty</td><td class=\"URwL2w col col-9-12\" style=\"margin: 0px; padding: 0px; width: 561.037px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;\"><ul style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px;\"><li class=\"_21lJbe\" style=\"margin: 0px; padding: 0px; list-style: none;\">Warranty does not cover any external accessories (such as battery, cable, carrying bag), damage caused to the product due to improper installation by customer.</li><li></li></ul></td></tr></table>', NULL, '789456123', 'Canon EOS 3000D DSLR Camera 1 Camera Body, 18 - 55 mm Lens  (Black)', 'Step into the world of DSLR photography with the Canon EOS 3000D, a versatile camera ideal for beginners and enthusiasts alike. Capture stunning photos and Full HD videos with the powerful 18MP APS-C CMOS sensor and DIGIC 4+ image processor. Explore creative possibilities with 9-point autofocus, Scene Intelligent Auto mode, and various creative filters.', 35099, 32000, NULL, 0, 1, 1, 1, 1, 1, 1, 1, 1, '2024-02-25 16:27:14', '2024-02-25 16:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_galleries`
--

INSERT INTO `product_galleries` (`id`, `product_id`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-02-8827.jpg', 1, '2022-09-21 08:40:02', '2022-09-21 08:40:02'),
(7, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-07-9431.jpg', 1, '2022-09-21 08:40:07', '2022-09-21 08:40:07'),
(8, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-12-2258.jpg', 1, '2022-09-21 08:40:12', '2022-09-21 08:40:12'),
(9, 12, 'uploads/custom-images/Gallery-2022-09-21-02-40-16-6534.jpg', 1, '2022-09-21 08:40:16', '2022-09-21 08:40:16'),
(10, 11, 'uploads/custom-images/Gallery-2022-09-21-02-43-39-2412.webp', 1, '2022-09-21 08:43:39', '2022-09-21 08:43:39'),
(11, 11, 'uploads/custom-images/Gallery-2022-09-21-02-44-58-3563.jpg', 1, '2022-09-21 08:44:58', '2022-09-21 08:44:58'),
(12, 11, 'uploads/custom-images/Gallery-2022-09-21-02-45-26-2851.jpg', 1, '2022-09-21 08:45:26', '2022-09-21 08:45:26'),
(13, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-25-6622.jpg', 1, '2022-09-21 08:47:25', '2022-09-21 08:47:25'),
(14, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-32-8680.jpg', 1, '2022-09-21 08:47:32', '2022-09-21 08:47:32'),
(15, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-39-2509.jpg', 1, '2022-09-21 08:47:39', '2022-09-21 08:47:39'),
(16, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-44-6550.jpg', 1, '2022-09-21 08:47:44', '2022-09-21 08:47:44'),
(17, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-47-2815.jpg', 1, '2022-09-21 08:47:47', '2022-09-21 08:47:47'),
(18, 10, 'uploads/custom-images/Gallery-2022-09-21-02-47-59-9386.jpg', 1, '2022-09-21 08:47:59', '2022-09-21 08:47:59'),
(20, 1, 'uploads/custom-images/Gallery-2022-09-21-02-48-25-9186.jpg', 1, '2022-09-21 08:48:25', '2022-09-21 08:48:25'),
(21, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-41-4757.jpg', 1, '2022-09-21 08:49:41', '2022-09-21 08:49:41'),
(22, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-44-6374.jpg', 1, '2022-09-21 08:49:44', '2022-09-21 08:49:44'),
(23, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-48-9088.jpg', 1, '2022-09-21 08:49:48', '2022-09-21 08:49:48'),
(24, 7, 'uploads/custom-images/Gallery-2022-09-21-02-49-53-4805.jpg', 1, '2022-09-21 08:49:53', '2022-09-21 08:49:53'),
(25, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-2476.jpg', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(26, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-5940.jpg', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(27, 8, 'uploads/custom-images/Gallery-2022-09-21-02-50-49-4084.png', 1, '2022-09-21 08:50:49', '2022-09-21 08:50:49'),
(28, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5855.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(29, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-3530.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(30, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-5453.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(31, 4, 'uploads/custom-images/Gallery-2022-09-21-02-51-41-6720.png', 1, '2022-09-21 08:51:41', '2022-09-21 08:51:41'),
(32, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-2303.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(33, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-9034.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(34, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-6919.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(35, 9, 'uploads/custom-images/Gallery-2022-09-21-02-52-53-3825.jpg', 1, '2022-09-21 08:52:53', '2022-09-21 08:52:53'),
(36, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-7427.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(37, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-4974.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(38, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-1292.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(39, 2, 'uploads/custom-images/Gallery-2022-09-21-02-53-15-2712.jpg', 1, '2022-09-21 08:53:15', '2022-09-21 08:53:15'),
(40, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7986.jpg', 1, '2022-09-21 08:54:04', '2022-09-21 08:54:04'),
(41, 3, 'uploads/custom-images/Gallery-2022-09-21-02-54-04-7042.jpg', 1, '2022-09-21 08:54:04', '2022-09-21 08:54:04'),
(54, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-36-6657.jpg', 0, '2023-04-30 08:46:36', '2023-04-30 08:47:17'),
(55, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-36-8527.jpg', 1, '2023-04-30 08:46:36', '2023-04-30 08:46:36'),
(56, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-36-2685.jpg', 1, '2023-04-30 08:46:36', '2023-04-30 08:46:36'),
(57, 49, 'uploads/custom-images/Gallery-2023-04-30-02-46-56-3037.jpg', 1, '2023-04-30 08:46:56', '2023-04-30 08:46:56'),
(58, 49, 'uploads/custom-images/Gallery-2023-04-30-02-47-10-4610.jpg', 1, '2023-04-30 08:47:10', '2023-04-30 08:47:10');

-- --------------------------------------------------------

--
-- Table structure for table `product_reports`
--

CREATE TABLE `product_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL DEFAULT 0,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_vendor_id` int(11) NOT NULL DEFAULT 0,
  `review` text NOT NULL,
  `rating` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `product_id`, `user_id`, `product_vendor_id`, `review`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 4, 0, 'Corrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enimCorrupti dolor enim', 4, 1, '2022-09-21 07:36:23', '2022-09-21 07:36:55'),
(2, 7, 4, 0, 'Enim et ducimus fug', 4, 1, '2022-09-21 07:38:38', '2022-09-21 08:26:36'),
(3, 1, 4, 0, 'Nemo ut ad voluptate', 3, 1, '2022-09-21 07:38:46', '2024-02-08 07:12:39'),
(4, 11, 4, 0, 'Laboris qui voluptas', 2, 0, '2022-09-21 07:39:02', '2024-01-30 03:46:56'),
(5, 13, 7, 0, 'dfafds', 5, 1, '2022-09-26 07:40:14', '2024-02-08 07:12:32'),
(7, 13, 5, 0, 'ok', 5, 1, '2022-09-26 15:35:58', '2024-02-08 07:12:26'),
(8, 1, 5, 0, 'gghj', 5, 0, '2022-09-26 16:28:55', '2022-09-26 16:28:55'),
(9, 7, 7, 0, 'The best ever', 0, 0, '2022-11-22 23:22:03', '2024-01-30 03:46:47'),
(10, 37, 7, 6, 'aaa', 5, 0, '2022-11-23 14:29:33', '2024-01-30 03:46:48'),
(11, 34, 7, 4, 'good', 4, 0, '2023-04-18 11:35:37', '2024-01-30 03:46:49'),
(12, 37, 45, 6, 'Good', 5, 0, '2023-05-02 05:08:27', '2024-01-30 03:46:51'),
(13, 3, 45, 0, 'better', 4, 0, '2023-05-02 05:08:55', '2024-01-30 03:46:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_specifications`
--

CREATE TABLE `product_specifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_specification_key_id` int(11) NOT NULL,
  `specification` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specifications`
--

INSERT INTO `product_specifications` (`id`, `product_id`, `product_specification_key_id`, `specification`, `created_at`, `updated_at`) VALUES
(2, 39, 1, 'ok', '2023-01-03 04:33:23', '2023-01-03 04:33:23'),
(4, 53, 1, 'high', '2024-02-02 06:30:12', '2024-02-02 06:30:12'),
(5, 7, 1, '4', '2024-02-09 03:50:46', '2024-02-09 03:50:46'),
(6, 7, 3, 'blour', '2024-02-09 03:50:46', '2024-02-09 03:50:46'),
(7, 13, 2, 'high', '2024-02-09 03:54:44', '2024-02-09 03:54:44'),
(8, 13, 3, '4', '2024-02-09 03:55:15', '2024-02-09 03:55:15'),
(9, 53, 2, 'high', '2024-02-09 04:05:06', '2024-02-09 04:05:06'),
(11, 56, 2, 'high', '2024-02-24 08:02:36', '2024-02-24 08:02:36'),
(12, 60, 2, 'high', '2024-02-24 12:25:05', '2024-02-24 12:25:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_specification_keys`
--

CREATE TABLE `product_specification_keys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_specification_keys`
--

INSERT INTO `product_specification_keys` (`id`, `key`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Color', 1, '2022-11-22 01:33:29', '2024-02-08 08:16:04'),
(2, 'red', 1, '2024-02-08 08:16:15', '2024-02-08 08:16:15'),
(3, 'blue', 1, '2024-02-08 08:16:21', '2024-02-08 08:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_variants`
--

CREATE TABLE `product_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variants`
--

INSERT INTO `product_variants` (`id`, `product_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 13, 'red', 1, '2022-11-23 04:56:45', '2022-11-23 04:56:45'),
(7, 36, '5KG', 1, '2023-04-09 17:58:35', '2023-04-09 17:58:35'),
(8, 36, '3kg', 1, '2023-04-09 18:11:40', '2023-04-09 18:11:40'),
(9, 49, 'tet', 0, '2023-04-30 08:47:40', '2023-04-30 08:47:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_variant_items`
--

CREATE TABLE `product_variant_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_variant_id` int(11) NOT NULL,
  `product_variant_name` varchar(191) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variant_items`
--

INSERT INTO `product_variant_items` (`id`, `product_variant_id`, `product_variant_name`, `product_id`, `name`, `price`, `status`, `is_default`, `created_at`, `updated_at`) VALUES
(6, 7, '5KG', 36, 'TV', 23434, 1, 0, '2023-04-09 17:58:58', '2023-04-09 17:58:58'),
(8, 9, 'tet', 49, 'test 1 yupdate', 23, 1, 0, '2023-04-30 08:47:51', '2023-04-30 08:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `pusher_credentails`
--

CREATE TABLE `pusher_credentails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `app_id` varchar(255) NOT NULL,
  `app_key` varchar(255) NOT NULL,
  `app_secret` varchar(255) NOT NULL,
  `app_cluster` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pusher_credentails`
--

INSERT INTO `pusher_credentails` (`id`, `app_id`, `app_key`, `app_secret`, `app_cluster`, `created_at`, `updated_at`) VALUES
(1, '1750107', 'c782d0aa2e60f0a0ab28', 'b438a807e84a0623583d', 'ap2', NULL, '2024-02-01 08:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `razorpay_payments`
--

CREATE TABLE `razorpay_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `country_code` varchar(191) NOT NULL,
  `currency_code` varchar(191) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `key` text DEFAULT NULL,
  `secret_key` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `razorpay_payments`
--

INSERT INTO `razorpay_payments` (`id`, `status`, `name`, `currency_rate`, `country_code`, `currency_code`, `description`, `image`, `color`, `key`, `secret_key`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ecommerce', 74.66, 'IN', 'INR', 'This is description', 'uploads/website-images/razorpay-2021-12-14-06-35-49-6602.png', '#2d15e5', 'rzp_test_K7CipNQYyyMPiS', 'zSBmNMorJrirOrnDrbOd1ALO', NULL, '2022-11-18 02:24:09');

-- --------------------------------------------------------

--
-- Table structure for table `save_for_laters`
--

CREATE TABLE `save_for_laters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_mail_logs`
--

CREATE TABLE `seller_mail_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_withdraws`
--

CREATE TABLE `seller_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `total_amount` double NOT NULL,
  `withdraw_amount` double NOT NULL,
  `withdraw_charge` double NOT NULL,
  `account_info` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `approved_date` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seller_withdraws`
--

INSERT INTO `seller_withdraws` (`id`, `seller_id`, `method`, `total_amount`, `withdraw_amount`, `withdraw_charge`, `account_info`, `status`, `approved_date`, `created_at`, `updated_at`) VALUES
(1, 6, 'bkash Payment', 10, 8.2, 1.8, 'ddd', 0, NULL, '2023-04-16 15:37:53', '2023-04-16 15:37:53'),
(2, 6, 'bkash Payment', 12, 9.84, 2.16, 'Dhaka', 1, '2023-04-16', '2023-04-16 18:15:38', '2023-04-16 18:21:41'),
(3, 6, 'bkash Payment', 12, 9.84, 2.16, 'Hell', 1, '2023-12-13', '2023-04-30 08:25:08', '2023-12-13 15:59:52'),
(4, 6, 'bkash Payment', 12, 9.84, 2.16, 'Dhaka', 0, NULL, '2023-05-01 05:49:12', '2023-05-01 05:49:12');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_name` text DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `page_name`, `seo_title`, `seo_description`, `created_at`, `updated_at`) VALUES
(1, 'Home Page', 'Home - Welcome to Globo', 'e-Commerce', NULL, '2023-12-12 22:52:51'),
(2, 'About Us', 'About Us - Ecommerce', 'About Us', NULL, '2022-02-07 02:39:59'),
(3, 'Contact Us', 'Contact Us - Ecommerce', 'Contact Us', NULL, '2022-01-12 02:21:46'),
(5, 'Seller Page', 'Our Seller - Ecommerce', 'Seller Page', NULL, '2022-02-07 02:40:16'),
(6, 'Blog', 'Blog - Ecommerce', 'Blog', NULL, '2022-02-07 02:40:23'),
(8, 'Flash Deal', 'Flash Deal - Ecommerce', 'Flash Deal', NULL, '2022-02-07 02:40:43'),
(9, 'Shop Page', 'Shop Page - Ecommerce', 'Shop Page', NULL, '2022-02-07 02:40:50');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Free Shipping', 'fas fa-shipping-fast', 'Free Shipping on Payment', 1, '2022-09-20 08:07:40', '2022-09-20 08:07:40'),
(2, 'Return Policy', 'fas fa-chevron-circle-left', '24 Hours Return Policy', 1, '2022-09-20 08:08:44', '2022-09-20 08:08:44'),
(3, 'Secured Payment', 'fab fa-cc-amazon-pay', 'Secure Card Payments', 1, '2022-09-20 08:09:50', '2022-09-20 08:09:50'),
(4, 'Best Quality', 'fas fa-check-circle', 'Best Quality Products', 1, '2022-09-20 08:10:27', '2022-09-22 04:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `maintenance_mode` int(11) NOT NULL DEFAULT 0,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `contact_email` varchar(191) DEFAULT NULL,
  `enable_user_register` int(11) NOT NULL DEFAULT 1,
  `phone_number_required` int(1) NOT NULL DEFAULT 1,
  `default_phone_code` varchar(255) NOT NULL,
  `enable_multivendor` int(11) NOT NULL DEFAULT 1,
  `enable_subscription_notify` int(11) NOT NULL DEFAULT 1,
  `enable_save_contact_message` int(11) NOT NULL DEFAULT 1,
  `text_direction` varchar(255) NOT NULL DEFAULT 'LTR',
  `timezone` varchar(255) DEFAULT NULL,
  `sidebar_lg_header` varchar(255) DEFAULT NULL,
  `sidebar_sm_header` varchar(255) DEFAULT NULL,
  `topbar_phone` varchar(191) DEFAULT NULL,
  `topbar_email` varchar(191) NOT NULL,
  `currency_name` varchar(191) DEFAULT NULL,
  `currency_icon` varchar(191) DEFAULT NULL,
  `currency_rate` double NOT NULL DEFAULT 1,
  `show_product_progressbar` int(1) NOT NULL DEFAULT 1,
  `theme_one` varchar(191) NOT NULL,
  `theme_two` varchar(191) NOT NULL,
  `seller_condition` longtext DEFAULT NULL,
  `popular_category` varchar(255) NOT NULL DEFAULT 'Popular Category',
  `popular_category_product_qty` int(10) NOT NULL DEFAULT 9,
  `frontend_url` varchar(255) DEFAULT NULL,
  `popular_category_banner` varchar(255) DEFAULT NULL,
  `featured_category_banner` varchar(255) DEFAULT NULL,
  `homepage_section_title` text NOT NULL,
  `empty_cart` varchar(255) DEFAULT NULL,
  `empty_wishlist` varchar(255) DEFAULT NULL,
  `change_password_image` varchar(255) DEFAULT NULL,
  `become_seller_avatar` varchar(255) DEFAULT NULL,
  `become_seller_banner` varchar(255) DEFAULT NULL,
  `login_image` varchar(255) DEFAULT NULL,
  `error_page` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `current_version` varchar(255) NOT NULL DEFAULT '3.8'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `maintenance_mode`, `logo`, `favicon`, `contact_email`, `enable_user_register`, `phone_number_required`, `default_phone_code`, `enable_multivendor`, `enable_subscription_notify`, `enable_save_contact_message`, `text_direction`, `timezone`, `sidebar_lg_header`, `sidebar_sm_header`, `topbar_phone`, `topbar_email`, `currency_name`, `currency_icon`, `currency_rate`, `show_product_progressbar`, `theme_one`, `theme_two`, `seller_condition`, `popular_category`, `popular_category_product_qty`, `frontend_url`, `popular_category_banner`, `featured_category_banner`, `homepage_section_title`, `empty_cart`, `empty_wishlist`, `change_password_image`, `become_seller_avatar`, `become_seller_banner`, `login_image`, `error_page`, `created_at`, `updated_at`, `current_version`) VALUES
(1, 1, 'uploads/website-images/logo-2024-01-24-03-29-32-6888.jpg', 'uploads/website-images/favicon-2024-02-02-12-12-03-9033.png', 'admin@quomodosoft.xyz', 1, 1, 'IN', 1, 1, 1, 'ltr', 'Indian/Antananarivo', 'Globo', 'Sp', '123-854-7896', 'contact@gmail.com', 'INR', 'Rs.', 85.76, 0, '#23b249', '#070109', '<p><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><b>“Terms and Conditions</b>”&nbsp;means these “General Terms and Conditions for the Sale of Products or Services”, together with any modifications or additional provisions specifically stated in Seller’s final quotation or specifically agreed upon by Seller in writing.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">2. Delivery and Shipping Terms.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(a) For shipments that do not involve export Seller shall deliver Products to Buyer F.O.B. shipping point. For export shipments, Seller shall deliver Products to Buyer EXW Seller’s facility or warehouse (Incoterms 2010). Buyer shall pay all delivery costs and charges or pay Seller’s standard shipping charges plus handling. Partial deliveries are permitted. Seller may deliver Products in advance of the delivery schedule. Delivery times are approximate and are dependent upon prompt receipt by Seller of all information necessary to proceed with the work without interruption. If Products delivered do not correspond in quantity, type or price to those itemized in the shipping invoice or documentation, Buyer shall so notify Seller within ten (10) days after receipt.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(b) For shipments that do not involve export, title to Products shall pass to Buyer upon delivery in accordance with Section 2(a). For export shipments from a Seller facility or warehouse outside the India , title shall pass to Buyer upon delivery in accordance with Section 2(a). For shipments from the India&nbsp; to another country, title shall pass to Buyer immediately after each item departs from the territorial land, seas and overlying airspace of the India&nbsp; The 1982 United Nations Convention of the law of the Sea shall apply to determine the India territorial seas. For all other shipments, title to Products shall pass to Buyer the earlier of (i) the port of export immediately after Products have been cleared for export or (ii) immediately after each item departs from the territorial land, seas and overlying airspace of the sending country. When Buyer arranges the export shipment, Buyer will provide Seller evidence of exportation acceptable to the relevant tax and custom authorities.</span><br style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Geomanist, &quot;Open Sans&quot;, arial, sans-serif; font-size: 16px;\">(c) Risk of loss shall pass to Buyer upon delivery pursuant to Section 2(a), except that for export shipments from the U.S., risk of loss shall transfer to Buyer upon title passage.</span><br></p>', 'Popular Category', 9, 'https://scodesoft.com/', 'uploads/website-images/popular-cat-banner-2022-09-20-01-15-44-7577.jpg', 'uploads/website-images/featured-cat-banner-2022-09-21-02-43-49-4710.jpg', '[{\"key\":\"Trending_Category\",\"default\":\"Trending Category\",\"custom\":\"Trending Category\"},{\"key\":\"Popular_Category\",\"default\":\"Popular Category\",\"custom\":\"Popular Category\"},{\"key\":\"Shop_by_Brand\",\"default\":\"Shop by Brand\",\"custom\":\"Shop by Brand\"},{\"key\":\"Top_Rated_Products\",\"default\":\"Top Rated Products\",\"custom\":\"Top Rated Products\"},{\"key\":\"Best_Seller\",\"default\":\"Best Seller\",\"custom\":\"Best Seller\"},{\"key\":\"Featured_Products\",\"default\":\"Featured Products\",\"custom\":\"Featured Products\"},{\"key\":\"New_Arrivals\",\"default\":\"New Arrivals\",\"custom\":\"New Arrivals\"},{\"key\":\"Best_Products\",\"default\":\"Best Products\",\"custom\":\"Best Products\"}]', 'uploads/website-images/empty_cart-2022-11-17-11-10-20-7795.png', 'uploads/website-images/empty_wishlist-2022-11-17-11-23-16-9350.png', 'uploads/website-images/change_password_image-2022-11-17-11-26-36-3416.png', 'uploads/website-images/become_seller_avatar-2022-11-17-11-38-55-7934.png', 'uploads/website-images/become_seller_banner-2022-11-17-11-41-53-5886.png', 'uploads/website-images/login_image-2022-11-17-11-07-21-2774.png', 'uploads/website-images/error_page-2022-11-17-11-27-36-6180.png', NULL, '2024-02-02 06:42:03', '3.8');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `shipping_rule` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `shipping_fee` double NOT NULL,
  `condition_from` varchar(255) NOT NULL,
  `condition_to` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `city_id`, `shipping_rule`, `type`, `shipping_fee`, `condition_from`, `condition_to`, `created_at`, `updated_at`) VALUES
(4, 0, 'Free Shipping', 'base_on_weight', 0, '10000', '50000', '2024-01-25 09:21:42', '2024-01-25 09:21:42');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_carts`
--

CREATE TABLE `shopping_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `coupon_name` varchar(255) DEFAULT NULL,
  `coupon_price` double NOT NULL,
  `offer_type` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_carts`
--

INSERT INTO `shopping_carts` (`id`, `user_id`, `product_id`, `qty`, `coupon_name`, `coupon_price`, `offer_type`, `created_at`, `updated_at`) VALUES
(36, 12, 13, 1, '', 0, 0, '2022-09-22 05:45:27', '2022-09-22 05:45:27'),
(107, 5, 37, 2, '', 0, 0, '2022-09-27 11:38:08', '2022-09-27 11:38:08'),
(108, 5, 37, 1, '', 0, 0, '2022-09-27 11:38:13', '2022-09-27 11:38:13'),
(207, 15, 7, 2, '', 0, 0, '2022-11-18 15:46:10', '2022-11-18 15:46:14'),
(280, 7, 32, 1, '', 0, 0, '2023-05-03 09:28:21', '2023-05-03 09:28:21'),
(281, 7, 7, 1, '', 0, 0, '2023-05-03 09:28:33', '2023-05-03 09:28:33'),
(288, 4, 12, 1, '', 0, 0, '2024-02-02 04:01:54', '2024-02-02 04:01:54'),
(289, 4, 53, 1, '', 0, 0, '2024-02-02 06:31:12', '2024-02-02 06:31:12'),
(290, 6, 7, 1, '', 0, 0, '2024-02-02 08:48:28', '2024-02-02 08:48:28'),
(291, 6, 13, 1, '', 0, 0, '2024-02-03 07:24:12', '2024-02-03 07:24:12'),
(292, 6, 54, 1, '', 0, 0, '2024-02-03 07:35:32', '2024-02-03 07:35:32'),
(293, 4, 39, 1, '', 0, 0, '2024-02-06 08:49:27', '2024-02-06 08:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart_variants`
--

CREATE TABLE `shopping_cart_variants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shopping_cart_id` int(11) NOT NULL,
  `variant_id` int(10) NOT NULL,
  `variant_item_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shopping_cart_variants`
--

INSERT INTO `shopping_cart_variants` (`id`, `shopping_cart_id`, `variant_id`, `variant_item_id`, `created_at`, `updated_at`, `user_id`, `product_id`) VALUES
(2, 291, 0, 0, '2024-02-03 07:24:12', '2024-02-03 07:24:12', 6, 13);

-- --------------------------------------------------------

--
-- Table structure for table `shop_pages`
--

CREATE TABLE `shop_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `header_one` varchar(255) DEFAULT NULL,
  `header_two` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `filter_price_range` double NOT NULL DEFAULT 10000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_pages`
--

INSERT INTO `shop_pages` (`id`, `header_one`, `header_two`, `title_one`, `title_two`, `banner`, `link`, `button_text`, `status`, `filter_price_range`, `created_at`, `updated_at`) VALUES
(1, 'Up To', '70% Off', 'Women\'s Jeans Collection', 'Fashion For Women\'s', 'uploads/website-images/banner-2022-02-06-04-22-39-1426.jpg', 'product', 'Discover now', 1, 5000, NULL, '2022-09-20 08:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `badge` varchar(255) DEFAULT NULL,
  `title_one` varchar(255) DEFAULT NULL,
  `title_two` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `slider_location` varchar(255) DEFAULT NULL,
  `product_slug` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `badge`, `title_one`, `title_two`, `image`, `status`, `serial`, `slider_location`, `product_slug`, `created_at`, `updated_at`) VALUES
(1, 'New released', 'Apple Wireless', 'Samsung S10+', 'uploads/custom-images/slider-2022-10-27-01-36-28-1252.png', 1, 1, NULL, 'fantech-octane-headset', '2022-09-20 03:55:57', '2023-12-12 22:51:53'),
(2, 'New released', 'Apple', 'Macbook Pro Max', 'uploads/custom-images/slider-2022-10-27-01-36-38-2956.png', 1, 2, NULL, 'jbl-clip-4-orange-portable-speaker', '2022-09-20 03:57:41', '2022-10-27 07:36:38'),
(3, 'New released', 'Headphone', 'JBL Music', 'uploads/custom-images/slider-2022-10-27-01-36-44-4193.png', 1, 3, NULL, 'sony-joystick-v1', '2022-09-20 03:58:20', '2022-10-27 07:36:45');

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

CREATE TABLE `sms_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` text DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `subject`, `description`, `created_at`, `updated_at`) VALUES
(1, 'User Verification', NULL, 'Dear {{user_name}},\r\n\r\nCongratulations! Your Account has been created successfully. Please copy and past and Active your Account. Your OTP code is {{otp_code}}', NULL, '2023-01-11 12:07:47'),
(2, 'Password Reset', NULL, 'Dear {{name}},\r\n\r\nDo you want to reset your password? Please Copy and past this code. Your OTP Code is {{otp_code}}', NULL, '2023-01-12 03:52:23'),
(3, 'Order Successfully', NULL, 'Hi {{user_name}},\r\n\r\nThanks for your new order. Your order id has been submited .\r\nOrder Id : {{order_id}},', NULL, '2023-01-11 11:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `social_login_information`
--

CREATE TABLE `social_login_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `is_facebook` int(11) NOT NULL DEFAULT 0,
  `facebook_client_id` text DEFAULT NULL,
  `facebook_secret_id` text DEFAULT NULL,
  `is_gmail` int(11) NOT NULL DEFAULT 0,
  `gmail_client_id` text DEFAULT NULL,
  `gmail_secret_id` text DEFAULT NULL,
  `facebook_redirect_url` text DEFAULT NULL,
  `gmail_redirect_url` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_login_information`
--

INSERT INTO `social_login_information` (`id`, `is_facebook`, `facebook_client_id`, `facebook_secret_id`, `is_gmail`, `gmail_client_id`, `gmail_secret_id`, `facebook_redirect_url`, `gmail_redirect_url`, `created_at`, `updated_at`) VALUES
(1, 0, '343rer', 'fsdfa', 0, '673210704627-g002lb3mstedn57b4geupsfhakcqo316.apps.googleusercontent.com', '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', 'link', 'http://localhost:3000/auth/google', NULL, '2023-05-25 07:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_payments`
--

CREATE TABLE `sslcommerz_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` text NOT NULL,
  `store_password` text NOT NULL,
  `mode` varchar(255) NOT NULL,
  `currency_rate` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_payments`
--

INSERT INTO `sslcommerz_payments` (`id`, `store_id`, `store_password`, `mode`, `currency_rate`, `country_code`, `currency_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'wsus628f03bb09670', 'wsus628f03bb09670@ssl', 'sandbox', '80', 'BD', 'BDT', 1, NULL, '2022-11-03 04:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_payments`
--

CREATE TABLE `stripe_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `stripe_key` text DEFAULT NULL,
  `stripe_secret` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `country_code` varchar(10) NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `currency_rate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stripe_payments`
--

INSERT INTO `stripe_payments` (`id`, `status`, `stripe_key`, `stripe_secret`, `created_at`, `updated_at`, `country_code`, `currency_code`, `currency_rate`) VALUES
(1, 1, 'pk_test_51JU61aF56Pb8BOOX5ucAe5DlDwAkCZyffqlKMDUWsAwhKbdtuY71VvIzr0NgFKjq4sOVVaaeeyVXXnNWwu5dKgeq00kMzCBUm5', 'sk_test_51JU61aF56Pb8BOOXlz7jGkzJsCkozuAoRlFJskYGsgunfaHLmcvKLubYRQLCQOuyYHq0mvjoBFLzV7d8F6q8f6Hv00CGwULEEV', NULL, '2022-11-18 02:24:05', 'US', 'USD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verified_token` text DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `status`, `verified_token`, `is_verified`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', 0, '568771', 0, '2022-09-21 05:03:38', '2022-09-21 05:03:38'),
(2, 'abdur.rohman2003@gmail.com', 0, '458560', 0, '2022-09-21 05:03:47', '2022-09-21 05:03:47'),
(3, 'admin@brandmarrow.com.bd', 0, '298058', 0, '2022-09-21 05:03:59', '2022-09-21 05:03:59'),
(4, 'abdur_rohman2003@yahoo.com', 0, '978651', 0, '2022-09-21 07:06:47', '2022-09-21 07:06:47'),
(5, 'h@h.com', 0, '863244', 0, '2022-09-22 10:18:38', '2022-09-22 10:18:38'),
(6, 'Mollitia rerum omnis', 0, '637112', 0, '2022-09-23 06:01:01', '2022-09-23 06:01:01'),
(7, 'supuhib@mailinator.com', 0, '184076', 0, '2022-09-23 06:01:08', '2022-09-23 06:01:08'),
(8, 'abc@gmail.com', 0, '635442', 0, '2022-10-29 17:11:29', '2022-10-29 17:11:29'),
(9, 'user2@gmail.com', 0, '455377', 0, '2022-10-29 17:15:48', '2022-10-29 17:15:48'),
(10, 'patient@gmail.com', 0, '477354', 0, '2022-10-29 17:18:54', '2022-10-29 17:18:54'),
(11, 'user64@gmail.com', 0, '583716', 0, '2022-10-29 17:25:26', '2022-10-29 17:25:26'),
(12, 'user@gmail.com', 0, '802435', 0, '2022-10-29 19:06:22', '2022-10-29 19:06:22'),
(13, 'samad1122@gmail.com', 0, '733410', 0, '2022-10-31 21:28:20', '2022-10-31 21:28:20'),
(14, 'muhammadhammadkhan17@gamil.com', 0, '418556', 0, '2022-10-31 21:28:39', '2022-10-31 21:28:39'),
(15, 'fazigamingyt1@gmail.com', 0, '475241', 0, '2022-11-20 20:56:35', '2022-11-20 20:56:35'),
(16, 'azmatbukhari879@gmail.com', 0, '753841', 0, '2022-11-22 13:42:37', '2022-11-22 13:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Android Tablets', 'android-tablets', 1, '2022-09-20 05:51:21', '2024-02-23 08:22:33'),
(2, 1, 'iPad', 'ipad', 1, '2022-09-20 05:51:35', '2024-02-23 08:23:10'),
(3, 1, 'Windows Tablets', 'windows-tablets', 1, '2022-09-20 06:02:23', '2024-02-23 08:23:45'),
(4, 2, 'Ultrabooks', 'ultrabooks', 1, '2022-09-20 07:08:14', '2024-02-23 08:24:16'),
(5, 2, 'Gaming Laptops', 'gaming-laptops', 1, '2022-09-20 07:09:17', '2024-02-23 08:24:44'),
(6, 2, 'Business Laptops', 'business-laptops', 1, '2022-09-20 07:09:31', '2024-02-23 08:25:57'),
(7, 3, 'Smartphones', 'smartphones', 1, '2022-09-20 07:11:30', '2024-02-23 08:26:33'),
(8, 3, 'Feature Phones', 'feature-phones', 1, '2022-09-20 07:11:41', '2024-02-23 08:27:13'),
(9, 3, 'Tablets', 'tablets', 1, '2022-09-20 07:12:00', '2024-02-23 08:28:21'),
(10, 4, 'Headphones', 'headphones', 1, '2024-02-23 06:34:01', '2024-02-23 08:29:13'),
(11, 10, 'Cases & Covers', 'cases-covers', 1, '2024-02-23 06:36:18', '2024-02-23 08:33:07'),
(12, 10, 'Screen Protectors', 'screen-protectors', 1, '2024-02-23 06:36:52', '2024-02-23 08:33:54'),
(13, 10, 'Chargers & Cables', 'chargers-cables', 1, '2024-02-23 06:37:26', '2024-02-23 08:34:30'),
(14, 12, 'keyboard', 'keyboard', 1, '2024-02-23 06:37:46', '2024-02-23 17:53:55'),
(15, 12, 'Monitor', 'monitor', 1, '2024-02-23 06:38:54', '2024-02-23 17:54:36'),
(16, 12, 'External Hard Drives', 'external-hard-drives', 1, '2024-02-23 06:39:27', '2024-02-23 17:55:06'),
(17, 13, 'smart watch', 'smart-watch', 1, '2024-02-23 06:39:42', '2024-02-23 17:55:38'),
(18, 14, 'All-in-one desktop', 'allinone-desktop', 1, '2024-02-23 06:40:10', '2024-02-23 17:56:12'),
(19, 14, 'Traditional tower desktop', 'traditional-tower-desktop', 1, '2024-02-23 06:40:44', '2024-02-23 17:56:37'),
(20, 14, 'Mini', 'phone-accessories', 1, '2024-02-23 06:44:16', '2024-02-23 17:57:02'),
(21, 4, 'Speakers', 'speakers', 1, '2024-02-23 08:31:17', '2024-02-23 08:31:17'),
(22, 15, 'digital cameras', 'digital-cameras', 1, '2024-02-23 17:59:08', '2024-02-23 17:59:08'),
(23, 15, 'Camera  Acessories', 'camera-acessories', 1, '2024-02-23 17:59:32', '2024-02-23 17:59:32'),
(24, 16, 'mobile memory cards', 'mobile-memory-cards', 1, '2024-02-23 18:21:28', '2024-02-23 18:21:28'),
(25, 16, 'externa hard drive', 'externa-hard-drive', 1, '2024-02-23 18:21:59', '2024-02-23 18:21:59');

-- --------------------------------------------------------

--
-- Table structure for table `tawk_chats`
--

CREATE TABLE `tawk_chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `chat_link` varchar(255) DEFAULT NULL,
  `widget_id` varchar(255) DEFAULT NULL,
  `property_id` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tawk_chats`
--

INSERT INTO `tawk_chats` (`id`, `chat_link`, `widget_id`, `property_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'link', '612dc781d6e7610a49b2d444', '1fedd6l9m', 1, NULL, '2022-11-16 01:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `terms_and_conditions`
--

CREATE TABLE `terms_and_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `terms_and_condition` longtext DEFAULT NULL,
  `privacy_policy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `terms_and_conditions`
--

INSERT INTO `terms_and_conditions` (`id`, `terms_and_condition`, `privacy_policy`, `created_at`, `updated_at`) VALUES
(1, '<p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Welcome to&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>!</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These terms and conditions outline the rules and regulations for the use of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s Website, located at&nbsp;<span class=\"highlight preview_website_url\" style=\"background: rgb(255, 255, 238);\">Website.com</span>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;if you do not agree to take all of the terms and conditions stated on this page.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: “Client”, “You” and “Your” refers to you, the person log on this website and compliant to the Company\'s terms and conditions. “The Company”, “Ourselves”, “We”, “Our” and “Us”, refers to our Company. “Party”, “Parties”, or “Us”, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client\'s needs in respect of provision of the Company\'s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Cookies</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We employ the use of cookies. By accessing&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, you agreed to use cookies in agreement with the&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s Privacy Policy.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Most interactive websites use cookies to let us retrieve the user\'s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">License</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Unless otherwise stated,&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;and/or its licensors own the intellectual property rights for all material on&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>. All intellectual property rights are reserved. You may access this from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;for your own personal use subjected to restrictions set in these terms and conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You must not:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Republish material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Sell, rent or sub-license material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Reproduce, duplicate or copy material from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Redistribute content from&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span></li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">This Agreement shall begin on the date hereof.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website.&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws,&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You warrant and represent that:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You hereby grant&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>&nbsp;a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Hyperlinking to our Content</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The following organizations may link to our Website without prior written approval:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Government agencies;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Search engines;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">News organizations;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We may consider and approve other link requests from the following types of organizations:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">commonly-known consumer and/or business information sources;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">dot.com community sites;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">associations or other groups representing charities;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">online directory distributors;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">internet portals;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">accounting, law and consulting firms; and</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">educational institutions and trade associations.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>; and (d) the link is in the context of general resource information.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party\'s site.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Approved organizations may hyperlink to our Website as follows:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of our corporate name; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of the uniform resource locator being linked to; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party\'s site.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">No use of&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span>\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">iFrames</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Content Liability</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Reservation of Rights</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it\'s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Removal of links from our website</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Disclaimer</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit or exclude our or your liability for death or personal injury;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', '<h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 20px;\">Privacy Policy for&nbsp;<span class=\"highlight preview_company_name\" style=\"background: rgb(255, 255, 238);\">Company Name</span></h2><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">At&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, accessible at&nbsp;<span class=\"highlight preview_website_url\" style=\"background: rgb(255, 255, 238);\">Website.com</span>, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;and how we use it.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us through email at&nbsp;<span class=\"highlight preview_email_address\" style=\"background: rgb(255, 255, 238);\">Email@Website.com</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">This privacy policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>. This policy is not applicable to any information collected offline or via channels other than this website.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Consent</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Information we collect</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">How we use your information</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We use the information we collect in various ways, including to:</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Provide, operate, and maintain our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Improve, personalize, and expand our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Understand and analyze how you use our website</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Develop new products, services, features, and functionality</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Send you emails</li><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\">Find and prevent fraud</li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Log Files</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">Cookies and Web Beacons</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Like any other website,&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;uses ‘cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(51, 51, 51); margin-right: 0px; margin-bottom: 1em; margin-left: 0px; font-size: 16px;\">DoubleClick DART Cookie</h3><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Google is one of a third-party vendor on our site. It also uses cookies, known as DART cookies, to serve ads to our site visitors based upon their visit to www.website.com and other sites on the internet. However, visitors may choose to decline the use of DART cookies by visiting the Google ad and content network Privacy Policy at the following URL –&nbsp;</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Some of advertisers on our site may use cookies and web beacons. Our advertising partners are listed below. Each of our advertising partners has their own Privacy Policy for their policies on user data. For easier access, we hyperlinked to their Privacy Policies below.</p><ul style=\"margin: 1em 0px; padding: 0px 0px 0px 1em; list-style-position: outside; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><li style=\"margin-top: 0.5em; margin-bottom: 0.5em;\"><p style=\"margin: 1em 0px;\">Google</p><p style=\"margin: 1em 0px;\"><br></p></li></ul><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Advertising Partners Privacy Policies</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Note that&nbsp;<span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;has no access to or control over these cookies that are used by third-party advertisers.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Third-Party Privacy Policies</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You may find a complete list of these Privacy Policies and their links here: Privacy Policy Links.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites. What Are Cookies?</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">CCPA Privacy Policy (Do Not Sell My Personal Information)</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Under the CCPA, among other rights, Thiruvarur consumers have the right to:</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that Hariusiness that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that Hariusiness has collected about consumers.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that Hariusiness delete any personal data about the consumer that Hariusiness has collected.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Request that Hariusiness that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">GDPR Privacy Policy (Data Protection Rights)</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span style=\"font-weight: 700;\">Children\'s Information</span></p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin: 1em 0px; color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\"><span class=\"highlight preview_website_name\" style=\"background: rgb(255, 255, 238);\">Website Name</span>&nbsp;does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', '2022-09-20 08:23:13', '2023-12-13 15:11:23');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `image`, `rating`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(2, 'John Doe', 'CEO', 'uploads/custom-images/john-doe-20220922033955.png', '5', 'As a digital marketing agency our team works day in and day out on websites of all kinds. Some of the most common errors we see are websites not optimized for SEO because of old, boring, or out of date website themes or designs.', 1, NULL, '2022-09-22 09:39:55'),
(3, 'Michael', 'CEO', 'uploads/custom-images/ibrahim-khalil-20220922034002.png', '5', 'Almost every imaginable design is possible and customizations are allowed on every level. Some features could make use of better controls. If you know how to operate your mouse, then you are all set to use this pagebuilder.', 1, '2022-07-31 10:57:20', '2022-09-25 09:10:18'),
(5, 'James Robert', 'CEO', 'uploads/custom-images/james-robert-20220925031227.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:12:27', '2022-09-25 09:12:27'),
(6, 'Mary 	Patricia', 'CEO', 'uploads/custom-images/mary-patricia-20220925031348.png', '5', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', 1, '2022-09-25 09:13:48', '2022-09-25 09:13:48');

-- --------------------------------------------------------

--
-- Table structure for table `three_column_categories`
--

CREATE TABLE `three_column_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id_one` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_one` int(11) NOT NULL DEFAULT 0,
  `child_category_id_one` int(11) NOT NULL DEFAULT 0,
  `category_id_two` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_two` int(11) NOT NULL DEFAULT 0,
  `child_category_id_two` int(11) NOT NULL DEFAULT 0,
  `category_id_three` int(11) NOT NULL DEFAULT 0,
  `sub_category_id_three` int(11) NOT NULL DEFAULT 0,
  `child_category_id_three` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `three_column_categories`
--

INSERT INTO `three_column_categories` (`id`, `category_id_one`, `sub_category_id_one`, `child_category_id_one`, `category_id_two`, `sub_category_id_two`, `child_category_id_two`, `category_id_three`, `sub_category_id_three`, `child_category_id_three`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, 2, 0, 0, 5, 0, 0, NULL, '2022-02-07 03:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `twilio_sms`
--

CREATE TABLE `twilio_sms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_sid` text NOT NULL,
  `auth_token` text NOT NULL,
  `twilio_phone_number` varchar(255) NOT NULL,
  `enable_register_sms` int(11) NOT NULL DEFAULT 0,
  `enable_reset_pass_sms` int(11) NOT NULL DEFAULT 0,
  `enable_order_confirmation_sms` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `twilio_sms`
--

INSERT INTO `twilio_sms` (`id`, `account_sid`, `auth_token`, `twilio_phone_number`, `enable_register_sms`, `enable_reset_pass_sms`, `enable_order_confirmation_sms`, `created_at`, `updated_at`) VALUES
(1, 'AC3551cb38008dc7c6560db2909d58d01b', '001e56dc322d3eb0be477376f969b79c', '+17266008587', 1, 1, 1, NULL, '2023-01-11 11:50:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `forget_password_token` varchar(191) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `provider_id` varchar(191) DEFAULT NULL,
  `provider` varchar(191) DEFAULT NULL,
  `provider_avatar` varchar(191) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `country_id` int(10) DEFAULT 0,
  `state_id` int(10) DEFAULT 0,
  `city_id` int(10) DEFAULT 0,
  `zip_code` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `is_vendor` int(10) NOT NULL DEFAULT 0,
  `verify_token` varchar(191) DEFAULT NULL,
  `email_verified` int(1) NOT NULL DEFAULT 0,
  `agree_policy` int(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `forget_password_token`, `status`, `provider_id`, `provider`, `provider_avatar`, `image`, `phone`, `country_id`, `state_id`, `city_id`, `zip_code`, `address`, `is_vendor`, `verify_token`, `email_verified`, `agree_policy`, `created_at`, `updated_at`) VALUES
(1, 'Abdur1 Rohman1', 'facik91345@pahed.com', NULL, '$2y$10$1fb1W./8xpgma9gJo/nGIu8eGxqoULkt8cKsCBLBcZwQJ/yS81/sW', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '973589', 0, 1, '2022-09-20 10:04:42', '2024-01-25 02:59:01'),
(2, 'John Do', 'meyaj42636@pahed.com', NULL, '$2y$10$PCusAOjlo72nk4dfE9mJl.AQ/i9BBjczfwYqhRxtudDGQzoV4U2Ki', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '846418', 0, 1, '2022-09-21 05:25:34', '2024-01-25 02:58:58'),
(3, 'Karthi', 'Karthi@gmail.com', NULL, '$2y$10$97EjXmtnALzk8asIK7c92exVWTjNqiVZY0i63WLgTpiltIxcej66a', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/Karthi-2022-09-21-10-02-25-6264.jpg', '+919874562013\r\n', 4, 7, 10, NULL, 'catsle', 0, NULL, 1, 1, '2022-09-21 06:48:34', '2022-09-21 16:02:25'),
(4, 'Mohan', 'mohan@gmail.com', NULL, '$2y$10$kPbSaze/TgjSDBqfplSQs.lenOmnhlIs7J/RPH31onYQCZHa4GgUm', NULL, NULL, 1, NULL, NULL, NULL, 'uploads/custom-images/kelsey-2023-05-01-11-46-03-3828.jpg', '9871236540', 2, 4, 8, '1229', 'Thiruvarur, India', 0, NULL, 1, 1, '2022-09-21 07:26:08', '2023-12-13 15:43:03'),
(5, 'suraj ', 'suraj@gmail.com', NULL, '$2y$10$/ya3vIvGKDW3MDZxFfB39uvYYCJD20fX7jUg52FX6fBks2ZHkVsum', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, 0, '522603', 0, 1, '2022-11-23 01:45:44', '2024-01-25 02:58:56'),
(6, 'Ali', 'ali@gmail.com', NULL, '$2y$10$OV9i/plzrXLyiRXle7HnW.55us8dKclHn8cgxnw4XJrxD0fLtimHS', NULL, NULL, 1, NULL, NULL, NULL, NULL, '+9547802345', 0, 0, 0, NULL, NULL, 0, NULL, 1, 1, '2023-03-20 16:49:34', '2023-03-20 16:49:59'),
(48, 'hema j', 'hh@gmail.com', NULL, '$2y$10$w55q76NBdl8hC2w2EkV9UeB0gEJ.JAD9y6NhowMxxbjlE1DosL8NK', NULL, NULL, 0, NULL, NULL, NULL, NULL, '+91', 0, 0, 0, NULL, NULL, 0, '609536', 0, 1, '2024-02-02 06:57:17', '2024-02-02 06:57:17');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `banner_image` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `shop_name` varchar(255) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `open_at` varchar(255) DEFAULT NULL,
  `closed_at` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `is_featured` int(11) NOT NULL DEFAULT 0,
  `top_rated` int(11) NOT NULL DEFAULT 0,
  `verified_token` varchar(255) DEFAULT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `greeting_msg` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `user_id`, `total_amount`, `banner_image`, `logo`, `phone`, `email`, `shop_name`, `slug`, `open_at`, `closed_at`, `address`, `seo_title`, `seo_description`, `status`, `is_featured`, `top_rated`, `verified_token`, `is_verified`, `greeting_msg`, `created_at`, `updated_at`) VALUES
(1, 4, 0, 'uploads/custom-images/seller-banner-2022-09-21-11-58-14-6681.png', 'uploads/custom-images/seller-logo-2022-09-21-11-58-14-9795.png', '01792166627', 'jipof28122@orlydns.com', 'Shopno BD', 'shopno-bd', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Globo', 'Globo-green', 1, 0, 0, NULL, 0, 'Welcome to Globo', '2022-09-21 05:58:14', '2024-02-01 03:01:39'),
(2, 7, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-10-12-1265.png', 'uploads/custom-images/seller-logo-2022-09-21-01-10-12-2682.png', '01792166627', 'hijigov511@pahed.com', 'Eecoms Shop', 'eecoms-shop', '10.00AM', '10.00AM', 'Dhaka,Bangladesh', 'Eecoms Shop', 'Eecoms Shop', 0, 0, 0, NULL, 0, 'Welcome to Eecoms Shop', '2022-09-21 07:10:12', '2024-02-03 07:55:00'),
(3, 8, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-16-13-9611.png', 'uploads/custom-images/seller-logo-2022-09-21-01-16-13-5847.png', '01792166627', 'fegig12897@ploneix.com', 'Fusion X', 'fusion-x', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Fusion X', 'Fusion X', 1, 0, 0, NULL, 0, 'Welcome to Fusion X', '2022-09-21 07:16:13', '2024-02-03 07:58:34'),
(4, 9, 0, 'uploads/custom-images/seller-banner-2022-09-21-01-19-19-5022.png', 'uploads/custom-images/seller-logo-2022-09-21-01-19-19-3916.png', '01792166627', 'wokij22557@geekjun.com', 'Rikayi Rox', 'rikayi-rox', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Rikayi Rox', 'Rikayi Rox', 1, 0, 0, NULL, 0, 'Welcome to Rikayi Rox', '2022-09-21 07:19:19', '2024-01-25 03:00:08'),
(5, 10, 0, 'uploads/custom-images/seller-banner-2023-05-01-12-04-37-2224.png', 'uploads/custom-images/seller-logo-2022-09-21-01-22-55-6660.png', '01792166627', 'rokayo4006@pahed.com', 'Habbriyi', 'habbriyi', '10.00AM', '10.00PM', 'Dhaka,Bangladesh', 'Habbriyi shop', 'Habbriyi', 1, 0, 0, NULL, 0, 'Welcome to Habbriyi', '2022-09-21 07:22:55', '2024-01-25 03:00:06'),
(6, 12, 0, 'uploads/custom-images/seller-banner-2023-05-01-11-47-59-7349.png', 'uploads/custom-images/seller-logo-2022-09-21-01-30-46-9044.png', '01792166627', 'tofor67338@geekjun.com', 'Rayhans', 'rayhans', '10.10AM', '10.10PM', 'Dhaka,Bangladesh', 'Rayhans Shop', 'Rayhans Shop', 1, 0, 0, NULL, 0, 'Welcome to Rayhans', '2022-09-21 07:30:46', '2024-01-25 03:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_social_links`
--

CREATE TABLE `vendor_social_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_social_links`
--

INSERT INTO `vendor_social_links` (`id`, `vendor_id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(2, 6, '()', '()', '2023-05-01 05:47:59', '2023-05-01 05:47:59'),
(4, 5, '()', '()', '2023-05-01 06:04:37', '2023-05-01 06:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 5, 4, '2022-09-21 17:31:07', '2022-09-21 17:31:07'),
(40, 7, 32, '2022-11-23 04:36:23', '2022-11-23 04:36:23'),
(41, 7, 34, '2023-03-31 21:42:27', '2023-03-31 21:42:27'),
(42, 7, 37, '2023-03-31 21:42:29', '2023-03-31 21:42:29'),
(44, 7, 31, '2023-05-01 11:46:13', '2023-05-01 11:46:13'),
(45, 7, 29, '2023-05-01 11:47:15', '2023-05-01 11:47:15'),
(46, 7, 3, '2023-05-01 11:47:17', '2023-05-01 11:47:17'),
(47, 7, 2, '2023-05-01 11:47:20', '2023-05-01 11:47:20'),
(48, 7, 4, '2023-05-01 11:51:00', '2023-05-01 11:51:00'),
(51, 45, 34, '2023-05-02 04:37:41', '2023-05-02 04:37:41'),
(52, 45, 3, '2023-05-02 04:40:10', '2023-05-02 04:40:10'),
(53, 45, 7, '2023-05-02 04:42:18', '2023-05-02 04:42:18'),
(54, 45, 2, '2023-05-02 04:45:19', '2023-05-02 04:45:19'),
(55, 4, 39, '2024-02-06 08:52:47', '2024-02-06 08:52:47');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw_methods`
--

CREATE TABLE `withdraw_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `min_amount` double NOT NULL DEFAULT 0,
  `max_amount` double NOT NULL DEFAULT 0,
  `withdraw_charge` double NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw_methods`
--

INSERT INTO `withdraw_methods` (`id`, `name`, `min_amount`, `max_amount`, `withdraw_charge`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash Payment', 10, 2000, 18, '<p>bKash Mobile Number</p><p>Amount</p>', 1, '2023-04-16 15:37:32', '2023-04-16 15:37:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_payments`
--
ALTER TABLE `bank_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_images`
--
ALTER TABLE `banner_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `biztech_sms`
--
ALTER TABLE `biztech_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comments`
--
ALTER TABLE `blog_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `child_categories`
--
ALTER TABLE `child_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare_products`
--
ALTER TABLE `compare_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_states`
--
ALTER TABLE `country_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_countries`
--
ALTER TABLE `currency_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `custom_pages`
--
ALTER TABLE `custom_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_reviews`
--
ALTER TABLE `delivery_man_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_withdraws`
--
ALTER TABLE `delivery_man_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_man_withdraw_methods`
--
ALTER TABLE `delivery_man_withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_men`
--
ALTER TABLE `delivery_men`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `delivery_men_email_unique` (`email`);

--
-- Indexes for table `delivery_messages`
--
ALTER TABLE `delivery_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configurations`
--
ALTER TABLE `email_configurations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `error_pages`
--
ALTER TABLE `error_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured_categories`
--
ALTER TABLE `featured_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sales`
--
ALTER TABLE `flash_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_links`
--
ALTER TABLE `footer_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_analytics`
--
ALTER TABLE `google_analytics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myfatoorah_payments`
--
ALTER TABLE `myfatoorah_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_addresses`
--
ALTER TABLE `order_addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_amounts`
--
ALTER TABLE `order_amounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `popular_categories`
--
ALTER TABLE `popular_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `popular_posts`
--
ALTER TABLE `popular_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reports`
--
ALTER TABLE `product_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specifications`
--
ALTER TABLE `product_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variants`
--
ALTER TABLE `product_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `save_for_laters`
--
ALTER TABLE `save_for_laters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_pages`
--
ALTER TABLE `shop_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_templates`
--
ALTER TABLE `sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_login_information`
--
ALTER TABLE `social_login_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `twilio_sms`
--
ALTER TABLE `twilio_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `announcement_modals`
--
ALTER TABLE `announcement_modals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_payments`
--
ALTER TABLE `bank_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner_images`
--
ALTER TABLE `banner_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `biztech_sms`
--
ALTER TABLE `biztech_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `blog_comments`
--
ALTER TABLE `blog_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `breadcrumb_images`
--
ALTER TABLE `breadcrumb_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `child_categories`
--
ALTER TABLE `child_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `compare_products`
--
ALTER TABLE `compare_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_consents`
--
ALTER TABLE `cookie_consents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `country_states`
--
ALTER TABLE `country_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `currency_countries`
--
ALTER TABLE `currency_countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `custom_pages`
--
ALTER TABLE `custom_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_paginations`
--
ALTER TABLE `custom_paginations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `delivery_man_reviews`
--
ALTER TABLE `delivery_man_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_man_withdraws`
--
ALTER TABLE `delivery_man_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `delivery_man_withdraw_methods`
--
ALTER TABLE `delivery_man_withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `delivery_men`
--
ALTER TABLE `delivery_men`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_messages`
--
ALTER TABLE `delivery_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `email_configurations`
--
ALTER TABLE `email_configurations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `error_pages`
--
ALTER TABLE `error_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `facebook_comments`
--
ALTER TABLE `facebook_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facebook_pixels`
--
ALTER TABLE `facebook_pixels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `featured_categories`
--
ALTER TABLE `featured_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `flash_sales`
--
ALTER TABLE `flash_sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flash_sale_products`
--
ALTER TABLE `flash_sale_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `flutterwaves`
--
ALTER TABLE `flutterwaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footer_links`
--
ALTER TABLE `footer_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer_social_links`
--
ALTER TABLE `footer_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `google_analytics`
--
ALTER TABLE `google_analytics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `google_recaptchas`
--
ALTER TABLE `google_recaptchas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_page_one_visibilities`
--
ALTER TABLE `home_page_one_visibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `instamojo_payments`
--
ALTER TABLE `instamojo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `maintainance_texts`
--
ALTER TABLE `maintainance_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mega_menu_categories`
--
ALTER TABLE `mega_menu_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mega_menu_sub_categories`
--
ALTER TABLE `mega_menu_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu_visibilities`
--
ALTER TABLE `menu_visibilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `myfatoorah_payments`
--
ALTER TABLE `myfatoorah_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `order_addresses`
--
ALTER TABLE `order_addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `order_amounts`
--
ALTER TABLE `order_amounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `order_product_variants`
--
ALTER TABLE `order_product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymongo_payments`
--
ALTER TABLE `paymongo_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paypal_payments`
--
ALTER TABLE `paypal_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paystack_and_mollies`
--
ALTER TABLE `paystack_and_mollies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `popular_categories`
--
ALTER TABLE `popular_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `popular_posts`
--
ALTER TABLE `popular_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product_reports`
--
ALTER TABLE `product_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_specifications`
--
ALTER TABLE `product_specifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_specification_keys`
--
ALTER TABLE `product_specification_keys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_variants`
--
ALTER TABLE `product_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_variant_items`
--
ALTER TABLE `product_variant_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pusher_credentails`
--
ALTER TABLE `pusher_credentails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `razorpay_payments`
--
ALTER TABLE `razorpay_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `save_for_laters`
--
ALTER TABLE `save_for_laters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_mail_logs`
--
ALTER TABLE `seller_mail_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller_withdraws`
--
ALTER TABLE `seller_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `shopping_carts`
--
ALTER TABLE `shopping_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `shopping_cart_variants`
--
ALTER TABLE `shopping_cart_variants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_pages`
--
ALTER TABLE `shop_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sms_templates`
--
ALTER TABLE `sms_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_login_information`
--
ALTER TABLE `social_login_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sslcommerz_payments`
--
ALTER TABLE `sslcommerz_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stripe_payments`
--
ALTER TABLE `stripe_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tawk_chats`
--
ALTER TABLE `tawk_chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms_and_conditions`
--
ALTER TABLE `terms_and_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `three_column_categories`
--
ALTER TABLE `three_column_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `twilio_sms`
--
ALTER TABLE `twilio_sms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendor_social_links`
--
ALTER TABLE `vendor_social_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `withdraw_methods`
--
ALTER TABLE `withdraw_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
