-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 05:59 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sunrisebay`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE `category_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '1',
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `name`, `path`, `description`, `image`, `image_mobile`, `level`, `parent_id`, `type`, `order`, `is_active`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Lý do', 'ly-do', NULL, NULL, NULL, 0, NULL, 0, 1, 1, '2019-01-11 02:39:33', '2019-01-11 02:39:33', NULL),
(2, 'Tiện ích đẳng cấp', 'tien-ich-dang-cap', NULL, 'images/uploads/images/gt_1.jpg', NULL, 0, NULL, 0, 1, 1, '2019-01-11 02:58:01', '2019-01-11 02:58:01', NULL),
(3, 'Loại hình sản phẩm', 'loai-hinh-san-pham', NULL, 'images/uploads/images/gt_1.jpg', NULL, 0, NULL, 0, 1, 1, '2019-01-11 03:09:05', '2019-01-11 03:09:05', NULL),
(4, 'Tin tức - Sự kiện', 'tin-tuc-su-kien', NULL, 'images/uploads/images/gt_1.jpg', NULL, 0, NULL, 0, 1, 1, '2019-01-11 04:05:43', '2019-01-11 04:05:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_many`
--

CREATE TABLE `category_many` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_many`
--

INSERT INTO `category_many` (`category_id`, `item_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 3, 0, '2019-01-11 02:44:12', '2019-01-11 02:44:12'),
(1, 4, 0, '2019-01-11 02:44:58', '2019-01-11 02:44:58'),
(1, 5, 0, '2019-01-11 02:45:32', '2019-01-11 02:45:32'),
(1, 6, 0, '2019-01-11 02:46:04', '2019-01-11 02:46:04'),
(1, 7, 0, '2019-01-11 02:46:28', '2019-01-11 02:46:28'),
(1, 8, 0, '2019-01-11 02:47:13', '2019-01-11 02:47:13'),
(1, 9, 0, '2019-01-11 02:47:45', '2019-01-11 02:47:45'),
(1, 10, 0, '2019-01-11 02:48:12', '2019-01-11 02:48:12'),
(2, 11, 0, '2019-01-11 02:59:19', '2019-01-11 02:59:19'),
(2, 12, 0, '2019-01-11 02:59:49', '2019-01-11 02:59:49'),
(2, 13, 0, '2019-01-11 03:00:11', '2019-01-11 08:41:09'),
(2, 14, 0, '2019-01-11 03:00:33', '2019-01-11 03:00:33'),
(2, 23, 0, '2019-01-11 08:42:29', '2019-01-11 08:42:29'),
(2, 24, 0, '2019-01-11 08:44:33', '2019-01-11 08:44:33'),
(3, 15, 0, '2019-01-11 03:14:12', '2019-01-11 03:28:29'),
(3, 16, 0, '2019-01-11 03:19:47', '2019-01-11 03:28:44'),
(3, 17, 0, '2019-01-11 03:20:43', '2019-01-11 03:28:58'),
(3, 18, 0, '2019-01-11 03:21:28', '2019-01-11 03:29:13'),
(4, 19, 0, '2019-01-11 04:15:17', '2019-01-11 04:21:00'),
(4, 20, 0, '2019-01-11 04:26:16', '2019-01-11 04:26:39'),
(4, 21, 0, '2019-01-11 04:30:10', '2019-01-11 04:30:10');

-- --------------------------------------------------------

--
-- Table structure for table `category_permissions`
--

CREATE TABLE `category_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_permissions`
--

