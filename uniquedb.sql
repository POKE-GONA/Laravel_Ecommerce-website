-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 01:56 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uniquedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cname`, `created_at`, `updated_at`) VALUES
(1, 'Computer', '2021-05-25 04:17:11', '2021-05-27 21:16:28'),
(2, 'Mobile Phone', '2021-05-24 22:05:38', '2021-05-24 22:05:38'),
(4, 'Accessories', '2021-05-27 18:50:53', '2021-05-27 18:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'Good Sell and Price Products.', '2021-05-16 04:58:34', '2021-05-27 18:49:31'),
(2, 'DELL', 'Good Rough and Cheap Price Products.', '2021-05-16 04:59:13', '2021-05-18 00:24:39'),
(4, 'ASUS', 'Very Good.', '2021-05-16 23:09:25', '2021-05-18 00:24:44'),
(5, 'MSI', 'Good selling is gaming laptop.', '2021-05-18 00:25:37', '2021-05-18 00:25:37'),
(6, 'Acer', 'Good Sell and Price.', '2021-05-23 07:14:20', '2021-05-23 07:14:20');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mbproducts`
--

CREATE TABLE `mbproducts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mbproducts`
--

INSERT INTO `mbproducts` (`id`, `name`, `description`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 'Apple iPhone', 'iPhone 12 Pro Max 256GB (Official)', '', '2021-05-18 10:11:56', '2021-05-18 10:11:56'),
(2, 'Samsung Mobile', 'Samsung Galaxy Z Fold 2 12GB,256GB', '', '2021-05-18 10:11:56', '2021-05-18 10:11:56'),
(3, 'Huawei Mobile', 'Huawei Mate 30 Pro 8GB,256GB Space Silver', '', '2021-05-18 10:15:53', '2021-05-18 10:15:53'),
(4, 'Oppo Mobile', 'Oppo Reno 3Pro, 8GB, 256GB', '', '2021-05-18 10:15:53', '2021-05-18 10:15:53'),
(5, 'VIVO Mobile', 'ViVO V20 8GB, 128GB', '', '2021-05-18 10:18:17', '2021-05-18 10:18:17'),
(6, 'mi Mobile', 'Redmi Note 9 Pro 6GB, 128GB Interstellar Gray', '', '2021-05-18 10:18:17', '2021-05-18 10:18:17');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_09_114737_create_products_table', 1),
(5, '2021_05_10_131634_add_description_to_products', 2),
(6, '2021_05_10_140837_add_multiple_column_to_products', 3),
(7, '2021_05_13_173040_create_user_infos_table', 4),
(8, '2021_05_16_105814_create_companies_table', 5),
(9, '2014_10_12_000000_create_users_table', 6),
(10, '2021_05_18_100715_create_mbproducts_table', 7),
(11, '2021_05_18_114852_add_price_to_products', 8),
(12, '2021_05_18_121014_create_product_has_comments_table', 9),
(13, '2021_05_20_035647_add_image_to_products', 10),
(16, '2021_05_22_135023_add_multiple_column_to_products', 13),
(17, '2021_05_20_045439_create_categories_table', 14),
(18, '2021_05_20_045738_create_brands_table', 15),
(19, '2021_05_28_044535_create_products_table', 16),
(20, '2021_06_12_074116_create_order_details_table', 17),
(21, '2021_06_12_074830_create_orders_table', 18),
(22, '2021_06_18_101649_add_multiple_column_to_order_details', 19),
(23, '2021_06_23_111535_add_status_to_orders', 20),
(24, '2021_06_23_112038_add_status_to_orders', 21),
(25, '2021_06_28_160528_add_name_to_order_details', 22);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `card_no` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `user_name`, `user_email`, `delivery_phone`, `delivery_address`, `payment_type`, `card_no`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thiha Kyaw', 'thk20022@gmail.com ', '09250180640', 'No.3, Than Ta Dar Street, Sanchaung Towship, Yangon.', 'Cash On Delivery', NULL, 'Confirm Ordered', '2021-06-14 12:34:49', '2021-06-26 06:18:14'),
(11, 3, 'Gyi Gyi', 'gi67@gmail.com', '09258455149', 'No.(30), Thitsar Rd, SouthOkkalapa Township, Yangon.', 'VISA', 159487236, 'Delivered', '2021-06-20 22:55:32', '2021-06-26 07:07:09'),
(12, 2, 'Lin Lin', 'LL84@gmail.com', '09369258156', 'No.(10)A, Ta Yoke Kyaung St, Sanchaung Township, Yangon.', 'Cash On Delivery', NULL, 'Cancel Ordered', '2021-06-22 04:37:36', '2021-06-25 04:37:36'),
(13, 2, 'Yu Yu', 'yy98@gmail.com', '0939258652', 'No.(30)A, Thitsar Rd, SouthOkkalapa Township, Yangon.', 'VISA', 123625419, 'Confirm Ordered', '2021-06-26 07:35:40', '2021-06-26 07:35:40'),
(18, 4, 'May Thet', 'mt98@gmail.com', '09536421983', 'No.(23)A, Sa Yar San Rd, TAMWE GYI (KHA) Ward Township, Yangon.', 'Cash On Delivery', NULL, 'Cancel Ordered', '2021-06-28 05:51:31', '2021-07-08 19:55:32'),
(19, 3, 'Kaung San', 'ks68@gmail.com', '09654328917', 'No.(30)A, Thitsar Rd, SouthOkkalapa Township, Yangon.', 'VISA', 364129756, 'Cancel Ordered', '2021-06-28 06:13:37', '2021-06-28 06:17:11'),
(20, 2, 'Nay Nay', 'na38@gmail.com', '09568473284', 'No.(40)A, Thitsar Rd, SouthOkkalapa Township, Yangon.', 'VISA', 489637512, 'Delivered', '2021-06-28 09:41:35', '2021-07-08 19:55:01'),
(21, 5, 'Blue Sky', 'bs92@gmail.com', '09939258573', 'No.(33)A, Thitsar Rd, SouthOkkalapa Township, Yangon.', 'VISA', 1321564649, 'Cancel Ordered', '2021-07-08 20:51:21', '2021-07-08 21:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `subtotal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `name`, `price`, `order_quantity`, `subtotal`, `total`, `created_at`, `updated_at`) VALUES
(1, 1, 16, 'Apple MacBook', 2500000, 1, '2500000', '2500000', '2021-06-14 12:37:46', '2021-06-14 12:37:46'),
(11, 11, 26, 'SteelSeries Arctis Pro (Wireless) White / Black', 565610, 1, '565610', '850610', '2021-06-22 04:23:03', '2021-06-22 04:23:03'),
(12, 12, 23, 'vivo V20', 500000, 1, '500000', '6059000', '2021-06-22 04:37:50', '2021-06-22 04:37:50'),
(13, 13, 16, 'Apple MacBook', 2500000, 1, '2500000', '2500000', '2021-06-26 07:35:52', '2021-06-26 07:35:52'),
(18, 18, 22, 'Huawei Mate 30 Pro', 1500000, 1, '1500000', '1500000', '2021-06-26 21:09:44', '2021-06-26 21:09:44'),
(19, 19, 20, 'iPhone 12 Pro Max 128 GB (Pacific Blue)', 2100000, 1, '2100000', '6018000', '2021-06-28 06:13:40', '2021-06-28 06:13:40'),
(20, 20, 27, 'Apple Air Pod Pro', 285000, 1, '285000', '785000', '2021-06-28 09:41:38', '2021-06-28 09:41:38'),
(21, 21, 17, 'ASUS ZENBOOK UX481FL-HJ080T( NB0030233)', 2524870, 1, '2524870', '4723740', '2021-07-08 20:52:14', '2021-07-08 20:52:14');

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `quantity`, `file_path`, `created_at`, `updated_at`) VALUES
(16, 1, 'Apple MacBook', 'MacBook Pro 2020 (i5-2.0GHZ, 16GB, 512GB, 13.3\") Touch Bar -Intel Iris Plus Graphics -Magic Keyboard, Touch ID -Bluetooth 5.0, 802.11ac (Wi-Fi) -Four Thunderbolt 3 Ports -Weight: 1.37 Kg -1 Year Warranty', 2500000, 30, 'NyzazG2W2BvaO05QqKv2mdiB75e7zA2Xg7T7chbl.jpg', '2021-06-04 08:39:31', '2021-06-04 08:39:31'),
(17, 1, 'ASUS ZENBOOK UX481FL-HJ080T( NB0030233)', 'Core™ i7-10510U Processor 1.8 GHz (8M Cache, up to 4.9 GHz Memory: 16GB LPDDR4 ( on Board ) Display: 14″ LED -Backlit FHD ( 1920 x 1080 ) Storage: 1TB M.2 NVMe PCIe 3.0 SSD OS: WIN10 64BIT Graphic Card: Nvidia GeCPU: ntel® Force MX 250 with 2GB DDR5 Battery: 4 Cell, 70 WH Weight: 1.8 KG', 2524870, 30, 'c1H4eCrEvXk1eeD2bZdgv1prM7nIdXnA6tVgrtNo.webp', '2021-06-04 08:43:53', '2021-06-04 08:43:53'),
(18, 1, 'Dell Inspiron G5 15 5505 (R5) NB0020333 (New Arrival)', 'CPU: AMD Ryzen(TM) 7 4800H(2.9 GHz Up to 4.2 GHz) Mobile Processor with Radeon(TM) Graphics RAM:8GB, 2x4GB, DDR4, 3200MHz 2 Slots Max 32 GB Storage:256GB M.2 PCIe NVMe Solid State Drive + M.2 PCIE 3x4 Dual Support OS:Windows 10 Home Single Language English Display: 15.6 inch FHD (1920 x 1080) 120Hz 250 nits WVA Anti- Glare LED Backlit Narrow Border Display Optical Device: Optical Drive Not Included Graphic Card: AMD Radeon(TM) RX 5600M 6GB GDDR6 Wireless Card: Killer(TM) Wi-Fi 6 AX1650 (2x2) 802.11ax Wireless and Bluetooth 5.1 Battery: 3-Cell Battery, 51 Whr (Integrated) Color: Supernova Silver Parts/Service Warranty: 1 year', 2084770, 30, '05HHtMXo0ErcUQmR1kEDkqUmE93pkJb0oJ6qCRC3.webp', '2021-06-04 08:47:14', '2021-06-04 08:47:14'),
(19, 1, 'ASUS ROG Strix G15 G512LU-HN227T(NB0030201)', 'CPU: Intel® CoreTM i7-10750H Processor 2.6 GHz Display Size :15.6\" FHD 1920x1080 16:9 *144Hz* Memory:8GB DDR4-2933 SO-DIMM + + 1 xDDR4 2933 free slot (total up to 32GB) OS: WIN10 64BIT HDD: 512GB M.2 NVMeTM PCIe® 3.0 SSD Optical Drive Keyboard:No Optical Drive, NumberPad, Backlit Chiclet Keyboard 4-Zone RGB Bluetooth & Ports:BT 5.1, 3x USB 3.2 Gen 1 Type-A 1x Type C USB 3.2 Gen 2, 1x HDMI 2.0b Graphic Card :NVIDIA® GeForce® GTX 1660Ti with 6GB Battery :4 Cell, 66 WH Weight :2.3 KG', 2198870, 30, 'sRBh4vugL8BaHQcMNitnnZa7XziK4gfL1snJM6vV.webp', '2021-06-04 08:48:54', '2021-06-04 08:48:54'),
(20, 2, 'iPhone 12 Pro Max 128 GB (Pacific Blue)', '6.7-inch Super Retina XDR display Ceramic Shield, tougher than any smartphone glass A14 Bionic chip, the fastest chip ever in a smartphone Pro camera system with 12MP Ultra Wide, Wide and Telephoto cameras; 5x optical zoom range; Night mode, Deep Fusion, Smart HDR 3, Apple ProRAW, 4K Dolby Vision HDR recording LiDAR Scanner for improved AR experiences, Night mode portraits 12MP TrueDepth front camera with Night mode, 4K Dolby Vision HDR recording Industry-leading IP68 water resistance', 2100000, 30, '8pV7qRwfQVP0xJvPl86ubpgjB7Vi7GxPQJ4lC6oM.webp', '2021-06-04 08:51:07', '2021-06-04 08:51:07'),
(21, 2, 'Samsung S20 Ultra (12/128) GB', 'CPU: Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55) Display: Dynamic AMOLED 2X capacitive touchscreen, 16M colors/ 6.9 inches, 114.0 cm2 (~89.9% screen-to-body ratio) RAM: 12GB RAM Storage:128GB OS: Android 10, One UI 2 Main Camera: 108 MP, f/1.8, 26mm (wide), 1/1.33\", 0.8µm, PDAF, OIS 48 MP, f/3.5, 103mm (periscope telephoto), 1/2.0\", 0.8µm, PDAF, OIS, 4x optical zoom, 10x hybrid 0.3 MP, TOF 3D, f/1.0, (depth) Selfie Camera: 40 MP, f/2.2, 26mm (wide), 0.7µm, PDAF Battery: Non-removable Li-Po 5000 mAh battery', 1959000, 20, 'BGIUixmJTOVT7rINGNwDF5wdSbodU83YLHFb0f8a.png', '2021-06-04 08:53:48', '2021-06-04 08:53:48'),
(22, 2, 'Huawei Mate 30 Pro', 'CPU: Octa-core (2x2.86 GHz Cortex-A76 & 2x2.09 GHz Cortex-A76 & 4x1.86 GHz Cortex-A55) Display: 6.53 inches, 108.7 cm2 (~94.1% screen-to-body ratio), OLED capacitive touchscreen, 16M colors RAM: 8GB RAM Storage: 256GB OS: Android 10.0; EMUI 10 Camera: 40 MP, f/1.6, 27mm (wide), 1/1.7\", PDAF, OIS 8 MP, f/2.4, 80mm (telephoto), 1/4.0\", PDAF, OIS, 3x optical zoom 40 MP, f/1.8, 18mm (ultrawide), 1/1.54\", PDAF Battery: Non-removable Li-Po 4500 mAh battery', 1500000, 20, 'nJeorEukdHPLhGsd7d5HgI2gep5FpOBRSByl40hA.png', '2021-06-04 08:54:39', '2021-06-04 08:54:39'),
(23, 2, 'vivo V20', 'CPU: Octa-core (2x2.3 GHz Kryo 465 Gold & 6x1.8 GHz Kryo 465 Silver) RAM: 8GB RAM Storage: 128GB storage Network: GSM / HSPA / LTE Display: AMOLED ,6.44 inches, 100.1 cm2 (~83.7% screen-to-body ratio) OS: Android 11, Funtouch 11 Main Camera: 64 MP, f/1.9, 26mm (wide), 1/1.72\", 0.8µm, PDAF 8 MP, f/2.2, 120˚, 16mm (ultrawide), 1/4.0\", 1.12µm, AF 2 MP, f/2.4, (depth) Selfie camera: 44 MP, f/2.0, (wide), AF Features: Fingerprint (under display, optical), accelerometer, gyro, proximity, compass Battery: Li-Po 4000 mAh, non-removable Charging: Fast charging 33W', 500000, 20, 'uAVDBAgfSrTpXHXETGsADc1fFknenJDynbGTlXgf.webp', '2021-06-04 08:55:40', '2021-06-04 08:55:40'),
(24, 4, 'Razer Huntsman V2 Analog Optical Gaming Keyboard US Layout', 'SWITCH TYPE: Razer™ Analog Optical Switch SIZES: Full Size LIGHTING: Razer Chroma™ RGB customizable backlighting with 16.8 million color options WRIST REST: Yes ONBOARD MEMORY: Hybrid onboard storage – up to 5 keybinding profiles MEDIA KEYS: Yes PASSTHROUGH: USB 3.0 Passthrough CONNECTIVITY Wired - USB-C Wired - USB-A 3.0 (via adapter) KEYCAPS: Razer Doubleshot PBT Keycaps 100 million keystroke lifespan Underglow lighting Magnetic plush leatherette wrist rest Multi-functional digital dial with 4 media keys Fully programmable keys with on-the-fly macro recording N-key roll-over with built-in anti-ghosting Gaming mode option Braided Fiber Cable 1000 Hz Ultrapolling Aluminum matte top plate', 495520, 10, 'MCpc1UAcSVVmoycr6gdzvRoBXy8oxcu8i4YL5Kpa.webp', '2021-06-04 09:01:02', '2021-06-04 09:01:02'),
(25, 4, 'Razer Viper 8KHz - Ambidextrous Wired Gaming Mouse - FRML Packaging ( AC0410100 )', 'Connectivity Wired - Razer™ Speedflex Cable RGB Lighting Razer Chroma™ RGB Sensor Optical Max Sensitivity (DPI) 16000 Max Speed (IPS)450 Sizes Length x Grip Width x Height 4.99\" x 2.27\" x 1.49\" 126.73 mm x 57.6 mm x 37.81 mm Max Speed (IPS) 450', 166500, 10, 'OmzHlrXjndQaDZzfcWETM61FGpGpVUaqELZssmKY.webp', '2021-06-04 09:02:50', '2021-06-04 09:02:50'),
(26, 4, 'SteelSeries Arctis Pro (Wireless) White / Black', 'Dual wireless2.4G lossless+bluetooth,PC-USB,PlayStation-(USB(no surround or ChatMix),3.5mm to controller), Xbox One-3.5mm to controller, Nintendo Switch3.5mm to tablet, Mobile-3.5mm, Neodymium Drivers-40 mm, Headphone Frequency Response-100–10,000 Hz Headphone Sensitivity-38 dBV/PA , Headphone Impedance-32 Ohm, Headphone Total Harmonic Distortion-<1%, Microphone Type-Retractable Boom, Microphone Polar Pattern-Bidirectional Noise-Canceling Microphone Frequency Response-100–10,000 Hz Microphone Sensitivity-38 dBV/Pa, Microphone Impedance-2200 Ohm, Microphone Noise Cancellation-Yes, Version Support-3.12.0 +, Platform Support-Windows 7+, Mac OS X 10.9+ (DTS Headphone:X available on Windows 7+ only) .2.4G range;40ft 12m,5- 4000Hz,Battery Life(20 hours)10 per battery,bluetooth version 4.1,bluetooth profiles A2DP,HEP,ASP.', 565610, 10, 'G7dPXi3nXzWdVFKQSpO1IZVmXDJM2A9jKFLQi9Al.webp', '2021-06-04 09:03:57', '2021-06-04 09:03:57'),
(27, 4, 'Apple Air Pod Pro', 'Brand: Apple Color: White Connections: Wireless', 285000, 20, '5juP9UqkoIvRWbxqTZiEGJHWZpzSYTzFoNzCwo0L.webp', '2021-06-04 09:05:34', '2021-06-04 09:05:34');

