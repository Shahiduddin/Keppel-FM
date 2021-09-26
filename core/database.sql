-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 26, 2021 at 11:27 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keppelfm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `email_verified_at`, `image`, `access`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'ayon.tonmoy01@gmail.com', 'admin', NULL, '5ff1c3531ed3f1609679699.jpg', NULL, '$2y$10$Uz9SK7.ksD7raMfv8uATdew8aHRWt0zzMALqe2CGpxFk7nIoniv7e', NULL, '2021-09-19 22:21:27');

-- --------------------------------------------------------

--
-- Table structure for table `admin_password_resets`
--

CREATE TABLE `admin_password_resets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `jockey_name` varchar(191) NOT NULL,
  `jockey_image` varchar(191) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `week_name` varchar(191) NOT NULL,
  `start_time` varchar(191) NOT NULL,
  `end_time` varchar(191) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `input_file` varchar(191) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `email_sms_templates`
--

CREATE TABLE `email_sms_templates` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subj` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcodes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_status` tinyint(4) NOT NULL DEFAULT 1,
  `sms_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_sms_templates`
--

INSERT INTO `email_sms_templates` (`id`, `act`, `name`, `subj`, `email_body`, `sms_body`, `shortcodes`, `email_status`, `sms_status`, `created_at`, `updated_at`) VALUES
(1, 'CONTACT_EMAIL', 'Contact Us', 'User Contact Form', '<div>{{name}} Send The Email from {{email}}&lt;br&gt;</div><div><br></div><div>&lt;b&gt;{{subject}}&lt;/b&gt;</div><div><br></div><div>&lt;br&gt;</div><div><br></div><div>{{message}}<br></div>', '', '{\"name\":\"name\",\"email\":\"User Email\",\"Subject\":\"Subject\",\"message\":\"Message\"}', 1, 1, '2019-09-24 23:04:05', '2021-03-28 04:53:06'),
(217, 'PASS_RESET_CODE', 'Password Reset', 'Password Reset', '<div>We have received a request to reset the password for your account on <b>{{time}} .<br></b></div><div>Requested From IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}} </b>.</div><div><br></div><br><div><div><div>Your account recovery code is:&nbsp;&nbsp; <font size=\"6\"><b>{{code}}</b></font></div><div><br></div></div></div><div><br></div><div><font size=\"4\" color=\"#CC0000\">If you do not wish to reset your password, please disregard this message.&nbsp;</font><br></div><br>', 'Your account recovery code is: {{code}}', ' {\"code\":\"Password Reset Code\",\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, NULL, NULL),
(218, 'PASS_RESET_DONE', 'Password Reset Confirmation', 'You have Reset your password', '<div><p>\r\n    You have successfully reset your password.</p><p>You changed from&nbsp; IP: <b>{{ip}}</b> using <b>{{browser}}</b> on <b>{{operating_system}}&nbsp;</b> on <b>{{time}}</b></p><p><b><br></b></p><p><font color=\"#FF0000\"><b>If you did not changed that, Please contact with us as soon as possible.</b></font><br></p></div>', 'Your password has been changed successfully', '{\"ip\":\"IP of User\",\"browser\":\"Browser of User\",\"operating_system\":\"Operating System of User\",\"time\":\"Request Time\"}', 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `radio_jockey_id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `week_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_update` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `radio_jockey_id`, `event_name`, `week_name`, `start_time`, `end_time`, `image`, `cron_update`, `created_at`, `updated_at`) VALUES
(2, 4, 'Anjali\'s Thoughts', 'sunday', '01:00:00', '02:30:00', '6148595a0c08a1632131418.jpg', NULL, '2021-09-19 23:50:18', '2021-09-19 23:50:18'),
(3, 3, 'Sasha\'s Invite', 'monday', '08:30:00', '22:30:00', '614859885b0391632131464.png', NULL, '2021-09-19 23:51:04', '2021-09-19 23:51:04'),
(4, 2, 'Story Teller', 'tuesday', '01:00:00', '03:00:00', '614859a77ae391632131495.jpg', NULL, '2021-09-19 23:51:35', '2021-09-19 23:51:35'),
(5, 3, 'Mild Salsa', 'wednesday', '14:30:00', '16:30:00', '614859ccafd121632131532.jpg', NULL, '2021-09-19 23:52:12', '2021-09-19 23:52:12'),
(7, 3, 'Friday Night', 'friday', '00:30:00', '02:30:00', '61485d45c52aa1632132421.jpg', NULL, '2021-09-20 00:07:02', '2021-09-20 00:07:02'),
(8, 2, 'Music Fest', 'friday', '04:00:00', '06:30:00', '615031ee698421632645614.jpg', NULL, '2021-09-25 22:40:15', '2021-09-25 22:40:15'),
(9, 4, 'Music Mash', 'thursday', '10:00:00', '13:00:00', '61503215a982f1632645653.jpg', NULL, '2021-09-25 22:40:54', '2021-09-25 22:40:54'),
(10, 4, 'Bollywood Music', 'monday', '01:00:00', '02:30:00', '6150327fb52801632645759.jpg', NULL, '2021-09-25 22:42:39', '2021-09-25 22:42:39'),
(11, 2, 'Morning Meditation', 'saturday', '06:00:00', '08:00:00', '61503329280a81632645929.jpg', NULL, '2021-09-25 22:45:29', '2021-09-25 22:45:29'),
(12, 3, 'Party Time', 'saturday', '22:30:00', '23:30:00', '615033531ca131632645971.jpg', NULL, '2021-09-25 22:46:11', '2021-09-25 22:46:11');

