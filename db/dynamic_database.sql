-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 02:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dynamic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_3rd_menu`
--

CREATE TABLE `admin_3rd_menu` (
  `id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `3rd_menu` varchar(15) NOT NULL,
  `page` int(2) NOT NULL,
  `banner` int(2) NOT NULL COMMENT '0 No |1 yes ',
  `news` int(2) NOT NULL COMMENT '0 No |1 yes',
  `about` int(2) NOT NULL COMMENT '0 No |1 yes',
  `services` int(2) NOT NULL COMMENT '0 No |1 yes',
  `contact` int(2) NOT NULL COMMENT '0 No |1 yes',
  `map` int(2) NOT NULL COMMENT '0 No |1 yes',
  `sumernote` int(2) NOT NULL COMMENT '0 No |1 yes',
  `testimonial` int(2) NOT NULL,
  `seo` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_about`
--

CREATE TABLE `admin_about` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `about_header` varchar(50) NOT NULL,
  `about_text` text NOT NULL,
  `about_image` text NOT NULL,
  `button_url` text DEFAULT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `button_color` varchar(50) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_about`
--

INSERT INTO `admin_about` (`id`, `menu_id`, `submenu_id`, `child_submenu_id`, `about_header`, `about_text`, `about_image`, `button_url`, `button_text`, `button_color`, `status`, `created_at`, `updated_at`) VALUES
(15, 17, 0, 0, 'about Us', '<p>Checking BUtton</p>', 'manchurian2.jpg', 'https://www.facebook.com/', 'Read More', 'red', 1, '2023-08-07 01:44:30', '2023-08-06 20:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `admin_banner`
--

CREATE TABLE `admin_banner` (
  `id` int(11) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `banner` text NOT NULL,
  `banner_text` varchar(50) DEFAULT NULL,
  `button_url` text DEFAULT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `button_color` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_banner`
--

INSERT INTO `admin_banner` (`id`, `menu_id`, `submenu_id`, `child_submenu_id`, `banner`, `banner_text`, `button_url`, `button_text`, `button_color`, `status`, `created_at`, `updated_at`) VALUES
(44, 16, 9, 0, 'ssignature.jpg', 'fish fry with smaeely', NULL, NULL, NULL, 1, '2023-08-05 07:27:35', '2023-08-05 01:57:35'),
(47, 17, 0, 0, 'Bihari-Chicken1.jpg', '<p>banner of chicken</p>', 'NULL', 'Read More', 'red', 1, '2023-08-07 01:52:41', '2023-08-06 20:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_enquiry`
--

CREATE TABLE `admin_enquiry` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `subject` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `jop_profile` varchar(50) DEFAULT NULL,
  `education` varchar(50) DEFAULT NULL,
  `Passing_year` varchar(4) DEFAULT NULL,
  `experienced` varchar(3) DEFAULT NULL,
  `experience_no_of_year` int(2) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_enquiry`
--

INSERT INTO `admin_enquiry` (`id`, `name`, `mobile`, `email`, `subject`, `message`, `address`, `jop_profile`, `education`, `Passing_year`, `experienced`, `experience_no_of_year`, `status`, `created_at`, `updated_at`) VALUES
(14, 'md israel', '9905174054', 'camwel.muhammad@gmial.com', 'Regarding Job', ' xyasjhfbsfjksfjk;jk;jk;asdfjk', 'Bhnatha ssupaul bazar Biraul', 'SEO Executive', 'Inter', '2016', 'yes', 10, 1, '2023-04-08 15:26:16', '2023-04-10 04:55:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_gallery`
--

CREATE TABLE `admin_gallery` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `image` text NOT NULL,
  `caption` varchar(20) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_hero_section`
--

CREATE TABLE `admin_hero_section` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `header` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `image` text NOT NULL,
  `button_url` text DEFAULT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `button_color` varchar(50) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_hero_section`
--

INSERT INTO `admin_hero_section` (`id`, `menu_id`, `submenu_id`, `child_submenu_id`, `header`, `text`, `image`, `button_url`, `button_text`, `button_color`, `status`, `created_at`, `updated_at`) VALUES
(22, 17, 0, 0, '', '', 'uploads/image/Bihari-Chicken3.jpg', NULL, NULL, NULL, 1, '2023-08-07 01:33:15', '2023-08-07 04:50:39'),
(23, 17, 0, 0, '', '<div style=\"font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\"><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp;&lt;?php if($hero[\'text\']!=\'\' &amp;&amp; $hero[\'image\']!=\'\' ):?&gt;</font></div><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=\"col-md-6\"&gt;</font></div><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;?php echo $hero[\'text\']?&gt;</font></div><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</font></div><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;div class=\"col-md-6\"&gt;</font></div><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;img src=\"&lt;?php echo base_url().$hero[\'image\'];?&gt;\" alt=\"&lt;?php echo base_url().$hero[\'image\'];?&gt;\" style=\"width: 100%;\"&gt;</font></div><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;/div&gt;</font></div><div style=\"\"><font color=\"#000000\" style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &lt;?php endif;?&gt;</font></div></div>', '', NULL, NULL, NULL, 1, '2023-08-07 01:33:56', '2023-08-07 04:50:42'),
(24, 17, 0, 0, 'Fish Fry', '<div style=\"color: rgb(212, 212, 212); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre;\"><div style=\"\">&nbsp;<span style=\"color: rgb(86, 156, 214);\">&lt;?php</span> <span style=\"color: rgb(197, 134, 192);\">if</span>(<span style=\"color: rgb(156, 220, 254);\">$hero</span>[<span style=\"color: rgb(206, 145, 120);\">\'text\'</span>]!=<span style=\"color: rgb(206, 145, 120);\">\'\'</span> &amp;&amp; <span style=\"color: rgb(156, 220, 254);\">$hero</span>[<span style=\"color: rgb(206, 145, 120);\">\'image\'</span>]!=<span style=\"color: rgb(206, 145, 120);\">\'\'</span> ):<span style=\"color: rgb(86, 156, 214);\">?</span><span style=\"color: rgb(86, 156, 214);\">&gt;</span></div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: #808080;\">&lt;</span><span style=\"color: #569cd6;\">div</span> <span style=\"color: #9cdcfe;\">class</span>=<span style=\"color: #ce9178;\">\"col-md-6\"</span><span style=\"color: #808080;\">&gt;</span></div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: #569cd6;\">&lt;?php</span> <span style=\"color: #dcdcaa;\">echo</span> <span style=\"color: #9cdcfe;\">$hero</span>[<span style=\"color: #ce9178;\">\'text\'</span>]<span style=\"color: #569cd6;\">?</span><span style=\"color: #569cd6;\">&gt;</span></div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: #808080;\">&lt;/</span><span style=\"color: #569cd6;\">div</span><span style=\"color: #808080;\">&gt;</span></div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: #808080;\">&lt;</span><span style=\"color: #569cd6;\">div</span> <span style=\"color: #9cdcfe;\">class</span>=<span style=\"color: #ce9178;\">\"col-md-6\"</span><span style=\"color: #808080;\">&gt;</span></div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: #808080;\">&lt;</span><span style=\"color: #569cd6;\">img</span> <span style=\"color: #9cdcfe;\">src</span>=<span style=\"color: #ce9178;\">\"</span><span style=\"color: #569cd6;\">&lt;?php</span> <span style=\"color: #dcdcaa;\">echo</span> <span style=\"color: #dcdcaa;\">base_url</span>().<span style=\"color: #9cdcfe;\">$hero</span>[<span style=\"color: #ce9178;\">\'image\'</span>];<span style=\"color: #569cd6;\">?</span><span style=\"color: #569cd6;\">&gt;</span><span style=\"color: #ce9178;\">\"</span> <span style=\"color: #9cdcfe;\">alt</span>=<span style=\"color: #ce9178;\">\"</span><span style=\"color: #569cd6;\">&lt;?php</span> <span style=\"color: #dcdcaa;\">echo</span> <span style=\"color: #dcdcaa;\">base_url</span>().<span style=\"color: #9cdcfe;\">$hero</span>[<span style=\"color: #ce9178;\">\'image\'</span>];<span style=\"color: #569cd6;\">?</span><span style=\"color: #569cd6;\">&gt;</span><span style=\"color: #ce9178;\">\"</span> <span style=\"color: #9cdcfe;\">style</span>=<span style=\"color: #ce9178;\">\"</span><span style=\"color: #ce9178;\">width: 100%;\"</span><span style=\"color: #808080;\">&gt;</span></div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: #808080;\">&lt;/</span><span style=\"color: #569cd6;\">div</span><span style=\"color: #808080;\">&gt;</span></div><div style=\"\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style=\"color: rgb(86, 156, 214);\">&lt;?php</span> <span style=\"color: rgb(197, 134, 192);\">endif</span>;<span style=\"color: rgb(86, 156, 214);\">?</span><span style=\"color: rgb(86, 156, 214);\">&gt;</span></div></div>', 'uploads/image/ssignature.jpg', NULL, NULL, NULL, 1, '2023-08-07 01:34:56', '2023-08-06 20:04:56'),
(25, 17, 0, 0, 'Manchurian dish Famoush in India', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</span><br></p>', 'uploads/image/manchurian3.jpg', NULL, NULL, NULL, 1, '2023-08-07 02:09:43', '2023-08-07 04:50:46'),
(26, 17, 0, 0, 'header with some data', '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</span><br></p>', '', NULL, NULL, NULL, 1, '2023-08-07 02:14:21', '2023-08-06 20:44:21'),
(27, 17, 0, 0, '', '<p>g<img src=\"data:image/png;base64,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\" data-filename=\"mobile_apps.png\" style=\"width: 511.992px;\"></p>', '', NULL, NULL, NULL, 1, '2023-08-10 12:23:12', '2023-08-10 06:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(2) NOT NULL,
  `menu` varchar(10) NOT NULL,
  `home_page` int(2) NOT NULL COMMENT '0 no| 1 yes',
  `page` int(2) NOT NULL COMMENT '0 no page |1 page',
  `banner` int(2) NOT NULL COMMENT '1 on|0 off',
  `news` int(2) NOT NULL COMMENT '1 on|0 off',
  `about` int(2) NOT NULL COMMENT '1 on|0 off',
  `services` int(2) NOT NULL COMMENT '1 on|0 off',
  `contact` int(2) NOT NULL COMMENT '0 off|1 on',
  `career` int(2) NOT NULL COMMENT '0 on|1 off',
  `map` int(2) NOT NULL COMMENT '1 on|0 off',
  `seo` int(2) NOT NULL COMMENT '0 off| 1 on',
  `gallery` int(2) NOT NULL,
  `sumernote` int(2) NOT NULL COMMENT '1 on|0 off',
  `sumernote1` int(2) NOT NULL COMMENT '0 off | 1 on',
  `sumernote2` int(2) NOT NULL COMMENT '0 off | 1 on',
  `testimonial` int(2) NOT NULL,
  `hero_section` int(2) NOT NULL COMMENT '0 off| 1 on',
  `child` int(2) NOT NULL COMMENT '0 no-child|else child',
  `status` int(2) NOT NULL COMMENT '0 inactive|1active',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `menu`, `home_page`, `page`, `banner`, `news`, `about`, `services`, `contact`, `career`, `map`, `seo`, `gallery`, `sumernote`, `sumernote1`, `sumernote2`, `testimonial`, `hero_section`, `child`, `status`, `created_at`, `updated_at`) VALUES
(16, 'Home1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '2023-04-10 21:03:38', '2023-08-10 06:41:17'),
(17, 'Home', 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, '2023-04-10 21:06:17', '2023-08-06 20:38:34'),
(18, 'md israel', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2023-10-10 18:58:07', '2023-10-10 13:28:07');

-- --------------------------------------------------------

--
-- Table structure for table `admin_news`
--

CREATE TABLE `admin_news` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `news` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_page_data`
--

CREATE TABLE `admin_page_data` (
  `id` int(11) NOT NULL,
  `menu_id` int(2) DEFAULT NULL,
  `submenu_id` int(2) DEFAULT NULL,
  `3rd_menu_id` int(2) DEFAULT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_page_link`
--

CREATE TABLE `admin_page_link` (
  `id` int(11) NOT NULL,
  `google_analytics` text NOT NULL,
  `google_console` text NOT NULL,
  `livechat` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_page_link`
--

INSERT INTO `admin_page_link` (`id`, `google_analytics`, `google_console`, `livechat`, `status`, `created_at`, `Updated_at`) VALUES
(1, 'fghfgdhf', 'hfdhfh', 'hfdhf', 0, '2023-04-06 13:04:48', '2023-08-06 06:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_seo`
--

CREATE TABLE `admin_seo` (
  `id` int(2) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `submenu_id` int(11) NOT NULL,
  `child_submenu_id` int(11) NOT NULL,
  `page_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keywords` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_services`
--

CREATE TABLE `admin_services` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `image` text NOT NULL,
  `heading` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `button_url` text DEFAULT NULL,
  `button_text` varchar(50) DEFAULT NULL,
  `button_color` varchar(50) DEFAULT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_services`
--

INSERT INTO `admin_services` (`id`, `menu_id`, `submenu_id`, `child_submenu_id`, `image`, `heading`, `content`, `button_url`, `button_text`, `button_color`, `status`, `created_at`, `updated_at`) VALUES
(24, 17, 0, 0, 'WhatsApp_Image_2023-02-11_at_8_59_33_PM.jpeg', '', 'button texting', 'https://www.facebook.com/', 'Know US', 'Yellow', 1, '2023-04-13 08:53:03', '2023-04-13 03:23:03'),
(25, 17, 0, 0, 'WhatsApp_Image_2023-03-07_at_10_32_46_AM.jpeg', '', 'service 2', 'https://www.facebook.com/', 'contact US', 'green', 1, '2023-04-13 08:58:06', '2023-04-13 03:28:06'),
(26, 17, 0, 0, 'WhatsApp_Image_2023-03-07_at_10_32_46_AM1.jpeg', '', 'fff', '0', 'Read More', 'red', 1, '2023-04-13 09:13:32', '2023-04-13 03:43:32'),
(27, 17, 0, 0, 'WhatsApp_Image_2023-02-11_at_8_59_33_PM1.jpeg', 'service', 'sfsdffsfsfsdfsf', 'http://localhost/dynamic/Website/sub_page/16/9', 'Read More', 'red', 1, '2023-04-13 09:21:55', '2023-04-13 03:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `admin_single_data`
--

CREATE TABLE `admin_single_data` (
  `id` int(11) NOT NULL,
  `logo` text NOT NULL,
  `favicon` text NOT NULL,
  `contact_number` text NOT NULL,
  `email` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_single_data`
--

INSERT INTO `admin_single_data` (`id`, `logo`, `favicon`, `contact_number`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Website_Logo.png', 'favicon.png', '9905174054', 'muhammd5101729@gmial.com', 1, '2023-04-01 13:07:47', '2023-04-10 14:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `admin_submenu`
--

CREATE TABLE `admin_submenu` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `sub_menu` varchar(15) NOT NULL,
  `child` int(2) NOT NULL COMMENT '0 no child|1 child',
  `page` int(2) NOT NULL COMMENT '0 no page |1 page',
  `banner` int(2) NOT NULL COMMENT '0 no|1 yes',
  `news` int(2) NOT NULL COMMENT '0 no|1 yes',
  `about` int(2) NOT NULL COMMENT '0 no|1 yes',
  `services` int(2) NOT NULL COMMENT '0 no|1 yes',
  `contact` int(2) NOT NULL COMMENT '0 no|1 yes',
  `map` int(2) NOT NULL COMMENT '0 no|1 yes',
  `sumernote` int(2) NOT NULL COMMENT '0 no|1 yes',
  `testimonial` int(2) NOT NULL,
  `seo` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_submenu`
--

INSERT INTO `admin_submenu` (`id`, `menu_id`, `sub_menu`, `child`, `page`, `banner`, `news`, `about`, `services`, `contact`, `map`, `sumernote`, `testimonial`, `seo`, `status`, `created_at`, `updated_at`) VALUES
(9, 16, 'aganwadi', 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, '2023-04-10 21:06:46', '2023-08-05 01:57:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_summernote`
--

CREATE TABLE `admin_summernote` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_summernote`
--

INSERT INTO `admin_summernote` (`id`, `menu_id`, `submenu_id`, `child_submenu_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(11, 17, 0, 0, '<p>summernote0</p>', 1, '0000-00-00 00:00:00', '2023-08-04 21:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `admin_summernote1`
--

CREATE TABLE `admin_summernote1` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_summernote1`
--

INSERT INTO `admin_summernote1` (`id`, `menu_id`, `submenu_id`, `child_submenu_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 17, 0, 0, '<p>sumernote1</p>', 1, '0000-00-00 00:00:00', '2023-08-04 21:00:47');

-- --------------------------------------------------------

--
-- Table structure for table `admin_summernote2`
--

CREATE TABLE `admin_summernote2` (
  `id` int(2) NOT NULL,
  `menu_id` int(2) NOT NULL,
  `submenu_id` int(2) NOT NULL,
  `child_submenu_id` int(2) NOT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_summernote2`
--

INSERT INTO `admin_summernote2` (`id`, `menu_id`, `submenu_id`, `child_submenu_id`, `content`, `status`, `created_at`, `updated_at`) VALUES
(4, 17, 0, 0, '<p>summernote2</p>', 1, '0000-00-00 00:00:00', '2023-08-04 21:09:26');

-- --------------------------------------------------------

--
-- Table structure for table `admin_testimonial`
--

CREATE TABLE `admin_testimonial` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `submenu_id` int(11) NOT NULL,
  `child_submenu_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(2) NOT NULL,
  `banner_limit` int(2) NOT NULL,
  `size` int(5) NOT NULL COMMENT 'in KB',
  `height` int(5) NOT NULL COMMENT 'in Pixels',
  `width` int(5) NOT NULL COMMENT 'in pixels',
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner_limit`, `size`, `height`, `width`, `status`, `created_at`, `Updated_at`) VALUES
(1, 10, 2000, 2000, 2000, 1, '2023-02-22 12:30:41', '2023-04-04 06:30:34');

-- --------------------------------------------------------

--
-- Table structure for table `content_with_image`
--

CREATE TABLE `content_with_image` (
  `id` int(2) NOT NULL,
  `section_name` varchar(255) NOT NULL,
  `max_limit` int(2) NOT NULL,
  `image_size` int(2) NOT NULL COMMENT 'in KB',
  `image_width` int(2) NOT NULL COMMENT 'in pixel',
  `image_height` int(2) NOT NULL COMMENT 'in pixel',
  `content` int(2) NOT NULL COMMENT 'charechter count',
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `content_with_image`
--

INSERT INTO `content_with_image` (`id`, `section_name`, `max_limit`, `image_size`, `image_width`, `image_height`, `content`, `status`, `created_at`, `Updated_at`) VALUES
(1, 'Hero Tag Section', 10, 40000, 5000, 5000, 2000, 1, '2023-08-06 09:18:52', '2023-08-06 16:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_by_user_id` int(11) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 1,
  `created_at` date NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `created_by_user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 1, 1, '2021-12-30', '2022-01-15 06:57:50'),
(2, 'Entry', 1, 1, '2022-06-13', '2022-06-13 12:24:53'),
(3, 'Kata', 1, 1, '2022-06-15', '2022-06-16 07:22:35'),
(4, 'Accountant', 1, 1, '2022-06-15', '2022-06-16 07:22:53');

-- --------------------------------------------------------

--
-- Table structure for table `favicon`
--

CREATE TABLE `favicon` (
  `id` int(11) NOT NULL,
  `favicon_size` int(11) NOT NULL,
  `favicon_width` int(11) NOT NULL,
  `favicon_height` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favicon`
--

INSERT INTO `favicon` (`id`, `favicon_size`, `favicon_width`, `favicon_height`, `status`, `created_at`, `Updated_at`) VALUES
(1, 2000, 2000, 2000, 1, '2023-03-31 12:48:08', '2023-04-10 07:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `gallary`
--

CREATE TABLE `gallary` (
  `id` int(2) NOT NULL,
  `gallary_limit` int(2) NOT NULL,
  `image_size` int(2) NOT NULL COMMENT 'in KB',
  `image_width` int(2) NOT NULL COMMENT 'In Pixel',
  `image_height` int(2) NOT NULL COMMENT 'in Pixel',
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallary`
--

INSERT INTO `gallary` (`id`, `gallary_limit`, `image_size`, `image_width`, `image_height`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 42000, 2000, 2000, 1, '2023-02-23 08:45:36', '2023-04-10 16:00:01');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(2) NOT NULL,
  `logo_size` int(11) NOT NULL,
  `logo_width` int(11) NOT NULL,
  `logo_height` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `logo_size`, `logo_width`, `logo_height`, `status`, `created_at`, `updated_at`) VALUES
(1, 2000, 2000, 200, 0, '2023-03-31 08:44:15', '2023-04-10 07:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `navbar`
--

CREATE TABLE `navbar` (
  `id` int(11) NOT NULL,
  `navbar_limit` int(2) NOT NULL COMMENT 'max limit of menu',
  `2nd_navbar_permission` int(2) NOT NULL COMMENT '0 no |1 yes',
  `2nd_navbar_limit` int(2) NOT NULL,
  `3rd_navbar_permission` int(2) NOT NULL COMMENT '0 no |1 yes',
  `3rd_navbar_limit` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `navbar`
--

INSERT INTO `navbar` (`id`, `navbar_limit`, `2nd_navbar_permission`, `2nd_navbar_limit`, `3rd_navbar_permission`, `3rd_navbar_limit`, `created_at`, `updated_at`) VALUES
(1, 10, 1, 10, 1, 20, '2023-02-21 12:22:31', '2023-04-10 16:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(2) NOT NULL,
  `news_limit` int(2) NOT NULL,
  `news_size` int(2) NOT NULL,
  `status` int(2) NOT NULL COMMENT '0 deactivated| 1 Activated',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news_limit`, `news_size`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 100, 1, '2023-02-23 10:58:38', '2023-04-04 11:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` int(2) NOT NULL,
  `page_title_limit` int(2) NOT NULL COMMENT 'in charectors',
  `description_limit` int(2) NOT NULL COMMENT 'in charectors',
  `keyword_limit` int(2) NOT NULL COMMENT 'in charectors',
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `page_title_limit`, `description_limit`, `keyword_limit`, `status`, `created_at`, `Updated_at`) VALUES
(1, 50, 50, 50, 1, '2023-03-30 12:02:42', '2023-04-04 06:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(2) NOT NULL,
  `service_limit` int(2) NOT NULL,
  `icon_size` int(2) NOT NULL COMMENT 'in KB',
  `icon_width` int(2) NOT NULL COMMENT 'in pixel',
  `icon_height` int(2) NOT NULL COMMENT 'in pixel',
  `content` int(2) NOT NULL COMMENT 'charechter count',
  `status` int(2) NOT NULL,
  `created_at` datetime NOT NULL,
  `Updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `service_limit`, `icon_size`, `icon_width`, `icon_height`, `content`, `status`, `created_at`, `Updated_at`) VALUES
(1, 10, 22000, 2000, 2000, 100, 1, '2023-02-23 06:25:41', '2023-04-04 03:00:27');

-- --------------------------------------------------------

--
-- Table structure for table `system_config`
--

CREATE TABLE `system_config` (
  `id` int(11) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `company_address` varchar(200) NOT NULL,
  `about_company` text NOT NULL,
  `facebook` text NOT NULL,
  `tweeter` text NOT NULL,
  `instagram` text NOT NULL,
  `linkedln` text NOT NULL,
  `youtube` text NOT NULL,
  `whatsapp` varchar(10) NOT NULL,
  `default_timezone` int(10) NOT NULL,
  `session_timeout` int(10) NOT NULL,
  `inactive_timeout` int(1) NOT NULL,
  `max_file_size` int(11) NOT NULL,
  `allowed_file_types` varchar(200) NOT NULL,
  `default_time_format` varchar(100) NOT NULL,
  `default_date_format` varchar(100) NOT NULL,
  `default_date_time_format` varchar(100) NOT NULL,
  `updates_enabled` int(1) NOT NULL,
  `error_reporting` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `system_config`
--

INSERT INTO `system_config` (`id`, `company_name`, `company_address`, `about_company`, `facebook`, `tweeter`, `instagram`, `linkedln`, `youtube`, `whatsapp`, `default_timezone`, `session_timeout`, `inactive_timeout`, `max_file_size`, `allowed_file_types`, `default_time_format`, `default_date_format`, `default_date_time_format`, `updates_enabled`, `error_reporting`) VALUES
(1, 'camwel', 'Janki Market,\r\nBhagwat Nagar, Kumhrar, Patna\r\n800026, Bihar, India', 'We are a digital transformation and software development company that provides cutting edge engineering solutions, helping Fortune 500+ companies and enterprise clients untangle complex issues that always emerge during their digital evolution journey.\r\n', '', 'https://www.instagram.com/camwel_solution/', 'https://www.instagram.com/camwel_solution/', '#', '#', '9905174054', 49, 60, 0, 10000000, 'jpg,JPG,JPEG,jpeg,png,PNG,GIF,gif,doc,DOC,docx,DOCX,pdf,PDF,RAR,rar,ZIP,zip', 'h:i:A', 'j M, Y', 'd-m-Y h:i:s A', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(2) NOT NULL,
  `testimonial_limit` int(2) NOT NULL COMMENT 'maximum ',
  `icon_size` int(2) NOT NULL COMMENT 'in KB',
  `icon_width` int(2) NOT NULL COMMENT 'In px',
  `icon_height` int(2) NOT NULL COMMENT 'In Px',
  `content` int(2) NOT NULL COMMENT 'in character',
  `status` int(2) NOT NULL COMMENT '0 off| 1 on',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `testimonial_limit`, `icon_size`, `icon_width`, `icon_height`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 10000, 10000, 10000, 100, 0, '2023-04-04 02:36:24', '2023-08-06 14:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'admin@g.com', '1', '::1', 'Chrome 102.0.0.0, Windows 10', '2022-06-21 10:23:27'),
(2, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 06:40:18'),
(3, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 07:52:16'),
(4, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:01:35'),
(5, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:19:43'),
(6, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:20:14'),
(7, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:20:23'),
(8, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:22:27'),
(9, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:23:24'),
(10, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:33:34'),
(11, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 08:36:30'),
(12, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:41:44'),
(13, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:41:54'),
(14, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:43:22'),
(15, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:44:07'),
(16, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:45:32'),
(17, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:48:04'),
(18, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:48:16'),
(19, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:48:36'),
(20, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:48:45'),
(21, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:52:47'),
(22, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:54:12'),
(23, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 09:57:24'),
(24, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:01:44'),
(25, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:02:04'),
(26, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:07:37'),
(27, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:08:04'),
(28, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:08:16'),
(29, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:16:17'),
(30, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:16:59'),
(31, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:17:40'),
(32, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:18:37'),
(33, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 10:22:32'),
(34, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 11:05:01'),
(35, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-21 11:05:20'),
(36, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-22 05:42:38'),
(37, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-23 05:04:01'),
(38, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-23 05:04:17'),
(39, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-23 07:20:00'),
(40, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-23 11:02:06'),
(41, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-23 11:07:01'),
(42, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-23 11:09:01'),
(43, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-24 05:05:53'),
(44, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-27 06:03:57'),
(45, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-28 04:54:21'),
(46, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-28 05:28:47'),
(47, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-02-28 05:29:37'),
(48, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-01 06:46:00'),
(49, 'super@g.com', '2', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-01 11:38:42'),
(50, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-01 11:49:49'),
(51, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-02 05:01:35'),
(52, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-04 04:53:39'),
(53, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-11 04:29:03'),
(54, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-13 04:33:14'),
(55, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-14 04:40:06'),
(56, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-14 14:46:23'),
(57, 'admin@g.com', '1', '::1', 'Chrome 110.0.0.0, Windows 10', '2023-03-14 20:51:27'),
(58, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-16 01:52:14'),
(59, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-16 14:46:39'),
(60, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-19 06:01:51'),
(61, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-19 14:14:31'),
(62, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-21 14:45:22'),
(63, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-26 22:47:18'),
(64, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-27 15:29:04'),
(65, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-28 00:17:00'),
(66, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-28 23:15:18'),
(67, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-29 16:21:01'),
(68, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 04:35:30'),
(69, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 08:40:59'),
(70, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 08:42:52'),
(71, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 08:58:36'),
(72, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 08:59:17'),
(73, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 08:59:43'),
(74, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 10:27:57'),
(75, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 10:49:19'),
(76, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 10:50:25'),
(77, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 11:23:08'),
(78, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 11:26:46'),
(79, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 14:08:14'),
(80, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 16:57:49'),
(81, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-30 23:20:09'),
(82, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-31 04:15:29'),
(83, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-31 06:23:06'),
(84, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-31 08:30:07'),
(85, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-31 22:21:59'),
(86, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-03-31 23:21:38'),
(87, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 00:08:57'),
(88, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 00:32:17'),
(89, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 04:26:34'),
(90, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 04:54:53'),
(91, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 04:55:37'),
(92, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 07:27:05'),
(93, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 07:27:37'),
(94, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 07:37:10'),
(95, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 07:37:35'),
(96, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 11:10:41'),
(97, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-01 11:11:21'),
(98, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-02 06:14:49'),
(99, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-02 09:33:24'),
(100, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-02 09:34:44'),
(101, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-02 14:32:13'),
(102, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 04:32:23'),
(103, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 04:33:59'),
(104, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 04:34:19'),
(105, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 05:08:34'),
(106, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 05:09:32'),
(107, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 10:11:47'),
(108, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 14:49:54'),
(109, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 14:56:45'),
(110, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-03 22:30:58'),
(111, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 00:12:48'),
(112, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 01:06:32'),
(113, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 03:00:20'),
(114, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 03:00:53'),
(115, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 04:44:27'),
(116, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:01:29'),
(117, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:08:34'),
(118, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:14:11'),
(119, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:14:42'),
(120, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:20:25'),
(121, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:21:03'),
(122, 'super@g.com', '2', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:27:33'),
(123, 'admin@g.com', '1', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 06:57:17'),
(124, 'admin@g.com', '1', '192.168.1.215', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 07:28:37'),
(125, 'super@g.com', '2', '192.168.1.215', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 07:37:44'),
(126, 'super@g.com', '2', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 07:40:06'),
(127, 'admin@g.com', '1', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 07:50:59'),
(128, 'super@g.com', '2', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 08:16:26'),
(129, 'admin@g.com', '1', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 09:42:31'),
(130, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:03:13'),
(131, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:03:46'),
(132, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:19:46'),
(133, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:22:00'),
(134, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:23:44'),
(135, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:24:05'),
(136, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:42:30'),
(137, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 10:45:41'),
(138, 'super@g.com', '2', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 11:22:38'),
(139, 'admin@g.com', '1', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 11:25:09'),
(140, 'admin@g.com', '1', '192.168.1.248', 'Chrome 111.0.0.0, Windows 10', '2023-04-04 11:26:02'),
(141, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 04:53:36'),
(142, 'admin@g.com', '1', '192.168.1.246', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 06:32:51'),
(143, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 08:21:18'),
(144, 'admin@g.com', '1', '192.168.1.246', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 10:04:32'),
(145, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 10:06:50'),
(146, 'super@g.com', '2', '192.168.1.246', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 10:21:53'),
(147, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 11:33:04'),
(148, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-05 11:48:55'),
(149, 'admin@g.com', '1', '192.168.1.247', 'Chrome 111.0.0.0, Windows 10', '2023-04-06 04:50:54'),
(150, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-06 08:38:53'),
(151, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-06 08:39:12'),
(152, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-06 12:19:16'),
(153, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-07 04:53:01'),
(154, 'admin@g.com', '1', '192.168.1.247', 'Chrome 111.0.0.0, Windows 10', '2023-04-07 05:16:28'),
(155, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-07 10:36:34'),
(156, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-07 10:37:02'),
(157, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-07 10:47:01'),
(158, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-07 11:47:59'),
(159, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-08 04:34:21'),
(160, 'admin@g.com', '1', '192.168.1.247', 'Chrome 111.0.0.0, Windows 10', '2023-04-08 08:15:59'),
(161, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-08 15:31:41'),
(162, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-09 05:13:29'),
(163, 'admin@g.com', '1', '192.168.1.250', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 04:54:21'),
(164, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 04:56:20'),
(165, 'super@g.com', '2', '192.168.1.250', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 05:25:57'),
(166, 'admin@g.com', '1', '192.168.1.250', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 05:34:57'),
(167, 'super@g.com', '2', '192.168.1.250', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 07:22:16'),
(168, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 07:36:13'),
(169, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 07:47:18'),
(170, 'super@g.com', '2', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 07:48:33'),
(171, 'admin@g.com', '1', '::1', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 07:49:38'),
(172, 'super@g.com', '2', '192.168.1.250', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 09:43:29'),
(173, 'admin@g.com', '1', '192.168.1.250', 'Chrome 111.0.0.0, Windows 10', '2023-04-10 09:43:50'),
(174, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 14:29:48'),
(175, 'super@g.com', '2', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 15:53:59'),
(176, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 15:55:12'),
(177, 'super@g.com', '2', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 15:55:34'),
(178, 'super@g.com', '2', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 16:51:39'),
(179, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 16:52:22'),
(180, 'super@g.com', '2', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 16:52:47'),
(181, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 16:56:22'),
(182, 'super@g.com', '2', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-10 17:13:24'),
(183, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-11 15:42:40'),
(184, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-12 13:46:52'),
(185, 'admin@g.com', '1', '::1', 'Chrome 112.0.0.0, Windows 10', '2023-04-13 03:17:22'),
(186, 'admin@g.com', '1', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-04 17:44:04'),
(187, 'admin@g.com', '1', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-05 01:06:49'),
(188, 'super@g.com', '2', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-06 04:53:50'),
(189, 'admin@g.com', '1', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-06 08:43:35'),
(190, 'super@g.com', '2', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-06 09:29:18'),
(191, 'admin@g.com', '1', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-06 13:22:37'),
(192, 'super@g.com', '2', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-06 14:24:46'),
(193, 'super@g.com', '2', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-06 16:50:46'),
(194, 'super@g.com', '2', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-06 20:24:30'),
(195, 'admin@g.com', '1', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-07 04:50:27'),
(196, 'admin@g.com', '1', '::1', 'Chrome 115.0.0.0, Windows 10', '2023-08-10 06:40:35'),
(197, 'admin@g.com', '1', '::1', 'Chrome 116.0.0.0, Windows 10', '2023-09-21 04:41:15'),
(198, 'admin@g.com', '1', '::1', 'Chrome 117.0.0.0, Windows 10', '2023-10-10 13:27:54'),
(199, 'admin@g.com', '1', '::1', 'Chrome 119.0.0.0, Windows 10', '2023-12-08 13:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `department_type` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `show_ps` varchar(200) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'uploads/user/no_image.png',
  `status` int(1) NOT NULL DEFAULT 1,
  `created_by_user_id` varchar(10) NOT NULL,
  `created_at` date NOT NULL,
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `department_type`, `email`, `password`, `show_ps`, `name`, `address`, `mobile`, `photo`, `status`, `created_by_user_id`, `created_at`, `update_at`) VALUES
(1, 1, 'admin@g.com', '1593ea35effffa72e44264f78de0a25a', '1593ea35effffa72e44264f78de0a25a', 'Admin', 'Patna', '9874433513', 'uploads/user/admin.png', 1, '1', '2022-06-02', '2023-04-10 15:37:53'),
(7, 2, 'super@g.com', '23eb200353f14e18fce96bb964d7e9c1', 'supper@g.com', 'Super', 'sdfsdfsd', '88888', 'uploads/user/no_image.png', 1, '', '0000-00-00', '2023-04-10 07:45:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_3rd_menu`
--
ALTER TABLE `admin_3rd_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_about`
--
ALTER TABLE `admin_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_banner`
--
ALTER TABLE `admin_banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_enquiry`
--
ALTER TABLE `admin_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_gallery`
--
ALTER TABLE `admin_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_hero_section`
--
ALTER TABLE `admin_hero_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_news`
--
ALTER TABLE `admin_news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_page_data`
--
ALTER TABLE `admin_page_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_page_link`
--
ALTER TABLE `admin_page_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_seo`
--
ALTER TABLE `admin_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_services`
--
ALTER TABLE `admin_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_single_data`
--
ALTER TABLE `admin_single_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_submenu`
--
ALTER TABLE `admin_submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_summernote`
--
ALTER TABLE `admin_summernote`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_summernote1`
--
ALTER TABLE `admin_summernote1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_summernote2`
--
ALTER TABLE `admin_summernote2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_testimonial`
--
ALTER TABLE `admin_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_with_image`
--
ALTER TABLE `content_with_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favicon`
--
ALTER TABLE `favicon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallary`
--
ALTER TABLE `gallary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navbar`
--
ALTER TABLE `navbar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_config`
--
ALTER TABLE `system_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_3rd_menu`
--
ALTER TABLE `admin_3rd_menu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_about`
--
ALTER TABLE `admin_about`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_banner`
--
ALTER TABLE `admin_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `admin_enquiry`
--
ALTER TABLE `admin_enquiry`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin_gallery`
--
ALTER TABLE `admin_gallery`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `admin_hero_section`
--
ALTER TABLE `admin_hero_section`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `admin_news`
--
ALTER TABLE `admin_news`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `admin_page_data`
--
ALTER TABLE `admin_page_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_page_link`
--
ALTER TABLE `admin_page_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_seo`
--
ALTER TABLE `admin_seo`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `admin_services`
--
ALTER TABLE `admin_services`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin_single_data`
--
ALTER TABLE `admin_single_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_submenu`
--
ALTER TABLE `admin_submenu`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_summernote`
--
ALTER TABLE `admin_summernote`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_summernote1`
--
ALTER TABLE `admin_summernote1`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_summernote2`
--
ALTER TABLE `admin_summernote2`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `admin_testimonial`
--
ALTER TABLE `admin_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `content_with_image`
--
ALTER TABLE `content_with_image`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `favicon`
--
ALTER TABLE `favicon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gallary`
--
ALTER TABLE `gallary`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `navbar`
--
ALTER TABLE `navbar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
