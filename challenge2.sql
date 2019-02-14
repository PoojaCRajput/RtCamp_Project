-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 10, 2019 at 05:38 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `challenge2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-02-07 16:07:49', '2019-02-07 16:07:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_image_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_image_storage`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_image_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(32) NOT NULL,
  `image` text NOT NULL,
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_image_storage`
--

INSERT INTO `wp_nextend2_image_storage` (`id`, `hash`, `image`, `value`) VALUES
(1, '7148fa26ad6dd9ee953b6c3f5f30c99d', 'https://smartslider3.com/sample/programmer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(2, '6681af77aa8c9f342a3f8a98939dca43', 'https://smartslider3.com/sample/free1.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(3, '2ebcc61fcb32c829e4927fbfd782ff7a', 'https://smartslider3.com/sample/photographer.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ=='),
(4, '58b4a2227d2ee5038213f7c271b24c1b', '//smartslider3.com/wp-content/uploads/slider149/header1-3.jpg', 'eyJkZXNrdG9wIjp7InNpemUiOiIwfCp8MCJ9LCJkZXNrdG9wLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJ0YWJsZXQiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwidGFibGV0LXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9LCJtb2JpbGUiOnsiaW1hZ2UiOiIiLCJzaXplIjoiMHwqfDAifSwibW9iaWxlLXJldGluYSI6eyJpbWFnZSI6IiIsInNpemUiOiIwfCp8MCJ9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_section_storage`
--

DROP TABLE IF EXISTS `wp_nextend2_section_storage`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_section_storage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `application` varchar(20) NOT NULL,
  `section` varchar(128) NOT NULL,
  `referencekey` varchar(128) NOT NULL,
  `value` mediumtext NOT NULL,
  `system` int(11) NOT NULL DEFAULT '0',
  `editable` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `application` (`application`,`section`,`referencekey`),
  KEY `application_2` (`application`,`section`)
) ENGINE=MyISAM AUTO_INCREMENT=10078 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_section_storage`
--

INSERT INTO `wp_nextend2_section_storage` (`id`, `application`, `section`, `referencekey`, `value`, `system`, `editable`) VALUES
(10000, 'system', 'global', 'n2_ss3_version', '3.3.13r3150', 1, 1),
(10001, 'smartslider', 'sliderChanged', '1', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_generators`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_generators`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_generators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(254) NOT NULL,
  `type` varchar(254) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `params` mediumtext NOT NULL,
  `time` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_sliders`
--