-- --------------------------------------------------------

--
-- Table structure for table `extensions`
--

CREATE TABLE `extensions` (
  `id` int(10) UNSIGNED NOT NULL,
  `act` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shortcode` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'object',
  `support` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'help section',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extensions`
--

INSERT INTO `extensions` (`id`, `act`, `name`, `description`, `image`, `script`, `shortcode`, `support`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'tawk-chat', 'Tawk.to', 'Key location is shown bellow', 'tawky_big.png', '<script>\r\n                        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();\r\n                        (function(){\r\n                        var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];\r\n                        s1.async=true;\r\n                        s1.src=\"https://embed.tawk.to/{{app_key}}\";\r\n                        s1.charset=\"UTF-8\";\r\n                        s1.setAttribute(\"crossorigin\",\"*\");\r\n                        s0.parentNode.insertBefore(s1,s0);\r\n                        })();\r\n                    </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"58dd135ef7bbaa72709c3470\\/default\"}}', 'twak.png', 0, NULL, '2019-10-18 23:16:05', '2021-09-19 22:41:02'),
(2, 'google-recaptcha2', 'Google Recaptcha 2', 'Key location is shown bellow', 'recaptcha3.png', '\r\n<script src=\"https://www.google.com/recaptcha/api.js\"></script>\r\n<div class=\"g-recaptcha\" data-sitekey=\"{{sitekey}}\" data-callback=\"verifyCaptcha\"></div>\r\n<div id=\"g-recaptcha-error\"></div>', '{\"sitekey\":{\"title\":\"Site Key\",\"value\":\"6Lfpm3cUAAAAAGIjbEJKhJNKS4X1Gns9ANjh8MfH\"}}', 'recaptcha.png', 0, NULL, '2019-10-18 23:16:05', '2021-09-19 22:41:07'),
(3, 'custom-captcha', 'Custom Captcha', 'Just Put Any Random String', 'customcaptcha.png', NULL, '{\"random_key\":{\"title\":\"Random String\",\"value\":\"SecureString\"}}', 'na', 0, NULL, '2019-10-18 23:16:05', '2021-09-19 22:41:04'),
(4, 'google-analytics', 'Google Analytics', 'Key location is shown bellow', 'google-analytics.png', '<script async src=\"https://www.googletagmanager.com/gtag/js?id={{app_key}}\"></script>\r\n                <script>\r\n                  window.dataLayer = window.dataLayer || [];\r\n                  function gtag(){dataLayer.push(arguments);}\r\n                  gtag(\"js\", new Date());\r\n                \r\n                  gtag(\"config\", \"{{app_key}}\");\r\n                </script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"Demo\"}}', 'ganalytics.png', 0, NULL, NULL, '2021-09-19 22:41:08'),
(5, 'fb-comment', 'Facebook Comment ', 'Key location is shown bellow', 'Facebook.png', '<div id=\"fb-root\"></div><script async defer crossorigin=\"anonymous\" src=\"https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v4.0&appId={{app_key}}&autoLogAppEvents=1\"></script>', '{\"app_key\":{\"title\":\"App Key\",\"value\":\"-------\"}}', 'fb_com.PNG', 0, NULL, NULL, '2021-09-19 22:41:11');

-- --------------------------------------------------------

--
-- Table structure for table `frontends`
--

CREATE TABLE `frontends` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_keys` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frontends`
--

INSERT INTO `frontends` (`id`, `data_keys`, `data_values`, `created_at`, `updated_at`) VALUES
(1, 'seo.data', '{\"seo_image\":\"1\",\"keywords\":[\"admin\"],\"description\":\"Keppel Fm\",\"social_title\":\"Keppel FM\",\"social_description\":\"Keppel FM\",\"image\":\"613baa28be2b91631300136.jpg\"}', '2020-07-04 23:42:52', '2021-09-10 08:56:21'),
(24, 'about.content', '{\"has_image\":\"1\",\"heading\":\"Latest News\",\"sub_heading\":\"Register New Account\",\"description\":\"fdg sdfgsdf g ggg\",\"about_icon\":\"<i class=\\\"las la-address-card\\\"><\\/i>\",\"background_image\":\"5f9914e8e46281603867880.jpg\",\"about_image\":\"5f9914e907ace1603867881.jpg\"}', '2020-10-28 00:51:20', '2021-01-03 23:18:10'),
(25, 'blog.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Hic tenetur nihil ex. Doloremque ipsa velit, ea molestias expedita sed voluptatem ex voluptatibus temporibus sequi. sddd\"}', '2020-10-28 00:51:34', '2020-10-28 00:52:52'),
(26, 'blog.element', '{\"has_image\":[\"1\",\"1\"],\"title\":\"this is a test blog 2\",\"description\":\"aewf asdf\",\"description_nic\":\"asdf asdf\",\"blog_icon\":\"<i class=\\\"lab la-hornbill\\\"><\\/i>\",\"blog_image_1\":\"5f99164f1baec1603868239.jpg\",\"blog_image_2\":\"5ff2e146346d21609752902.jpg\"}', '2020-10-28 00:57:19', '2021-01-04 03:35:02'),
(27, 'contact_us.content', '{\"has_image\":\"1\",\"email_address\":\"info@keppelfm.com\",\"contact_details\":\"Brisbane, Australia\",\"contact_number\":\"011111111111\",\"background_image\":\"614857e0d234b1632131040.jpg\"}', '2020-10-28 00:59:19', '2021-09-19 23:44:02'),
(28, 'counter.content', '{\"heading\":\"Latest News\",\"sub_heading\":\"Register New Account\"}', '2020-10-28 01:04:02', '2020-10-28 01:04:02'),
(30, 'blog.element', '{\"has_image\":[\"1\",\"1\"],\"title\":\"This is test blog 1\",\"description\":\"asdfasdf ffffffffff\",\"description_nic\":\"asdfasdf asdd vvvvvvvvvvvvvvvvvv\",\"blog_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"blog_image_1\":\"5f9d0689e022d1604126345.jpg\",\"blog_image_2\":\"5f9d068a341211604126346.jpg\"}', '2020-10-31 00:39:05', '2020-11-12 04:36:39'),
(31, 'social_icon.element', '{\"title\":\"Facebook\",\"social_icon\":\"<i class=\\\"lab la-facebook\\\"><\\/i>\",\"url\":\"https:\\/\\/www.google.com\\/\"}', '2020-11-12 04:07:30', '2020-11-12 04:07:30'),
(33, 'feature.content', '{\"heading\":\"asdf\",\"sub_heading\":\"asdf\"}', '2021-01-03 23:40:54', '2021-01-03 23:40:55'),
(34, 'feature.element', '{\"title\":\"asdf\",\"description\":\"asdf\",\"feature_icon\":\"asdf\"}', '2021-01-03 23:41:02', '2021-01-03 23:41:02'),
(35, 'service.element', '{\"trx_type\":\"withdraw\",\"service_icon\":\"<i class=\\\"las la-highlighter\\\"><\\/i>\",\"title\":\"asdfasdf\",\"description\":\"asdfasdfasdfasdf\"}', '2021-03-06 01:12:10', '2021-03-06 01:12:10'),
(36, 'service.content', '{\"trx_type\":\"withdraw\",\"heading\":\"asdf fffff\",\"sub_heading\":\"asdf asdfasdf\"}', '2021-03-06 01:27:34', '2021-03-06 02:19:39'),
(42, 'banner.element', '{\"title\":\"Turn on and enjoy anytime\",\"has_image\":\"1\",\"background_image\":\"613f050ca439d1631520012.jpg\"}', '2021-03-27 02:33:36', '2021-09-12 22:00:12'),
(43, 'online.content', '{\"has_image\":\"1\",\"heading\":\"Our Live Program Onair\",\"sub_heading\":\"keppel FM\",\"background_image\":\"61484943785791632127299.jpg\",\"wave\":\"605ef5516683b1616835921.png\"}', '2021-03-27 03:00:04', '2021-09-19 22:41:40'),
(44, 'schedule.content', '{\"title\":\"OUR Event SCHEDULE\",\"has_image\":\"1\",\"background_image\":\"6148585c2fc891632131164.jpg\"}', '2021-03-27 03:43:19', '2021-09-19 23:46:06'),
(45, 'event.content', '{\"title\":\"Previous Events\",\"has_image\":\"1\",\"background_image\":\"605eff9cdc0621616838556.jpg\"}', '2021-03-27 03:49:16', '2021-03-29 03:38:26'),
(46, 'brand.content', '{\"has_image\":\"1\",\"title\":\"Kepple Fm\",\"description\":\"Keppel FM\",\"background_image\":\"614857bd91b2b1632131005.jpg\"}', '2021-03-27 04:08:22', '2021-09-19 23:43:26'),
(47, 'brand.element', '{\"has_image\":\"1\",\"brand\":\"61485bfc85bf11632132092.jpg\"}', '2021-03-27 04:10:33', '2021-09-20 00:01:32'),
(48, 'brand.element', '{\"has_image\":\"1\",\"brand\":\"61485c0640fa31632132102.png\"}', '2021-03-27 04:10:38', '2021-09-20 00:01:42'),
(49, 'brand.element', '{\"has_image\":\"1\",\"brand\":\"61485c0e966fc1632132110.png\"}', '2021-03-27 04:10:43', '2021-09-20 00:01:50'),
(50, 'brand.element', '{\"has_image\":\"1\",\"brand\":\"61485c18839431632132120.jpg\"}', '2021-03-27 04:10:48', '2021-09-20 00:02:00'),
(51, 'brand.element', '{\"has_image\":\"1\",\"brand\":\"61485c3c31ca41632132156.jpg\"}', '2021-03-27 04:13:10', '2021-09-20 00:02:36'),
(52, 'footer.content', '{\"has_image\":\"1\",\"description\":\"Are you feeling lazy! Passed a weird day! Are you want to listen to something energetic? So why you are waiting for, up the sound and enjoy with us.\",\"background_image\":\"6148580270b1a1632131074.jpg\"}', '2021-03-27 04:15:30', '2021-09-19 23:44:35'),
(53, 'social_icon.element', '{\"title\":\"twitter\",\"social_icon\":\"<i class=\\\"lab la-twitter\\\"><\\/i>\",\"url\":\"https:\\/\\/www.twitter.com\\/\"}', '2021-03-27 04:18:13', '2021-03-27 04:18:13'),
(54, 'social_icon.element', '{\"title\":\"pinterest\",\"social_icon\":\"<i class=\\\"lab la-pinterest-p\\\"><\\/i>\",\"url\":\"https:\\/\\/www.pinterest.com\\/\"}', '2021-03-27 04:18:40', '2021-03-27 04:18:40'),
(55, 'social_icon.element', '{\"title\":\"linkedin\",\"social_icon\":\"<i class=\\\"lab la-linkedin-in\\\"><\\/i>\",\"url\":\"https:\\/\\/www.linkedin.com\\/\"}', '2021-03-27 04:18:58', '2021-03-27 04:18:58'),
(56, 'social_icon.element', '{\"title\":\"youtube\",\"social_icon\":\"<i class=\\\"lab la-youtube\\\"><\\/i>\",\"url\":\"https:\\/\\/www.youtube.com\\/\"}', '2021-03-27 04:19:17', '2021-03-27 04:19:17'),
(57, 'policy.element', '{\"title\":\"Terms and Condition\",\"description\":\"<div style=\\\"font-family:\'Fira Code\', \'Droid Sans Mono\', monospace, monospace, \'Droid Sans Fallback\';font-size:18px;line-height:30px;white-space:pre;\\\"><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;font-size:14px;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><\\/div>\"}', '2021-03-27 04:25:01', '2021-04-01 07:47:30'),
(58, 'policy.element', '{\"title\":\"Privacy and Policy\",\"description\":\"<div style=\\\"color:rgb(0,0,0);font-family:\'Fira Code\', \'Droid Sans Mono\', monospace, monospace, \'Droid Sans Fallback\';font-size:18px;line-height:30px;white-space:pre;\\\"><div style=\\\"line-height:30px;\\\"><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\"><br \\/><\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \\\"de Finibus Bonorum et Malorum\\\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \\\"Lorem ipsum dolor sit amet..\\\", comes from a line in section 1.10.32.<\\/font><\\/p><p style=\\\"margin-right:0px;margin-bottom:15px;margin-left:0px;font-size:14px;padding:0px;text-align:justify;font-family:\'Open Sans\', Arial, sans-serif;white-space:normal;\\\"><font color=\\\"#ffffff\\\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \\\"de Finibus Bonorum et Malorum\\\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.<\\/font><\\/p><\\/div><\\/div>\"}', '2021-03-27 04:25:13', '2021-04-01 07:47:45'),
(59, 'radio_jockey.content', '{\"title\":\"OUR Radio RJ\",\"has_image\":\"1\",\"background_image\":\"61485814e4fea1632131092.jpg\"}', '2021-03-27 04:38:11', '2021-09-19 23:44:53'),
(60, 'breadcrumb.content', '{\"has_image\":\"1\",\"background_image\":\"614857cc0c52d1632131020.jpg\"}', '2021-03-28 06:04:00', '2021-09-19 23:43:41');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sitename` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radio_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_template` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mail_config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'email configuration',
  `active_template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `en` tinyint(4) NOT NULL,
  `sn` tinyint(4) NOT NULL,
  `sys_version` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_cron` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `sitename`, `radio_url`, `admin_email`, `email_from`, `email_template`, `sms_api`, `base_color`, `secondary_color`, `mail_config`, `active_template`, `en`, `sn`, `sys_version`, `last_cron`, `created_at`, `updated_at`) VALUES
