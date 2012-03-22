-- phpMyAdmin SQL Dump
-- version 3.2.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 22, 2012 at 11:20 PM
-- Server version: 5.1.40
-- PHP Version: 5.3.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `berezinogkh`
--

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_assets`
--

CREATE TABLE IF NOT EXISTS `jmi31_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `jmi31_assets`
--

INSERT INTO `jmi31_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 105, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 56, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 57, 58, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 59, 60, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 61, 62, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 63, 64, 1, 'com_login', 'com_login', '{}'),
(13, 1, 65, 66, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 67, 68, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 69, 70, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 71, 72, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 73, 74, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 75, 76, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 77, 80, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 81, 82, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 83, 84, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 85, 86, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 87, 88, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 89, 92, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(25, 1, 93, 96, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 97, 98, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Основная', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 78, 79, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 94, 95, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 90, 91, 1, 'com_users.notes.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 99, 100, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(34, 27, 19, 20, 3, 'com_content.article.1', 'О предприятии', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(35, 36, 27, 28, 3, 'com_content.article.2', 'График личного приема граждан должностными лицами РКУПП «Березинское ЖКХ»', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 8, 26, 35, 2, 'com_content.category.8', 'Графики', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 8, 36, 45, 2, 'com_content.category.9', 'Участки', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(38, 36, 29, 30, 3, 'com_content.article.3', 'График работы по принципу «одно окно» РКУПП «Березинское ЖКХ»  ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 37, 37, 38, 3, 'com_content.article.4', 'Участок теплового хозяйства', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 37, 39, 40, 3, 'com_content.article.5', 'Участок  водопотребления  и водоотведения', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 37, 41, 42, 3, 'com_content.article.6', 'Жилищное хозяйство ', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 37, 43, 44, 3, 'com_content.article.7', 'Участки благоустройства , озеленения, санитарной очистки.', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 36, 31, 32, 3, 'com_content.article.8', 'График вывоза мусора с Березинского района', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 36, 33, 34, 3, 'com_content.article.9', 'График вывоза мусора с г.Березино.', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(45, 8, 46, 51, 2, 'com_content.category.10', 'Объекты', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(46, 45, 47, 48, 3, 'com_content.article.10', 'Гостиница', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(47, 45, 49, 50, 3, 'com_content.article.11', 'Баня', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(48, 27, 21, 22, 3, 'com_content.article.12', 'Организация собственного производства', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(49, 27, 23, 24, 3, 'com_content.article.13', 'Контактная информация', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(50, 1, 101, 102, 1, 'com_phocagallery', 'com_phocagallery', '{}'),
(51, 1, 103, 104, 1, 'com_sh404sef', 'sh404sef', '{}'),
(52, 8, 52, 55, 2, 'com_content.category.11', 'sh404SEF custom content', ''),
(53, 52, 53, 54, 3, 'com_content.article.14', '__404__', '');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_associations`
--