INSERT INTO `wp_nextend2_smartslider3_sliders` (`id`, `alias`, `title`, `type`, `params`, `time`, `thumbnail`, `ordering`) VALUES
(1, NULL, 'Sample Slider', 'simple', '{\"alias-id\":\"\",\"alias-smoothscroll\":\"\",\"alias-slideswitch\":\"\",\"controlsScroll\":\"0\",\"controlsDrag\":\"1\",\"controlsTouch\":\"horizontal\",\"controlsKeyboard\":\"1\",\"thumbnail\":\"\",\"align\":\"normal\",\"backgroundMode\":\"fill\",\"animation\":\"horizontal\",\"animation-duration\":\"600\",\"background-animation\":\"\",\"background-animation-color\":\"333333ff\",\"background-animation-speed\":\"normal\",\"width\":\"1200\",\"height\":\"600\",\"margin\":\"0|*|0|*|0|*|0\",\"responsive-mode\":\"auto\",\"responsiveScaleDown\":\"1\",\"responsiveScaleUp\":\"1\",\"responsiveSliderHeightMin\":\"0\",\"responsiveSliderHeightMax\":\"3000\",\"responsiveSlideWidthMax\":\"3000\",\"autoplay\":\"1\",\"autoplayDuration\":\"8000\",\"autoplayStopClick\":\"1\",\"autoplayStopMouse\":\"0\",\"autoplayStopMedia\":\"1\",\"optimize\":\"0\",\"optimize-quality\":\"70\",\"optimize-background-image-custom\":\"0\",\"optimize-background-image-width\":\"800\",\"optimize-background-image-height\":\"600\",\"optimizeThumbnailWidth\":\"100\",\"optimizeThumbnailHeight\":\"60\",\"playWhenVisible\":\"1\",\"playWhenVisibleAt\":\"50\",\"dependency\":\"\",\"delay\":\"0\",\"is-delayed\":\"0\",\"overflow-hidden-page\":\"0\",\"clear-both\":\"0\",\"clear-both-after\":\"1\",\"custom-css-codes\":\"\",\"callbacks\":\"\",\"classes\":\"\",\"related-posts\":\"\",\"widgetarrow\":\"imageEmpty\",\"widget-arrow-display-hover\":\"0\",\"widget-arrow-previous\":\"$ss$\\/plugins\\/widgetarrow\\/image\\/image\\/previous\\/thin-horizontal.svg\",\"widget-arrow-previous-color\":\"ffffffcc\",\"widget-arrow-previous-hover\":\"0\",\"widget-arrow-previous-hover-color\":\"ffffffcc\",\"widget-arrow-style\":\"\",\"widget-arrow-previous-position-mode\":\"simple\",\"widget-arrow-previous-position-area\":\"6\",\"widget-arrow-previous-position-stack\":\"1\",\"widget-arrow-previous-position-offset\":\"15\",\"widget-arrow-previous-position-horizontal\":\"left\",\"widget-arrow-previous-position-horizontal-position\":\"0\",\"widget-arrow-previous-position-horizontal-unit\":\"px\",\"widget-arrow-previous-position-vertical\":\"top\",\"widget-arrow-previous-position-vertical-position\":\"0\",\"widget-arrow-previous-position-vertical-unit\":\"px\",\"widget-arrow-next-position-mode\":\"simple\",\"widget-arrow-next-position-area\":\"7\",\"widget-arrow-next-position-stack\":\"1\",\"widget-arrow-next-position-offset\":\"15\",\"widget-arrow-next-position-horizontal\":\"left\",\"widget-arrow-next-position-horizontal-position\":\"0\",\"widget-arrow-next-position-horizontal-unit\":\"px\",\"widget-arrow-next-position-vertical\":\"top\",\"widget-arrow-next-position-vertical-position\":\"0\",\"widget-arrow-next-position-vertical-unit\":\"px\",\"widget-arrow-previous-alt\":\"previous arrow\",\"widget-arrow-next-alt\":\"next arrow\",\"widgetbullet\":\"transition\",\"widget-bullet-display-hover\":\"0\",\"widget-bullet-thumbnail-show-image\":\"1\",\"widget-bullet-thumbnail-width\":\"120\",\"widget-bullet-thumbnail-height\":\"81\",\"widget-bullet-thumbnail-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwODAiLCJwYWRkaW5nIjoiM3wqfDN8KnwzfCp8M3wqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiIzIiwiZXh0cmEiOiJtYXJnaW46IDVweDsifV19\",\"widget-bullet-thumbnail-side\":\"before\",\"widget-bullet-position-mode\":\"simple\",\"widget-bullet-position-area\":\"12\",\"widget-bullet-position-stack\":\"1\",\"widget-bullet-position-offset\":\"10\",\"widget-bullet-position-horizontal\":\"left\",\"widget-bullet-position-horizontal-position\":\"0\",\"widget-bullet-position-horizontal-unit\":\"px\",\"widget-bullet-position-vertical\":\"top\",\"widget-bullet-position-vertical-position\":\"0\",\"widget-bullet-position-vertical-unit\":\"px\",\"widget-bullet-style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwYWIiLCJwYWRkaW5nIjoiNXwqfDV8Knw1fCp8NXwqfHB4IiwiYm94c2hhZG93IjoiMHwqfDB8KnwwfCp8MHwqfDAwMDAwMGZmIiwiYm9yZGVyIjoiMHwqfHNvbGlkfCp8MDAwMDAwZmYiLCJib3JkZXJyYWRpdXMiOiI1MCIsImV4dHJhIjoibWFyZ2luOiA0cHg7In0seyJleHRyYSI6IiIsImJhY2tncm91bmRjb2xvciI6IjA5YjQ3NGZmIn1dfQ==\",\"widget-bullet-bar\":\"\",\"widgetautoplay\":\"disabled\",\"widget-autoplay-display-hover\":\"0\",\"widgetbar\":\"disabled\",\"widget-bar-display-hover\":\"0\",\"widgetthumbnail\":\"disabled\",\"widget-thumbnail-display-hover\":\"0\",\"widget-thumbnail-width\":\"100\",\"widget-thumbnail-height\":\"60\",\"widgetshadow\":\"disabled\",\"widgets\":\"arrow\"}', '2015-11-01 14:14:20', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_sliders_xref`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_sliders_xref`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_sliders_xref` (
  `group_id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`,`slider_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_nextend2_smartslider3_slides`
--

DROP TABLE IF EXISTS `wp_nextend2_smartslider3_slides`;
CREATE TABLE IF NOT EXISTS `wp_nextend2_smartslider3_slides` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `slider` int(11) NOT NULL,
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `first` int(11) NOT NULL,
  `slide` longtext,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL,
  `generator_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_nextend2_smartslider3_slides`
--

INSERT INTO `wp_nextend2_smartslider3_slides` (`id`, `title`, `slider`, `publish_up`, `publish_down`, `published`, `first`, `slide`, `description`, `thumbnail`, `params`, `ordering`, `generator_id`) VALUES
(1, 'Slide One', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Martin Dwyer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Martin Dwyer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Application Developer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Application Developer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/developerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/programmer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 1, 0),
(2, 'Slide Two', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Rachel Wright\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Rachel Wright\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Art Director & Photographer\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Art Director & Photographer\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/artdirectorthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/free1.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 0, 0),
(3, 'Slide Three', 1, '2015-11-01 12:27:34', '2025-11-11 12:27:34', 1, 0, '[{\"type\":\"content\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":0,\"desktopportraitinneralign\":\"inherit\",\"desktopportraitpadding\":\"10|*|10|*|10|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":60,\"opened\":1,\"id\":null,\"class\":\"\",\"crop\":\"\",\"parallax\":0,\"adaptivefont\":1,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"10|*|0|*|10|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Andrew Butler\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Andrew Butler\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6IjBiMGIwYmZmIiwic2l6ZSI6IjM2fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxLjUiLCJib2xkIjowLCJpdGFsaWMiOjAsInVuZGVybGluZSI6MCwiYWxpZ24iOiJjZW50ZXIiLCJsZXR0ZXJzcGFjaW5nIjoiMTBweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6InVwcGVyY2FzZSJ9LHsiZXh0cmEiOiIifSx7ImV4dHJhIjoiIn1dfQ==\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiJmZmZmZmZjYyIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjAuNHwqfDF8KnwwLjR8KnwxfCp8ZW0iLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjAifSx7ImV4dHJhIjoiIn1dfQ==\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}},{\"type\":\"layer\",\"animations\":\"\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"class\":\"\",\"crop\":\"visible\",\"parallax\":0,\"adaptivefont\":0,\"mouseenter\":\"\",\"click\":\"\",\"mouseleave\":\"\",\"play\":\"\",\"pause\":\"\",\"stop\":\"\",\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Photographer & Illustrator\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"heading\":\"Photographer & Illustrator\",\"link\":\"#|*|_self\",\"priority\":\"2\",\"fullwidth\":\"0\",\"nowrap\":\"0\",\"title\":\"\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjIyfHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUmFsZXdheSxBcmlhbCIsImxpbmVoZWlnaHQiOiIxIiwiYm9sZCI6MCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiY2VudGVyIiwibGV0dGVyc3BhY2luZyI6IjJweCIsIndvcmRzcGFjaW5nIjoibm9ybWFsIiwidGV4dHRyYW5zZm9ybSI6Im5vbmUifSx7ImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siYmFja2dyb3VuZGNvbG9yIjoiMDAwMDAwY2MiLCJwYWRkaW5nIjoiMC44fCp8MXwqfDAuOHwqfDF8KnxlbSIsImJveHNoYWRvdyI6IjB8KnwwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImJvcmRlciI6IjB8Knxzb2xpZHwqfDAwMDAwMGZmIiwiYm9yZGVycmFkaXVzIjoiMCIsImV4dHJhIjoiIn0seyJleHRyYSI6IiJ9XX0=\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\"}}}]}]', '', 'https://smartslider3.com/sample/photographerthumbnail.jpg', '{\"background-type\":\"image\",\"backgroundVideoMp4\":\"\",\"backgroundVideoMuted\":\"1\",\"backgroundVideoLoop\":\"1\",\"preload\":\"auto\",\"backgroundVideoMode\":\"fill\",\"backgroundImage\":\"https://smartslider3.com/sample/photographer.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"100\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"ffffff00\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"kenburns-animation\":\"50|*|50|*|\",\"kenburns-animation-speed\":\"default\",\"kenburns-animation-strength\":\"default\",\"thumbnailType\":\"default\",\"link\":\"|*|_self\",\"guides\":\"eyJob3Jpem9udGFsIjpbXSwidmVydGljYWwiOltdfQ==\",\"first\":\"0\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.2.0\"}', 2, 0),
(4, 'Slide 1', 1, '2019-02-06 16:15:54', '2029-02-07 16:15:54', 1, 0, '[{\"type\":\"content\",\"lastplacement\":\"content\",\"desktopportraitfontsize\":100,\"desktopportraitmaxwidth\":800,\"desktopportraitinneralign\":\"center\",\"desktopportraitpadding\":\"25|*|10|*|25|*|10|*|px+\",\"desktopportraitselfalign\":\"inherit\",\"opened\":1,\"id\":null,\"uniqueclass\":null,\"class\":\"\",\"crop\":\"\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":1,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Content\",\"namesynced\":1,\"bgimage\":\"\",\"bgimagex\":50,\"bgimagey\":50,\"bgimageparallax\":0,\"bgcolor\":\"00000000\",\"bgcolorgradient\":\"off\",\"bgcolorgradientend\":\"00000000\",\"verticalalign\":\"center\",\"layers\":[{\"type\":\"layer\",\"lastplacement\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"uniqueclass\":null,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":0,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Latest Project\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"href\":\"#\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmNjIiwic2l6ZSI6IjE0fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUm9ib3RvIiwibGluZWhlaWdodCI6IjEuMiIsImJvbGQiOiIxIiwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiaW5oZXJpdCIsImxldHRlcnNwYWNpbmciOiIycHgiLCJ3b3Jkc3BhY2luZyI6Im5vcm1hbCIsInRleHR0cmFuc2Zvcm0iOiJ1cHBlcmNhc2UiLCJ3ZWlnaHQiOjF9LHsiZXh0cmEiOiIifV19\",\"style\":\"\",\"heading\":\"Latest Project\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"title\":\"\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\",\"href-target\":\"_self\",\"href-rel\":\"\"}}},{\"type\":\"layer\",\"lastplacement\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"mobileportraitfontsize\":80,\"id\":null,\"uniqueclass\":null,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":0,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Jeans Store Interior\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"href\":\"#\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjQ4fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUm9ib3RvIiwibGluZWhlaWdodCI6IjEuNSIsImJvbGQiOjMwMCwiaXRhbGljIjowLCJ1bmRlcmxpbmUiOjAsImFsaWduIjoiaW5oZXJpdCIsImxldHRlcnNwYWNpbmciOiJub3JtYWwiLCJ3b3Jkc3BhY2luZyI6Im5vcm1hbCIsInRleHR0cmFuc2Zvcm0iOiJub25lIn0seyJleHRyYSI6IiJ9XX0=\",\"style\":\"\",\"heading\":\"Jeans Store Interior\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"title\":\"\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\",\"href-target\":\"_self\",\"href-rel\":\"\"}}},{\"type\":\"layer\",\"lastplacement\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"0|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"uniqueclass\":null,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":0,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Lorem ipsum dolor sit amet, consect\",\"namesynced\":1,\"item\":{\"type\":\"heading\",\"values\":{\"href\":\"#\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmIwIiwic2l6ZSI6IjE4fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUm9ib3RvIiwibGluZWhlaWdodCI6IjEuOCIsImJvbGQiOjAsIml0YWxpYyI6MCwidW5kZXJsaW5lIjowLCJhbGlnbiI6ImluaGVyaXQiLCJsZXR0ZXJzcGFjaW5nIjoibm9ybWFsIiwid29yZHNwYWNpbmciOiJub3JtYWwiLCJ0ZXh0dHJhbnNmb3JtIjoibm9uZSJ9LHsiZXh0cmEiOiIifV19\",\"style\":\"\",\"heading\":\"Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes.\",\"priority\":\"div\",\"fullwidth\":\"1\",\"nowrap\":\"0\",\"title\":\"\",\"split-text-animation-in\":\"\",\"split-text-delay-in\":\"0\",\"split-text-animation-out\":\"\",\"split-text-delay-out\":\"0\",\"split-text-backface-visibility\":\"1\",\"split-text-transform-origin\":\"50|*|50|*|0\",\"class\":\"\",\"href-target\":\"_self\",\"href-rel\":\"\"}}},{\"type\":\"layer\",\"lastplacement\":\"normal\",\"desktopportraitfontsize\":100,\"desktopportraitmargin\":\"20|*|0|*|0|*|0|*|px+\",\"desktopportraitheight\":0,\"desktopportraitmaxwidth\":0,\"desktopportraitselfalign\":\"inherit\",\"id\":null,\"uniqueclass\":null,\"class\":\"\",\"crop\":\"visible\",\"rotation\":0,\"parallax\":0,\"adaptivefont\":0,\"generatorvisible\":\"\",\"desktopportrait\":1,\"desktoplandscape\":1,\"tabletportrait\":1,\"tabletlandscape\":1,\"mobileportrait\":1,\"mobilelandscape\":1,\"name\":\"Read More\",\"namesynced\":1,\"item\":{\"type\":\"button\",\"values\":{\"content\":\"Read More\",\"font\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJjb2xvciI6ImZmZmZmZmZmIiwic2l6ZSI6IjE0fHxweCIsInRzaGFkb3ciOiIwfCp8MHwqfDB8KnwwMDAwMDBmZiIsImFmb250IjoiUm9ib3RvIiwibGluZWhlaWdodCI6IjEuNSIsImJvbGQiOjAsIml0YWxpYyI6MCwidW5kZXJsaW5lIjowLCJhbGlnbiI6ImNlbnRlciIsImxldHRlcnNwYWNpbmciOiIxcHgiLCJ3b3Jkc3BhY2luZyI6Im5vcm1hbCIsInRleHR0cmFuc2Zvcm0iOiJub25lIiwid2VpZ2h0IjoiMSJ9LHsiZXh0cmEiOiIifV19\",\"style\":\"eyJuYW1lIjoiU3RhdGljIiwiZGF0YSI6W3siZXh0cmEiOiIiLCJiYWNrZ3JvdW5kY29sb3IiOiI2NGMxMzNmZiIsIm9wYWNpdHkiOjEwMCwicGFkZGluZyI6IjEyfCp8Mjh8KnwxMnwqfDI4fCp8cHgiLCJib3hzaGFkb3ciOiIwfCp8MHwqfDB8KnwwfCp8MDAwMDAwZmYiLCJib3JkZXIiOiIwfCp8c29saWR8KnwwMDAwMDBmZiIsImJvcmRlcnJhZGl1cyI6IjMifSx7ImV4dHJhIjoiIn1dfQ==\",\"fullwidth\":\"0\",\"nowrap\":\"1\",\"class\":\"\",\"href\":\"#\",\"href-target\":\"_self\",\"href-rel\":\"\"}}}]}]', '', '//smartslider3.com/wp-content/uploads/2017/06/free1dark.jpg', '{\"background-type\":\"image\",\"backgroundImage\":\"\\/\\/smartslider3.com\\/wp-content\\/uploads\\/slider149\\/header1-3.jpg\",\"backgroundFocusX\":\"50\",\"backgroundFocusY\":\"50\",\"backgroundImageOpacity\":\"64\",\"backgroundImageBlur\":\"0\",\"backgroundAlt\":\"\",\"backgroundTitle\":\"\",\"backgroundColor\":\"000000ff\",\"backgroundGradient\":\"off\",\"backgroundColorEnd\":\"ffffff00\",\"backgroundMode\":\"default\",\"background-animation\":\"\",\"background-animation-speed\":\"default\",\"thumbnailType\":\"default\",\"href\":\"\",\"href-target\":\"_self\",\"guides\":\"e30=\",\"static-slide\":\"0\",\"slide-duration\":\"0\",\"version\":\"3.3.13\"}', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=210 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/challenge2', 'yes'),
(2, 'home', 'http://localhost/challenge2', 'yes'),
(3, 'blogname', 'challenge2', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'rahul.jadhav0810@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:21:\"meta-box/meta-box.php\";i:1;s:37:\"multiple-editors/multiple-editors.php\";i:2;s:33:\"smart-slider-3/smart-slider-3.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'illdy', 'yes'),
(41, 'stylesheet', 'illdy', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '43764', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:1:{i:0;i:21;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '43764', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:69:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:42:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:7:\"nextend\";b:1;s:14:\"nextend_config\";b:1;s:19:\"nextend_visual_edit\";b:1;s:21:\"nextend_visual_delete\";b:1;s:11:\"smartslider\";b:1;s:18:\"smartslider_config\";b:1;s:16:\"smartslider_edit\";b:1;s:18:\"smartslider_delete\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:16:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"page-sidebar\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}s:24:\"front-page-about-sidebar\";a:0:{}s:27:\"front-page-projects-sidebar\";a:0:{}s:27:\"front-page-services-sidebar\";a:0:{}s:26:\"front-page-counter-sidebar\";a:0:{}s:23:\"front-page-team-sidebar\";a:0:{}s:29:\"front-page-full-width-sidebar\";a:0:{}s:31:\"front-page-testimonials-sidebar\";a:0:{}s:18:\"smartslider_area_1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1549778870;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1549814870;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1549814882;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1549815398;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549557290;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(114, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-5.0.3.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-5.0.3-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-5.0.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.3\";s:7:\"version\";s:5:\"5.0.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1549771747;s:15:\"version_checked\";s:5:\"5.0.3\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_timeout_browser_ab84b9ad8889dccd488afa244998b7f7', '1550160483', 'no'),
(204, '_site_transient_timeout_theme_roots', '1549771750', 'no'),
(205, '_site_transient_theme_roots', 'a:5:{s:5:\"illdy\";s:7:\"/themes\";s:7:\"starter\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(144, 'n2_ss3_version', '3.3.13r3150', 'yes'),
(145, 'widget_smartslider3', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(147, 'current_theme', 'Illdy', 'yes'),
(122, '_site_transient_browser_ab84b9ad8889dccd488afa244998b7f7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"71.0.3578.98\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(133, 'recently_activated', 'a:0:{}', 'yes'),
(148, 'theme_mods_illdy', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549565172;s:4:\"data\";a:15:{s:19:\"wp_inactive_widgets\";a:0:{}s:12:\"blog-sidebar\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:12:\"page-sidebar\";a:0:{}s:16:\"footer-sidebar-1\";a:0:{}s:16:\"footer-sidebar-2\";a:0:{}s:16:\"footer-sidebar-3\";a:0:{}s:16:\"footer-sidebar-4\";a:0:{}s:24:\"front-page-about-sidebar\";a:0:{}s:27:\"front-page-projects-sidebar\";a:0:{}s:27:\"front-page-services-sidebar\";a:0:{}s:26:\"front-page-counter-sidebar\";a:0:{}s:23:\"front-page-team-sidebar\";a:0:{}s:29:\"front-page-full-width-sidebar\";a:0:{}s:31:\"front-page-testimonials-sidebar\";a:0:{}s:18:\"smartslider_area_1\";a:0:{}}}}', 'yes'),
(149, 'theme_switched', '', 'yes'),
(154, 'category_children', 'a:0:{}', 'yes'),
(208, '_transient_is_multi_author', '0', 'yes'),
(194, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1549769950;s:7:\"checked\";a:5:{s:5:\"illdy\";s:5:\"2.0.1\";s:7:\"starter\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"1.2\";s:15:\"twentyseventeen\";s:3:\"2.0\";s:13:\"twentysixteen\";s:3:\"1.8\";}s:8:\"response\";a:2:{s:5:\"illdy\";a:4:{s:5:\"theme\";s:5:\"illdy\";s:11:\"new_version\";s:5:\"2.1.2\";s:3:\"url\";s:35:\"https://wordpress.org/themes/illdy/\";s:7:\"package\";s:52:\"http://downloads.wordpress.org/theme/illdy.2.1.2.zip\";}s:7:\"starter\";a:4:{s:5:\"theme\";s:7:\"starter\";s:11:\"new_version\";s:5:\"1.0.2\";s:3:\"url\";s:37:\"https://wordpress.org/themes/starter/\";s:7:\"package\";s:54:\"http://downloads.wordpress.org/theme/starter.1.0.2.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(195, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1549769950;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:3:\"4.1\";s:9:\"hello.php\";s:5:\"1.7.1\";s:21:\"meta-box/meta-box.php\";s:6:\"4.16.3\";s:37:\"multiple-editors/multiple-editors.php\";s:5:\"0.1.2\";s:33:\"smart-slider-3/smart-slider-3.php\";s:6:\"3.3.13\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:55:\"http://downloads.wordpress.org/plugin/akismet.4.1.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"meta-box/meta-box.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:22:\"w.org/plugins/meta-box\";s:4:\"slug\";s:8:\"meta-box\";s:6:\"plugin\";s:21:\"meta-box/meta-box.php\";s:11:\"new_version\";s:6:\"4.16.3\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/meta-box/\";s:7:\"package\";s:57:\"http://downloads.wordpress.org/plugin/meta-box.4.16.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/meta-box/assets/icon-128x128.png?rev=1100915\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/meta-box/assets/banner-772x250.png?rev=1929588\";}s:11:\"banners_rtl\";a:0:{}}s:37:\"multiple-editors/multiple-editors.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:30:\"w.org/plugins/multiple-editors\";s:4:\"slug\";s:16:\"multiple-editors\";s:6:\"plugin\";s:37:\"multiple-editors/multiple-editors.php\";s:11:\"new_version\";s:5:\"0.1.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/multiple-editors/\";s:7:\"package\";s:58:\"http://downloads.wordpress.org/plugin/multiple-editors.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:67:\"https://s.w.org/plugins/geopattern-icon/multiple-editors_007475.svg\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/multiple-editors/assets/banner-1544x500.png?rev=888334\";s:2:\"1x\";s:70:\"https://ps.w.org/multiple-editors/assets/banner-772x250.png?rev=888334\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"smart-slider-3/smart-slider-3.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/smart-slider-3\";s:4:\"slug\";s:14:\"smart-slider-3\";s:6:\"plugin\";s:33:\"smart-slider-3/smart-slider-3.php\";s:11:\"new_version\";s:6:\"3.3.13\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/smart-slider-3/\";s:7:\"package\";s:63:\"http://downloads.wordpress.org/plugin/smart-slider-3.3.3.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-256x256.png?rev=1284893\";s:2:\"1x\";s:67:\"https://ps.w.org/smart-slider-3/assets/icon-128x128.png?rev=1284893\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/smart-slider-3/assets/banner-1544x500.png?rev=1902662\";s:2:\"1x\";s:69:\"https://ps.w.org/smart-slider-3/assets/banner-772x250.png?rev=1902662\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(171, 'theme_mods_starter', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1549565500;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"smartslider_area_1\";a:0:{}}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1549556058:1'),
(4, 2, '_edit_lock', '1549556084:1'),
(5, 6, '_edit_lock', '1549557858:1'),
(6, 6, '_edit_last', '1'),
(7, 6, '_wp_page_template', 'page-templates/no-sidebar.php'),
(8, 1, '_edit_lock', '1549569484:1'),
(9, 12, '_edit_lock', '1549558517:1'),
(10, 13, '_edit_lock', '1549558529:1'),
(14, 16, '_edit_lock', '1549563860:1'),
(13, 15, '_edit_lock', '1549559305:1'),
(15, 17, '_edit_lock', '1549564150:1'),
(16, 17, '_edit_last', '1'),
(45, 24, '_edit_lock', '1549776240:1'),
(24, 21, '_edit_last', '1'),
(21, 21, '_edit_lock', '1549570481:1'),
(44, 21, '_encloseme', '1'),
(46, 24, '_wp_page_template', 'page-templates/Contact-Us.php'),
(43, 21, '_pingme', '1'),
(42, 21, 'custom_editors', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"3\";}'),
(47, 24, '_edit_last', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-02-07 16:07:49', '2019-02-07 16:07:49', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2019-02-07 16:07:49', '2019-02-07 16:07:49', '', 0, 'http://localhost/challenge2/?p=1', 0, 'post', '', 1),
(2, 1, '2019-02-07 16:07:49', '2019-02-07 16:07:49', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/challenge2/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2019-02-07 16:07:49', '2019-02-07 16:07:49', '', 0, 'http://localhost/challenge2/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-02-07 16:07:49', '2019-02-07 16:07:49', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/challenge2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2019-02-07 16:07:49', '2019-02-07 16:07:49', '', 0, 'http://localhost/challenge2/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-02-07 16:08:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-07 16:08:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/challenge2/?p=4', 0, 'post', '', 0),
(5, 1, '2019-02-07 16:16:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-02-07 16:16:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/challenge2/?page_id=5', 0, 'page', '', 0),
(6, 1, '2019-02-07 16:17:46', '2019-02-07 16:17:46', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '<center>Challenge2a</center>', '', 'publish', 'closed', 'closed', '', 'challenge2a', '', '', '2019-02-07 16:42:24', '2019-02-07 16:42:24', '', 0, 'http://localhost/challenge2/?page_id=6', 0, 'page', '', 0),
(7, 1, '2019-02-07 16:17:46', '2019-02-07 16:17:46', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Challenge2a', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-07 16:17:46', '2019-02-07 16:17:46', '', 6, 'http://localhost/challenge2/2019/02/07/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-02-07 16:40:23', '2019-02-07 16:40:23', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-07 16:40:23', '2019-02-07 16:40:23', '', 6, 'http://localhost/challenge2/2019/02/07/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2019-02-07 16:41:48', '2019-02-07 16:41:48', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Challenge2', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-07 16:41:48', '2019-02-07 16:41:48', '', 6, 'http://localhost/challenge2/2019/02/07/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2019-02-07 16:42:10', '2019-02-07 16:42:10', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '<center>Challenge2</center>', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-07 16:42:10', '2019-02-07 16:42:10', '', 6, 'http://localhost/challenge2/2019/02/07/6-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2019-02-07 16:42:24', '2019-02-07 16:42:24', '<!-- wp:nextend/smartslider3 {\"slider\":\"1\"} -->\n<div class=\"wp-block-nextend-smartslider3\">[smartslider3 slider=\"1\"]</div>\n<!-- /wp:nextend/smartslider3 -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '<center>Challenge2a</center>', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2019-02-07 16:42:24', '2019-02-07 16:42:24', '', 6, 'http://localhost/challenge2/2019/02/07/6-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-02-07 16:56:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-07 16:56:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/challenge2/?p=12', 0, 'post', '', 0),
(13, 1, '2019-02-07 16:57:42', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-07 16:57:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/challenge2/?p=13', 0, 'post', '', 0),
(15, 1, '2019-02-07 17:10:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-07 17:10:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/challenge2/?p=15', 0, 'post', '', 0),
(16, 1, '2019-02-07 18:25:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-02-07 18:25:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/challenge2/?p=16', 0, 'post', '', 0),
(17, 1, '2019-02-07 18:29:10', '0000-00-00 00:00:00', '', 'Draft created on February 7, 2019 at 6:29 pm', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-02-07 18:29:10', '2019-02-07 18:29:10', '', 0, 'http://localhost/challenge2/?p=17', 0, 'post', '', 0),
(18, 1, '2019-02-07 18:29:10', '2019-02-07 18:29:10', '', 'Draft created on February 7, 2019 at 6:29 pm', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2019-02-07 18:29:10', '2019-02-07 18:29:10', '', 17, 'http://localhost/challenge2/2019/02/07/17-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-02-07 20:01:48', '2019-02-07 20:01:48', '<!-- wp:list {\"ordered\":true} -->\n<ol><li>Edit any post or page as a user with editor permissions and you will see an “Editors” meta box with an option to promote other users (with author and contributor capabilities) as editors of that post.</li></ol>\n<!-- /wp:list -->', 'Post1', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2019-02-07 20:01:48', '2019-02-07 20:01:48', '', 21, 'http://localhost/challenge2/2019/02/07/21-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-02-07 20:01:48', '2019-02-07 20:01:48', '<!-- wp:list {\"ordered\":true} -->\n<ol><li>Edit any post or page as a user with editor permissions and you will see an “Editors” meta box with an option to promote other users (with author and contributor capabilities) as editors of that post.</li></ol>\n<!-- /wp:list -->', 'Post1', '', 'publish', 'open', 'open', '', 'post1', '', '', '2019-02-07 20:12:27', '2019-02-07 20:12:27', '', 0, 'http://localhost/challenge2/?p=21', 0, 'post', '', 0),
(24, 1, '2019-02-10 04:38:16', '2019-02-10 04:38:16', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2019-02-10 04:39:29', '2019-02-10 04:39:29', '', 0, 'http://localhost/challenge2/?page_id=24', 0, 'page', '', 0),
(25, 1, '2019-02-10 04:38:16', '2019-02-10 04:38:16', '', 'Home', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2019-02-10 04:38:16', '2019-02-10 04:38:16', '', 24, 'http://localhost/challenge2/2019/02/10/24-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(17, 1, 0),
(21, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'challenge2'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"53803421d475c73a5fa0ad83ffa0b911581da3219de1e9bdcf9fa6054ed7052c\";a:4:{s:10:\"expiration\";i:1550765282;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549555682;}s:64:\"f50d147807c5034c3e2157382d2a0a0bdc4a29c0c99ac08266bf66bfc3af3a72\";a:4:{s:10:\"expiration\";i:1550928038;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1549718438;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'enable_custom_fields', '1'),
(19, 2, 'nickname', 'user1'),
(20, 2, 'first_name', ''),
(21, 2, 'last_name', ''),
(22, 2, 'description', ''),
(23, 2, 'rich_editing', 'true'),
(24, 2, 'syntax_highlighting', 'true'),
(25, 2, 'comment_shortcuts', 'false'),
(26, 2, 'admin_color', 'fresh'),
(27, 2, 'use_ssl', '0'),
(28, 2, 'show_admin_bar_front', 'true'),
(29, 2, 'locale', ''),
(30, 2, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(31, 2, 'wp_user_level', '1'),
(32, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(33, 3, 'nickname', 'user2'),
(34, 3, 'first_name', ''),
(35, 3, 'last_name', ''),
(36, 3, 'description', ''),
(37, 3, 'rich_editing', 'true'),
(38, 3, 'syntax_highlighting', 'true'),
(39, 3, 'comment_shortcuts', 'false'),
(40, 3, 'admin_color', 'fresh'),
(41, 3, 'use_ssl', '0'),
(42, 3, 'show_admin_bar_front', 'true'),
(43, 3, 'locale', ''),
(44, 3, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(45, 3, 'wp_user_level', '1'),
(46, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(47, 1, 'closedpostboxes_post', 'a:0:{}'),
(48, 1, 'metaboxhidden_post', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'challenge2', '$P$BtIdqsAwgvw1nKWYk8itj7Tfk4MO6..', 'challenge2', 'rahul.jadhav0810@gmail.com', '', '2019-02-07 16:07:49', '', 0, 'challenge2'),
(2, 'user1', '$P$BPfpZJHBcGIRWS32uHVLHIxffNY8LD1', 'user1', 'rahul.jadhav08101@gmail.com', '', '2019-02-07 18:28:01', '1549564083:$P$B8P.if2FJbpY//eBAJIsSZKlCSSIZo0', 0, 'user1'),
(3, 'user2', '$P$Bqg2DWu.2JDtaCzqjhAR5mXHdTB7sb1', 'user2', 'rahul.jadhav08102@gmail.com', '', '2019-02-07 18:28:42', '1549564124:$P$BWvCBu.rVAiT5l72bpD7I3UWFny/0B.', 0, 'user2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