(1, 'Keppel FM', 'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-13.mp3', 'ayon.tonmoy01@gmail.com', 'test123@keppelfm.com', '<table style=\"color: rgb(0, 0, 0); font-family: &quot;Times New Roman&quot;; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(0, 23, 54); text-decoration-style: initial; text-decoration-color: initial;\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\" bgcolor=\"#001736\"><tbody><tr><td valign=\"top\" align=\"center\"><table class=\"mobile-shell\" width=\"650\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"td container\" style=\"width: 650px; min-width: 650px; font-size: 0pt; line-height: 0pt; margin: 0px; font-weight: normal; padding: 55px 0px;\"><div style=\"text-align: center;\"><br></div><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"padding-bottom: 10px;\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"tbrr p30-15\" style=\"padding: 60px 30px; border-radius: 26px 26px 0px 0px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td style=\"color: rgb(255, 255, 255); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 46px; padding-bottom: 25px; font-weight: bold;\">Hi {{name}} ,</td></tr><tr><td style=\"color: rgb(193, 205, 220); font-family: Muli, Arial, sans-serif; font-size: 20px; line-height: 30px; padding-bottom: 25px;\">{{message}}</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><table style=\"width: 650px; margin: 0px auto;\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"p30-15 bbrr\" style=\"padding: 50px 30px; border-radius: 0px 0px 26px 26px;\" bgcolor=\"#000036\"><table width=\"100%\" cellspacing=\"0\" cellpadding=\"0\" border=\"0\"><tbody><tr><td class=\"text-footer1 pb10\" style=\"color: rgb(0, 153, 255); font-family: Muli, Arial, sans-serif; font-size: 18px; line-height: 30px; text-align: center; padding-bottom: 10px;\">© 2021 Keppelfm. All Rights Reserved.</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', 'https://api.infobip.com/api/v3/sendsms/plain?user=*******&password=*********&sender=*******&SMSText={{message}}&GSM={{number}}&type=longSMS', 'ff0000', '000000', '{\"name\":\"php\"}', 'basic', 0, 0, NULL, '2021-05-25 03:55:38', NULL, '2021-09-19 23:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_align` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: left to right text align, 1: right to left text align',
  `is_default` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: not default language, 1: default language',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `icon`, `text_align`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', '5f15968db08911595250317.png', 0, 1, '2020-07-06 03:47:55', '2021-03-18 06:45:08');

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
(1, '2021_03_15_084721_create_admin_notifications_table', 1),
(2, '2021_05_24_124400_create_polls_table', 1),
(3, '2021_05_25_073308_create_poll_logs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'template name',
  `secs` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `slug`, `tempname`, `secs`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'HOME', 'home', 'templates.basic.', '[\"online\",\"schedule\",\"event\",\"radio_jockey\",\"brand\"]', 1, '2020-07-11 06:23:58', '2021-03-27 03:57:44'),