INSERT INTO `category_permissions` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Role', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(2, 'User', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(3, 'Menu', '2018-03-14 07:31:28', '2018-03-14 07:31:28'),
(4, 'Page', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(5, 'Post', '2018-03-14 07:31:29', '2018-03-14 07:31:29'),
(7, 'Product', '2018-03-27 03:05:29', '2018-03-27 03:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `configs`
--

CREATE TABLE `configs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `configs`
--

INSERT INTO `configs` (`id`, `name`, `content`, `description`, `order`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'config-contact', '<p>Lô B-13, QL13, Golden A, TX Bến Cát, tỉnh Bình Dương</p>', NULL, NULL, 1, NULL, '2019-01-11 07:37:55'),
(3, 'config-company-name', 'Công ty TNHH Bất Động Sản Smartland', NULL, NULL, 1, NULL, '2019-01-11 15:36:36'),
(4, 'config-phone', '0938393845', NULL, NULL, 1, NULL, '2019-01-11 16:30:08'),
(5, 'config-email', 'thanhtri.danang@gmail.com', NULL, NULL, 1, NULL, '2019-01-11 16:28:12'),
(6, 'config-seo-keywords', NULL, NULL, NULL, 1, NULL, '2019-01-11 16:16:26'),
(7, 'config-seo-title', 'Sunrise Bay Đà Nẵng', NULL, NULL, 1, NULL, '2019-01-11 16:16:26'),
(8, 'config-seo-description', 'Sunrise Bay Đà Nẵng', NULL, NULL, 1, NULL, '2019-01-11 16:15:04'),
(9, 'config-seo-image', 'http://localhost:8080/sunrisebay/http://localhost:8080/sunrisebay/http://localhost:8080/sunrisebay/http://localhost:8080/sunrisebay/images/uploads/images/home/phoi-canh-the-sunrise-bay_160285.jpg', NULL, NULL, 1, NULL, '2019-01-11 16:30:08'),
(10, 'email-receive', 'trangnh.sml@gmail.com', NULL, NULL, 1, NULL, '2019-01-11 14:20:40'),
(11, 'email-sender-subject', 'Sàn Giao Dịch Sunrise Bay Đà Nẵng Được Mail Của Bạn', NULL, NULL, 1, NULL, '2019-01-11 14:20:40'),
(12, 'email-sender-from', 'Sàn Giao Dịch Sunrise Bay Đà Nẵng', NULL, NULL, 1, NULL, '2019-01-11 14:20:41'),
(13, 'email-receive-subject', 'Thông Tin Liên Hệ Mới Từ Khách Hàng', NULL, NULL, 1, NULL, '2018-10-04 08:48:40'),
(14, 'email-receive-from', 'Sàn Giao Dịch Sunrise Bay Đà Nẵng', NULL, NULL, 1, NULL, '2019-01-11 14:20:41'),
(15, 'email-sender-content', '<p>Dear, Quý Khách,<br />\r\nSàn giao dịch Sunrise Bay Đà Nẵng&nbsp;đã nhận được mail của quý khách, chúng tôi sẽ phản hồi trong vòng 24h, xin cảm ơn.<br />\r\nTrân trọng</p>', NULL, NULL, 1, NULL, '2019-01-11 14:20:41'),
(16, 'email-signatures', NULL, NULL, NULL, 1, NULL, NULL),
(17, 'script-js-header', NULL, NULL, NULL, 1, NULL, '2018-09-19 08:58:22'),
(18, 'script-js-body', NULL, NULL, NULL, 1, NULL, NULL),
(19, 'config-phone-1', '0938.393.845', NULL, NULL, 1, NULL, '2019-01-11 16:30:08'),
(20, 'config-phone-2', NULL, NULL, NULL, 1, NULL, '2019-01-11 16:30:08'),
(21, 'logo-config', '', NULL, NULL, 1, NULL, '2018-10-05 03:33:34'),
(22, 'slider-config', 'images/uploads/images/slider/slider1_398102.jpg;images/uploads/images/slider/slider2_783342.jpg;images/uploads/images/slider/slider3_469775.jpg;images/uploads/images/slider/slider4_422582.jpg', NULL, NULL, 1, NULL, '2019-01-11 07:55:32');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 'quang test 2 as', '', '_self', NULL, '#000000', NULL, 1, '2018-09-14 04:10:33', '2018-09-14 08:38:13', 'menu.index', NULL),
(2, 'Thư Test', '', '_self', NULL, '#000000', NULL, 2, '2018-09-14 04:48:02', '2018-11-02 02:40:30', 'menu.index', NULL),
(3, 'Chip Test', '', '_self', NULL, '#000000', NULL, 3, '2018-09-14 04:49:28', '2018-11-02 02:40:30', 'menu.index', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_14_140923_create_entrust_setup_tables', 1),
(4, '2018_07_12_085612_create_seos_table', 2),
(5, '2018_07_12_090313_add_seo_id_to_posts_table', 3),
(6, '2018_07_12_091007_add_seo_id_to_products_table', 4),
(7, '2018_07_12_091116_add_seo_id_to_category_items_table', 5),
(8, '2018_07_17_084914_create_category_many_table', 6);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `category_permission_id`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'Xem Danh Sách Quyền', 'Được Xem Danh Sách Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(2, 'role-create', 'Tạo Quyền Mới', 'Được Tạo Quyền Mới', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(3, 'role-edit', 'Cập Nhật Quyền', 'Được Cập Nhật Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(4, 'role-delete', 'Xóa Quyền', 'Được Xóa Quyền', 1, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(5, 'user-list', 'Xem Danh Sách Users', 'Được Xem Danh Sách Users', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(6, 'user-create', 'Tạo User', 'Được Tạo User Mới', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(7, 'user-edit', 'Cập Nhật User', 'Được Cập Nhật User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(8, 'user-delete', 'Xóa user', 'Được Xóa User', 2, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(9, 'menu-list', 'Toàn Quyền Menu', 'Được Toàn Quyền Menu', 3, '2018-03-14 07:32:41', '2018-03-14 07:32:41'),
(10, 'menu-create', 'Thêm Mới Menu', 'Được Thêm Mới Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(11, 'menu-edit', 'Cập Nhật Menu', 'Được Cập Nhật Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(12, 'menu-delete', 'Xóa Menu', 'Được Xóa Menu', 3, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(13, 'page-list', 'Toàn Quyền Trang', 'Được Toàn Quyền Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(14, 'page-create', 'Thêm Mới Trang', 'Được Thêm Mới Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(15, 'page-edit', 'Cập Nhật Trang', 'Được Cập Nhật Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(16, 'page-delete', 'Xóa Trang', 'Được Xóa Trang', 4, '2018-03-14 07:32:42', '2018-03-14 07:32:42'),
(17, 'post-list', 'Toàn Quyền Bài Viết', 'Được Toàn Quyền Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(18, 'post-create', 'Thêm Mới Bài Viết', 'Được Thêm Mới Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(19, 'post-edit', 'Cập Nhật Bài Viết', 'Được Cập Nhật Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(20, 'post-delete', 'Xóa Bài Viết', 'Được Xóa Bài Viết', 5, '2018-03-14 07:54:54', '2018-03-14 07:54:54'),
(21, 'product-list', 'Toàn Quyền Sản Phẩm', 'Được Toàn Quyền Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(22, 'product-create', 'Thêm Mới Sản Phẩm', 'Được Thêm Mới Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(23, 'product-edit', 'Cập Nhật Sản Phẩm', 'Được Cập Nhật Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34'),
(24, 'product-delete', 'Xóa Sản Phẩm', 'Được Xóa Sản Phẩm', 7, '2018-03-27 03:06:34', '2018-03-27 03:06:34');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` longtext COLLATE utf8mb4_unicode_ci,
  `post_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `category_item_id` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `path`, `description`, `content`, `image`, `sub_image`, `post_type`, `is_active`, `category_item_id`, `user_id`, `created_at`, `updated_at`, `seo_id`) VALUES
(1, 'Khuyến mãi', 'khuyen-mai', NULL, '<div class="hoavan" style="text-align: center; background: #f8f8f8 none repeat scroll 0 0; border: 2px solid #f2b723; margin-bottom: 15px; margin-top: 10px; padding: 10px; line-height: 35px;">\r\n	<p>\r\n		<span style="font-size: 14pt;"><span style="color: #000080;"><strong>The Sunrise Bay Đà Nẵng </strong></span></span>\r\n	</p>\r\n\r\n	<h3>\r\n		<span style="font-size: 14pt;"><span style="color: #3366ff;"><img alt="" class="alignnone size-full wp-image-719" height="16" src="https://sunrisebays-danang.com/wp-content/uploads/2017/11/12-1.gif" width="37">Chương trình bán hàng &ndash; <span style="color: #ff0000;">&ldquo;ĐẶC BIỆT&rdquo;</span> THE SUNRISE BAY&nbsp;</span><span style="color: #ff0000;"><strong><span style="color: #ff6600;">ĐÀ NẴNG</span></strong></span><span style="color: #3366ff;"><img alt="" class="alignnone size-full wp-image-719" height="16" src="https://sunrisebays-danang.com/wp-content/uploads/2017/11/12-1.gif" width="37"></span></span>\r\n	</h3>\r\n\r\n	<p>\r\n		<strong><img alt="" class="alignnone size-full wp-image-720" height="20" src="https://sunrisebays-danang.com/wp-content/uploads/2017/11/icon-hot.gif" width="40"><span style="color: #008000;"><span style="font-size: 14pt;">Giá từ&nbsp;</span><span style="color: #ff0000; font-size: 24pt;">3,5 tỷ</span></span> =&gt;</strong><span style="font-size: 14pt;">Chiết khấu lên đến <span style="color: #ff0000;"><strong>6%</strong></span> giá trị.</span>\r\n	</p>\r\n\r\n	<h3>\r\n		<img alt="" class="alignnone size-full wp-image-720" height="20" src="https://sunrisebays-danang.com/wp-content/uploads/2017/11/icon-hot.gif" style="color: #3366ff; font-size: 14pt;" width="40"><span style="color: #008000;"><strong>HOT NHẤT:&nbsp;</strong></span><span style="color: #0000ff;"><strong>BIỆT THỰ BIỂN <span style="color: #ff0000;">GIÁ SAU ƯU ĐÃI CÒN 13 TỶ</span></strong></span>\r\n	</h3>\r\n\r\n	<p>\r\n		<span style="font-size: 14pt;">Mọi vấn đề liên quan dự án <a href="https://sunrisebays-danang.com/"><strong><span style="color: #0000ff;">The Sunrise Bay</span></strong></a> Đà Nẵng liên hệ: <span style="color: #ff0000;"><strong>0909 890 897&nbsp;</strong></span>(Phòng kinh doanh chủ đầu tư).</span>\r\n	</p>\r\n\r\n	<p>\r\n		<span style="font-size: 14pt;">Link đăng kí dự Event: <span style="text-decoration: underline;"><span style="color: #ff0000; text-decoration: underline;"><a href="https://sunrisebays-danang.com" style="color: #ff0000; text-decoration: underline;"><strong>The Sunrise Bay Đà Nẵng</strong></a></span></span></span>\r\n	</p>\r\n</div>', 'images/uploads/images/gt_1.jpg', NULL, 0, 1, NULL, 1, '2019-01-11 02:28:09', '2019-01-11 02:28:09', NULL),
(2, 'Thông Tin Tổng Quan Về Dự Án The Sunrise Bay Đà Nẵng', 'thong-tin-tong-quan-ve-du-an-the-sunrise-bay-da-nang', NULL, '<p>\r\n	Tên dự án: <strong>The Sunrise Bay</strong><br>\r\n	Vị trí: P.Thanh Bình &amp; P.Hải Phước, Quận Hải Châu, TP. Đà Nẵng<br>\r\n	Chủ đầu tư: <strong>Công ty TNHH The Sunrise Bay</strong><br>\r\n	Quy mô dự án: <strong>175.999,5&nbsp;</strong>m2;<br>\r\n	Trung tâm thương mại, hội nghị, khách sạn<br>\r\n	Thương mại và dân cư<br>\r\n	Bệnh viện đa khoa &amp; Trường học<br>\r\n	Nhà phố Sunrise Bay (nhà phố thương mại shophouse và nhà phố vườn)<br>\r\n	Biệt thự Sunrise Bay (biệt thự đơn lập và biệt thự song lập)<br>\r\n	Khuôn viên cây xanh, công viên, quảng trường, đường đi bộ\r\n</p>', 'images/uploads/images/home/phoi-canh-the-sunrise-bay_160285.jpg', NULL, 0, 1, NULL, 1, '2019-01-11 02:36:02', '2019-01-11 02:36:02', NULL),
(3, 'Vị Trí Trung Tâm', 'vi-tri-trung-tam', NULL, '<p>\r\n	<span><strong>Vị trí trung tâm thành phố</strong></span><span> trải dài từ phía tây của cầu Thuận Phước </span><span>cho tới ngã ba Tôn Thất Đạm và Nguyễn Tất Thành</span><span> thuận lợi cho việc giao thông </span><span> đến bất cứ đâu</span><span> thành phố Đà Nẵng</span>\r\n</p>', 'images/uploads/images/home/icon/icon-gia-tri_261764.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:44:12', '2019-01-11 02:44:12', NULL),
(4, 'Cơ sở hạ tầng', 'co-so-ha-tang', NULL, '<p>\r\n	<strong><span>Cơ sở hạ tầng</span><span> hoàn thiện</span></strong>\r\n</p>', 'images/uploads/images/home/icon/icon-song_505484.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:44:58', '2019-01-11 02:44:58', NULL),
(5, 'Uy tín tập đoàn', 'uy-tin-tap-doan', NULL, '<p>\r\n	<strong><span>Uy tín tập đoàn</span><span> Novaland </span></strong>\r\n</p>', 'images/uploads/images/home/icon/icon-chu-dau-tu_863964.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:45:32', '2019-01-11 02:45:32', NULL),
(6, 'Hot tại thị trường BDS', 'hot-tai-thi-truong-bds', NULL, '<p>\r\n	<strong><span>Hot tại thị trường BDS</span> </strong>Vị trí đắc địa,<span> tòa tháp 60 tầng</span><span>là điểm nhấn kiến trúc</span>\r\n</p>', 'images/uploads/images/home/icon/icon-trung-tam_869448.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:46:04', '2019-01-11 02:46:04', NULL),
(7, 'Nhiều lựa chọn cho KH', 'nhieu-lua-chon-cho-kh', NULL, '<p>\r\n	<strong><span>Nhiều lựa chọn cho KH</span> với </strong>chung cư, <span>nhà phố</span><span> biệt thự, shophouse </span>\r\n</p>', 'images/uploads/images/home/icon/icon-tien-ich_168686.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:46:28', '2019-01-11 02:46:28', NULL),
(8, 'Phát triển toàn diện', 'phat-trien-toan-dien', NULL, '<p>\r\n	<strong>Phát triển toàn diện</strong> cho thế hệ tương lai\r\n</p>', 'images/uploads/images/home/icon/icon-mat-do_488762.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:47:13', '2019-01-11 02:47:13', NULL),
(9, 'Tích hợp hệ thống', 'tich-hop-he-thong', NULL, '<p>\r\n	Tích hợp hệ thống<strong> nội<span> ngoại khu </span></strong>nổi trội\r\n</p>', 'images/uploads/images/home/icon/icon-hoan-thien_623875.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:47:45', '2019-01-11 02:47:45', NULL),
(10, 'Giá cạnh tranh', 'gia-canh-tranh', NULL, '<p>\r\n	<strong><span>Giá cạnh tranh&nbsp;</span>nhất</strong> khu vực\r\n</p>', 'images/uploads/images/home/icon/icon-gia-canh-tranh_193417.png', NULL, 1, 1, NULL, 1, '2019-01-11 02:48:12', '2019-01-11 02:48:12', NULL),
(11, 'Biển Nhân Tạo', 'bien-nhan-tao', NULL, NULL, 'images/uploads/images/home/tien_ich/tienichbiennhantao_942527.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 02:59:19', '2019-01-11 02:59:19', NULL),
(12, 'Bến Du Thuyền', 'ben-du-thuyen', NULL, NULL, 'images/uploads/images/home/tien_ich/tienichbenduthuyen_227942.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 02:59:49', '2019-01-11 02:59:49', NULL),
(13, 'Phòng Tập Gym Hiện Đại', 'phong-tap-gym-hien-dai', NULL, NULL, 'images/uploads/images/home/tien_ich/tienichphongtapthethao_221897.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 03:00:11', '2019-01-11 08:41:09', NULL),
(14, 'Tiện Ích Công Viên Cây Xanh', 'tien-ich-cong-vien-cay-xanh', NULL, NULL, 'images/uploads/images/home/tien_ich/tienichcongviencayxanh_449310.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 03:00:33', '2019-01-11 03:00:33', NULL),
(15, 'Biệt Thự Đơn Lập', 'biet-thu-don-lap', NULL, '<p>\r\n	Những Căn biệt thự đơn lập nằm trực diện biển được thiết kế chăm chút đón gió và ánh nắng tối đa. Biệt thự đơn lập có 4 tầng với diện tích đất là 540m2\r\n</p>', NULL, 'images/uploads/images/home/san_pham/hoboi_704464.jpg;images/uploads/images/home/san_pham/phongan_575772.jpg;images/uploads/images/home/san_pham/phongkhach_332090.jpg;images/uploads/images/home/san_pham/phongngu1_720924.jpg;images/uploads/images/home/san_pham/phongngu2_551747.jpg;images/uploads/images/home/san_pham/phongtam_874881.jpg', 1, 1, NULL, 1, '2019-01-11 03:14:12', '2019-01-11 03:28:29', NULL),
(16, 'Biệt thự song lập', 'biet-thu-song-lap', NULL, '<p>\r\n	Biệt thự song lập nằm trải dài trên tuyến đường đại lộ xanh được thiết kế riêng biệt nhằm đảm bảo an ninh tuyệt đối nhưng vẫn hưởng được những tiện ích nội khu.\r\n</p>', NULL, 'images/uploads/images/home/san_pham/biet_thu_song_lap/two-side-park-view_218371.jpg', 1, 1, NULL, 1, '2019-01-11 03:19:47', '2019-01-11 03:28:44', NULL),
(17, 'Nhà phố vườn', 'nha-pho-vuon', NULL, '<p>\r\n	Nhà phố được thiết kế tối ưu về không gian sống cho gia chủ trải nghiệm tối đa những giây phút thư giãn bên gia đình và người thân.\r\n</p>', NULL, 'images/uploads/images/home/san_pham/nha_pho_vuon/noithatphongbep_979609.jpg;images/uploads/images/home/san_pham/nha_pho_vuon/noithatphongkhach2_218268.jpg;images/uploads/images/home/san_pham/nha_pho_vuon/noithatphongkhach_345704.jpg;images/uploads/images/home/san_pham/nha_pho_vuon/noithatphongngu_188925.jpg', 1, 1, NULL, 1, '2019-01-11 03:20:43', '2019-01-11 03:28:58', NULL),
(18, 'Nhà phố thương mại', 'nha-pho-thuong-mai', NULL, '<p>\r\n	Nhà phố thương mại nằm trên những trục đường chính của khu đô thị The Sunrise Bay Đà Nẵng, nơi dòng người qua lại tấp nập, buôn bán sầm uất.\r\n</p>', NULL, 'images/uploads/images/home/san_pham/nha_pho_thuong_mai/nhaphothuongmai_427201.jpg', 1, 1, NULL, 1, '2019-01-11 03:21:28', '2019-01-11 03:29:12', NULL),
(19, 'Cùng ngắm nhìn hệ thống tiện ích siêu “sang chảnh” của The Sunrise Bay Đà Nẵng', 'cung-ngam-nhin-he-thong-tien-ich-sieu-sang-chanh-cua-the-sunrise-bay-da-nang', '<p>\r\n	Ngoài vị trí đắc địa tại thành phố đáng sống nhất Việt Nam, được thiết kế và xây dựng bởi những đơn vị uy tín toàn cầu thì hệ thống tiện ích đẳng cấp, bao gồm tiện ích ngoại khu và tiện ích nội khu, là một trong những yếu tố góp phần làm cho The Sunrise Bay trở thành lựa chọn đáng tin cậy của cư dân thượng lưu cũng như các nhà đầu tư!\r\n</p>', '<h2>\r\n	Tiện ích ngoại khu\r\n</h2>\r\n\r\n<p>\r\n	Với tổng diện tích 35ha lân cận, The Sunrise Bay được hưởng rất nhiều tiện ích từ các dự án công trình liền kề như hồ sinh thái, các trung tâm thương mại lớn, trung tâm văn hóa, khu kỹ thuật công nghệ và hu trường học quốc tế liên cấp rộng 2,5 ha.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 1200px) 100vw, 1200px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/tienich1_666587.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F-200x113.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F-300x169.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F-400x225.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F-600x338.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F-768x433.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F-800x451.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F-1024x577.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V03-F.jpg 1200w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Đặc biệt, trong tương lai, dọc biển sẽ hình thành tuyến đường đi bộ dành cho du khách, bãi biển tự nhiên kết hợp với một bãi biển nhân tạo sẽ cho khách hàng cảm giác nghỉ dưỡng tốt nhất ở bất kỳ thời tiết nào.\r\n</p>\r\n\r\n<h2>\r\n	Tiện ích nội khu\r\n</h2>\r\n\r\n<p>\r\n	Nhắc đến tiện ích nội khu của The Sunrise Bay, không thể không bàn đến độ phong phú của nó. Khu đô thị đẳng cấp quốc tế này là một tổ hợp khách sạn 5 sao &ndash; resort &ndash; nhà hàng &ndash; sân golf 18 lỗ tiêu chuẩn quốc tế, trung tâm hội nghị quốc tế, khu bến cảng dành riêng cho du thuyền của cư dân, tòa nhà văn phòng 60 tầng cùng các dãy biệt thự, nhà phố, shophouse&hellip;\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 1200px) 100vw, 1200px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/biennhantao_506584.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K-200x81.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K-300x121.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K-400x161.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K-600x242.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K-768x309.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K-800x322.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K-1024x412.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V15_10K.jpg 1200w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	<strong>Bãi biển nhân tạo</strong>&nbsp;được xây dựng kết hợp cùng bãi biển tự nhiên để điều hòa khí hậu, mang đến cho du khách sự dễ chịu nhất trong bất kỳ thời tiết nào.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 1200px) 100vw, 1200px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/biennhantao2_366557.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K-200x81.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K-300x121.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K-400x161.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K-600x242.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K-768x309.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K-800x322.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K-1024x412.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V14_10K.jpg 1200w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Một trong những tiện ích nổi trội nhất của The Sunrise Bay chính là&nbsp;<strong>bến du thuyền</strong>&nbsp;siêu sang. Cư dân tại đây có thể tận hưởng ngày nghỉ hoặc tổ chức các bữa tiệc ngoài trời sang trọng trên du thuyền trong không gian thiên nhiên thoáng đãng với cảnh biển, cảnh thành phố thơ mộng.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 1200px) 100vw, 1200px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/benduthuyen_713404.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1-200x113.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1-300x169.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1-400x225.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1-600x338.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1-768x433.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1-800x451.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1-1024x577.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V05-F_10K-1.jpg 1200w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	<strong>Khu vực phòng tập thể thao, phòng Gym</strong>&nbsp;được bố trí các thiết bị hiện đại, có view hướng ra hồ bơi và xa hơn nữa là hướng ra biển. Phong cách phục vụ tận tâm chu đáo của đội ngũ nhân viên chuyên nghiệp, nhiệt tình chắc chắn sẽ làm hài lòng khách hàng.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 1200px) 100vw, 1200px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/phongtapgym_375414.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F-200x113.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F-300x169.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F-400x226.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F-600x339.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F-768x433.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F-800x451.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F-1024x578.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V13-F.jpg 1200w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Các công viên được xây dựng đan xen nhau hòa quyện với không gian dành cho cộng đồng, mang lại một phong cách sống bền vững và lành mạnh.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 1200px) 100vw, 1200px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/congviencayxanh_397348.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K-200x121.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K-300x181.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K-400x241.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K-600x362.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K-768x463.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K-800x482.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K-1024x617.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V07_10K.jpg 1200w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Không những thế, The Sunrise Bay còn quan tâm đến sức khỏe và nhu cầu khám chữa bệnh của cư dân mình khi cho xây dựng một&nbsp;<strong>phòng khám đa khoa</strong>&nbsp;ngay trong nội khu.\r\n</p>\r\n\r\n<p>\r\n	Còn vấn đề an ninh cũng không hề đáng lo ngại khi camera được lắp 24/24 cùng đội ngũ bảo vệ đã được đào tạo một cách bài bản sẽ đem đến sự an toàn nhất cho tất cả những người sinh sống tại đây.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 1200px) 100vw, 1200px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/benduthuyen2_964173.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K-200x113.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K-300x169.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K-400x226.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K-600x339.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K-768x433.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K-800x451.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K-1024x578.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V08-F_10K.jpg 1200w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Ngoài ra, tại The Sunrise Đà Nẵng còn có tuyến đường đại lộ nối từ khu trung tâm văn hóa dự án đến với các công trình bên trong đất liền. Cũng như nhiều khu đô thị khác, nằm xen kẽ giữa các công trình công cộng và khu dân cư, The Sunrise Bay Đà Nẵng cũng sẽ có những quảng trường, kênh dẫn nước, công viên cây xanh.\r\n</p>\r\n\r\n<p>\r\n	Với tất cả những tiện ích kể trên, Sunrise Bay chắc chắn sẽ không làm bạn thất vọng khi chọn dự án này làm nơi an cư. Một cuộc sống với đầy đủ mọi tiện nghi đẳng cấp đang chào đón bạn.\r\n</p>', 'images/uploads/images/tin_tuc/hethongtienichsieusangchanh_791370.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 04:15:17', '2019-01-11 04:21:00', NULL),
(20, 'The Sunrise Bay Đà Nẵng – khu đô thị lấn biển đầu tiên ở Việt Nam', 'the-sunrise-bay-da-nang-khu-do-thi-lan-bien-dau-tien-o-viet-nam', '<p>\r\n	Dự án lấn biển là nói chung và khu đô thị lấn biển nói riêng từ lâu đã là xu thế xây dựng của quốc tế. Nhưng những năm gần đây, mô hình này mới được áp dụng tại Việt Nam. Liệu đây có phải là hướng phát triển trong tương lai của các dự án bất động sản?\r\n</p>', '<h2>\r\n	Khu đô thị lấn biển là gì?\r\n</h2>\r\n\r\n<p>\r\n	Có thể hiểu nôm na khu đô thị lấn biển là dự án bất động sản được xây dựng bằng cách khai thác tối đa diện tích mặt nước trước biển. Việc lấn biển lấy đất xây dựng trong những năm gần đây đã mở ra một hướng đi mới đầy tích cực cho các đô thị ven biển. Càng lúc càng có nhiều dự án lấn biển ra đời như một sự khẳng định đây là hướng phát triển đúng đắn cho tương lai.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 2154px) 100vw, 2154px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/lanbienlagi_997785.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-200x156.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-300x235.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-400x313.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-600x469.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-768x601.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-800x626.jpg 800w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-1024x801.jpg 1024w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport-1200x939.jpg 1200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/kansai-international-airport.jpg 2154w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Trên thế giới đã có rất nhiều quốc gia ven biển áp dụng mô hình lấn biển này. Từ việc tham khảo những &ldquo;đàn anh&rdquo; này, chúng ta có thể rút ra nhiều bài học kinh nghiệm và các giải pháp tốt nhất cho những dự án của Việt Nam. Ví dụ như ở Tây Nam của Hà Lan, nơi có nhiều vùng đất thấp ven biển và có cao độ thấp hơn mực nước biển đã sử dụng giải pháp đê biển, kè biển để từng bước sử dụng phần đất thấp đó và lấn biển phía trong đê. Hoặc như ở Nhật Bản, sân bay mới được lập ngoài khơi Kansai Osaka được xem là &ldquo;đảo sân bay&rdquo; nhân tạo duy nhất trên thế giới với ý tưởng &ldquo;không chỉ lấn biển mà còn vươn ra biển&rdquo;. Hay gần nhất là &ldquo;hàng xóm&rdquo; Singapore nổi tiếng với công viên ven biển bên bờ Marina Bay.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/phoicanh_700630.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/4_grande-200x133.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/4_grande-300x200.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/4_grande-400x267.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/12/4_grande.jpg 600w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<h2>\r\n	Khu đô thị lấn biển đầu tiên tại Việt Nam: The Sunrise Bay\r\n</h2>\r\n\r\n<p>\r\n	The Sunrise Bay Đà Nẵng là một khu đô thị mang tầm quốc tế nằm trên trục Đại lộ chính Nguyễn Tất Thành, hướng trực diện ra vịnh Đà Nẵng và đối diện bán đảo Sơn Trà. Là dự án đô thị lấn biển đầu tiên tại Việt Nam với quy mô 171 ha đất liền &amp; 18 ha diện tích đảo, The Sunrise Bay đặc biệt chú trọng đến việc nghiên cứu các giải pháp lấn biển nhằm tăng quỹ đất của thành phố, khai thác triệt để điều kiện tự nhiên. Dự án tiếp giáp với biển thuộc vịnh Đà Nẵng, đón trọn những làn gió mát và không khí trong lành đậm đà vị biển của thiên nhiên.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 800px) 100vw, 800px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/phoicanh2_886914.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1-200x126.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1-300x189.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1-320x202.jpg 320w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1-400x252.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1-600x378.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1-700x441.jpg 700w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1-768x484.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/4-1-1.jpg 800w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Tại căn biệt thự của mình thuộc Sunrise Bay, bạn có thể thoải mái ngắm nhìn dòng nước trong vắt êm đềm lúc bình minh với tất cả an nhiên. Phía Nam The Sunrise Bay ôm một vòng eo biển lớn tạo nên một cung đường đẹp tuyệt vời, chắc chắn sẽ để lại ấn tượng mạnh mẽ với du khách. Nếu có cơ hội đặt chân đến nơi đây, bạn nhất định sẽ nhớ mãi không gian bình yên với tiếng sóng biển hát rì rào quanh năm của con đường mang tên Bác.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 600px) 100vw, 600px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/phoicanh3_837475.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V01-F-200x76.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V01-F-300x114.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V01-F-400x152.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/SB_V01-F.jpg 600w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Và mặc dù thuộc 2 quận trung tâm của Đà Nẵng là Hải Châu và Thanh Khê, The Sunrise Bay vẫn có thể tách mình ra khỏi sự sầm uất có phần ồn ào thành phố. Cùng với gia đình, bạn bè và đặc biệt là người yêu, những giây phút tại The Sunrise Bay là một trải nghiệm đầy ý nghĩa. Ngồi trước biển xanh, bước đi trên những bãi cát trắng mịn, lắng nghe lời thầm thì của sóng và gió, bao nhiêu nỗi ưu tư muộn phiền ngự trị trong tâm trí bạn sẽ được sóng cuốn trôi, gió thổi đi về miền xa xăm.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 352px) 100vw, 352px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/phoicanh4_648038.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/ket-noi-vung-1-200x238.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/ket-noi-vung-1-253x300.jpg 253w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/ket-noi-vung-1.jpg 352w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p>\r\n	Với vị trí đắc địa của mình, được mệnh danh &ldquo;vịnh trong vịnh&rdquo;, lại nằm ở trung tâm thành phố, dễ dàng kết nối với các tiện ích vệ tinh, các địa điểm nổi bật và trọng yếu của Đà Nẵng và liên kết vùng, The Sunrise Bay Đà Nẵng tự tin là dự án duy nhất xứng đáng để trở thành một dự án tốt để đi nghỉ dưỡng, mua định cư hoặc đầu tư kinh doanh sinh lời góp phần tạo nền tảng kinh tế vững chắc cho gia đình bạn.\r\n</p>', 'images/uploads/images/tin_tuc/khudothilanbien_637654.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 04:26:16', '2019-01-11 04:26:38', NULL),
(21, '5 lí do nên đầu tư dự án The Sunrise Bay Đà Nẵng để sinh lợi cao', '5-li-do-nen-dau-tu-du-an-the-sunrise-bay-da-nang-de-sinh-loi-cao', '<p>\r\n	Ngay từ khi mới ra mắt, dự án The Sunrise Bay đã thu hút nhiều sự chú ý của khách hàng cũng như giới đầu tư. Là dự án có quy mô lớn nhất cho đến thời điểm hiện tại, dự án The Sunrise Bay hứa hẹn trở thành khu đô thị mang tầm cỡ quốc tế với thiết kế độc đáo đồng thời sở hữu hệ thống tiện ích nội, ngoại khu nổi trội. Vậy đâu là lí do nên đầu tư vào dự án để sinh lợi nhuận cao ?\r\n</p>', '<h2>\r\n	5 lí do nên đầu tư dự án The Sunrise Bay Đà Nẵng\r\n</h2>\r\n\r\n<p>\r\n	Nằm tại thành phố biển Đà Nẵng, một trong những thành phố có tốc độ phát triển bậc nhất cả nước, dự án The Sunrise Bay hứa hẹn sẽ trở thành mối quan tâm hàng đầu của khách hàng. Bên cạnh đó, là thành phố có môi trường sống văn minh, hiện đại, hệ thống giao thông đồng bộ, thuận lợi cho việc di chuyển góp phần không nhỏ trong việc nâng tầm giá trị của dự án.\r\n</p>\r\n\r\n<h2>\r\n	Dự án The Sunrise Bay Đà Nẵng sở hữu vị trí đắc địa\r\n</h2>\r\n\r\n<p>\r\n	Tọa lạc tại đường Nguyễn Tất Thành, phường Thanh Bình &ndash; phường Hải Phước, quận Hải Châu, Thành Phố Đà Nẵng, dự án The Sunrise Bay Đà Nẵng sở hữu ba mặt tiền đường, mặt tiền đường thứ nhất là đường Nguyễn Tất Thành, hai mặt tiền đường còn lại hướng ra biển Đà Nẵng, tại đây cư dân có thể ngắm nhìn vẻ đẹp thơ mộng của bán đảo Sơn Trà, của vịnh biển Đà Nẵng đầy khoáng đạt. Được xem là vị trí có một không hai ngay tại thành phố biển, dự án trở thành điểm đến lí tưởng cho hoạt động nghỉ ngơi, giải trí và làm việc.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 800px) 100vw, 800px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/lydo1_941832.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/hình-vị-trí-sunrise-200x129.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/hình-vị-trí-sunrise-300x194.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/hình-vị-trí-sunrise-400x259.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/hình-vị-trí-sunrise-600x388.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/hình-vị-trí-sunrise-768x496.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/hình-vị-trí-sunrise.jpg 800w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Dự án The Sunrise Bay sở hữu vị trí địa lí đắc địa có một không hai tại thành phố Đà Nẵng\r\n</p>\r\n\r\n<h2>\r\n	Được mệnh danh là khu đô thị lấn biển đầu tiên tại Đà Nẵng\r\n</h2>\r\n\r\n<p>\r\n	Với quy mô 171 héc ta diện tích đất liền và 18 héc ta diện tích đảo, dự án The Sunrise Bay Đà Nẵng được mệnh danh là khu đô thị lấn biển đầu tiên tại Việt Nam. Các chuyên gia địa ốc nhận định rằng một khi dự án được hoàn thành sẽ góp phần quan trọng nâng tầm vóc thiết kế cảnh quan của Đà Nẵng nói riêng và của khu vực miền trung nói chung. Dự án được xem như là nóc nhà của thành phố Đà Nẵng vì có thể quan sát được cảnh quan đô thị tại những điểm cách xa như đỉnh Sơn Trà, đèo Hải Vân cũng như những luồng hàng hải trên biển hay tuyến hàng không trên bầu trời.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 800px) 100vw, 800px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/lydo2_324883.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/5-200x101.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/5-300x152.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/5-400x203.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/5-540x272.jpg 540w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/5-600x304.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/5-768x389.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/5.jpg 800w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Dự án The Sunrise Bay được mệnh danh là khu đô thị lấn biển đầu tiên tại Đà Nẵng\r\n</p>\r\n\r\n<h2>\r\n	Tích hợp hệ thống tiện ích nội, ngoại khu nổi trội\r\n</h2>\r\n\r\n<p>\r\n	Nếu như trải dài trên 2,5 héc ta diện tích nội khu vượt bậc với hàng loạt hạng mục tiêu biểu như bến du thuyền, câu lạc bộ biển, trường học quốc tế, tuyến đường đi bộ nằm dọc bờ biển cùng hàng cây xanh mướt và khu đại lộ rộng sẽ nối liền khu trung tâm văn hóa với những dự án khác. Thêm vào đó, ngay trên mặt tiền đường Nguyễn Tất Thành là tổ hợp dịch vụ thương mại với trung tâm văn hóa, trung tâm thương mại, cao ốc văn phòng. Ngoài ra, tại phía tây dự án là khu bán đảo mini với hàng loạt nhà hàng, club, shophouse với nhiều phong cách trang trí khác nhau thì hệ thống tiện ích nội khu cũng không kém phần hấp dẫn với trung tâm hội nghị, bến cảng, &nbsp;khu resort cao cấp, khách sạn, chung cư cao cấp.\r\n</p>\r\n\r\n<p>\r\n	<img alt="" sizes="(max-width: 800px) 100vw, 800px" src="http://localhost:8080/sunrisebay/images/uploads/images/tin_tuc/lydo3_531125.jpg" srcset="https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/phoi-canh-clubhouse-du-an-sunrise-bay-da-nang-200x114.jpg 200w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/phoi-canh-clubhouse-du-an-sunrise-bay-da-nang-300x171.jpg 300w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/phoi-canh-clubhouse-du-an-sunrise-bay-da-nang-400x229.jpg 400w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/phoi-canh-clubhouse-du-an-sunrise-bay-da-nang-600x343.jpg 600w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/phoi-canh-clubhouse-du-an-sunrise-bay-da-nang-768x439.jpg 768w, https://duansunrisebaydanang.com.vn/wp-content/uploads/2017/11/phoi-canh-clubhouse-du-an-sunrise-bay-da-nang.jpg 800w" style="width: 100%; height: 100%;">\r\n</p>\r\n\r\n<p style="text-align: center;">\r\n	Phối cảnh bể bơi clubhouse dự án\r\n</p>\r\n\r\n<h2>\r\n	Tiềm năng gia tăng giá trị của dự án cao\r\n</h2>\r\n\r\n<p>\r\n	Theo những phân tích gần đây cho thấy, Đà Nẵng sẽ trở thành địa điểm du lịch thu hút hàng chục ngàn lượt khách du lịch trong và ngoài nước vì vậy các khu resort và khách sạn luôn trong tình trạng cháy phòng. Nhu cầu xây dựng khu dưỡng, resort giải trí cũng chính vì thế mà không ngừng tăng cao nhằm đáp ứng nhu cầu của thị trường. Chính vì thế, dự án The Sunrise Bay Đà Nẵng sẽ trở thành viên ngọc sáng thu hút sự quan tâm của giới đầu tư.\r\n</p>', 'images/uploads/images/tin_tuc/5lydo_469725.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 04:30:10', '2019-01-11 04:30:10', NULL),
(22, 'Vị trí vàng', 'vi-tri-vang', NULL, '<p><img alt="" src="http://localhost:8080/sunrisebay/images/uploads/images/home/vi-tri_900344.png" style="width: 100%; height: 100%;" /></p>\r\n\r\n<p><img alt="" src="http://localhost:8080/sunrisebay/images/uploads/images/home/the-sunrise-bay-da-nang_324033.png" style="width: 100%; height: 100%;" /></p>', NULL, NULL, 0, 1, NULL, 1, '2019-01-11 08:05:51', '2019-01-11 08:12:19', NULL),
(23, 'Khách Sạn 5 Sao', 'khach-san-5-sao', NULL, NULL, 'images/uploads/images/tin_tuc/khudothilanbien_637654.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 08:42:29', '2019-01-11 08:42:29', NULL),
(24, 'Trung tâm hội nghị', 'trung-tam-hoi-nghi', NULL, NULL, 'images/uploads/images/tin_tuc/tienich1_666587.jpg', NULL, 1, 1, NULL, 1, '2019-01-11 08:44:33', '2019-01-11 08:44:33', NULL),
(25, 'Chính Sách  Bán Hàng', 'chinh-sach-ban-hang', NULL, '<p><img alt="" src="http://localhost:8080/sunrisebay/images/uploads/images/chinh_sach_ban_hang/srb-csbhcdt-02122017-1_189802.jpg" style="width: 100%; height: 100%;" /></p>\r\n\r\n<p><img alt="" src="http://localhost:8080/sunrisebay/images/uploads/images/chinh_sach_ban_hang/srb-csbhcdt-02122017-2_524221.jpg" style="width: 100%; height: 100%;" /></p>\r\n\r\n<p><img alt="" src="http://localhost:8080/sunrisebay/images/uploads/images/chinh_sach_ban_hang/srb-csbhcdt-02122017-3_115344.jpg" style="width: 100%; height: 100%;" /></p>\r\n\r\n<p><img alt="" src="http://localhost:8080/sunrisebay/images/uploads/images/chinh_sach_ban_hang/srb-csbhcdt-02122017-4_155558.jpg" style="width: 100%; height: 100%;" /></p>', NULL, NULL, 0, 1, NULL, 1, '2019-01-11 15:44:48', '2019-01-11 15:44:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_image` longtext COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `sale` int(11) DEFAULT NULL,
  `final_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `is_in_stock` tinyint(1) NOT NULL DEFAULT '1',
  `order` int(11) NOT NULL DEFAULT '1',
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `seo_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'administer the website and manage users', '2018-03-14 07:23:50', '2018-03-14 07:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nnduyquang', 'nnduyquang@gmail.com', '$2y$10$mStg572JFNI89/0Cg7TOGOUkACFaBl/nsNeOvx8zglr1qyJPA0tj6', NULL, '2018-03-14 07:24:10', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_items`
--
ALTER TABLE `category_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_items_seo_id_foreign` (`seo_id`);

--
-- Indexes for table `category_many`
--
ALTER TABLE `category_many`
  ADD PRIMARY KEY (`category_id`,`item_id`);

--
-- Indexes for table `category_permissions`
--
ALTER TABLE `category_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_permissions_name_unique` (`name`);

--
-- Indexes for table `configs`
--
ALTER TABLE `configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `configs_user_id_foreign` (`user_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`),
  ADD KEY `permissions_category_permission_id_foreign` (`category_permission_id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_seo_id_foreign` (`seo_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_foreign` (`user_id`),
  ADD KEY `products_seo_id_foreign` (`seo_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
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
-- AUTO_INCREMENT for table `category_items`
--
ALTER TABLE `category_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `category_permissions`
--
ALTER TABLE `category_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `configs`
--
ALTER TABLE `configs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_items`
--
ALTER TABLE `category_items`
  ADD CONSTRAINT `category_items_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `configs`
--
ALTER TABLE `configs`
  ADD CONSTRAINT `configs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_category_permission_id_foreign` FOREIGN KEY (`category_permission_id`) REFERENCES `category_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_seo_id_foreign` FOREIGN KEY (`seo_id`) REFERENCES `seos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