-- --------------------------------------------------------

--
-- Table structure for table `product_has_comments`
--

CREATE TABLE `product_has_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_has_comments`
--

INSERT INTO `product_has_comments` (`id`, `user_id`, `product_id`, `comment`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'Best selling item.', '2021-05-18 05:50:04', '2021-05-18 05:50:04'),
(2, 2, 2, 'Good Price', '2021-05-18 06:20:06', '2021-05-18 06:20:06'),
(3, 3, 1, 'Good Specification.', '2021-05-18 06:21:41', '2021-05-18 06:21:41'),
(4, 4, 20, 'Expensive Price and Reliable Phone.', '2021-06-26 23:15:02', '2021-06-26 23:15:02'),
(5, 5, 19, 'I like Asus ROG Laptop. It is amazing.', '2021-07-08 20:41:08', '2021-07-08 20:41:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Admin THK', 'athk45@gmail.com', NULL, 1, '$2y$10$9zJ69fVLy8dRV5X1JplfK.0eAXTlHMCNHvzBGYICzS6jPind7H3om', NULL, '2021-05-16 19:26:18', '2021-05-16 19:26:18'),
(3, 'Thiha', 'thi31@gmail.com', NULL, 1, '$2y$10$D/Ht8gPZ61x0SiJTqTeWgOmKfMoAwJAy/Lg0Xkxy7ND3BqVBjh.rq', NULL, '2021-05-16 20:13:03', '2021-05-16 20:13:03'),
(4, 'YuMya', 'ym31@gmail.com', NULL, 0, '$2y$10$.q6BZ8RWRahXlhKJuyvhru2rfouul6tYriDizzwvugfhluOEMCaau', NULL, '2021-05-16 20:45:13', '2021-05-16 20:45:13'),
(5, 'U Paw Gyi', 'pwg49@gmail.com', NULL, 0, '$2y$10$zMW//hDrUELN50XKhaxlQu903MFXvfOTpDNopNkJKJb1muk6NE/Za', NULL, '2021-07-07 08:35:53', '2021-07-07 08:35:53'),
(6, 'Daw May Su Khaing', 'msk92@gmail.com', NULL, 1, '$2y$10$2w404/IhFsgsYiihdxom2OPUnfAqAthoxUAeXBcVvGgZwqE5J85b2', NULL, '2021-07-07 08:59:38', '2021-07-07 08:59:38'),
(7, 'Ko Paing', 'kp@gmail.com', NULL, 0, '$2y$10$u6Obu1BzrWj/.u2mAMhJ3uVrKNFwbYx1wBjJowMImJCUgx7IMkcEW', NULL, '2021-07-07 09:11:24', '2021-07-07 09:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_infos`
--

CREATE TABLE `user_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_infos`
--

INSERT INTO `user_infos` (`id`, `user_id`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, '09250180640', 'Sanchaung, Yangon.', '2021-05-12 17:33:37', '2021-05-12 17:33:37'),
(2, 2, '09971529912', 'SouthOkkalapa Township.', '2021-06-27 04:02:19', '2021-06-27 04:02:19'),
(3, 3, '095064820', 'North Dagon Townshp.', '2021-06-27 04:02:19', '2021-06-27 04:02:19'),
(4, 4, '095184069', 'South Dagon Township.', '2021-06-27 04:04:31', '2021-06-27 04:04:31'),
(5, 5, '09561348957', 'No.(4), U Chit Maung Street, Yangon.', '2021-07-07 15:06:39', '2021-07-07 15:06:39'),
(6, 6, '09958626454', 'Tamwe Township, Yangon.', '2021-07-08 02:20:18', '2021-07-08 02:20:18'),
(7, 7, '09971649913', 'Mingalar Townnyut Township, Yangon.', '2021-07-08 02:20:18', '2021-07-08 02:20:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `mbproducts`
--
ALTER TABLE `mbproducts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_user_email_unique` (`user_email`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_has_comments`
--
ALTER TABLE `product_has_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_infos`
--
ALTER TABLE `user_infos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mbproducts`
--
ALTER TABLE `mbproducts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `product_has_comments`
--
ALTER TABLE `product_has_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_infos`
--
ALTER TABLE `user_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