(2, 'About', 'about-us', 'templates.basic.', '[\"about\",\"blog\",\"counter\"]', 0, '2020-07-11 06:35:35', '2020-07-11 07:39:10'),
(4, 'Blog', 'blog', 'templates.basic.', NULL, 1, '2020-10-22 01:14:43', '2020-10-22 01:14:43'),
(5, 'Contact', 'contact', 'templates.basic.', NULL, 1, '2020-10-22 01:14:53', '2020-10-22 01:14:53'),
(12, 'VIew', 'view', 'templates.basic.', NULL, 0, '2021-09-19 22:56:55', '2021-09-19 22:56:55');

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `choice` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll_logs`
--

CREATE TABLE `poll_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `poll_id` bigint(20) UNSIGNED NOT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `radio_jockeys`
--

CREATE TABLE `radio_jockeys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `radio_jockeys`
--

INSERT INTO `radio_jockeys` (`id`, `firstname`, `lastname`, `designation`, `email`, `phone`, `about`, `education`, `experience`, `image`, `gallary`, `created_at`, `updated_at`) VALUES
(2, 'Axel', 'Tanzio', 'Sydney', 'Axel.tanzio@gmail.com', '0456982318', 'radio personality with a passion for giving listeners an enjoyable and engaging experience. Over five years of experience presenting music, announcing program schedules, making promotional appearances, and interviewing high-profile guests. I have worked in various radio stations as a host and behind the scenes. Proficient in Avid Technology Pro Tools and Adobe Systems Adobe Audition music-editing software. Familiar with several types of audio-mixing consoles and media control systems. Quick to learn how to operate new tools, equipment, and software.', '{\"name\":\"CQUniversity\",\"from_year\":\"2016\",\"to_year\":\"2020\",\"about_institution\":\"Good University\"}', '{\"1\":{\"name\":\"Radio 88.00\",\"from_year_ex\":\"2016\",\"to_year_ex\":\"2017\",\"responsibility\":\"Radio Jockey\"}}', '613bad50cd0a41631300944.jpg', '[\"613bad50b6c581631300944.jpg\"]', '2021-09-10 09:09:04', '2021-09-10 09:09:04'),
(3, 'Sasha', 'Maxuel', 'Sydney', 'Sasha.maxuel@gmail.com', '0418974562', 'Excellent public speaking skills with a knack for making all content interesting and entertaining.Work ExperienceRadio Announcer Love 182.5 July 2015 – present• Announce musical selections, commercials, and station breaks, and accept requests from the audience.• Record 5-10 commercials daily for later broadcast.• Research, prepare, and deliver music and pop-culture news, and condense announcements to material that will convey information within time slots.• Confer with producers and assistants to select program content based on audience tastes, program specialties, and public requests.• Interview guests after studying background information and preparing questions that result in engaging content', '{\"name\":\"NorthSouthUniversity\",\"from_year\":\"2014\",\"to_year\":\"2018\",\"about_institution\":\"Good Institution\"}', '{\"1\":{\"name\":\"Radio 90.00\",\"from_year_ex\":\"2016\",\"to_year_ex\":\"2017\",\"responsibility\":\"Radio Jockey\"}}', '613bb431e41671631302705.jpg', '[\"613bb431c95531631302705.jpg\",\"613bb431d8af31631302705.jpg\"]', '2021-09-10 09:38:26', '2021-09-10 09:38:26'),
(4, 'Anjali', 'Singh', 'Sydney', 'Anjali.singh@gmail.com', '0415896523', 'Expertise in Pro Tools and Adobe Audition• Strong time management and organizational skills• Demonstrated service orientation, always looking for a way to help and contributeHobbies and InterestsEnjoy playing guitar and singing as a hobby. Volunteer at the local animal shelter biweekly. Learning photography and videography in my spare time.', '{\"name\":\"Macquarie University\",\"from_year\":\"2013\",\"to_year\":\"2017\",\"about_institution\":\"Good Instiution\"}', '{\"1\":{\"name\":\"radio 85.00\",\"from_year_ex\":\"2015\",\"to_year_ex\":\"2016\",\"responsibility\":\"Radio Jockey\"}}', '61485206ca4d01632129542.jpg', '[\"613bb5ecc97431631303148.jpg\"]', '2021-09-10 09:45:49', '2021-09-19 23:22:10');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `radio_jockey_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bgcolor` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `radio_jockey_id`, `title`, `icon`, `url`, `bgcolor`, `created_at`, `updated_at`) VALUES
(1, 2, 'jockley', '<i class=\"far fa-heart\"></i>', 'https://www.instagram.com/radiojavan/', 'ffffff', '2021-09-10 09:11:40', '2021-09-10 09:11:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extensions`
--
ALTER TABLE `extensions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `frontends`
--
ALTER TABLE `frontends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `polls_questions_unique` (`question`),
  ADD UNIQUE KEY `questions` (`question`);

--
-- Indexes for table `poll_logs`
--
ALTER TABLE `poll_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `radio_jockeys`
--
ALTER TABLE `radio_jockeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `radio_jockeys_email_unique` (`email`),
  ADD UNIQUE KEY `radio_jockeys_mobile_unique` (`phone`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `socials_radio_jockey_id_foreign` (`radio_jockey_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_password_resets`
--
ALTER TABLE `admin_password_resets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_sms_templates`
--
ALTER TABLE `email_sms_templates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `extensions`
--
ALTER TABLE `extensions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `frontends`
--
ALTER TABLE `frontends`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_logs`
--
ALTER TABLE `poll_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `radio_jockeys`
--
ALTER TABLE `radio_jockeys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `socials`
--
ALTER TABLE `socials`
  ADD CONSTRAINT `socials_radio_jockey_id_foreign` FOREIGN KEY (`radio_jockey_id`) REFERENCES `radio_jockeys` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