CREATE TABLE IF NOT EXISTS `jmi31_associations` (
  `id` varchar(50) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_associations`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_banners`
--

CREATE TABLE IF NOT EXISTS `jmi31_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_banner_clients`
--

CREATE TABLE IF NOT EXISTS `jmi31_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_banner_clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_banner_tracks`
--

CREATE TABLE IF NOT EXISTS `jmi31_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_banner_tracks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_categories`
--

CREATE TABLE IF NOT EXISTS `jmi31_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jmi31_categories`
--

INSERT INTO `jmi31_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 21, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'main', 'com_content', 'Основная', 'main', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2010-06-28 13:26:37', 42, '2012-03-20 18:31:42', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 32, 1, 11, 12, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(8, 36, 1, 13, 14, 1, 'schedule', 'com_content', 'Графики', 'schedule', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-03-20 18:22:39', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 37, 1, 15, 16, 1, 'areas', 'com_content', 'Участки', 'areas', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-03-20 18:24:05', 0, '0000-00-00 00:00:00', 0, '*'),
(10, 45, 1, 17, 18, 1, 'objects', 'com_content', 'Объекты', 'objects', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2012-03-20 18:39:50', 0, '0000-00-00 00:00:00', 0, '*'),
(11, 52, 1, 19, 20, 1, 'sh404sef-custom-content', 'com_content', 'sh404SEF custom content', 'sh404sef-custom-content', '', 'Do not delete please!', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 42, '2012-03-22 20:48:39', 0, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_contact_details`
--

CREATE TABLE IF NOT EXISTS `jmi31_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jmi31_contact_details`
--

INSERT INTO `jmi31_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`) VALUES
(1, 'Контакты', 'contacts', '', 'ул. Промышленная 7', 'Березино', 'Минская', 'Беларусь', '22331', '8-01715-54150', '8-01715-54150', '<p>Директор - Макович Геннадий Дмитриевич (8-01715-55467)</p>\r\n<p>Главный бухгалтер – Бурая Виктория Владимировна (8-01715-55701)</p>\r\n<p>Главный инженер – Линич Василий Владимирович (8-01715-55109)</p>', '', NULL, 'berezinogkh@tut.by', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_profile":"","show_links":"","linka_name":"","linka":null,"linkb_name":"","linkb":null,"linkc_name":"","linkc":null,"linkd_name":"","linkd":null,"linke_name":"","linke":"","contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2012-03-20 18:15:29', 42, '', '2012-03-20 18:15:31', 42, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_content`
--

CREATE TABLE IF NOT EXISTS `jmi31_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `title_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Deprecated in Joomla! 3.0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jmi31_content`
--

INSERT INTO `jmi31_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 34, 'О предприятии', 'about', '', '<p>РКУПП «Березинское ЖКХ» создано решением Минского областного исполнительного комитета от 11 августа 2000 года № 523. База предприятия расположена в промышленной части города Березино.</p>\r\n<p>Учредителем РКУПП «Березинское ЖКХ» является Березинский Райисполком.</p>\r\n<p>Основным видом деятельности является оказание жилищно-коммунальных услуг населению и организациям г. Березино и Березинского района.</p>\r\n<p>РКУПП «Березинское ЖКХ» имеет следующую структуру подразделений:</p>\r\n<ul>\r\n<li>Участок теплового хозяйства;</li>\r\n<li>Участок водопотребления и водоотведения;</li>\r\n<li>Жилищное хозяйство;</li>\r\n<li>Участок благоустройства и озеленения города;</li>\r\n<li>Пилорама и столярный цех;</li>\r\n<li>Механизированная уборка города;</li>\r\n<li>Санитарная очистка;</li>\r\n<li>Гостиница;</li>\r\n<li>Баня;</li>\r\n<li>Парикмахерская;</li>\r\n<li>Общежитие;</li>\r\n<li>Производство ЖБИ.</li>\r\n</ul>\r\n<p>Среднесписочная численность по предприятию на 01.09.2011г. состави¬ла 303 человека.</p>', '', 1, 0, 0, 2, '2012-03-20 18:07:43', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:07:43', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 62, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 35, 'График личного приема граждан должностными лицами РКУПП «Березинское ЖКХ»', 'schedule-of-personal-reception-of-citizens', '', '<table class="MsoNormalTable" style="border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 135pt; border: 1pt solid windowtext; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Фамилия, имя, отчество</p>\r\n</td>\r\n<td style="width: 126pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span>   </span>Должность</p>\r\n</td>\r\n<td style="width: 81pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">Время приема</p>\r\n</td>\r\n<td style="width: 90pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal"><span>     </span>№ кабинета</p>\r\n</td>\r\n<td style="width: 126pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Замещение на время отсутствия</p>\r\n</td>\r\n</tr>\r\n<tr style="height: 44.5pt;">\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 44.5pt;" valign="top" width="180">\r\n<p class="MsoNormal" style="margin-left: 0.6pt; text-indent: -0.6pt;">Макович Геннадий Дмитриевич</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 44.5pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span> </span>Директор</p>\r\n<p class="MsoNormal"><span> </span></p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 44.5pt;" valign="top" width="108">\r\n<p class="MsoNormal">1-ая суббота месяца</p>\r\n<p class="MsoNormal">8.00-1<span lang="EN-US">3</span>.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 44.5pt;" valign="top" width="120">\r\n<p class="MsoNormal"><span>  </span>директора</p>\r\n<p class="MsoNormal">2-й этаж</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 44.5pt;" valign="top" width="168">\r\n<p class="MsoNormal">Линич Василий Владимирович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Вильтовская Алеся Григорьевна</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Зам.директора по идеологической работе</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">2-я суббота месяца</p>\r\n<p class="MsoNormal">8.00-1<span lang="EN-US">3</span>.00</p>\r\n<p class="MsoNormal"><span> </span></p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">зам.директора</p>\r\n<p class="MsoNormal">2-ой этаж</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Бабуро Сергей Леонидович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Бабуро Сергей Леонидович</p>\r\n<p class="MsoNormal"> </p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Зам. директора</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">3-я суббота месяца</p>\r\n<p class="MsoNormal">8.00-1<span lang="EN-US">3</span>.00</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">гл.инженера</p>\r\n<p class="MsoNormal">2-ой этаж</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span> </span>Линич Василий Владимирович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal"><span> </span>Линич Василий Владимирович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Главный инженер</p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">4-я суббота месяца</p>\r\n<p class="MsoNormal">8.00-1<span lang="EN-US">3</span>.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">гл.инженера</p>\r\n<p class="MsoNormal"><span> </span>2-ой этаж<span>   </span></p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Гома Тамара Адамовна</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal"><span>  </span></p>\r\n<p class="MsoNormal">Линич Василий Владимирович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span> </span>Главный инженер</p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">5-ая суббота месяца</p>\r\n<p class="MsoNormal">8.00-1<span lang="EN-US">3</span>.00</p>\r\n<p class="MsoNormal"><span> </span></p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">гл.инженера</p>\r\n<p class="MsoNormal"><span> </span>2-ой этаж<span>   </span></p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span> </span>Бабуро Сергей Леонидович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n<tr style="height: 43.45pt;">\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 43.45pt;" valign="top" width="180">\r\n<p class="MsoNormal"><span> </span>Линич Василий Владимирович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 43.45pt;" valign="top" width="168">\r\n<p class="MsoNormal">Главный инженер</p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 43.45pt;" valign="top" width="108">\r\n<p class="MsoNormal">Понедельник</p>\r\n<p class="MsoNormal">8.00-13.00</p>\r\n<p class="MsoNormal">16.00-18.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 43.45pt;" valign="top" width="120">\r\n<p class="MsoNormal">гл.инженера</p>\r\n<p class="MsoNormal"><span> </span>2-ой этаж<span>   </span></p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 43.45pt;" valign="top" width="168">\r\n<p class="MsoNormal">Гома Светлана Адамовна</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Бурая Виктория Владимировна</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Главный бухгалтер</p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">1 и 3–ий вторник</p>\r\n<p class="MsoNormal">8.00-13.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">Гл.бухгалтер</p>\r\n<p class="MsoNormal">2-ой этаж</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Бурая Тамара Адамовна</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Жавнерович Дмитрий Александрович</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Начальник ВиВ</p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">2 и 4-ый<span>  </span>вторник</p>\r\n<p class="MsoNormal">8.00-13.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">Начальника ВиВ</p>\r\n<p class="MsoNormal">1-ый этаж</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span> </span>Андриевич<span>  </span>Станислав Иванович</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Трубило Галина Александровна</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Специалист по обращениям граждан</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">Ежедневно</p>\r\n<p class="MsoNormal">8.00-12.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal"><span> </span>спец.по обращен.гр-н</p>\r\n<p class="MsoNormal">2-ой этаж</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span> </span>Поддубский Николай Михайлович-</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n<tr style="height: 35.35pt;">\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 35.35pt;" valign="top" width="180">\r\n<p class="MsoNormal">Макович Геннадий Дмитриевич</p>\r\n<p class="MsoNormal"> </p>\r\n<p class="MsoNormal"><span> </span></p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 35.35pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span> </span>Директор</p>\r\n<p class="MsoNormal"><span> </span></p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 35.35pt;" valign="top" width="108">\r\n<p class="MsoNormal">Среда</p>\r\n<p class="MsoNormal">8.00-15.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 35.35pt;" valign="top" width="120">\r\n<p class="MsoNormal"><span> </span>директора</p>\r\n<p class="MsoNormal">2-й этаж,</p>\r\n<p class="MsoNormal">5-56-74</p>\r\n<p class="MsoNormal"><span> </span></p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 35.35pt;" valign="top" width="168">\r\n<p class="MsoNormal">Бабуро Сергей Леонидович</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Сасковец Виталий Викторович</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Начальник ЖЭУ</p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">Четверг</p>\r\n<p class="MsoNormal">8.00-13.00</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">начальника ЖЭУ</p>\r\n<p class="MsoNormal">1-ый этаж</p>\r\n<p class="MsoNormal">5-50-28</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Смаргун Евгений Олегович</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 135pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="180">\r\n<p class="MsoNormal">Бабуро Сергей Леонидович</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"><span>   </span>Зам.<span>  </span>директора</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">Пятница</p>\r\n<p class="MsoNormal">10.00-17.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">гл.инженера</p>\r\n<p class="MsoNormal">2-ой этаж</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal">Сасковец Виталлий Викторович</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 261pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" colspan="2" valign="top" width="348">\r\n<p class="MsoNormal">Отдел организационно-кадровой работы</p>\r\n</td>\r\n<td style="width: 81pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="108">\r\n<p class="MsoNormal">Ежедневно</p>\r\n<p class="MsoNormal">8.00-17.00</p>\r\n</td>\r\n<td style="width: 90pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="120">\r\n<p class="MsoNormal">отдела кадров</p>\r\n<p class="MsoNormal">2-ой этаж</p>\r\n</td>\r\n<td style="width: 126pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="168">\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p class="MsoNormal"> </p>\r\n<p> </p>\r\n<p class="MsoNormal">Обед с 13.00 до 14.00</p>\r\n<p> </p>\r\n<p class="MsoNormal">При необходимости, предварительную запись на прием и консультацию по телефону осуществляет Ермашкевич Алла Михайловна, секретарь. тел.55467</p>\r\n<p> </p>\r\n<p class="MsoNormal">Консультацию граждан по телефону осуществляет Трубило Галина Александровна спец.по обращению граждан, тел.54376</p>\r\n<p> </p>', '', 1, 0, 0, 8, '2012-03-20 18:19:46', 42, '', '2012-03-20 18:27:08', 42, 0, '0000-00-00 00:00:00', '2012-03-20 18:19:46', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 3, '', '', 1, 11, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jmi31_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(3, 38, 'График работы по принципу «одно окно» РКУПП «Березинское ЖКХ»  ', 'schedule-of-work-on-the-principle-of-one-window', '', '<p> </p>\r\n<table class="MsoNormalTable" style="border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 93.25pt; border: 1pt solid windowtext; padding: 0cm 5.4pt;" valign="top" width="124">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Ответственный</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">Ф.И.О. ,номер телефона</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="262">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Наименование административной процедуры, осуществляемой РКУПП «Березинское ЖКХ»</p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Номер кабинета</p>\r\n</td>\r\n<td style="width: 109pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Время работы</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="138">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Замещение на время отсутствия</p>\r\n</td>\r\n</tr>\r\n<tr style="height: 4.5pt;">\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 4.5pt;" valign="top" width="124">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Титовец Ирина Николаевна-паспортист</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">5-56-74</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 4.5pt;" valign="top" width="262">\r\n<p class="MsoNormal">Выдача справки:</p>\r\n<p class="MsoNormal">-О занимаемой в данном населенном пункте<span>  </span>жилом помещении <span> </span><span>  </span>и составе<span>  </span>семьи</p>\r\n<p class="MsoNormal">-О месте жительства и <span> </span>составе семьи</p>\r\n<p class="MsoNormal">-О месте жительства</p>\r\n<p class="MsoNormal">-О последнем<span>  </span>месте жительства наследодателя и <span> </span><span> </span>составе его семьи на день смерти</p>\r\n<p class="MsoNormal"><span style="color: #3d3d3d;">-Выдача паспорта гражданину Республики Беларусь, проживающему в Республике Беларусь:</span></p>\r\n<p class="MsoNormal"><span style="color: #3d3d3d;">---в связи с достижением 16-летнего возраста <span> </span><span> </span></span></p>\r\n<p class="MsoNormal"><span style="color: #3d3d3d;">---достигшему 16-летнего<span>  </span>возраста, при приобретении<span>  </span>гражданства Республики Беларусь</span></p>\r\n<p class="MsoNormal"><span style="color: #3d3d3d;">---не достигшему 16-летнего <span> </span>возраста, впервые</span></p>\r\n<p class="MsoNormal"><span style="color: #3d3d3d;">-Обмен паспорта гражданину Республики Беларусь, проживающему в Республике Беларусь</span></p>\r\n<p class="MsoNormal"><span style="color: red;"><span> </span>-</span><span style="color: #3d3d3d;">Регистрация по месту жительства граждан Республики Беларусь, иностранных<span>  </span>граждан<span>  </span>и лиц<span>  </span>без гражданства , постоянно проживающих<span>  </span>в республике Беларусь</span></p>\r\n<p class="MsoNormal"><span style="color: #3d3d3d;"><span> </span>-Регистрация по месту пребывания граждан Республики Беларусь, иностранных<span>  </span>граждан<span>  </span>и лиц<span>  </span>без гражданства , постоянно проживающих<span>  </span>в республике Беларусь</span></p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 4.5pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Расчетно-справочный центр</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">Ул.Октябрьская,20</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 4.5pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Понедельник-среда,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">четверг</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 20.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">суббота</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 15.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-воскресенье,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span> </span></p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 4.5pt;" valign="top" width="138">\r\n<p class="MsoNormal">Шагойко Елена Васильевна паспортист</p>\r\n<p class="MsoNormal">5-56-74</p>\r\n</td>\r\n</tr>\r\n<tr style="height: 50.4pt;">\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 50.4pt;" valign="top" width="124">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Дернович Ольга Михайловна-бухгалтер</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">5-59-27</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 50.4pt;" valign="top" width="262">\r\n<p class="MsoNormal">-Перерасчет платы за некоторые виды коммунальных услуг</p>\r\n<p class="MsoNormal">-Справка для перерасчета платы за некоторые виды коммунальных услуг</p>\r\n<p class="MsoNormal">-Справка о расчетах (задолженности) за жилищно-коммунальные услуги</p>\r\n<p class="MsoNormal">-Выдача копия<span>  </span>лицевого счета</p>\r\n<p class="MsoNormal">-Оформление (регистрация при первичном обращении) льгот гражданам по оплате жилищно-коммунальных услуг</p>\r\n<p class="MsoNormal">-Списание пени гражданам, имеющим просроченную<span>  </span>задолженность по оплате жилищно-коммунальных услуг</p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 50.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center"> </p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">Кабинет</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span> </span>бухгалтерии</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">2-ой этаж</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 50.4pt;" valign="top" width="145">\r\n<p class="MsoNormal"><span> </span></p>\r\n<p class="MsoNormal"><span>   </span>понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span> </span>с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота, воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 50.4pt;" valign="top" width="138">\r\n<p class="MsoNormal"> </p>\r\n<p class="MsoNormal">Измер Татьяна Александровна- бухгалтер</p>\r\n<p class="MsoNormal">5-59-27</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="124">\r\n<p class="MsoNormal">Костеневич Светлана Сергеевна- специалист<span>  </span>отдела кадров</p>\r\n<p class="MsoNormal">55-1-09</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="262">\r\n<p class="MsoNormal">-Выдача выписки (копии) из трудовой книжки</p>\r\n<p class="MsoNormal">-Выдача справки о месте работы, службы и занимаемой должности</p>\r\n<p class="MsoNormal">-Выдача справки о периоде работы, службы</p>\r\n<p class="MsoNormal">-Выдача справки о выходе на работу, службу до истечения отпуска по уходу за ребенком в возрасте<span>  </span>до 3 лет и прекращении выплаты пособия</p>\r\n<p class="MsoNormal">-Выдача справки о нахождении в отпуске по уходу за ребенком до достижении им <span> </span>возраста 3-х лет</p>\r\n<p class="MsoNormal">-Принятие решения<span>  </span>о постановке на учет (восстановлении на учете) граждан, нуждающихся<span>  </span>в улучшении жилищных<span>  </span>условий</p>\r\n<p class="MsoNormal">-Принятие решения<span>  </span>о снятии граждан<span>  </span>с учета<span>  </span>, нуждающихся<span>  </span>в улучшении жилищных<span>  </span>условий</p>\r\n<p class="MsoNormal">-Выдача справки о состоянии на учете нуждающихся в улучшении жилищных условий</p>\r\n<p class="MsoNormal">-Выдача справки о необеспеченности ребенка в текущем году путевкой за счет средств<span>  </span>государственного социального<span>  </span>страхования в лагерь с круглосуточным пребыванием</p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">кабинет</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">отдела кадров</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">2-ой этаж</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="145">\r\n<p class="MsoNormal"><span>    </span>понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span> </span>с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота, воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="138">\r\n<p class="MsoNormal">Ермашкевич Алла Михайловна-секретарь</p>\r\n<p class="MsoNormal">54-1-50</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="124">\r\n<p class="MsoNormal">Халюкова Ирина Николаевна, бухгалтер</p>\r\n<p class="MsoNormal">5-59-27</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="262">\r\n<p class="MsoNormal">-Выдача справки о размере заработной платы</p>\r\n<p class="MsoNormal">-Назначение пособия по беременности и родам</p>\r\n<p class="MsoNormal">-Назначение пособия в связи с рождением ребенка</p>\r\n<p class="MsoNormal">-Назначение пособия женщинам, ставшим на учет в государственных организациях <span> </span>здравоохранения до 12-недельного срока беременности</p>\r\n<p class="MsoNormal">-Назначение пособия по уходу за ребенком в возрасте до 3 лет</p>\r\n<p class="MsoNormal">-Назначение пособия на детей старше 3 лет</p>\r\n<p class="MsoNormal">-Назначение пособия по уходу за больным ребенком в возрасте до 14 лет<span>  </span></p>\r\n<p class="MsoNormal">-Назначение пособия по уходу за ребенком в возрасте до 3 лет и ребенком инвалидом в возрасте до 18 лет в случае болезни матери либо другого лица, фактически осуществляющего уход за ребенком</p>\r\n<p class="MsoNormal">-Назначение пособия по уходу за ребенком-инвалидом<span>  </span>в возрасте <span> </span>до18 <span> </span>лет</p>\r\n<p class="MsoNormal">-Назначение пособия на детей в возрасте<span>  </span>до 18 лет, инфицированных вирусом иммунодефицита человека</p>\r\n<p class="MsoNormal">-Выдача справки о размере назначенного пособия на детей и<span>  </span>периоде его выплаты</p>\r\n<p class="MsoNormal">-Выдача справки об удержании алиментов и их размере</p>\r\n<p class="MsoNormal">-Выдача справки об уплате обязательных страховых взносов в Фонд социальной защиты населения Министерства труда и социальной защиты в установленные сроки и о доходах , с<span>  </span>которых они исчислены, лицом<span>  </span>уплачивающим страховые взносы самостоятельно</p>\r\n<p class="MsoNormal">-Выдача справки о периоде, за который выплачено пособие по беременности и родам</p>\r\n<p class="MsoNormal">-Выдача пособия (материальной помощи) на погребение</p>\r\n<p class="MsoNormal">-Выдача справки о размере <span style="font-size: 11pt;">ежемесячного<span>  </span>денежного содержания</span></p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">кабинет</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">бухгалтерии</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">2-ой этаж</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="138">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Юшкевич Ольга Валентиновна-бухгалтер</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">5-59-27</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="124">\r\n<p class="MsoNormal">Лаптенок Анатолий Иванович- инженер</p>\r\n<p class="MsoNormal">5-50-28</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="262">\r\n<p class="MsoNormal">-Принятие решения о приватизации жилого помещения</p>\r\n<p class="MsoNormal">-Справка о начисленной жилищной квоте</p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">кабинет ЖЭУ</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">1-ый этаж</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="138">\r\n<p class="MsoNormal">Макаревич<span>  </span>Дмитрий Александрович- инженер</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">5-50-28</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="124">\r\n<p class="MsoNormal">Жавнерович Дмитрий Александрович- начальник<span>  </span>ВиВ</p>\r\n<p class="MsoNormal">58-1-79</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="262">\r\n<p class="MsoNormal">-Выдача технических условий на присоединение к<span>  </span>системам водоснабжения<span>  </span>и (или) водоотведения одноквартирного, блокированного жилого дома, находящегося в эксплуатации<span>  </span></p>\r\n<p class="MsoNormal">-Оформление акта-разрешения о пуске в эксплуатацию<span>  </span>присоединения к системам водоснабжения и (или0 водоотведения <span> </span>одноквартирного, блокированного жилого дома, находящегося в эксплуатации, по результатам приемки выполненных работ<span>        </span></p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">кабинет</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">«водоканала»</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">1-ый этаж</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="138">\r\n<p class="MsoNormal">Андриевич<span>  </span>Станислав Иванович -мастер</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">58-1-79</p>\r\n</td>\r\n</tr>\r\n<tr style="height: 26.5pt;">\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 26.5pt;" valign="top" width="124">\r\n<p class="MsoNormal">Поддубский Николай Михайлович-юрисконсульт</p>\r\n<p class="MsoNormal">5-43-76</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 26.5pt;" valign="top" width="262">\r\n<p class="MsoNormal">-Регистрация<span>   </span>договоров<span>  </span>найма<span>  </span>и поднайма жилого помещения государственного жилищного фонда и дополнительных соглашений к ним</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 26.5pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">кабинет</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">юрисконсульта</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">2-й этаж</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 26.5pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 26.5pt;" valign="top" width="138">\r\n<p class="MsoNormal">Трубило Галина Александровна-спец. по обращ.граждан</p>\r\n<p class="MsoNormal">5-43-76</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="124">\r\n<p class="MsoNormal">Линич Василий Владимирович-главный инженер</p>\r\n<p class="MsoNormal">54-1-50</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="262">\r\n<p class="MsoNormal">-Выдача технических условий на подключение<span>  </span>к тепловым<span>  </span>сетям энергосберегающей<span>  </span>организации одноквартирного, блокированного жилого дома, находящегося в эксплуатации</p>\r\n<p class="MsoNormal">-Выдача технических условий на установку средства<span>  </span>расчетного учета и (или) системы автоматического регулирования<span>  </span>тепловой энергии</p>\r\n<p class="MsoNormal"> </p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">кабинет гл.инженера,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">2 этаж</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">54-1-50</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="138">\r\n<p class="MsoNormal">Гома Светлана Адамовна- инженер</p>\r\n<p class="MsoNormal">5-43-76</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 93.25pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="124">\r\n<p class="MsoNormal">Маскалькова Марина Анатольевна- мастер <span style="font-size: 11pt;">благоустройства</span></p>\r\n<p class="MsoNormal">5-50-28</p>\r\n</td>\r\n<td style="width: 196.2pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="262">\r\n<p class="MsoNormal">- Выдача справки о месте захоронения родственников</p>\r\n</td>\r\n<td style="width: 81.75pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="109">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Кабинет «инженер МТС»,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">1 этаж</p>\r\n</td>\r\n<td style="width: 109pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="145">\r\n<p class="MsoNormal" style="text-align: center;" align="center">понедельник-пятница</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 8.00 до 17.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">обед</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">с 13.00 до 14.00</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">выходной-суббота,</p>\r\n<p class="MsoNormal" style="text-align: center;" align="center">воскресенье</p>\r\n</td>\r\n<td style="width: 103.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="138">\r\n<p class="MsoNormal">Бабуро Сергей Леонидович-заместитель директора</p>\r\n<p class="MsoNormal">54-1-50</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 0, 0, 8, '2012-03-20 18:29:02', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:29:02', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 2, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jmi31_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(4, 39, 'Участок теплового хозяйства', 'the-plot-of-thermal-management', '', '<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><strong><span style="font-size: 18pt; color: black;">Начальник – Гома Светлана Адамовна, </span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><strong><span style="font-size: 18pt; color: black;">тел.(8-01715)54-1-50</span></strong></p>\r\n<p> </p>\r\n<p class="MsoBodyTextIndent" style="margin-left: 0cm; text-align: justify;"><strong><span style="font-size: 20pt; font-family: ''Monotype Corsiva''; color: #c0504d;"> </span></strong></p>\r\n<p> </p>\r\n<table class="MsoNormalTable" style="margin-left: -24.4pt; border-collapse: collapse;" width="761" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr style="page-break-inside: avoid; height: 45.05pt;">\r\n<td style="width: 107.8pt; border: 1pt solid windowtext; padding: 0cm 5.4pt; height: 45.05pt;" rowspan="2" width="144">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt;"><span style="font-size: 11pt;">Местонахождение котельной</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 45.05pt;" rowspan="2" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt;"><span style="font-size: 11pt;">Установленный тип котлов</span></p>\r\n</td>\r\n<td style="width: 99.2pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 45.05pt;" colspan="2" width="132">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Основной вид используемого топлива</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 45.05pt;" rowspan="2" width="57">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt;"><span style="font-size: 11pt;">Присоединенная нагрузка на отопление,Гкал/ч</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: 1pt 1pt medium medium; border-style: solid solid none none; border-color: windowtext windowtext -moz-use-text-color -moz-use-text-color; padding: 0cm 5.4pt; height: 45.05pt;" rowspan="2" width="362">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Количество и наименование объектов, которые отапливаются от теплоисточников</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 70.45pt;">\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 70.45pt;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">основной</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 70.45pt;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">резервный</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" width="144">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">1</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">2</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">3</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">4</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">5</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">6</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Центральная котельная </span></p>\r\n<p class="MsoNormal"><span style="font-size: 11pt;">г.Березино, ул.Победы, 60</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt;"><span style="font-size: 11pt;">ДЕ 25/14-ГМ (</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">газ</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">мазут</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="margin-right: 6.8pt; text-align: center;" align="center"><span style="font-size: 11pt;">13,42</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">4 общежития, СШ №1, школа-интернат, 5 детсадов, дом культуры, 7 магазинов, гостиница, 12 других организаций, 19 5-этажных жилых домов-1108 квартир, 8 4-этажных домов-328 квартир, 4 3-этажных дома-95 квартир, 13 2-этажных домов-190 квартир, 9 ЖСК,<span>  </span>21 дом усадебного и коттеджного типа</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная ЦРБ г.Березино, ул. Марии Романович,6</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">КВ-РМ-1</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">КВ-РМ-2 </span></p>\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">(2ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">древ отх.</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin-right: 78.8pt; text-align: center;" align="center"><span style="font-size: 11pt;"> </span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">1,29</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Березинская ЦРБ, 12 домов усадебного и коттеджного типа</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal" style="margin-right: 21.6pt;"><span style="font-size: 11pt;">Котельная<span>  </span>ПМС г.Березино, ул. М.Романович, 15</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">КВ-РМ-2</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">древ отх.</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;"> </span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">2,15</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Общежитие, школа искусств, спортшкола, СШ №3, котельная, 28 домов усадебного и коттеджного типа</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная гор.бани г.Березино, ул. Октябрьская,65</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">Минск-1</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">(4ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">торфобрик</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">0,55</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">1 двухэтажный жилой дом, 16 квартир, городская баня, здание суда, 5 домов усадебного типа</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная д/с №5 г.Березино, ул, Мультана,94</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">Минск-1</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">торфобрик</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">0,25</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">1 общежитие</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная д.Гл.Ток д.Гл.Ток, пер. Заводской,8</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">ТЭМ-100</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;"> </span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">0,120</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">1 трехэтажный жилой дом</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная ТБЗ г.Березино, ул. М.Романович, 4</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt;"><span style="font-size: 11pt;">Минск1(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">Энергия(3ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">торфобрик.</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">В резерве</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;"> </span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная Селибской СШ</span></p>\r\n<p class="MsoNormal"><span style="font-size: 11pt;">д.Селиба</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Универсал-6</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">торфобрик.</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">0,284</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Средняя школа</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная Гореничской СШ</span></p>\r\n<p class="MsoNormal"><span style="font-size: 11pt;">д.Гореничи</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Универсал-6</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">торфобрик.</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">0,284</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Средняя школа</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная Капланецкой СШ</span></p>\r\n<p class="MsoNormal"><span style="font-size: 11pt;">д.Капланцы</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Универсал-6</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">торфобрик.</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">0,284</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Средняя школа</span></p>\r\n</td>\r\n</tr>\r\n<tr style="page-break-inside: avoid; height: 2cm;">\r\n<td style="width: 107.8pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 2cm;" width="144">\r\n<p class="MsoNormal"><span style="font-size: 11pt;">Котельная Березинской <span> </span>СШ</span></p>\r\n<p class="MsoNormal"><span style="font-size: 11pt;">№2</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Универсал-6</span></p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">(</span><span style="font-size: 11pt;" lang="EN-US">2</span><span style="font-size: 11pt;">ед)</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">дрова</span></p>\r\n</td>\r\n<td style="width: 49.6pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="66">\r\n<p class="MsoNormal" style="margin: 0cm 5.65pt 0.0001pt; text-align: center;" align="center"><span style="font-size: 11pt;">торфобрик.</span></p>\r\n</td>\r\n<td style="width: 42.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="57">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">0,284</span></p>\r\n</td>\r\n<td style="width: 271.45pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 2cm;" width="362">\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 11pt;">Средняя школа №2</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p class="MsoNormal"> </p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 14pt;"><span> </span></span><span style="font-size: 15pt;">Протяженность тепловых сетей в 1-трубном исчислении – 42,4 км.<span>  </span>На 2011 год было запланировано произвести 1,522 км тепловых сетей предварительно изолированными трубами. На данный момент заменено тепловых сетей в 1-трубном исчислении 1,76 км (115,6% от плана).</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;"><span>   </span>Работа были<span>  </span>произведены по замене тепловых сетей на 5-ти объектах.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;">Ул.М.Романович (район ЦРБ) - общая длина теплотрассы 347м.п., произведена замена 256м.п. на сумму 210 млн.руб.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;"><span> </span>Ул.Победы ( от УТ8 до УТ17) – общая длина теплотрассы 748м.п., произведена замена 532 м.п.на сумму 1 889,0 млн.руб.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;">Ул.Победы (от УТ17 до УТ18-район РОВД) – общая длина теплотрассы 320 м.п., произведена замена 283 м.п. на сумму 615,4 млн.руб.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;">Ул.Победы (УТ22-УТ25)(район магазина «Мэта»)- – общая длина теплотрассы 369м.п.,<span>    </span>произведена замена 369 м.п. на сумму 247,6 млн.руб.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;">Ул.Зеленая-– общая длина теплотрассы 320м.п., произведена замена 320м.п.. на сумму 90,9 млн.руб.</span></p>\r\n<p> </p>', '', 1, 0, 0, 9, '2012-03-20 18:30:47', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:30:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 3, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jmi31_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(5, 40, 'Участок  водопотребления  и водоотведения', 'plot-of-water-consumption-and-wastewater', '', '<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><strong><span style="font-size: 18pt; color: black;">Начальник – Жавнерович Дмитрий Александрович, </span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><strong><span style="font-size: 18pt; color: black;">тел.(8-01715)58-1-79</span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="margin-left: -7.1pt; text-align: justify;"><span style="font-size: 14pt;"><span>   </span>На 01.01.2011г. на балансе предприятия находятся 11 артскважин,1 водонапорная башня, 34 км водопроводных<span>  </span>сетей в городе, и в сельских населенных пунктах - 62 артскважина, 41 водопроводная башня, 132,3 км. водопроводных сетей. Канализационные сети на балансе РКУПП "Березинское ЖКХ" имеют протяженность 25 км. Протяженность главного коллектора<span>   </span>16,4 км., 9 насосных станций. <span>  </span><span>       </span></span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; line-height: 15pt; background: none repeat scroll 0% 0% #f8f8f8;"><span style="font-size: 15pt;"><span>   </span></span><span style="font-size: 14pt;">В<span>   </span>соответствии с постановлением Совета Министров Республики Беларусь от 28 сентября 2011 г. № 1300<span>    </span></span><span style="font-size: 14pt;" lang="EN-US">c</span><span style="font-size: 14pt;"> 1 октября<span>  </span><span style="color: black;">те потребители услуг центрального водоснабжения, у которых установлены приборы индивидуального учета расхода воды, будут платить за объем воды, потребленный в пределах 140 литров в сутки на одного проживающего, зарегистрированного по месту жительства</span> независимо от того, на какие нужды будет использоваться вода (на собственные нужды, на полив огорода, на содержание скота, птиц, животных и т.п.)<span style="color: black;">, по низким тарифам, установленным для населения:  585 рублей за один кубический метр воды и 305 рублей за один кубический метр канализации, что в сумме составляет 890 рублей.</span><span>  </span><span style="color: black;"><span> </span></span></span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; line-height: 15pt; background: none repeat scroll 0% 0% #f8f8f8;"><span style="font-size: 14pt; color: black;"><span>  </span>А вот за потребленную свыше этого лимита воду уже придется платить по тарифу, обеспечивающему полное возмещение экономически обоснованных затрат на их оказание. Это 1440,9 рубля за кубический метр воды и 1105 рублей за кубический метр канализации – то есть, в сумме получается 2545,9 рубля.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; text-indent: 35.45pt;"><span style="font-size: 15pt;">В связи с этим для начисления платы за услуги водоснабжения, водоотведения (канализации) по новому механизму<span>   </span>в счет-извещениях кроме<span>  </span>отражения начислений в пределах 140 литров в сутки<span>      </span>дополнительно будет введена отдельно строка<span>  </span>и<span>  </span>за сверхнормативное потребление.<span>  </span></span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; line-height: 15pt; background: none repeat scroll 0% 0% #f8f8f8;"><strong><span style="font-size: 14pt; color: black; font-weight: normal;">Например, в квартире зарегистрирован один человек. Предположим, что за месяц (30 дней)<span>  </span>он использовал 5 м3 воды. К оплате ему будет предъявлено за услуги водопотребления и водоотведения: </span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; line-height: 15pt; background: none repeat scroll 0% 0% #f8f8f8;"><span style="font-size: 14pt; color: black;">0,140 м3 в сутки х 1 чел. х 30 дней = 4,2 м3. Этот объем жилец будет оплачивать по низкому тарифу, который составляет 890 рублей за 1 м3 (4,2 м3 х 890 руб. = 3 738 руб.).</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; line-height: 15pt; background: none repeat scroll 0% 0% #f8f8f8;"><span style="font-size: 14pt; color: black;">Оставшиеся сверхнормативные кубометры (5 – 4,2 = 0,8 м3) необходимо будет оплатить по более высокому тарифу – 2545,9 рубля за 1 м3, что составит 0,8 м3 х 2545,9 руб. = 2 036,72 рубля.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; line-height: 15pt; background: none repeat scroll 0% 0% #f8f8f8;"><span style="font-size: 14pt; color: black;">Получается, что общая сумма платежа за услуги водоснабжения и водоотведения (канализации) составит: 3 738 руб. +2 036,7 руб.=5 775 рублей.</span></p>\r\n<p><span style="font-size: 14pt; font-family: ''Times New Roman'',''serif''; color: black;">Такое разграничение в оплате <span> </span>обосновано. Удельный вес электроэнергии в себестоимости услуги водоснабжения достаточно велик и составляет более 30 процентов, при этом тариф на электрическую энергию возрос за 2011 год для организаций жилищно-коммунального хозяйства более чем в 1,5 раза. Отсюда и необходимость заставить людей экономить. Введение дифференцированной оплаты приведет к снижению объемов потребления воды населением. Соответственно, снизятся и затраты жилищно-коммунального хозяйства на оплату электрической энергии, налога на добычу. Получается, что введение дифференцированных тарифов на услуги водоснабжения и водоотведения должны <span> </span>не только <span> </span><span> </span>стимулировать жильцов более рационально пользоваться этими услугами, но и реально сократить расходы местного бюджета на их предоставление.</span></p>', '', 1, 0, 0, 9, '2012-03-20 18:32:56', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:32:56', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 41, 'Жилищное хозяйство ', 'housing', '', '<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><span style="font-size: 18pt; color: black;">Начальник <span> </span>ЖЭУ-Сасковец Виталий Викторович,</span><strong></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><strong><span style="font-size: 18pt; color: black;">тел.(8-01715) 5-50-28</span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><strong><span style="font-size: 18pt; font-family: ''Monotype Corsiva''; color: black;"> </span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;"><span>  </span>На техническом обслуживании РКУПП «Березинское ЖКХ» находится 118многоквартирных жилых домов (1 многоквартирный жилой дом был принят на баланс в январе месяце 2011г..), 2 113 квартир и 31 одноквартирный жилой дом,. К системе центрального отопления подключено 121 жилой дом.</span></p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 15pt;"><br /></span></p>\r\n<p> </p>', '', 1, 0, 0, 9, '2012-03-20 18:35:00', 42, '', '2012-03-20 18:35:15', 42, 0, '0000-00-00 00:00:00', '2012-03-20 18:35:00', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 0, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 42, 'Участки благоустройства , озеленения, санитарной очистки.', 'areas-of-improvement,-landscaping,-sanitation', '', '<p> </p>\r\n<p class="MsoNormal"><span>Участок благоустройства и озеленения организует работу по наведению порядка на земле, благоустройству дорог и тротуаров, озеленению города, уходу за зелеными насаждениями.</span><strong></strong></p>\r\n<p> </p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; text-indent: 27pt;"><span style="font-size: 14pt;">Протяженность улиц и дорог г. Березино составляет 67,49 км, из них с асфальтированным покрытием 33,62 км, с гравийным покрытием – 19,485 км.,<span>    </span>без покрытия- 14,385 км.. Протяженность тротуаров<span>  </span>- 31,1 км, из них замощенных плиткой – 8,5 км.;</span><span style="font-size: 15pt;">116 улиц и переулков, 3 сквера и 1 парк.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 14pt;"> </span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; text-indent: 35.45pt;"><span style="font-size: 14pt;">Для вывоза ТБО от населения и предприятий г. Березино и Березинского района в РКУПП "Березинского ЖКХ" имеется семь единиц техники.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 14pt;"><span> </span>Для вывоза ЖБО РКУПП "Березинское ЖКХ"<span>  </span>имеет на своем балансе<span>  </span>три ассенизационные автомашины.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 14pt;"><span>         </span>Сбор твердых коммунальных отходов с сельских населенных пунктов, агрогородков, частного сектора города осуществляется<span>     </span>мусоровозом с задней загрузкой, <span> </span>согласно утвержденной схеме обращения с отходами.<span>  </span></span></p>\r\n<p> </p>', '', 1, 0, 0, 9, '2012-03-20 18:36:15', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:36:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 3, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 43, 'График вывоза мусора с Березинского района', 'schedule-of-debris-removal-from-the-area-of-berezinsky', '', '<p> </p>\r\n<table class="MsoNormalTable" style="border-collapse: collapse;" width="678" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 133pt; border: 1pt solid black; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"> </p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">День недели<span>  </span><span> </span>месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: black black black -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Сельский Совет</p>\r\n</td>\r\n<td style="width: 9cm; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: black black black -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal"><span> </span>Населенные <span> </span>пункты</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первый<span>  </span>понедельник</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" rowspan="6" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Березинский</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoBodyText">Пружанка,<span>  </span>Присады, Ольховка, Бриялево,<span>  </span>Положино, Тростянка</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Второй вторник <span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoBodyText">Жорновка,<span>  </span>Прибрежное, Жуковец,<span>  </span>Светлица, Краснополье, Гл.Ток д.Лешница</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Третья среда<span>   </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoBodyText">Пружанка,<span>  </span>Ольховка, Положино, Тростянка,</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Третья суббота <span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoBodyText">д.Лешница</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Четвертая суббота <span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoBodyText">д. Краснополье, Гл.Ток, Светлица, Жорновка , Прибрежное<span>  </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Второй и четвертый понедельник</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Новоселки,Слобода</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первый вторник месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" rowspan="3" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Богушевичский</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Богушевичи, Калюга1,д.Калюга2,д.Головные Ляды, Вычсокая Гора, Матылянка,.Дубовый Лог, Устье, Осмоловка, .Городище, Якшицы, Бычин.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первая среда месяца</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Едлино, Божино, Кр.Зорька, Винорово, Михалево,Перевоз,Тополь,Кр.Горка,Чижаха, Островской Перевоз, Притерпа.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Четвертая суббота месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Едлино,Божино,Кр.Зорька,Винорово, Михалево,Перевоз,Тополь,Притерпа, Островской Перевоз, Чижаха, Бычин, Якшицы, Осмоловка, Высокая Гора, Г.Ляды, Богушевичи, Калюга1.</p>\r\n</td>\r\n</tr>\r\n<tr style="height: 25.85pt;">\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 25.85pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первый четверг месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt; height: 25.85pt;" rowspan="4" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Погостский</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt; height: 25.85pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Погост,Задубровье,Клубча,Березовка,Хватовка,.Вязье,Милостово,Горуни, Лиситник, Вешевка.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первая пятница месяца</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Кукарево, Стайченко, Верхлевка, Гатец, .Василевщина, Еловка, Высокая<span>  </span>Гора, Ст.Гумны, <span> </span>Харчичи, Глинище, <span> </span>Столпы, Девяница, <span> </span>Ольшанец, Барсуки, Тыльковка.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Третья суббота месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Погост, Высокая Гора, Тыльковка, Вассилевщина, Вешевка<span>    </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Второй<span>  </span>и четвертый понедельник месяца</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Журовка., Селище</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Третий четверг месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" rowspan="4" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Поплавский</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Красный Берег, Гута, Негоничи, Поплавы, Борки, <span> </span>Костовщина, <span> </span>Мартияновка,<span>  </span>Подваложка,<span>  </span>Домашки,<span>  </span>Заболотье, Новины, .Ст.Будков.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Третья пятница месяца</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Заямное,Кр.Поляна,.Сосн.Болото, Смолярня, Микуличи, Кр.Сад, Крынки, Павловка,М.Логи, Калинино, Ком .Сад, Купы, Зел.Гай, Погулянка, .Кр.Дар, Б.Логи, Жеремец.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первая суббота месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Негоничи , Поплавы, Микуличи, Мартияновка, Подваложка, Домашки, Новины.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первый понедельник месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Жеремец, Большие Логи, Малые Логи, Калинино,<span>  </span>Павловка.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Второй<span>   </span>понедельник месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" rowspan="2" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Дмитровичский</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal"><span> </span>Шеверничи, Дмитровичи, Белавичи, Михеевичи, Красное, Каранец, Новоселье, Манча,Орешковичи,<span>  </span>Прудок, Лесковичи, <span> </span><span> </span><span> </span><span> </span><span> </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span>  </span>Четвертый понедельник месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal"><span> </span>Шеверничи, Дмитровичи,<span>  </span>Новоселье, Манча,Орешковичи,<span>  </span>Прудок, Лесковичи, <span> </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Второй вторник месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" rowspan="3" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Капланецкий</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Вязькутин1,Руденка, Дубровка, Вязькутин2, Васильевка, Матевичи, Голынка, Каменный Борок</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Вторая среда месяца<span>  </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Гурещина, Косовка, Гореничи, Красный Угол, Красный Бор, Августово, Капланцы.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Четвертый вторник месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Гурещина, Августова, Гореничи, Косовка, Каменный Борок, Матевичи, Капланцы.</p>\r\n</td>\r\n</tr>\r\n<tr style="height: 59.6pt;">\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 59.6pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Вторая пятница месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt; height: 59.6pt;" rowspan="2" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Селибский</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt; height: 59.6pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Жалино, Барсучина, Маевка, Колос, Путьково, Местино, Селиба, Мирославка, Красный Пахарь,<span>  </span>Ильинка, Налазы,<span>  </span>Подкамень, Остравки,<span>  </span>Восход, Бродец, Крапивня, Осово.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Четвертая пятница месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Восход, Бродец, Крапивня, Осово, Путьково, Местино, Селиба.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Третья среда месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" rowspan="2" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Ушанский</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Грады, Старая Мощеница, Новая Мощеница, Уша, Колюжица, Осово, Старая Князевка, Новая Князевка, Ляжино, Боровино, Беличаны, Кленовка, Котово.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Первый понедельник месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Старая Мощеница, Новая Мощеница,<span>  </span>Уша,<span>  </span>Осово,<span>  </span>Котово,<span>  </span>Боровино,<span>  </span>Ляжино,<span>  </span><span> </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Четвертая среда месяца</p>\r\n</td>\r\n<td style="width: 120.5pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" rowspan="3" valign="top" width="161">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Маческий</p>\r\n<p class="MsoNormal" style="margin-right: -5.4pt;"><span> </span></p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Любушаны, .Вьюновка, Карбовское, Нестеровка, Дулебы, Боровица, Забродье, Рубеж, Быковичи, Калиновка.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Четвертый четверг месяца</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">Д.Волы, Старые Приборки, Новые Приборки, Дубровка,<span>  </span>Березовка,<span>  </span>Козлов Берег, Маческ, Хутор, Гужик, Лосевка,<span>  </span>Ягодка, Тересино,<span>  </span>Журовок.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 133pt; border-right: 1pt solid black; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color black black; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="177">\r\n<p class="MsoNormal" style="margin-right: -5.4pt;">Вторая суббота месяца (повторно)</p>\r\n</td>\r\n<td style="width: 9cm; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color black black -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="340">\r\n<p class="MsoNormal">д.Волы, Старые Приборки, Дубровка, Березовка, Козлов Берег, Маческ, Дулебы, Любушаны, Быковичи, Калиновка.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 0, 0, 8, '2012-03-20 18:37:22', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:37:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `jmi31_content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(9, 44, 'График вывоза мусора с г.Березино.', 'schedule-of-garbage-collection-with-g-berezino', '', '<p> </p>\r\n<table class="MsoNormalTable" style="border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="width: 175.5pt; border: 1pt solid windowtext; padding: 0cm 5.4pt;" valign="top" width="234">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Первая<span>  </span>суббота<span>  </span>и<span>   </span>третий<span>   </span>вторник<span>  </span>месяца</p>\r\n</td>\r\n<td style="width: 345.55pt; border-width: 1pt 1pt 1pt medium; border-style: solid solid solid none; border-color: windowtext windowtext windowtext -moz-use-text-color; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="461">\r\n<p class="MsoNormal" style="text-align: justify;">ул.Промышленная, Шумского, Северная, Ю.Гагарина, М.Танка,<span>  </span>Коммунистическая, Нехая, Ваньковича, Озерная,<span>  </span>Я.Купалы, Крупской, М.Горького, К.Маркс, пер.К.Маркса, ул.Колхозная.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 175.5pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="234">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Вторая суббота<span>   </span>и<span>  </span>четвертый<span>   </span>вторник<span>   </span>месяца</p>\r\n</td>\r\n<td style="width: 345.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="461">\r\n<p class="MsoNormal" style="text-align: justify;">ул.Ленинская, пер.Ленинский, ул.Советская, Набережная, Хонинова, Ульянова, пер.Ульянова, пер.Лесной, ул.Юбилейная, Соколовского, пер.Соколовского, ул.Карканицы.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 175.5pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="234">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Третья суббота и первый<span>  </span>вторник месяца</p>\r\n</td>\r\n<td style="width: 345.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="461">\r\n<p class="MsoNormal" style="text-align: justify;">пер.Школьный, ул.Школьная, Полевая, Игнатенко, Веселая, Нагорная, М.Романович, Пер.М.Романович, ул.Свободы, Маяковского, Красная, Пер.Маяковского.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 175.5pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="234">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Третья суббота и первый понедельник месяца</p>\r\n</td>\r\n<td style="width: 345.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="461">\r\n<p class="MsoNormal" style="text-align: justify;">ул.Мультана,1-2-3 пер.Мультана,1-2 пер.Речной,<span>   </span>ул.Луговая ,Пер.Луговой, ул.Заводская, пер.Заводской ,ул.Баранова , Восточная</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 175.5pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="234">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Четвертая суббота<span>  </span>и второй понедельник месяца</p>\r\n</td>\r\n<td style="width: 345.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="461">\r\n<p class="MsoNormal" style="text-align: justify;">ул.Я.Коласа, 1-2 пер.Я.Коласа ул.Первомайская, Пролетарская, Пионерская , пер.Пионерский , ул.К.Крапивы , Ф.Скорины , Афанасевича,<span>  </span>Кулешова, Фрунзе.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style="width: 175.5pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt;" valign="top" width="234">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Первая суббота и третий понедельник</p>\r\n</td>\r\n<td style="width: 345.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt;" valign="top" width="461">\r\n<p class="MsoNormal" style="text-align: justify;">ул. Красина, Интернациональная,<span>  </span>Новобазарная , пер. Энгельса, ул. Энгельса,<span>  </span>Алешкевича , пер.Алешкевича , Калинина, Пушкина</p>\r\n</td>\r\n</tr>\r\n<tr style="height: 87.15pt;">\r\n<td style="width: 175.5pt; border-right: 1pt solid windowtext; border-width: medium 1pt 1pt; border-style: none solid solid; border-color: -moz-use-text-color windowtext windowtext; -moz-border-top-colors: none; -moz-border-right-colors: none; -moz-border-bottom-colors: none; -moz-border-left-colors: none; -moz-border-image: none; padding: 0cm 5.4pt; height: 87.15pt;" valign="top" width="234">\r\n<p class="MsoNormal" style="text-align: center;" align="center">Вторая суббота и четвертый понедельник месяца</p>\r\n</td>\r\n<td style="width: 345.55pt; border-width: medium 1pt 1pt medium; border-style: none solid solid none; border-color: -moz-use-text-color windowtext windowtext -moz-use-text-color; padding: 0cm 5.4pt; height: 87.15pt;" valign="top" width="461">\r\n<p class="MsoBodyText">ул.Трудовая, пер.Червеньский,</p>\r\n<p class="MsoBodyText">1-2 пер.Октябрьский,ул.Парковая, Октябрьская ,Комсомольская, Красноармейская,</p>\r\n<p class="MsoBodyText">1 пер. Красноармейский, ул.Минская,1-2 пер.Минский.</p>\r\n<p class="MsoNormal" style="text-align: justify;"><strong> </strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n<p class="MsoBodyText">Упакованный<span>  </span>мусор необходимо<span>  </span>выставлять на обочину дороги по маршруту движения автотранспорта в день согласно графика<span>   </span>с 8.00. утра.</p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span>  </span>Оплату за вывоз и обезвреживание твердых коммунальных отходов необходимо<span>  </span>производить ежемесячно до 25 числа, в размере 990р.(для населения сельских населенных пунктов) и 600р. (для населения города) с каждого проживающего на расчетный счет предприятия. При оплате необходимо<span>  </span>указывать Ф.И.О., адрес проживания.<span>  </span>Тел. для справок 50295,115.</p>\r\n<p> </p>', '', 1, 0, 0, 8, '2012-03-20 18:38:11', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:38:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 8, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 46, 'Гостиница', 'hotel', '', '<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; text-indent: 35.45pt;"><span style="font-size: 14pt;">Гостиница «Березина» расположена по адресу г. Березино , ул. Октябрьская, д. 20. Здание кирпичное трех этажное построено было в 1974 году.<span>  </span>В 2006 году в результате аттестации гостинице была присвоена аттестация <span> </span><span> </span>четвертая категория. </span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify; text-indent: 35.45pt;"><span style="font-size: 14pt;">В гостинице имеется 70 мест, 38 номеров. Двухкомнатных двухместных 2 номера,, однокомнатных<span>  </span>одноместных 4 номера,<span>   </span>все остальные однокомнатные двухместные <span> </span>номера. <span> </span></span></p>\r\n<p> </p>', '', 1, 0, 0, 10, '2012-03-20 18:40:41', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:40:41', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 47, 'Баня', 'bath', '', '<p class="MsoBodyText"><!--[if gte mso 9]><xml>\r\n <o:DocumentProperties>\r\n  <o:Version>14.00</o:Version>\r\n </o:DocumentProperties>\r\n <o:OfficeDocumentSettings>\r\n  <o:TargetScreenSize>800x600</o:TargetScreenSize>\r\n </o:OfficeDocumentSettings>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:WordDocument>\r\n  <w:View>Normal</w:View>\r\n  <w:Zoom>0</w:Zoom>\r\n  <w:TrackMoves/>\r\n  <w:TrackFormatting/>\r\n  <w:PunctuationKerning/>\r\n  <w:ValidateAgainstSchemas/>\r\n  <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid>\r\n  <w:IgnoreMixedContent>false</w:IgnoreMixedContent>\r\n  <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText>\r\n  <w:DoNotPromoteQF/>\r\n  <w:LidThemeOther>RU</w:LidThemeOther>\r\n  <w:LidThemeAsian>X-NONE</w:LidThemeAsian>\r\n  <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript>\r\n  <w:Compatibility>\r\n   <w:BreakWrappedTables/>\r\n   <w:SnapToGridInCell/>\r\n   <w:WrapTextWithPunct/>\r\n   <w:UseAsianBreakRules/>\r\n   <w:DontGrowAutofit/>\r\n   <w:SplitPgBreakAndParaMark/>\r\n   <w:EnableOpenTypeKerning/>\r\n   <w:DontFlipMirrorIndents/>\r\n   <w:OverrideTableStyleHps/>\r\n  </w:Compatibility>\r\n  <w:BrowserLevel>MicrosoftInternetExplorer4</w:BrowserLevel>\r\n  <m:mathPr>\r\n   <m:mathFont m:val="Cambria Math"/>\r\n   <m:brkBin m:val="before"/>\r\n   <m:brkBinSub m:val="&#45;-"/>\r\n   <m:smallFrac m:val="off"/>\r\n   <m:dispDef/>\r\n   <m:lMargin m:val="0"/>\r\n   <m:rMargin m:val="0"/>\r\n   <m:defJc m:val="centerGroup"/>\r\n   <m:wrapIndent m:val="1440"/>\r\n   <m:intLim m:val="subSup"/>\r\n   <m:naryLim m:val="undOvr"/>\r\n  </m:mathPr></w:WordDocument>\r\n</xml><![endif]--><!--[if gte mso 9]><xml>\r\n <w:LatentStyles DefLockedState="false" DefUnhideWhenUsed="true"\r\n  DefSemiHidden="true" DefQFormat="false" DefPriority="99"\r\n  LatentStyleCount="267">\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Normal"/>\r\n  <w:LsdException Locked="false" Priority="9" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="heading 1"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 2"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 3"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 4"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 5"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 6"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 7"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 8"/>\r\n  <w:LsdException Locked="false" Priority="9" QFormat="true" Name="heading 9"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 1"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 2"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 3"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 4"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 5"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 6"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 7"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 8"/>\r\n  <w:LsdException Locked="false" Priority="39" Name="toc 9"/>\r\n  <w:LsdException Locked="false" Priority="35" QFormat="true" Name="caption"/>\r\n  <w:LsdException Locked="false" Priority="10" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Title"/>\r\n  <w:LsdException Locked="false" Priority="0" Name="Default Paragraph Font"/>\r\n  <w:LsdException Locked="false" Priority="0" Name="Body Text"/>\r\n  <w:LsdException Locked="false" Priority="0" Name="Body Text Indent"/>\r\n  <w:LsdException Locked="false" Priority="11" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtitle"/>\r\n  <w:LsdException Locked="false" Priority="0" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Strong"/>\r\n  <w:LsdException Locked="false" Priority="20" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="59" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Table Grid"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Placeholder Text"/>\r\n  <w:LsdException Locked="false" Priority="1" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="No Spacing"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 1"/>\r\n  <w:LsdException Locked="false" UnhideWhenUsed="false" Name="Revision"/>\r\n  <w:LsdException Locked="false" Priority="34" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="List Paragraph"/>\r\n  <w:LsdException Locked="false" Priority="29" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Quote"/>\r\n  <w:LsdException Locked="false" Priority="30" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Quote"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 1"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 2"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 3"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 4"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 5"/>\r\n  <w:LsdException Locked="false" Priority="60" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="61" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="62" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Light Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="63" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="64" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Shading 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="65" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="66" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium List 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="67" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 1 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="68" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 2 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="69" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Medium Grid 3 Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="70" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Dark List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="71" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Shading Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="72" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful List Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="73" SemiHidden="false"\r\n   UnhideWhenUsed="false" Name="Colorful Grid Accent 6"/>\r\n  <w:LsdException Locked="false" Priority="19" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="21" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Emphasis"/>\r\n  <w:LsdException Locked="false" Priority="31" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Subtle Reference"/>\r\n  <w:LsdException Locked="false" Priority="32" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Intense Reference"/>\r\n  <w:LsdException Locked="false" Priority="33" SemiHidden="false"\r\n   UnhideWhenUsed="false" QFormat="true" Name="Book Title"/>\r\n  <w:LsdException Locked="false" Priority="37" Name="Bibliography"/>\r\n  <w:LsdException Locked="false" Priority="39" QFormat="true" Name="TOC Heading"/>\r\n </w:LatentStyles>\r\n</xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:"Обычная таблица";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-parent:"";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin:0cm;\r\n	mso-para-margin-bottom:.0001pt;\r\n	mso-pagination:widow-orphan;\r\n	font-size:10.0pt;\r\n	font-family:"Times New Roman","serif";}\r\n</style>\r\n<![endi--><span>Баня расположена по адресу :ул.Комсамольская,27 </span></p>\r\n<p> </p>\r\n<p class="MsoBodyText"><span style="font-size: 14pt;">г. Березино.<span>  </span></span></p>\r\n<p> </p>\r\n<p class="MsoBodyText"><span style="font-size: 14pt;"><span>    </span>Всего в бане 106 помывочных мест, из них: </span></p>\r\n<p> </p>\r\n<p class="MsoBodyText"><span style="font-size: 14pt;"><span>    </span>- общее отделение на 92 помывочных места:<span>  </span></span></p>\r\n<p> </p>\r\n<p class="MsoBodyText"><span style="font-size: 14pt;"><span>                 </span>мужское<span>  </span>-<span>  </span>46 помывочных мест </span></p>\r\n<p> </p>\r\n<p class="MsoBodyText"><span style="font-size: 14pt;"><span>                </span>женское<span>  </span>-<span>   </span>46<span>  </span>помывочных мест </span></p>\r\n<p> </p>\r\n<p class="MsoNormal"><span style="font-size: 14pt;"><span>     </span>- отделение индивидуальных ванных и душевых кабин на 9 мест </span></p>\r\n<p> </p>\r\n<p class="MsoNormal"><span style="font-size: 14pt;">(ванны<span>    </span>-3<span>  </span>помывочных мест.<span>  </span>душевые кабины<span>  </span>- 6 помывочных мест).</span></p>\r\n<p> </p>\r\n<p class="MsoNormal"><span style="font-size: 14pt;"><span>     </span>- номер на 5 помывочных мест.</span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 14pt;"><span>   </span>Внутри здания бани имеются парикмахерская<span>  </span>и буфет, который занимается реализацией продовольственных товаров (имеется в наличии широкий ассортимент пива, напитков , кваса, соков и др.<span>   </span>сопутствующих товаров).</span></p>\r\n<p> </p>', '', 1, 0, 0, 10, '2012-03-20 18:41:22', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:41:22', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 0, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 48, 'Организация собственного производства', 'the-organization-s-own-production', '', '<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><strong><span style="font-size: 18pt; color: black;">Инженер –Лешукович Валерий Владимирович</span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: center; text-indent: 35.45pt;" align="center"><strong><span style="font-size: 18pt; color: black;"><span> </span>тел.(8-01715)5-50-28</span></strong></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: center;" align="center"><span style="font-size: 18pt; color: #943634;"> </span></p>\r\n<p> </p>\r\n<p class="MsoNormal" style="text-align: justify;"><span style="font-size: 14pt; color: black;"><span>    </span>На предприятии создано   подразделение, работники которого <span> </span>задействованы в производстве малых железобетонных форм (изготовление декоративного железобетонного забора); Цель их создания: получение предприятием дополнительной прибыли, расширение рынка услуг для населения, создание дополнительных рабочих мест. <span> </span></span></p>\r\n<p> </p>', '', 1, 0, 0, 2, '2012-03-20 18:42:14', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-03-20 18:42:14', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 49, 'Контактная информация', 'contacts', '', '<div class="column-data">\r\n<ul>\r\n<li><address>г. Березино, ул. Промышленная 7</address></li>\r\n<li><span><em class="icon icon-mobile-phone"></em>8-01715-54150</span></li>\r\n<li><span><em class="icon icon-email"></em>beresinogkh@tut.by</span></li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<h4>Директор</h4>\r\n</li>\r\n<li>Макович Геннадий Дмитриевич</li>\r\n<li><span><em class="icon icon-mobile-phone"></em>8-01715-55467</span></li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<h4>Главный бухгалтер</h4>\r\n</li>\r\n<li>Бурая Виктория Владимировна</li>\r\n<li><span><em class="icon icon-mobile-phone"></em>8-01715-55701</span></li>\r\n</ul>\r\n<ul>\r\n<li>\r\n<h4>Главный инженер</h4>\r\n</li>\r\n<li>Линич Василий Владимирович</li>\r\n<li><span><em class="icon icon-mobile-phone"></em>8-01715-55109</span></li>\r\n</ul>\r\n</div>', '', 1, 0, 0, 2, '2012-03-22 18:57:09', 42, '', '2012-03-22 19:17:08', 42, 0, '0000-00-00 00:00:00', '2012-03-22 18:57:09', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 0, 0, '', '', 1, 23, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 53, '__404__', '__404__', '__404__', '<h1>Плохи дела: мы не можем найти эту страницу!</h1><p>Вы запросили<strong>{%sh404SEF_404_URL%}</strong>, но как наши серверы ни старались, мы не смогли ее найти. Что случилось?</p><ul><li>ссылка, на которую Вы щелкнули чтобы прибыть сюда, содержит опечатку</li><li>или эта страница была каким-то образом либо удалена, либо переименована нами</li><li>или, что конечно же маловероятно, Вы вводили ее вручную и при этом допустили небольшую ошибку?</li></ul><h4>{sh404sefSimilarUrlsCommentStart}Впрочем, на этом мир не кончается: Вас, возможно, заинтересуют следующие страницы на нашем сайте:{sh404sefSimilarUrlsCommentEnd}</h4><p>{sh404sefSimilarUrls}</p><p> </p>', '', 1, 0, 0, 11, '2012-03-22 20:48:39', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '{"menu_image":"-1","show_title":"0","show_section":"0","show_category":"0","show_vote":"0","show_author":"0","show_create_date":"0","show_modify_date":"0","show_pdf_icon":"0","show_print_icon":"0","show_email_icon":"0","pageclass_sfx":""', 1, 0, 0, '', '', 1, 3, '', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jmi31_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_content_frontpage`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_content_rating`
--

CREATE TABLE IF NOT EXISTS `jmi31_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jmi31_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_extensions`
--

CREATE TABLE IF NOT EXISTS `jmi31_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10016 ;

--
-- Dumping data for table `jmi31_extensions`
--

INSERT INTO `jmi31_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MAILTO_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"legacy":false,"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_BANNERS_XML_DESCRIPTION","group":""}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_checkin","type":"component","creationDate":"Unknown","author":"Joomla! Project","copyright":"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTACT_XML_DESCRIPTION","group":""}', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_languages","type":"component","creationDate":"2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"ru-RU","site":"ru-RU"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MEDIA_XML_DESCRIPTION","group":""}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '{"admin_mail_template":"\\u041f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044c \\u0441 \\u0438\\u043c\\u0435\\u043d\\u0435\\u043c %name% \\u0441 \\u043e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438 %factory% \\u043f\\u0440\\u0438\\u0441\\u043b\\u0430\\u043b \\u0441\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435: %message% \\u041e\\u043d \\u0443\\u043a\\u0430\\u0437\\u0430\\u043b \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0439 \\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u044b\\u0439 \\u0442\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d: %phone%.  \\u0415\\u0433\\u043e e-mail: %e-mail%","user_mail_template":"\\u0417\\u0434\\u0440\\u0430\\u0432\\u0441\\u0442\\u0432\\u0443\\u0439\\u0442\\u0435!  \\r\\n\\r\\n\\u0412\\u044b \\u043e\\u0441\\u0442\\u0430\\u0432\\u0438\\u043b\\u0438 \\u043d\\u0430 \\u0441\\u0430\\u0439\\u0442\\u0435 %baseUrl% \\u0441\\u043b\\u0435\\u0434\\u0443\\u044e\\u0449\\u0438\\u0435 \\u0434\\u0430\\u043d\\u043d\\u044b\\u0435:  \\r\\n\\r\\n   \\u041e\\u0440\\u0433\\u0430\\u043d\\u0438\\u0437\\u0430\\u0446\\u0438\\u0438:     %factory%; \\r\\n   \\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u043d\\u043e\\u0435 \\u043b\\u0438\\u0446\\u043e: %name%; \\r\\n   E-mail:          %e-mail%; \\r\\n   \\u0422\\u0435\\u043b\\u0435\\u0444\\u043e\\u043d:         %phone%; \\r\\n   C\\u043e\\u043e\\u0431\\u0449\\u0435\\u043d\\u0438\\u0435: %message%\\r\\n\\r\\n\\r\\n\\u0410\\u0434\\u043c\\u0438\\u043d\\u0438\\u0441\\u0442\\u0440\\u0430\\u0446\\u0438\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430 \\u0411\\u0435\\u0440\\u0435\\u0437\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u0416\\u041a\\u0425.","desc_text":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_SEARCH_XML_DESCRIPTION","group":""}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"legacy":false,"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '{"legacy":false,"name":"com_weblinks","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_WEBLINKS_XML_DESCRIPTION","group":""}', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONTENT_XML_DESCRIPTION","group":""}', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"legacy":false,"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_USERS_XML_DESCRIPTION","group":""}', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"COM_FINDER_XML_DESCRIPTION","group":""}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '{"legacy":false,"name":"PHPMailer","type":"library","creationDate":"2008","author":"PHPMailer","copyright":"Copyright (C) PHPMailer.","authorEmail":"","authorUrl":"http:\\/\\/phpmailer.codeworxtech.com\\/","version":"2.5.0","description":"LIB_PHPMAILER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '{"legacy":false,"name":"SimplePie","type":"library","creationDate":"2008","author":"SimplePie","copyright":"Copyright (C) 2008 SimplePie","authorEmail":"","authorUrl":"http:\\/\\/simplepie.org\\/","version":"1.0.1","description":"LIB_SIMPLEPIE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"legacy":false,"name":"phputf8","type":"library","creationDate":"2008","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"2.5.0","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"Joomla! Web Application Framework","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"LIB_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters.\\n\\t\\tAll rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_RELATED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_weblinks","type":"module","creationDate":"July 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WEBLINKS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"legacy":false,"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"legacy":false,"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"legacy":false,"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FINDER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_FEED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LATEST_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_MENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_STATUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TITLE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"legacy":false,"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"1.7.1","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":""}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"legacy":false,"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"MOD_VERSION_XML_DESCRIPTION","group":""}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":""}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"legacy":false,"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"legacy":false,"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LDAP_XML_DESCRIPTION","group":""}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":""}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_geshi","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"","authorUrl":"qbnz.com\\/highlighter","version":"2.5.0","description":"PLG_CONTENT_GESHI_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":""}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":""}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":""}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '{"legacy":false,"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_VOTE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"1.0","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":""}', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_none","type":"plugin","creationDate":"August 2004","author":"Unknown","copyright":"","authorEmail":"N\\/A","authorUrl":"","version":"2.5.0","description":"PLG_NONE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2011","author":"Moxiecode Systems AB","copyright":"Moxiecode Systems AB","authorEmail":"N\\/A","authorUrl":"tinymce.moxiecode.com\\/","version":"3.4.7","description":"PLG_TINY_XML_DESCRIPTION","group":""}', '{"mode":"1","skin":"0","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '{"legacy":false,"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"legacy":false,"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_READMORE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '{"legacy":false,"name":"plg_search_weblinks","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION","group":""}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_P3P_XML_DESCRIPTION","group":""}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"legacy":false,"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CACHE_XML_DESCRIPTION","group":""}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":""}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `jmi31_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_LOG_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REDIRECT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SEF_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"legacy":false,"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":""}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"legacy":false,"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2009 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":""}', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '{"legacy":false,"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":""}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"legacy":false,"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"legacy":false,"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"legacy":false,"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"legacy":false,"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 1, 1, 0, '{"legacy":false,"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":""}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"legacy":false,"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(446, 'plg_finder_weblinks', 'plugin', 'weblinks', 'finder', 0, 1, 1, 0, '{"legacy":false,"name":"plg_finder_weblinks","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"PLG_FINDER_WEBLINKS_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(500, 'atomic', 'template', 'atomic', '', 0, 1, 1, 0, '{"legacy":false,"name":"atomic","type":"template","creationDate":"10\\/10\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"2.5.0","description":"TPL_ATOMIC_XML_DESCRIPTION","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 'beez_20', 'template', 'beez_20', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez_20","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ2_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"legacy":false,"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"hathor@tarrconsulting.com","authorUrl":"http:\\/\\/www.tarrconsulting.com","version":"2.5.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":""}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(505, 'beez5', 'template', 'beez5', '', 0, 1, 1, 0, '{"legacy":false,"name":"beez5","type":"template","creationDate":"21 May 2010","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"2.5.0","description":"TPL_BEEZ5_XML_DESCRIPTION","group":""}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","html5":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"legacy":false,"name":"English (United Kingdom)","type":"language","creationDate":"2008-03-15","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"files_joomla","type":"file","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2012 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"2.5.1","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(800, 'PKG_JOOMLA', 'package', 'pkg_joomla', '', 0, 1, 1, 1, '{"legacy":false,"name":"PKG_JOOMLA","type":"package","creationDate":"2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"http:\\/\\/www.joomla.org","version":"2.5.0","description":"PKG_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'RussianPhocaGallery3.1.5', 'language', 'ru-RU', '', 0, 1, 0, 0, '{"legacy":true,"name":"Russian Phoca Gallery 3.1.5","type":"language","creationDate":"2012-03-04","author":"Andrey Lifanov","copyright":"","authorEmail":"","authorUrl":"www.rifmaplet.ru","version":"3.1.5","description":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a \\u0434\\u043b\\u044f (site) Phoca Gallery 3.1.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'RussianPhocaGallery3.1.5', 'language', 'ru-RU', '', 1, 1, 0, 0, '{"legacy":true,"name":"Russian Phoca Gallery 3.1.5","type":"language","creationDate":"2012-03-04","author":"Andrey Lifanov","copyright":"","authorEmail":"","authorUrl":"www.rifmaplet.ru","version":"3.1.5","description":"\\u0420\\u0443\\u0441\\u0441\\u043a\\u0438\\u0439 \\u044f\\u0437\\u044b\\u043a \\u0434\\u043b\\u044f (administrator) Phoca Gallery 3.1.5","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'ru-RU', 'package', 'pkg_ru-RU', '', 0, 1, 1, 0, '{"legacy":false,"name":"Russian Language Pack","type":"package","creationDate":"Unknown","author":"Unknown","copyright":"","authorEmail":"","authorUrl":"","version":"2.5.1.3","description":"Joomla 2.5 Russian Language Package","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'berezinogkh', 'template', 'berezinogkh', '', 0, 1, 1, 0, '{"legacy":false,"name":"berezinogkh","type":"template","creationDate":"20 Martch 2012","author":"Slava Poddubsky","copyright":"Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.","authorEmail":"cheslav.p@tut.byvi","authorUrl":"","version":"2.5.0","description":"\\u0428\\u0430\\u0431\\u043b\\u043e\\u043d \\u0434\\u043b\\u044f \\u0441\\u0430\\u0439\\u0442\\u0430 \\u0411\\u0435\\u0440\\u0435\\u0437\\u0438\\u043d\\u0441\\u043a\\u043e\\u0433\\u043e \\u0416\\u041a\\u0425","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'com_feedback', 'component', 'com_feedback', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'com_phocagallery', 'component', 'com_phocagallery', '', 1, 1, 0, 0, '{"legacy":false,"name":"com_phocagallery","type":"component","creationDate":"19\\/02\\/2012","author":"Jan Pavelka (www.phoca.cz)","copyright":"Jan Pavelka","authorEmail":"","authorUrl":"www.phoca.cz","version":"3.1.5","description":"Phoca Gallery","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'sh404sef', 'component', 'com_sh404sef', '', 1, 1, 0, 0, '{"legacy":false,"name":"sh404SEF","type":"component","creationDate":"2012-01-24","author":" Yannick Gaultier","copyright":"2010 - Yannick Gaultier - Anything Digital","authorEmail":"admin@anything-digital.com","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'sh404sef control panel icon', 'module', 'mod_sh404sef_cpicon', '', 1, 1, 3, 0, '{"legacy":false,"name":"sh404sef control panel icon","type":"module","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2010 - Yannick Gaultier","authorEmail":"admin@anything-digital.com","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"Quick access icon to reach sh404sef panel and analytics\\n\\t","group":""}', '{"moduleclass_sfx":"","cache":"0","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'sh404sef - System plugin', 'plugin', 'sh404sef', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"sh404sef - System plugin","type":"plugin","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2010 - Yannick Gaultier","authorEmail":"admin@anything-digital.com","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"Sh404sef main system plugin","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10010, 'sh404sef - System mobile template switcher', 'plugin', 'shmobile', 'system', 0, 1, 1, 0, '{"legacy":false,"name":"sh404sef - System mobile template switcher","type":"plugin","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2010 - Yannick Gaultier","authorEmail":"admin@anything-digital.com","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"Switch site template for mobile devices","group":""}', '{"mobile_switch_enabled":false,"mobile_template":""}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10011, 'sh404sef - Analytics plugin', 'plugin', 'sh404sefanalytics', 'sh404sefcore', 0, 1, 1, 0, '{"legacy":false,"name":"sh404sef - Analytics plugin","type":"plugin","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2010 Yannick Gaultier","authorEmail":"admin@anything-digital.com\\t","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"Create analytics custom tags\\n\\t","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10012, 'sh404sef - Offline code plugin', 'plugin', 'sh404sefofflinecode', 'sh404sefcore', 0, 1, 1, 0, '{"legacy":false,"name":"sh404sef - Offline code plugin","type":"plugin","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2010 Yannick Gaultier","authorEmail":"admin@anything-digital.com\\t","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"Render Joomla''s offline page with the appropriate http\\tresponse code\\t","group":""}', '{"disallowAdminAccess":"0","retry_after_delay":"7400"}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10013, 'sh404sef - Similar urls plugin', 'plugin', 'sh404sefsimilarurls', 'sh404sefcore', 0, 1, 1, 0, '{"legacy":false,"name":"sh404sef - Similar urls plugin","type":"plugin","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2010 Yannick Gaultier","authorEmail":"admin@anything-digital.com\\t","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"Search for urls similar to that of the current page","group":""}', '{"max_number_of_urls":"5","min_segment_length":"3","include_pdf":"0","include_print":"0","excluded_words_sef":"__404__","excluded_words_non_sef":""}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10014, 'PLG_SH404SEFCORE_SH404SEFSOCIAL', 'plugin', 'sh404sefsocial', 'sh404sefcore', 0, 1, 1, 0, '{"legacy":false,"name":"PLG_SH404SEFCORE_SH404SEFSOCIAL","type":"plugin","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2011 Yannick Gaultier","authorEmail":"admin@anything-digital.com\\t","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"PLG_SH404SEFCORE_SH404SEFSOCIAL_XML_DESCRIPTION","group":""}', '{"enableSocialAnalyticsIntegration":"1","enableGoogleSocialEngagement":"1","onlyDisplayOnCanonicalUrl":"1","buttonsContentLocation":"onlytags","useShurl":"1","enabledCategories":"show_on_all","enableFbLike":"1","enableFbSend":"1","fbLayout":"button_count","fbAction":"like","fbShowFaces":"1","fbColorscheme":"","fbWidth":"","fbUseHtml5":"0","enableTweet":"1","tweetLayout":"none","viaAccount":"","enablePlusOne":"1","plusOneSize":"","plusOneAnnotation":"none","enableGooglePlusPage":"1","googlePlusPage":"","googlePlusCustomText":"","googlePlusCustomText2":"","googlePlusPageSize":"medium"}', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(10015, 'sh404sef - Default component support plugin', 'plugin', 'sh404sefextplugindefault', 'sh404sefextplugins', 0, 1, 1, 0, '{"legacy":false,"name":"sh404sef - Default component support plugin","type":"plugin","creationDate":"2012-01-24","author":"Yannick Gaultier","copyright":"2011 Yannick Gaultier","authorEmail":"admin@anything-digital.com\\t","authorUrl":"anything-digital.com","version":"3.4.5.1255","description":"Provide default support for sef urls and meta data","group":""}', '{}', '', '', 0, '0000-00-00 00:00:00', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_filters`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_finder_filters`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_finder_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms0`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms0`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms1`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms1`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms2`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms2`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms3`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms3`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms4`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms4`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms5`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms5`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms6`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms6`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms7`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms7`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms8`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms8`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_terms9`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_terms9`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_termsa`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_termsa`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_termsb`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_termsb`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_termsc`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_termsc`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_termsd`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_termsd`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_termse`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_termse`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_links_termsf`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_links_termsf`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_taxonomy`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jmi31_finder_taxonomy`
--

INSERT INTO `jmi31_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_taxonomy_map`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_taxonomy_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_terms`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_finder_terms`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_terms_common`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_terms_common`
--

INSERT INTO `jmi31_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren''t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn''t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_tokens`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_tokens`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_tokens_aggregate`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_finder_tokens_aggregate`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_finder_types`
--

CREATE TABLE IF NOT EXISTS `jmi31_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_finder_types`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_languages`
--

