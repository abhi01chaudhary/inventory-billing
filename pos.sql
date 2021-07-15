-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2021 at 04:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `contact_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `code`, `description`, `address`, `city`, `country_id`, `contact_no`, `contact_email`, `notes`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BR001', 'Branch Nugegoda - EDITED', 'No 123, Main Road, Nugegoda - E', 'Nugegoda-E', 203, '0112256111', 'ngbranch@test.com', NULL, NULL, NULL, NULL),
(2, 'BR002', 'Test 2', 'Galle Road, Bambalapitiya', 'Bambalapitiya', 203, '0112256789', 'bmbranch@test.com', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`, `description`, `notes`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'brand1', 'Test brand1', NULL, NULL, NULL, NULL),
(2, 'brand2', 'Test brand2', NULL, NULL, NULL, NULL),
(3, 'brand3', 'Test brand3', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `notes`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cat1', 'Test cat1', NULL, NULL, NULL, NULL),
(2, 'cat2', 'Test cat2', NULL, NULL, NULL, NULL),
(3, 'cat3', 'Test cat3', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `streetName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `streetAddress` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `streetName`, `streetAddress`, `city`, `postcode`, `country_id`, `phone`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Bergnaum Inc', 'Nora Dam', '66116 Dickinson Parkways', 'Tellyside', '13173', 203, '635-575-0262', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `country_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `id` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `currency_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `currency`
--

INSERT INTO `currency` (`id`, `currency_code`, `currency_name`) VALUES
(1, 'ADP', 'Andorran Peseta'),
(2, 'AED', 'United Arab Emirates Dirham'),
(3, 'AFA', 'Afghanistan Afghani'),
(4, 'ALL', 'Albanian Lek'),
(5, 'ANG', 'Netherlands Antillian Guilder'),
(6, 'AOK', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'BBD', 'Barbados Dollar'),
(11, 'BDT', 'Bangladeshi Taka'),
(12, 'BGN', 'Bulgarian Lev'),
(13, 'BHD', 'Bahraini Dinar'),
(14, 'BIF', 'Burundi Franc'),
(15, 'BMD', 'Bermudian Dollar'),
(16, 'BND', 'Brunei Dollar'),
(17, 'BOB', 'Bolivian Boliviano'),
(18, 'BRL', 'Brazilian Real'),
(19, 'BSD', 'Bahamian Dollar'),
(20, 'BTN', 'Bhutan Ngultrum'),
(21, 'BUK', 'Burma Kyat'),
(22, 'BWP', 'Botswanian Pula'),
(23, 'BZD', 'Belize Dollar'),
(24, 'CAD', 'Canadian Dollar'),
(25, 'CHF', 'Swiss Franc'),
(26, 'CLF', 'Chilean Unidades de Fomento'),
(27, 'CLP', 'Chilean Peso'),
(28, 'CNY', 'Yuan (Chinese) Renminbi'),
(29, 'COP', 'Colombian Peso'),
(30, 'CRC', 'Costa Rican Colon'),
(31, 'CZK', 'Czech Republic Koruna'),
(32, 'CUP', 'Cuban Peso'),
(33, 'CVE', 'Cape Verde Escudo'),
(34, 'CYP', 'Cyprus Pound'),
(35, 'DKK', 'Danish Krone'),
(36, 'DOP', 'Dominican Peso'),
(37, 'DZD', 'Algerian Dinar'),
(38, 'ECS', 'Ecuador Sucre'),
(39, 'EGP', 'Egyptian Pound'),
(40, 'EEK', 'Estonian Kroon (EEK)'),
(41, 'ETB', 'Ethiopian Birr'),
(42, 'EUR', 'Euro'),
(43, 'FJD', 'Fiji Dollar'),
(44, 'FKP', 'Falkland Islands Pound'),
(45, 'GBP', 'British Pound'),
(46, 'GHC', 'Ghanaian Cedi'),
(47, 'GIP', 'Gibraltar Pound'),
(48, 'GMD', 'Gambian Dalasi'),
(49, 'GNF', 'Guinea Franc'),
(50, 'GTQ', 'Guatemalan Quetzal'),
(51, 'GWP', 'Guinea-Bissau Peso'),
(52, 'GYD', 'Guyanan Dollar'),
(53, 'HKD', 'Hong Kong Dollar'),
(54, 'HNL', 'Honduran Lempira'),
(55, 'HTG', 'Haitian Gourde'),
(56, 'HUF', 'Hungarian Forint'),
(57, 'IDR', 'Indonesian Rupiah'),
(58, 'IEP', 'Irish Punt'),
(59, 'ILS', 'Israeli Shekel'),
(60, 'INR', 'Indian Rupee'),
(61, 'IQD', 'Iraqi Dinar'),
(62, 'IRR', 'Iranian Rial'),
(63, 'JMD', 'Jamaican Dollar'),
(64, 'JOD', 'Jordanian Dinar'),
(65, 'JPY', 'Japanese Yen'),
(66, 'KES', 'Kenyan Schilling'),
(67, 'KHR', 'Kampuchean (Cambodian) Riel'),
(68, 'KMF', 'Comoros Franc'),
(69, 'KPW', 'North Korean Won'),
(70, 'KRW', '(South) Korean Won'),
(71, 'KWD', 'Kuwaiti Dinar'),
(72, 'KYD', 'Cayman Islands Dollar'),
(73, 'LAK', 'Lao Kip'),
(74, 'LBP', 'Lebanese Pound'),
(75, 'LKR', 'Sri Lanka Rupee'),
(76, 'LRD', 'Liberian Dollar'),
(77, 'LSL', 'Lesotho Loti'),
(78, 'LYD', 'Libyan Dinar'),
(79, 'MAD', 'Moroccan Dirham'),
(80, 'MGF', 'Malagasy Franc'),
(81, 'MNT', 'Mongolian Tugrik'),
(82, 'MOP', 'Macau Pataca'),
(83, 'MRO', 'Mauritanian Ouguiya'),
(84, 'MTL', 'Maltese Lira'),
(85, 'MUR', 'Mauritius Rupee'),
(86, 'MVR', 'Maldive Rufiyaa'),
(87, 'MWK', 'Malawi Kwacha'),
(88, 'MXP', 'Mexican Peso'),
(89, 'MYR', 'Malaysian Ringgit'),
(90, 'MZM', 'Mozambique Metical'),
(91, 'NAD', 'Namibian Dollar'),
(92, 'NGN', 'Nigerian Naira'),
(93, 'NIO', 'Nicaraguan Cordoba'),
(94, 'NOK', 'Norwegian Kroner'),
(95, 'NPR', 'Nepalese Rupee'),
(96, 'NZD', 'New Zealand Dollar'),
(97, 'OMR', 'Omani Rial'),
(98, 'PAB', 'Panamanian Balboa'),
(99, 'PEN', 'Peruvian Nuevo Sol'),
(100, 'PGK', 'Papua New Guinea Kina'),
(101, 'PHP', 'Philippine Peso'),
(102, 'PKR', 'Pakistan Rupee'),
(103, 'PLN', 'Polish Zloty'),
(104, 'PYG', 'Paraguay Guarani'),
(105, 'QAR', 'Qatari Rial'),
(106, 'RON', 'Romanian Leu'),
(107, 'RWF', 'Rwanda Franc'),
(108, 'SAR', 'Saudi Arabian Riyal'),
(109, 'SBD', 'Solomon Islands Dollar'),
(110, 'SCR', 'Seychelles Rupee'),
(111, 'SDP', 'Sudanese Pound'),
(112, 'SEK', 'Swedish Krona'),
(113, 'SGD', 'Singapore Dollar'),
(114, 'SHP', 'St. Helena Pound'),
(115, 'SLL', 'Sierra Leone Leone'),
(116, 'SOS', 'Somali Schilling'),
(117, 'SRG', 'Suriname Guilder'),
(118, 'STD', 'Sao Tome and Principe Dobra'),
(119, 'RUB', 'Russian Ruble'),
(120, 'SVC', 'El Salvador Colon'),
(121, 'SYP', 'Syrian Potmd'),
(122, 'SZL', 'Swaziland Lilangeni'),
(123, 'THB', 'Thai Baht'),
(124, 'TND', 'Tunisian Dinar'),
(125, 'TOP', 'Tongan Paanga'),
(126, 'TPE', 'East Timor Escudo'),
(127, 'TRY', 'Turkish Lira'),
(128, 'TTD', 'Trinidad and Tobago Dollar'),
(129, 'TWD', 'Taiwan Dollar'),
(130, 'TZS', 'Tanzanian Schilling'),
(131, 'UGX', 'Uganda Shilling'),
(132, 'USD', 'US Dollar'),
(133, 'UYU', 'Uruguayan Peso'),
(134, 'VEF', 'Venezualan Bolivar'),
(135, 'VND', 'Vietnamese Dong'),
(136, 'VUV', 'Vanuatu Vatu'),
(137, 'WST', 'Samoan Tala'),
(138, 'XAF', 'CommunautÃ© FinanciÃ¨re Africaine BEAC, Francs'),
(139, 'XAG', 'Silver, Ounces'),
(140, 'XAU', 'Gold, Ounces'),
(141, 'XCD', 'East Caribbean Dollar'),
(142, 'XDR', 'International Monetary Fund (IMF) Special Drawing Rights'),
(143, 'XOF', 'CommunautÃ© FinanciÃ¨re Africaine BCEAO - Francs'),
(144, 'XPD', 'Palladium Ounces'),
(145, 'XPF', 'Comptoirs FranÃ§ais du Pacifique Francs'),
(146, 'XPT', 'Platinum, Ounces'),
(147, 'YDD', 'Democratic Yemeni Dinar'),
(148, 'YER', 'Yemeni Rial'),
(149, 'YUD', 'New Yugoslavia Dinar'),
(150, 'ZAR', 'South African Rand'),
(151, 'ZMK', 'Zambian Kwacha'),
(152, 'ZRZ', 'Zaire Zaire'),
(153, 'ZWD', 'Zimbabwe Dollar'),
(154, 'SKK', 'Slovak Koruna'),
(155, 'AMD', 'Armenian Dram');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` enum('M','F') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `minimum_stock` int(11) NOT NULL DEFAULT 0,
  `available_stock` int(11) NOT NULL DEFAULT 0,
  `total_stock` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_02_03_145724_create_branch_table', 1),
(2, '2017_02_03_145747_create_brand_table', 1),
(3, '2017_02_03_145812_create_category_table', 1),
(4, '2017_02_03_151127_create_company_table', 1),
(5, '2017_02_03_151718_create_country_table', 1),
(6, '2017_02_04_023415_create_currency_table', 1),
(7, '2017_02_04_032659_create_customer_table', 1),
(8, '2017_02_04_040506_create_inventory_table', 1),
(9, '2017_02_04_050028_create_model_table', 1),
(10, '2017_02_04_050352_create_payment_method_table', 1),
(11, '2017_02_04_050720_create_product_table', 1),
(12, '2017_02_04_053223_create_product_barcode_table', 1),
(13, '2017_02_04_084527_create_product_items_table', 1),
(14, '2017_02_04_114526_create_table_product_stocks', 1),
(15, '2017_02_04_114858_create_table_product_type', 1),
(16, '2017_02_04_123301_create_password_resets_table', 1),
(17, '2017_02_04_123433_create_purchase_invoice_table', 1),
(18, '2017_02_04_153637_create_purchase_invoice_product_items_table', 1),
(19, '2017_02_04_155158_create_purchase_order_table', 1),
(20, '2017_02_04_161944_create_quotation_table', 1),
(21, '2017_02_04_163427_create_quotation_items_table', 1),
(22, '2017_02_04_172033_create_sales_invoice_table', 1),
(23, '2017_02_04_172726_create_sales_invoice_product_items_table', 1),
(24, '2017_02_04_175812_create_shipping_service_provider', 1),
(25, '2017_02_04_175952_create_staff_table', 1),
(26, '2017_02_05_035842_create_supplier_table', 1),
(27, '2017_02_05_040712_create_term_table', 1),
(28, '2017_02_05_041317_create_user_table', 1),
(29, '2017_02_05_060247_make_staff_code_unique', 1),
(30, '2017_02_05_084332_user_add_column_staff_id', 1),
(31, '2017_02_11_060649_supplier_table_rename_mail_email', 1),
(32, '2017_02_11_075201_recreate_catgeory_table', 1),
(33, '2017_02_11_175430_drop_product_items_table', 1),
(34, '2017_02_11_175519_create_purchase_order_product_items', 1),
(35, '2017_02_11_194636_create_product_item_details_table', 1),
(36, '2017_02_12_014425_create_product_batch_table', 1),
(37, '2017_02_12_024828_product_table_drop_columns', 1),
(38, '2017_02_19_102911_update_currency_table_fix_currency_code', 1),
(39, '2017_02_26_092530_create_notifications_table', 1),
(40, '2017_02_26_171027_drop_user_id_from_staff_table', 1),
(41, '2017_03_11_095115_change_dob_column_nullable', 1),
(42, '2020_10_28_161414_create_subcategories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`id`, `name`, `description`, `notes`, `brand_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'model1', 'Test model1', NULL, 1, NULL, NULL, NULL),
(2, 'model2', 'Test model2', NULL, 2, NULL, NULL, NULL),
(3, 'model3', 'Test model3', NULL, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_method`
--

CREATE TABLE `payment_method` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `model_id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `average_cost` decimal(10,2) DEFAULT NULL,
  `rack_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_type_id` int(10) UNSIGNED NOT NULL,
  `active_status` enum('A','P','I') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_barcode`
--

CREATE TABLE `product_barcode` (
  `id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_batch`
--

CREATE TABLE `product_batch` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `purchase_invoice_id` int(10) UNSIGNED NOT NULL,
  `batch_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_item_details`
--

CREATE TABLE `product_item_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_batch_id` int(10) UNSIGNED NOT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cost` decimal(10,2) NOT NULL,
  `price1` decimal(10,2) NOT NULL,
  `price2` decimal(10,2) DEFAULT NULL,
  `price3` decimal(10,2) DEFAULT NULL,
  `price4` decimal(10,2) DEFAULT NULL,
  `item_count` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `total_stock` int(11) NOT NULL,
  `available_stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_type`
--

CREATE TABLE `product_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_type`
--

INSERT INTO `product_type` (`id`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Inventory', NULL, NULL, NULL),
(2, 'Non-Inventory', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice`
--

CREATE TABLE `purchase_invoice` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `supplier_contact` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_branch_id` int(10) UNSIGNED NOT NULL,
  `purchase_rep` int(10) UNSIGNED NOT NULL,
  `purchase_order_id` int(10) UNSIGNED NOT NULL,
  `terms_id` int(10) UNSIGNED NOT NULL,
  `shipping_service_id` int(10) UNSIGNED NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `due_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `tax_invoice_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_invoice_date` date DEFAULT NULL,
  `supplier_invoice_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_invoice_date` date DEFAULT NULL,
  `shipment_tracking_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight_kg` decimal(10,2) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `is_received` enum('f','t') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'f',
  `is_draft` tinyint(4) NOT NULL DEFAULT 1,
  `invoice_total_amount` decimal(10,2) DEFAULT NULL,
  `invoice_paid_amount` decimal(10,2) DEFAULT NULL,
  `invoice_balance_amount` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_invoice`
--

INSERT INTO `purchase_invoice` (`id`, `supplier_id`, `supplier_contact`, `ship_to_branch_id`, `purchase_rep`, `purchase_order_id`, `terms_id`, `shipping_service_id`, `delivery_date`, `due_date`, `expiry_date`, `currency_id`, `tax_invoice_number`, `tax_invoice_date`, `supplier_invoice_number`, `supplier_invoice_date`, `shipment_tracking_number`, `weight_kg`, `reference`, `notes`, `location_id`, `is_received`, `is_draft`, `invoice_total_amount`, `invoice_paid_amount`, `invoice_balance_amount`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, NULL, 0, 1, 0, 0, 0, NULL, '2020-11-03', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'f', 1, NULL, NULL, NULL, '2020-11-02 20:36:24', '2020-11-02 20:36:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoice_product_items`
--

CREATE TABLE `purchase_invoice_product_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `barcode_id` int(10) UNSIGNED DEFAULT NULL,
  `purchase_invoice_id` int(10) UNSIGNED NOT NULL,
  `item_count` int(11) NOT NULL,
  `recieved_items_count` int(11) NOT NULL,
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_id` int(10) UNSIGNED NOT NULL,
  `supplier_contact` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_branch_id` int(10) UNSIGNED NOT NULL,
  `purchase_rep` int(10) UNSIGNED NOT NULL,
  `terms_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping_service_id` int(10) UNSIGNED DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `tax_invoice_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_invoice_date` date DEFAULT NULL,
  `supplier_invoice_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supplier_invoice_date` date DEFAULT NULL,
  `shipment_tracking_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `weight_kg` decimal(10,2) DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_id` int(10) UNSIGNED NOT NULL,
  `is_draft` tinyint(4) NOT NULL DEFAULT 1,
  `is_invoiced` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `supplier_id`, `supplier_contact`, `ship_to_branch_id`, `purchase_rep`, `terms_id`, `shipping_service_id`, `delivery_date`, `due_date`, `expiry_date`, `currency_id`, `tax_invoice_number`, `tax_invoice_date`, `supplier_invoice_number`, `supplier_invoice_date`, `shipment_tracking_number`, `weight_kg`, `reference`, `notes`, `location_id`, `is_draft`, `is_invoiced`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, NULL, 1, 1, NULL, NULL, NULL, '2020-11-03', NULL, 1, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 1, 0, '2020-11-02 20:29:07', '2020-11-02 20:29:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order_product_items`
--

CREATE TABLE `purchase_order_product_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `barcode_id` int(10) UNSIGNED DEFAULT NULL,
  `purchase_order_id` int(10) UNSIGNED NOT NULL,
  `item_count` int(11) NOT NULL,
  `recieved_items_count` int(11) NOT NULL,
  `unit_cost` decimal(10,2) NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotation`
--

CREATE TABLE `quotation` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `sales_rep` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `contact` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_draft` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quotation`
--

INSERT INTO `quotation` (`id`, `branch_id`, `sales_rep`, `customer_id`, `currency_id`, `contact`, `notes`, `is_draft`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 0, 0, NULL, NULL, 1, '2020-11-02 21:16:08', '2020-11-02 21:16:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quotation_items`
--

CREATE TABLE `quotation_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price_level` int(10) UNSIGNED NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` int(11) DEFAULT 0,
  `sale_price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice`
--

CREATE TABLE `sales_invoice` (
  `id` int(10) UNSIGNED NOT NULL,
  `quotation_id` int(10) UNSIGNED DEFAULT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `sales_rep_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `is_draft` tinyint(4) NOT NULL DEFAULT 1,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales_invoice_product_items`
--

CREATE TABLE `sales_invoice_product_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sales_invoice_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `barcode_id` int(10) UNSIGNED DEFAULT NULL,
  `serial_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `price_level` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` int(11) DEFAULT 0,
  `sale_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_service_provider`
--

CREATE TABLE `shipping_service_provider` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shipping_service_provider`
--

INSERT INTO `shipping_service_provider` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ship service 1', NULL, NULL, NULL),
(2, 'Ship service 2', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joined_date` date NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `gender` enum('M','F') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `working_hours` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_person_relation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_person_contact_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `code`, `title`, `first_name`, `last_name`, `joined_date`, `address`, `city`, `country_id`, `telephone`, `mobile`, `email`, `date_of_birth`, `gender`, `working_hours`, `contact_person_title`, `contact_person_first_name`, `contact_person_last_name`, `contact_person_relation`, `contact_person_contact_no`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'T0001', 'Mr', 'John', 'Mitchel', '2015-11-01', 'test address1', 'test city', 203, NULL, '0727505061', 'mmmshakeel@gmail.com', NULL, 'M', NULL, '', '', NULL, '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `contact_title` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `contact_first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `contact_last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_mobile` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `code`, `company_name`, `address`, `city`, `country_id`, `contact_title`, `contact_first_name`, `contact_last_name`, `contact_mobile`, `phone`, `email`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SUP0001', 'Supplier 1', 'Test address 1', 'Test city', 203, 'Mr', 'Test First Name', 'Test Last Name', '0727505061', '', 'exampletest@test.com', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `days` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `description`, `days`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'T30', 30, NULL, NULL, NULL),
(2, 'T7', 7, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `branch_id` int(10) UNSIGNED NOT NULL,
  `staff_id` int(10) UNSIGNED NOT NULL,
  `login_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_admin` tinyint(4) NOT NULL DEFAULT 0,
  `last_login` datetime NOT NULL,
  `last_logout` datetime NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `branch_id`, `staff_id`, `login_name`, `password`, `is_admin`, `last_login`, `last_logout`, `notes`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'admin', '$2y$10$QEuHT7xxxQm0i7cFGVvUWu94nL.THOZasfNQridEPpi0yvtAcflEC', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_barcode`
--
ALTER TABLE `product_barcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_batch`
--
ALTER TABLE `product_batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_item_details`
--
ALTER TABLE `product_item_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_type`
--
ALTER TABLE `product_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_invoice_product_items`
--
ALTER TABLE `purchase_invoice_product_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order_product_items`
--
ALTER TABLE `purchase_order_product_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotation_items`
--
ALTER TABLE `quotation_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_invoice_product_items`
--
ALTER TABLE `sales_invoice_product_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_service_provider`
--
ALTER TABLE `shipping_service_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
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
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `model`
--
ALTER TABLE `model`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_barcode`
--
ALTER TABLE `product_barcode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_batch`
--
ALTER TABLE `product_batch`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_item_details`
--
ALTER TABLE `product_item_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_stocks`
--
ALTER TABLE `product_stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_type`
--
ALTER TABLE `product_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `purchase_invoice`
--
ALTER TABLE `purchase_invoice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_invoice_product_items`
--
ALTER TABLE `purchase_invoice_product_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_order_product_items`
--
ALTER TABLE `purchase_order_product_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `quotation_items`
--
ALTER TABLE `quotation_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_invoice`
--
ALTER TABLE `sales_invoice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_invoice_product_items`
--
ALTER TABLE `sales_invoice_product_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_service_provider`
--
ALTER TABLE `shipping_service_provider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