CREATE TABLE IF NOT EXISTS `jmi31_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jmi31_languages`
--

INSERT INTO `jmi31_languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `ordering`) VALUES
(1, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_menu`
--

CREATE TABLE IF NOT EXISTS `jmi31_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=145 ;

--
-- Dumping data for table `jmi31_menu`
--

INSERT INTO `jmi31_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 129, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 33, 34, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 35, 40, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 36, 37, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 38, 39, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 31, 32, 0, '*', 1),
(101, 'mainmenu', 'Главная', 'home', '', 'home', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 29, 30, 1, '*', 0),
(119, 'internet-resources', 'Сайт президента Республики Беларусь', '2012-03-22-20-09-40', 'Сайт президента Республики Беларусь', '2012-03-22-20-09-40', 'http://president.gov.by/', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 77, 78, 0, '*', 0),
(102, 'mainmenu', 'О предприятии', 'about', '', 'about', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":1,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(103, 'mainmenu', 'Контакты', 'contacts', '', 'contacts', 'index.php?option=com_content&view=article&id=13', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(120, 'internet-resources', 'Национальный правовой интернет-портал Республики Беларусь', '2012-03-22-20-10-43', 'Национальный правовой интернет-портал Республики Беларусь', '2012-03-22-20-10-43', 'http://pravo.by/', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 79, 80, 0, '*', 0),
(104, 'left-menu', 'Графики', 'графики', '', 'графики', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 56, 0, '*', 0),
(105, 'left-menu', 'График вывоза мусора', 'график-вывоза-мусора', '', 'графики/график-вывоза-мусора', 'index.php?option=com_content&view=article&id=9', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 48, 49, 0, '*', 0),
(106, 'left-menu', 'График вывоза мусора с Березинского района', 'график-вывоза-мусора-с-березинского-района', '', 'графики/график-вывоза-мусора-с-березинского-района', 'index.php?option=com_content&view=article&id=8', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(107, 'left-menu', 'График личного приема граждан должностными лицами', 'график-личного-приема-граждан-должностными-лицами', '', 'графики/график-личного-приема-граждан-должностными-лицами', 'index.php?option=com_content&view=article&id=2', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0),
(108, 'left-menu', 'График работы по принципу «одно окно»', 'график-работы-по-принципу-«одно-окно»', '', 'графики/график-работы-по-принципу-«одно-окно»', 'index.php?option=com_content&view=article&id=3', 'component', 1, 104, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 54, 55, 0, '*', 0),
(109, 'left-menu', 'Участки', 'участки', '', 'участки', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 66, 0, '*', 0),
(110, 'left-menu', 'Участок теплового хозяйства', 'участок-теплового-хозяйства', '', 'участки/участок-теплового-хозяйства', 'index.php?option=com_content&view=article&id=4', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 58, 59, 0, '*', 0),
(111, 'left-menu', 'Участок водопотребления и водоотведения', 'участок-водопотребления-и-водоотведения', '', 'участки/участок-водопотребления-и-водоотведения', 'index.php?option=com_content&view=article&id=5', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 60, 61, 0, '*', 0),
(112, 'left-menu', 'Участки благоустройства , озеленения, санитарной очистки.', 'участки-благоустройства-,-озеленения,-санитарной-очистки', '', 'участки/участки-благоустройства-,-озеленения,-санитарной-очистки', 'index.php?option=com_content&view=article&id=7', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 62, 63, 0, '*', 0),
(113, 'left-menu', 'Жилищное хозяйство ', 'жилищное-хозяйство', '', 'участки/жилищное-хозяйство', 'index.php?option=com_content&view=article&id=6', 'component', 1, 109, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 64, 65, 0, '*', 0),
(114, 'left-menu', 'Прочие объекты', 'прочие-объекты', '', 'прочие-объекты', 'index.php?option=com_content&view=category&layout=blog&id=10', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 67, 72, 0, '*', 0),
(115, 'left-menu', 'Баня', 'баня', '', 'прочие-объекты/баня', 'index.php?option=com_content&view=article&id=11', 'component', 1, 114, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 68, 69, 0, '*', 0),
(116, 'left-menu', 'Гостиница', 'гостиница', '', 'прочие-объекты/гостиница', 'index.php?option=com_content&view=article&id=10', 'component', 1, 114, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 70, 71, 0, '*', 0),
(117, 'left-menu', 'Организация собственного производства', 'организация-собственного-производства', '', 'организация-собственного-производства', 'index.php?option=com_content&view=article&id=12', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 73, 74, 0, '*', 0),
(118, 'mainmenu', 'Обратная связь', 'обратная-связь', '', 'обратная-связь', 'index.php?option=com_feedback&view=feedback', 'component', 1, 1, 1, 10005, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 76, 0, '*', 0),
(121, 'internet-resources', 'Официальный сайт Министерства жилищно-коммунального хозяйства Республики Беларусь', '2012-03-22-20-12-40', 'Официальный сайт Министерства жилищно-коммунального хозяйства Республики Беларусь', '2012-03-22-20-12-40', 'http://www.mjkx.gov.by/\r\n', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 81, 82, 0, '*', 0),
(122, 'internet-resources', 'Журнал министерства ЖКХ «Живи как хозяин»', '2012-03-22-20-13-30', 'Журнал министерства ЖКХ «Живи как хозяин»', '2012-03-22-20-13-30', 'http://www.gkhmag.by/', 'url', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 1, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 83, 84, 0, '*', 0),
(123, 'main', 'COM_PHOCAGALLERY', 'com_phocagallery', '', 'com_phocagallery', 'index.php?option=com_phocagallery', 'component', 0, 1, 1, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu.png', 0, '', 85, 110, 0, '', 1),
(124, 'main', 'COM_PHOCAGALLERY_CONTROLPANEL', 'com_phocagallery_controlpanel', '', 'com_phocagallery/com_phocagallery_controlpanel', 'index.php?option=com_phocagallery', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-control-panel.png', 0, '', 86, 87, 0, '', 1),
(125, 'main', 'COM_PHOCAGALLERY_IMAGES', 'com_phocagallery_images', '', 'com_phocagallery/com_phocagallery_images', 'index.php?option=com_phocagallery&view=phocagalleryimgs', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-gal.png', 0, '', 88, 89, 0, '', 1),
(126, 'main', 'COM_PHOCAGALLERY_CATEGORIES', 'com_phocagallery_categories', '', 'com_phocagallery/com_phocagallery_categories', 'index.php?option=com_phocagallery&view=phocagallerycs', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-cat.png', 0, '', 90, 91, 0, '', 1),
(127, 'main', 'COM_PHOCAGALLERY_THEMES', 'com_phocagallery_themes', '', 'com_phocagallery/com_phocagallery_themes', 'index.php?option=com_phocagallery&view=phocagalleryt', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-theme.png', 0, '', 92, 93, 0, '', 1),
(128, 'main', 'COM_PHOCAGALLERY_CATEGORYRATING', 'com_phocagallery_categoryrating', '', 'com_phocagallery/com_phocagallery_categoryrating', 'index.php?option=com_phocagallery&view=phocagalleryra', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote.png', 0, '', 94, 95, 0, '', 1),
(129, 'main', 'COM_PHOCAGALLERY_IMAGERATING', 'com_phocagallery_imagerating', '', 'com_phocagallery/com_phocagallery_imagerating', 'index.php?option=com_phocagallery&view=phocagalleryraimg', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-vote-img.png', 0, '', 96, 97, 0, '', 1),
(130, 'main', 'COM_PHOCAGALLERY_CATEGORYCOMMENTS', 'com_phocagallery_categorycomments', '', 'com_phocagallery/com_phocagallery_categorycomments', 'index.php?option=com_phocagallery&view=phocagallerycos', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment.png', 0, '', 98, 99, 0, '', 1),
(131, 'main', 'COM_PHOCAGALLERY_IMAGECOMMENTS', 'com_phocagallery_imagecomments', '', 'com_phocagallery/com_phocagallery_imagecomments', 'index.php?option=com_phocagallery&view=phocagallerycoimgs', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-comment-img.png', 0, '', 100, 101, 0, '', 1),
(132, 'main', 'COM_PHOCAGALLERY_USERS', 'com_phocagallery_users', '', 'com_phocagallery/com_phocagallery_users', 'index.php?option=com_phocagallery&view=phocagalleryusers', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-users.png', 0, '', 102, 103, 0, '', 1),
(133, 'main', 'COM_PHOCAGALLERY_FB', 'com_phocagallery_fb', '', 'com_phocagallery/com_phocagallery_fb', 'index.php?option=com_phocagallery&view=phocagalleryfbs', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-fb.png', 0, '', 104, 105, 0, '', 1),
(134, 'main', 'COM_PHOCAGALLERY_TAGS', 'com_phocagallery_tags', '', 'com_phocagallery/com_phocagallery_tags', 'index.php?option=com_phocagallery&view=phocagallerytags', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-tags.png', 0, '', 106, 107, 0, '', 1),
(135, 'main', 'COM_PHOCAGALLERY_INFO', 'com_phocagallery_info', '', 'com_phocagallery/com_phocagallery_info', 'index.php?option=com_phocagallery&view=phocagalleryin', 'component', 0, 123, 2, 10006, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_phocagallery/assets/images/icon-16-pg-menu-info.png', 0, '', 108, 109, 0, '', 1),
(136, 'main', 'COM_SH404SEF', 'com_sh404sef', '', 'com_sh404sef', 'index.php?option=com_sh404sef', 'component', 0, 1, 1, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_sh404sef/assets/images/menu-icon-sh404sef.png', 0, '', 111, 128, 0, '', 1),
(137, 'main', 'COM_SH404SEF_CONTROL_PANEL', 'com_sh404sef_control_panel', '', 'com_sh404sef/com_sh404sef_control_panel', 'index.php?option=com_sh404sef&c=default', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 112, 113, 0, '', 1),
(138, 'main', 'COM_SH404SEF_URL_MANAGER', 'com_sh404sef_url_manager', '', 'com_sh404sef/com_sh404sef_url_manager', 'index.php?option=com_sh404sef&c=urls&layout=default&view=urls', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 114, 115, 0, '', 1),
(139, 'main', 'COM_SH404SEF_ALIASES_MANAGER', 'com_sh404sef_aliases_manager', '', 'com_sh404sef/com_sh404sef_aliases_manager', 'index.php?option=com_sh404sef&c=aliases&layout=default&view=aliases', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 116, 117, 0, '', 1),
(140, 'main', 'COM_SH404SEF_PAGEID_MANAGER', 'com_sh404sef_pageid_manager', '', 'com_sh404sef/com_sh404sef_pageid_manager', 'index.php?option=com_sh404sef&c=pageids&layout=default&view=pageids', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 118, 119, 0, '', 1),
(141, 'main', 'COM_SH404SEF_404_REQ_MANAGER', 'com_sh404sef_404_req_manager', '', 'com_sh404sef/com_sh404sef_404_req_manager', 'index.php?option=com_sh404sef&c=urls&layout=view404&view=urls', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 120, 121, 0, '', 1),
(142, 'main', 'COM_SH404SEF_TITLE_METAS_MANAGER', 'com_sh404sef_title_metas_manager', '', 'com_sh404sef/com_sh404sef_title_metas_manager', 'index.php?option=com_sh404sef&c=metas&layout=default&view=metas', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 122, 123, 0, '', 1),
(143, 'main', 'COM_SH404SEF_ANALYTICS_MANAGER', 'com_sh404sef_analytics_manager', '', 'com_sh404sef/com_sh404sef_analytics_manager', 'index.php?option=com_sh404sef&c=analytics&layout=default&view=analytics', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 124, 125, 0, '', 1),
(144, 'main', 'COM_SH404SEF_DOCUMENTATION', 'com_sh404sef_documentation', '', 'com_sh404sef/com_sh404sef_documentation', 'index.php?option=com_sh404sef&layout=info&view=default&task=info', 'component', 0, 136, 2, 10007, 0, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '', 126, 127, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_menu_types`
--

CREATE TABLE IF NOT EXISTS `jmi31_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jmi31_menu_types`
--

INSERT INTO `jmi31_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Главное меню', 'The main menu for the site'),
(2, 'left-menu', 'Навигация по сайту', ''),
(3, 'internet-resources', 'Интернет-ресурсы', '');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_messages`
--

CREATE TABLE IF NOT EXISTS `jmi31_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jmi31_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_modules`
--

CREATE TABLE IF NOT EXISTS `jmi31_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `jmi31_modules`
--

INSERT INTO `jmi31_modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 'Главное меню', '', '', 1, 'top-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"_menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"greeting":"1","name":"0"}', 0, '*'),
(17, 'Путь по сайтк(Хлебная крошка)', '', '', 1, 'top-breadcrambs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"0","showHome":"1","homeText":"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f","showLast":"1","separator":"\\/","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(79, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(86, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(88, 'Форма поиска по сайту', '', '', 0, 'top-search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 1, '{"label":"","width":"20","text":"","button":"1","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(89, 'Левое меню-слайдер', '', '', 0, 'left-menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"left-menu","startLevel":"1","endLevel":"2","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(90, 'Контакты в подвале', '', '<h4>Наши контакты</h4>\r\n<ul>\r\n<li><address>г. Березино, ул. Промышленная 7</address></li>\r\n<li><span><em class="icon icon-mobile-phone"></em>8-01715-54150</span></li>\r\n<li><span><em class="icon icon-email"></em>beresinogkh@tut.by</span></li>\r\n</ul>', 1, 'bottom-contacts', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(91, 'Интернет-ресурсы', '', '', 1, 'left-links', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"internet-resources","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(92, 'sh404sef control panel icon', '', '', 0, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_sh404sef_cpicon', 1, 1, '', 1, '*');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jmi31_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_modules_menu`
--

INSERT INTO `jmi31_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(92, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jmi31_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_overrider`
--

CREATE TABLE IF NOT EXISTS `jmi31_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_overrider`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) NOT NULL DEFAULT '0',
  `videocode` text,
  `vmproductid` int(11) NOT NULL DEFAULT '0',
  `imgorigsize` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `extlink1` text,
  `extlink2` text,
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exttype` tinyint(1) NOT NULL DEFAULT '0',
  `extl` varchar(255) NOT NULL DEFAULT '',
  `extm` varchar(255) NOT NULL DEFAULT '',
  `exts` varchar(255) NOT NULL DEFAULT '',
  `exto` varchar(255) NOT NULL DEFAULT '',
  `extw` varchar(255) NOT NULL DEFAULT '',
  `exth` varchar(255) NOT NULL DEFAULT '',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_categories`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `owner_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `accessuserid` text,
  `uploaduserid` text,
  `deleteuserid` text,
  `userfolder` text,
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `zoom` int(3) NOT NULL DEFAULT '0',
  `geotitle` varchar(255) NOT NULL DEFAULT '',
  `extid` varchar(255) NOT NULL DEFAULT '',
  `exta` varchar(255) NOT NULL DEFAULT '',
  `extu` varchar(255) NOT NULL DEFAULT '',
  `extauth` varchar(255) NOT NULL DEFAULT '',
  `extfbuid` int(11) NOT NULL DEFAULT '0',
  `extfbcatid` varchar(255) NOT NULL DEFAULT '',
  `params` text,
  `metakey` text,
  `metadesc` text,
  `metadata` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_comments`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_fb_users`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_fb_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(255) NOT NULL DEFAULT '',
  `appsid` varchar(255) NOT NULL DEFAULT '',
  `uid` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(255) NOT NULL DEFAULT '',
  `base_domain` varchar(255) NOT NULL DEFAULT '',
  `expires` varchar(100) NOT NULL DEFAULT '',
  `session_key` text,
  `access_token` text,
  `sig` text,
  `fanpageid` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `comments` text,
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_fb_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_img_comments`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_img_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `comment` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_img_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_img_votes`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_img_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_img_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_img_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_img_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_img_votes_statistics`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_tags`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link_cat` int(11) NOT NULL DEFAULT '0',
  `link_ext` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_tags`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_tags_ref`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_tags_ref` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imgid` int(11) NOT NULL DEFAULT '0',
  `tagid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `i_imgid` (`imgid`,`tagid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_tags_ref`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_user`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0',
  `avatar` varchar(40) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_user`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_votes`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `rating` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_phocagallery_votes_statistics`
--

CREATE TABLE IF NOT EXISTS `jmi31_phocagallery_votes_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `average` float(8,6) NOT NULL DEFAULT '0.000000',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_phocagallery_votes_statistics`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_redirect_links`
--

CREATE TABLE IF NOT EXISTS `jmi31_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_redirect_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_schemas`
--

CREATE TABLE IF NOT EXISTS `jmi31_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_schemas`
--

INSERT INTO `jmi31_schemas` (`extension_id`, `version_id`) VALUES
(700, '2.5.1-2012-01-26');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_session`
--

CREATE TABLE IF NOT EXISTS `jmi31_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_session`
--

INSERT INTO `jmi31_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('4b4163f91455b6f93dd54575a18c2da8', 1, 0, '1332450681', '__default|a:8:{s:15:"session.counter";i:426;s:19:"session.timer.start";i:1332438388;s:18:"session.timer.last";i:1332450680;s:17:"session.timer.now";i:1332450681;s:22:"session.client.browser";s:76:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:10.0.2) Gecko/20100101 Firefox/10.0.2";s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":7:{s:11:"application";O:8:"stdClass":1:{s:4:"lang";s:0:"";}s:11:"com_modules";O:8:"stdClass":4:{s:7:"modules";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:18:"client_id_previous";i:0;}}s:4:"edit";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}}s:3:"add";O:8:"stdClass":1:{s:6:"module";O:8:"stdClass":2:{s:12:"extension_id";N;s:6:"params";N;}}s:9:"positions";O:8:"stdClass":4:{s:6:"filter";O:8:"stdClass":4:{s:6:"search";s:0:"";s:5:"state";s:0:"";s:8:"template";s:11:"berezinogkh";s:4:"type";s:0:"";}s:10:"limitstart";i:0;s:8:"ordercol";s:5:"value";s:9:"orderdirn";s:3:"asc";}}s:6:"global";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";s:2:"20";}}s:9:"com_menus";O:8:"stdClass":2:{s:4:"edit";O:8:"stdClass":2:{s:4:"item";O:8:"stdClass":5:{s:4:"type";N;s:4:"link";N;s:4:"data";N;s:2:"id";a:0:{}s:8:"menutype";s:18:"internet-resources";}s:4:"menu";O:8:"stdClass":2:{s:2:"id";a:0:{}s:4:"data";N;}}s:5:"items";O:8:"stdClass":2:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:18:"internet-resources";}s:10:"limitstart";i:0;}}s:11:"com_content";O:8:"stdClass":1:{s:4:"edit";O:8:"stdClass":1:{s:7:"article";O:8:"stdClass":2:{s:4:"data";N;s:2:"id";a:0:{}}}}s:4:"item";O:8:"stdClass":1:{s:6:"filter";O:8:"stdClass":1:{s:8:"menutype";s:18:"internet-resources";}}s:13:"com_installer";O:8:"stdClass":3:{s:7:"message";s:0:"";s:17:"extension_message";s:0:"";s:12:"redirect_url";N;}}}s:4:"user";O:5:"JUser":23:{s:9:"\0*\0isRoot";b:1;s:2:"id";s:2:"42";s:4:"name";s:10:"Super User";s:8:"username";s:5:"admin";s:5:"email";s:18:"vicheslav.p@tut.by";s:8:"password";s:65:"a2eb988506782c90f9f1c915822603f7:vNMicvq6epZdEkNDrBJFFafR9S3jZehK";s:14:"password_clear";s:0:"";s:8:"usertype";s:10:"deprecated";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:12:"registerDate";s:19:"2012-02-28 18:12:36";s:13:"lastvisitDate";s:19:"2012-03-20 17:34:14";s:10:"activation";s:1:"0";s:6:"params";s:0:"";s:6:"groups";a:1:{i:8;s:1:"8";}s:5:"guest";i:0;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:2:{i:0;i:1;i:1;i:8;}s:14:"\0*\0_authLevels";a:4:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:13:"session.token";s:32:"e6ea384200c3f9b90e0dbc89003192c4";}', 42, 'admin', ''),
('bd92fada87f0c8ad226364b03fc1d6a7', 0, 1, '1332450769', '__default|a:10:{s:22:"session.client.browser";s:76:"Mozilla/5.0 (Windows NT 6.1; WOW64; rv:10.0.2) Gecko/20100101 Firefox/10.0.2";s:15:"session.counter";i:247;s:8:"registry";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":2:{s:12:"com_feedback";O:8:"stdClass":1:{s:7:"default";O:8:"stdClass":1:{s:8:"feedback";O:8:"stdClass":1:{s:4:"data";N;}}}s:11:"com_content";O:8:"stdClass":1:{s:8:"category";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"8:104";O:8:"stdClass":3:{s:12:"filter_order";s:0:"";s:16:"filter_order_Dir";s:0:"";s:5:"limit";s:1:"5";}}}}}}s:4:"user";O:5:"JUser":23:{s:9:"\0*\0isRoot";b:0;s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:6:"groups";a:0:{}s:5:"guest";i:1;s:10:"\0*\0_params";O:9:"JRegistry":1:{s:7:"\0*\0data";O:8:"stdClass":0:{}}s:14:"\0*\0_authGroups";a:1:{i:0;i:1;}s:14:"\0*\0_authLevels";a:2:{i:0;i:1;i:1;i:1;}s:15:"\0*\0_authActions";N;s:12:"\0*\0_errorMsg";N;s:10:"\0*\0_errors";a:0:{}s:3:"aid";i:0;}s:16:"com_mailto.links";a:4:{s:40:"a01fde0c49b608709b79014ab708b372775b3215";O:8:"stdClass":2:{s:4:"link";s:77:"http://berezinogkh/графики/график-вывоза-мусора.html";s:6:"expiry";i:1332445856;}s:40:"ed3f69f025ac21cc58b470c26f67789913e3bd68";O:8:"stdClass":2:{s:4:"link";s:118:"http://berezinogkh/графики/график-вывоза-мусора-с-березинского-района.html";s:6:"expiry";i:1332445856;}s:40:"63c06fd61af8172d01cbebbb86ffb5253de9bfc4";O:8:"stdClass":2:{s:4:"link";s:132:"http://berezinogkh/графики/график-личного-приема-граждан-должностными-лицами.html";s:6:"expiry";i:1332445856;}s:40:"fe314c367807283338916ecf82bfa6ac971c47de";O:8:"stdClass":2:{s:4:"link";s:108:"http://berezinogkh/графики/график-работы-по-принципу-«одно-окно».html";s:6:"expiry";i:1332445856;}}s:19:"session.timer.start";i:1332437330;s:18:"session.timer.last";i:1332450736;s:17:"session.timer.now";i:1332450769;s:13:"session.token";s:32:"81df029005420f0cd319732e05df62f3";s:19:"com_mailto.formtime";i:1332437490;}', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_sh404sef_aliases`
--

CREATE TABLE IF NOT EXISTS `jmi31_sh404sef_aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`),
  KEY `alias` (`alias`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_sh404sef_aliases`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_sh404sef_metas`
--

CREATE TABLE IF NOT EXISTS `jmi31_sh404sef_metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `metadesc` varchar(255) DEFAULT '',
  `metakey` varchar(255) DEFAULT '',
  `metatitle` varchar(255) DEFAULT '',
  `metalang` varchar(30) DEFAULT '',
  `metarobots` varchar(30) DEFAULT '',
  `canonical` varchar(255) DEFAULT '',
  `og_enable` tinyint(3) NOT NULL DEFAULT '2',
  `og_type` varchar(30) DEFAULT '',
  `og_image` varchar(255) DEFAULT '',
  `og_enable_description` tinyint(3) NOT NULL DEFAULT '2',
  `og_enable_site_name` tinyint(3) NOT NULL DEFAULT '2',
  `og_site_name` varchar(255) DEFAULT '',
  `fb_admin_ids` varchar(255) DEFAULT '',
  `og_enable_location` tinyint(3) NOT NULL DEFAULT '2',
  `og_latitude` varchar(30) DEFAULT '',
  `og_longitude` varchar(30) DEFAULT '',
  `og_street_address` varchar(255) DEFAULT '',
  `og_locality` varchar(255) DEFAULT '',
  `og_postal_code` varchar(30) DEFAULT '',
  `og_region` varchar(255) DEFAULT '',
  `og_country_name` varchar(255) DEFAULT '',
  `og_enable_contact` tinyint(3) NOT NULL DEFAULT '2',
  `og_email` varchar(255) DEFAULT '',
  `og_phone_number` varchar(255) DEFAULT '',
  `og_fax_number` varchar(255) DEFAULT '',
  `og_enable_fb_admin_ids` tinyint(3) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_sh404sef_metas`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_sh404sef_pageids`
--

CREATE TABLE IF NOT EXISTS `jmi31_sh404sef_pageids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `pageid` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(3) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`),
  KEY `alias` (`pageid`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `jmi31_sh404sef_pageids`
--

INSERT INTO `jmi31_sh404sef_pageids` (`id`, `newurl`, `pageid`, `type`, `hits`) VALUES
(1, 'index.php?option=com_content&Itemid=102&catid=2&id=1&lang=ru&view=article', 'kk', 1, 0),
(2, 'index.php?option=com_content&Itemid=117&catid=2&id=12&lang=ru&view=article', 'k3', 1, 0),
(3, 'index.php?option=com_content&Itemid=101&id=1&view=article', 'ka', 1, 0),
(4, 'index.php?option=com_content&Itemid=104&id=8&lang=ru&layout=blog&view=category', 'kx', 1, 0),
(5, 'index.php?option=com_content&Itemid=105&id=9&lang=ru&view=article', 'k9', 1, 0),
(6, 'index.php?option=com_content&Itemid=106&id=8&lang=ru&view=article', 'kw', 1, 0),
(7, 'index.php?option=com_content&Itemid=107&id=2&lang=ru&view=article', 'ku', 1, 0),
(8, 'index.php?option=com_content&Itemid=108&id=3&lang=ru&view=article', 'k6', 1, 0),
(9, 'index.php?option=com_content&Itemid=109&id=9&lang=ru&layout=blog&view=category', 'k8', 1, 0),
(10, 'index.php?option=com_content&Itemid=110&id=4&lang=ru&view=article', 'kd', 1, 0),
(11, 'index.php?option=com_content&Itemid=111&id=5&lang=ru&view=article', 'k4', 1, 0),
(12, 'index.php?option=com_content&Itemid=112&id=7&lang=ru&view=article', 'kh', 1, 0),
(13, 'index.php?option=com_content&Itemid=113&id=6&lang=ru&view=article', 'kq', 1, 0),
(14, 'index.php?option=com_content&Itemid=114&id=10&lang=ru&layout=blog&view=category', 'kr', 1, 0),
(15, 'index.php?option=com_content&Itemid=115&id=11&lang=ru&view=article', 'kf', 1, 0),
(16, 'index.php?option=com_content&Itemid=116&id=10&lang=ru&view=article', 'ky', 1, 0),
(17, 'index.php?option=com_content&Itemid=101&id=1&lang=ru&view=article', 'kc', 1, 0),
(18, 'index.php?option=com_content&Itemid=103&id=13&lang=ru&view=article', '3p', 1, 0),
(19, 'index.php?option=com_content&Itemid=101&catid=11&id=14&lang=ru&view=article', '3k', 1, 0),
(20, 'index.php?option=com_content&Itemid=117&id=12&lang=ru&view=article', '33', 1, 0),
(21, 'index.php?option=com_content&Itemid=102&id=1&lang=ru&view=article', '3a', 1, 0),
(22, 'index.php?option=com_content&Itemid=104&format=feed&id=8&lang=ru&layout=blog&type=rss&view=category', '3x', 1, 0),
(23, 'index.php?option=com_content&Itemid=104&format=feed&id=8&lang=ru&layout=blog&type=atom&view=category', '39', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_sh404sef_urls`
--

CREATE TABLE IF NOT EXISTS `jmi31_sh404sef_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpt` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `oldurl` varchar(255) NOT NULL DEFAULT '',
  `newurl` varchar(255) NOT NULL DEFAULT '',
  `dateadd` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`),
  KEY `newurl` (`newurl`),
  KEY `rank` (`rank`),
  KEY `oldurl` (`oldurl`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=207 ;

--
-- Dumping data for table `jmi31_sh404sef_urls`
--

INSERT INTO `jmi31_sh404sef_urls` (`id`, `cpt`, `rank`, `oldurl`, `newurl`, `dateadd`) VALUES
(201, 0, 0, 'grafiki/feed/atom', 'index.php?option=com_content&Itemid=104&format=feed&id=8&lang=ru&layout=blog&type=atom&view=category', '0000-00-00'),
(200, 0, 0, 'grafiki/feed/rss', 'index.php?option=com_content&Itemid=104&format=feed&id=8&lang=ru&layout=blog&type=rss&view=category', '0000-00-00'),
(199, 0, 4, 'search', 'index.php?option=com_search&Itemid=107&lang=ru&view=article', '0000-00-00'),
(197, 0, 3, 'search', 'index.php?option=com_search&Itemid=106&lang=ru&view=article', '0000-00-00'),
(198, 0, 1, 'grafiki/grafik-lichnogo-priema-grajdan-doljnostnimi-licami-rkupp-berezinskoe-jkx', 'index.php?option=com_content&Itemid=107&catid=8&id=2&lang=ru&view=article', '0000-00-00'),
(192, 0, 1, 'search', 'index.php?option=com_search&Itemid=103&lang=ru&view=article', '0000-00-00'),
(193, 0, 2, 'search', 'index.php?option=com_search&Itemid=118&lang=ru&view=feedback', '0000-00-00'),
(194, 0, 1, 'grafiki/grafik-vivoza-musora-s-berezinskogo-raieona', 'index.php?option=com_content&Itemid=106&catid=8&id=8&lang=ru&view=article', '0000-00-00'),
(195, 0, 1, 'grafiki/grafik-vivoza-musora-s-g.berezino', 'index.php?option=com_content&Itemid=105&catid=8&id=9&lang=ru&view=article', '0000-00-00'),
(196, 0, 1, 'grafiki/grafik-raboti-po-principu-odno-okno-rkupp-berezinskoe-jkx', 'index.php?option=com_content&Itemid=108&catid=8&id=3&lang=ru&view=article', '0000-00-00'),
(191, 0, 1, 'osnovnaya/kontaktnaya-informaciya', 'index.php?option=com_content&Itemid=103&catid=2&id=13&lang=ru&view=article', '0000-00-00'),
(189, 0, 1, 'osnovnaya/o-predpriyatii', 'index.php?option=com_content&Itemid=102&id=1&lang=ru&view=article', '0000-00-00'),
(190, 0, 0, 'osnovnaya/kontaktnaya-informaciya', 'index.php?option=com_content&Itemid=103&id=13&lang=ru&view=article', '0000-00-00'),
(188, 0, 0, 'search', 'index.php?option=com_search&Itemid=101&lang=ru&view=article', '0000-00-00'),
(187, 0, 0, 'ru/', 'index.php?option=com_content&Itemid=101&id=1&lang=ru&view=article', '0000-00-00'),
(186, 0, 1, 'osnovnaya/organizaciya-sobstvennogo-proizvodstva', 'index.php?option=com_content&Itemid=117&id=12&lang=ru&view=article', '0000-00-00'),
(184, 0, 0, 'obekti/banya', 'index.php?option=com_content&Itemid=115&id=11&lang=ru&view=article', '0000-00-00'),
(185, 0, 0, 'obekti/gostinica', 'index.php?option=com_content&Itemid=116&id=10&lang=ru&view=article', '0000-00-00'),
(181, 0, 0, 'uchastki/uchastki-blagoustroiestva-,-ozeleneniya,-sanitarnoie-ochistki', 'index.php?option=com_content&Itemid=112&id=7&lang=ru&view=article', '0000-00-00'),
(182, 0, 0, 'uchastki/jilishnoe-xozyaiestvo', 'index.php?option=com_content&Itemid=113&id=6&lang=ru&view=article', '0000-00-00'),
(183, 0, 0, 'obekti/', 'index.php?option=com_content&Itemid=114&id=10&lang=ru&layout=blog&view=category', '0000-00-00'),
(178, 0, 0, 'uchastki/', 'index.php?option=com_content&Itemid=109&id=9&lang=ru&layout=blog&view=category', '0000-00-00'),
(179, 0, 0, 'uchastki/uchastok-teplovogo-xozyaiestva', 'index.php?option=com_content&Itemid=110&id=4&lang=ru&view=article', '0000-00-00'),
(28, 3, 0, 'ru', '', '2012-03-22'),
(180, 0, 0, 'uchastki/uchastok-vodopotrebleniya-i-vodootvedeniya', 'index.php?option=com_content&Itemid=111&id=5&lang=ru&view=article', '0000-00-00'),
(174, 0, 0, 'grafiki/grafik-vivoza-musora-s-g.berezino', 'index.php?option=com_content&Itemid=105&id=9&lang=ru&view=article', '0000-00-00'),
(177, 0, 0, 'grafiki/grafik-raboti-po-principu-odno-okno-rkupp-berezinskoe-jkx', 'index.php?option=com_content&Itemid=108&id=3&lang=ru&view=article', '0000-00-00'),
(176, 0, 0, 'grafiki/grafik-lichnogo-priema-grajdan-doljnostnimi-licami-rkupp-berezinskoe-jkx', 'index.php?option=com_content&Itemid=107&id=2&lang=ru&view=article', '0000-00-00'),
(175, 0, 0, 'grafiki/grafik-vivoza-musora-s-berezinskogo-raieona', 'index.php?option=com_content&Itemid=106&id=8&lang=ru&view=article', '0000-00-00'),
(173, 0, 0, 'grafiki/', 'index.php?option=com_content&Itemid=104&id=8&lang=ru&layout=blog&view=category', '0000-00-00'),
(172, 0, 0, 'osnovnaya/organizaciya-sobstvennogo-proizvodstva', 'index.php?option=com_content&Itemid=117&catid=2&id=12&lang=ru&view=article', '0000-00-00'),
(171, 0, 0, 'osnovnaya/o-predpriyatii', 'index.php?option=com_content&Itemid=102&catid=2&id=1&lang=ru&view=article', '0000-00-00'),
(202, 0, 5, 'search', 'index.php?option=com_search&Itemid=104&lang=ru&view=category', '0000-00-00'),
(203, 0, 6, 'search', 'index.php?option=com_search&Itemid=102&lang=ru&view=article', '0000-00-00'),
(204, 0, 1, 'uchastki/uchastki-blagoustroiestva-,-ozeleneniya,-sanitarnoie-ochistki', 'index.php?option=com_content&Itemid=112&catid=9&id=7&lang=ru&view=article', '0000-00-00'),
(205, 0, 1, 'uchastki/jilishnoe-xozyaiestvo', 'index.php?option=com_content&Itemid=113&catid=9&id=6&lang=ru&view=article', '0000-00-00'),
(206, 0, 7, 'search', 'index.php?option=com_search&Itemid=112&lang=ru&view=article', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_template_styles`
--

CREATE TABLE IF NOT EXISTS `jmi31_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jmi31_template_styles`
--

INSERT INTO `jmi31_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork - Default', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(3, 'atomic', 0, '0', 'Atomic - Default', '{}'),
(4, 'beez_20', 0, '0', 'Beez2 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(6, 'beez5', 0, '0', 'Beez5 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/sampledata\\/fruitshop\\/fruits.gif","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","html5":"0"}'),
(8, 'berezinogkh', 0, '1', 'Berezino GKH Template', '');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_updates`
--

CREATE TABLE IF NOT EXISTS `jmi31_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jmi31_updates`
--

INSERT INTO `jmi31_updates` (`update_id`, `update_site_id`, `extension_id`, `categoryid`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`) VALUES
(1, 1, 700, 0, 'Joomla', '', 'joomla', 'file', '', 0, '2.5.2', '', 'http://update.joomla.org/core/extension.xml', '');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_update_categories`
--

CREATE TABLE IF NOT EXISTS `jmi31_update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_update_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_update_sites`
--

CREATE TABLE IF NOT EXISTS `jmi31_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jmi31_update_sites`
--

INSERT INTO `jmi31_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 0, 1332264857),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 0, 1332264857),
(3, 'Joomla! Russia Updates', 'collection', 'http://joomlaportal.ru/translations.xml', 0, 1332264858);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_update_sites_extensions`
--

CREATE TABLE IF NOT EXISTS `jmi31_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `jmi31_update_sites_extensions`
--

INSERT INTO `jmi31_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 10002);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_usergroups`
--

CREATE TABLE IF NOT EXISTS `jmi31_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jmi31_usergroups`
--

INSERT INTO `jmi31_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_users`
--

CREATE TABLE IF NOT EXISTS `jmi31_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `jmi31_users`
--

INSERT INTO `jmi31_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(42, 'Super User', 'admin', 'vicheslav.p@tut.by', 'a2eb988506782c90f9f1c915822603f7:vNMicvq6epZdEkNDrBJFFafR9S3jZehK', 'deprecated', 0, 1, '2012-02-28 18:12:36', '2012-03-22 17:46:52', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_user_notes`
--

CREATE TABLE IF NOT EXISTS `jmi31_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_user_notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_user_profiles`
--

CREATE TABLE IF NOT EXISTS `jmi31_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `jmi31_user_profiles`
--


-- --------------------------------------------------------

--
-- Table structure for table `jmi31_user_usergroup_map`
--

CREATE TABLE IF NOT EXISTS `jmi31_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jmi31_user_usergroup_map`
--

INSERT INTO `jmi31_user_usergroup_map` (`user_id`, `group_id`) VALUES
(42, 8);

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_viewlevels`
--

CREATE TABLE IF NOT EXISTS `jmi31_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jmi31_viewlevels`
--

INSERT INTO `jmi31_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `jmi31_weblinks`
--

CREATE TABLE IF NOT EXISTS `jmi31_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jmi31_weblinks`
--

