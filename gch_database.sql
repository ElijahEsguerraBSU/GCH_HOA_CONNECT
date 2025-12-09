-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2025 at 10:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gch_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `activitylogs`
--

CREATE TABLE `activitylogs` (
  `id` int(11) NOT NULL,
  `users_id` varchar(45) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activitylogs`
--

INSERT INTO `activitylogs` (`id`, `users_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3026, '8', 'permission_settings_list was created', '2025-11-09 04:54:28', '2025-11-09 04:54:28', NULL),
(3027, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 180.195.77.132', '2025-11-09 05:04:05', '2025-11-09 05:04:05', NULL),
(3028, '9', 'tbl_billing_management was updated', '2025-11-09 05:04:46', '2025-11-09 05:04:46', NULL),
(3029, '9', 'Payment submitted for Bill #000019 - Amount: ₱250.00 - Payment method: Main GCash - Status: Under Review', '2025-11-09 05:04:46', '2025-11-09 05:04:46', NULL),
(3030, '8', 'tbl_billing_management was updated', '2025-11-09 05:05:03', '2025-11-09 05:05:03', NULL),
(3031, '8', 'tbl_billing_management was updated', '2025-11-09 05:05:03', '2025-11-09 05:05:03', NULL),
(3032, '8', 'Approved payment for Michaella Asinas - Amount: ₱250.00 - Bill #000019', '2025-11-09 05:05:03', '2025-11-09 05:05:03', NULL),
(3033, '8', 'sticker_control_number was created', '2025-11-09 05:12:03', '2025-11-09 05:12:03', NULL),
(3034, '8', 'sticker_control_number was updated', '2025-11-09 05:12:14', '2025-11-09 05:12:14', NULL),
(3035, '8', 'User was updated', '2025-11-09 05:17:37', '2025-11-09 05:17:37', NULL),
(3036, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3037, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3038, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3039, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3040, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3041, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3042, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3043, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3044, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3045, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3046, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3047, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3048, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3049, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3050, '8', 'permission_settings_list was created', '2025-11-09 05:17:54', '2025-11-09 05:17:54', NULL),
(3051, '8', 'User was updated', '2025-11-09 05:18:57', '2025-11-09 05:18:57', NULL),
(3052, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3053, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3054, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3055, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3056, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3057, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3058, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3059, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3060, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3061, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3062, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3063, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3064, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3065, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3066, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3067, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3068, '8', 'permission_settings_list was created', '2025-11-09 05:19:09', '2025-11-09 05:19:09', NULL),
(3069, '8', 'permission_settings was deleted', '2025-11-09 05:19:15', '2025-11-09 05:19:15', NULL),
(3070, '8', 'permission_settings was created', '2025-11-09 05:19:24', '2025-11-09 05:19:24', NULL),
(3071, '8', 'permission_settings_list was created', '2025-11-09 05:19:24', '2025-11-09 05:19:24', NULL),
(3072, '8', 'permission_settings_list was created', '2025-11-09 05:19:24', '2025-11-09 05:19:24', NULL),
(3073, '8', 'permission_settings_list was created', '2025-11-09 05:19:24', '2025-11-09 05:19:24', NULL),
(3074, '8', 'permission_settings_list was created', '2025-11-09 05:19:24', '2025-11-09 05:19:24', NULL),
(3075, '8', 'User was updated', '2025-11-09 05:21:17', '2025-11-09 05:21:17', NULL),
(3076, '8', 'permission_settings was deleted', '2025-11-09 05:21:37', '2025-11-09 05:21:37', NULL),
(3077, '8', 'permission_settings was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3078, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3079, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3080, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3081, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3082, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3083, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3084, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3085, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3086, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3087, '8', 'permission_settings_list was created', '2025-11-09 05:21:43', '2025-11-09 05:21:43', NULL),
(3088, '8', 'User was updated', '2025-11-09 05:24:07', '2025-11-09 05:24:07', NULL),
(3089, '8', 'permission_settings was deleted', '2025-11-09 05:24:17', '2025-11-09 05:24:17', NULL),
(3090, '8', 'permission_settings was created', '2025-11-09 05:24:26', '2025-11-09 05:24:26', NULL),
(3091, '8', 'permission_settings_list was created', '2025-11-09 05:24:26', '2025-11-09 05:24:26', NULL),
(3092, '8', 'permission_settings_list was created', '2025-11-09 05:24:26', '2025-11-09 05:24:26', NULL),
(3093, '8', 'permission_settings_list was created', '2025-11-09 05:24:26', '2025-11-09 05:24:26', NULL),
(3094, '8', 'User was updated', '2025-11-09 05:24:46', '2025-11-09 05:24:46', NULL),
(3095, '8', 'User was updated', '2025-11-09 05:24:58', '2025-11-09 05:24:58', NULL),
(3096, '8', 'permission_settings was deleted', '2025-11-09 05:25:06', '2025-11-09 05:25:06', NULL),
(3097, '8', 'permission_settings was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3098, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3099, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3100, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3101, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3102, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3103, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3104, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3105, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3106, '8', 'permission_settings_list was created', '2025-11-09 05:25:13', '2025-11-09 05:25:13', NULL),
(3107, '8', 'User was updated', '2025-11-09 05:26:00', '2025-11-09 05:26:00', NULL),
(3108, '8', 'permission_settings was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3109, '8', 'permission_settings_list was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3110, '8', 'permission_settings_list was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3111, '8', 'permission_settings_list was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3112, '8', 'permission_settings_list was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3113, '8', 'permission_settings_list was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3114, '8', 'permission_settings_list was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3115, '8', 'permission_settings_list was created', '2025-11-09 05:26:09', '2025-11-09 05:26:09', NULL),
(3116, '8', 'permission_settings was deleted', '2025-11-09 05:26:14', '2025-11-09 05:26:14', NULL),
(3117, '8', 'User was updated', '2025-11-09 05:26:39', '2025-11-09 05:26:39', NULL),
(3118, '8', 'User was updated', '2025-11-09 05:27:03', '2025-11-09 05:27:03', NULL),
(3119, '8', 'permission_settings was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3120, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3121, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3122, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3123, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3124, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3125, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3126, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3127, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3128, '8', 'permission_settings_list was created', '2025-11-09 05:27:22', '2025-11-09 05:27:22', NULL),
(3129, '8', 'permission_settings was deleted', '2025-11-09 05:27:27', '2025-11-09 05:27:27', NULL),
(3130, '8', 'User was updated', '2025-11-09 05:28:05', '2025-11-09 05:28:05', NULL),
(3131, '8', 'permission_settings was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3132, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3133, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3134, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3135, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3136, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3137, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3138, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3139, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3140, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3141, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3142, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3143, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3144, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3145, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3146, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3147, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3148, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3149, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3150, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3151, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3152, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3153, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3154, '8', 'permission_settings_list was created', '2025-11-09 05:28:22', '2025-11-09 05:28:22', NULL),
(3155, '8', 'permission_settings was deleted', '2025-11-09 05:28:28', '2025-11-09 05:28:28', NULL),
(3156, '9', 'User was updated', '2025-11-09 06:22:48', '2025-11-09 06:22:48', NULL),
(3157, '9', 'User logged out: Michaella Asinas (mikaayy84@gmail.com) from 180.195.77.132', '2025-11-09 06:22:48', '2025-11-09 06:22:48', NULL),
(3158, '9', 'User was updated', '2025-11-09 06:23:02', '2025-11-09 06:23:02', NULL),
(3159, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 180.195.77.132', '2025-11-09 06:23:02', '2025-11-09 06:23:02', NULL),
(3160, '9', 'User was updated', '2025-11-09 06:29:31', '2025-11-09 06:29:31', NULL),
(3161, '9', 'User logged out: Michaella Asinas (mikaayy84@gmail.com) from 180.195.77.132', '2025-11-09 06:29:31', '2025-11-09 06:29:31', NULL),
(3162, NULL, 'Failed login attempt for user: Michaella Asinas (mikaayy84@gmail.com)', '2025-11-09 06:29:47', '2025-11-09 06:29:47', NULL),
(3163, '9', 'User was updated', '2025-11-09 06:30:36', '2025-11-09 06:30:36', NULL),
(3164, '9', 'User logged in successfully from new device: Michaella Asinas (mikaayy84@gmail.com) - IP: 180.195.77.132, Location: Batangas, Calabarzon, Philippines', '2025-11-09 06:30:36', '2025-11-09 06:30:36', NULL),
(3165, '9', 'User was updated', '2025-11-09 06:50:27', '2025-11-09 06:50:27', NULL),
(3166, '9', 'User logged out: Michaella Asinas (mikaayy84@gmail.com) from 180.195.77.132', '2025-11-09 06:50:27', '2025-11-09 06:50:27', NULL),
(3167, '9', 'User was updated', '2025-11-09 06:50:36', '2025-11-09 06:50:36', NULL),
(3168, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 180.195.77.132', '2025-11-09 06:50:36', '2025-11-09 06:50:36', NULL),
(3169, '8', 'User was updated', '2025-11-09 06:51:30', '2025-11-09 06:51:30', NULL),
(3170, '8', 'permission_settings was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3171, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3172, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3173, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3174, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3175, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3176, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3177, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3178, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3179, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3180, '8', 'permission_settings_list was created', '2025-11-09 06:51:38', '2025-11-09 06:51:38', NULL),
(3181, '8', 'permission_settings was deleted', '2025-11-09 06:51:43', '2025-11-09 06:51:43', NULL),
(3182, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3183, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3184, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3185, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3186, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3187, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3188, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3189, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3190, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3191, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3192, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3193, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3194, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3195, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3196, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3197, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3198, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3199, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3200, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3201, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3202, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3203, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3204, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3205, '8', 'permission_settings_list was created', '2025-11-09 06:52:43', '2025-11-09 06:52:43', NULL),
(3206, '8', 'User was updated', '2025-11-09 07:05:34', '2025-11-09 07:05:34', NULL),
(3207, '8', 'permission_settings was deleted', '2025-11-09 07:06:21', '2025-11-09 07:06:21', NULL),
(3208, '8', 'permission_settings was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3209, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3210, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3211, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3212, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3213, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3214, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3215, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3216, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3217, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3218, '8', 'permission_settings_list was created', '2025-11-09 07:06:32', '2025-11-09 07:06:32', NULL),
(3219, '12', 'User logged in successfully from new device: Elle Cabatay (kotoriminami828@gmail.com) - IP: 180.195.77.132, Location: Batangas, Calabarzon, Philippines', '2025-11-09 07:07:29', '2025-11-09 07:07:29', NULL),
(3220, '8', 'sticker_control_number was created', '2025-11-09 07:10:21', '2025-11-09 07:10:21', NULL),
(3221, '8', 'sticker_control_number was updated', '2025-11-09 07:10:26', '2025-11-09 07:10:26', NULL),
(3222, '8', 'User logged in successfully from new device: Elijah Esguerra (eliracheloca111@gmail.com) - IP: 223.25.19.182, Location: Lemery, Calabarzon, Philippines', '2025-11-11 10:33:54', '2025-11-11 10:33:54', NULL),
(3223, '8', 'system_settings was updated', '2025-11-11 10:40:14', '2025-11-11 10:40:14', NULL),
(3224, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 223.25.19.182', '2025-11-11 10:45:08', '2025-11-11 10:45:08', NULL),
(3225, NULL, 'Failed login attempt for user: Michaella Asinas (mikaayy84@gmail.com)', '2025-11-11 10:46:14', '2025-11-11 10:46:14', NULL),
(3226, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 223.25.19.182', '2025-11-11 10:46:54', '2025-11-11 10:46:54', NULL),
(3227, NULL, 'Failed login attempt for user: Michaella Asinas (mikaayy84@gmail.com)', '2025-11-11 10:47:27', '2025-11-11 10:47:27', NULL),
(3228, NULL, 'Failed login attempt for user: Michaella Asinas (mikaayy84@gmail.com)', '2025-11-11 10:47:49', '2025-11-11 10:47:49', NULL),
(3229, NULL, 'Failed login attempt for user: Elle Cabatay (kotoriminami828@gmail.com)', '2025-11-11 10:47:57', '2025-11-11 10:47:57', NULL),
(3230, '12', 'User logged in successfully from new device: Elle Cabatay (kotoriminami828@gmail.com) - IP: 223.25.19.182, Location: Lemery, Calabarzon, Philippines', '2025-11-11 10:48:30', '2025-11-11 10:48:30', NULL),
(3231, NULL, 'Failed login attempt for user: Michaella Asinas (mikaayy84@gmail.com)', '2025-11-11 10:48:46', '2025-11-11 10:48:46', NULL),
(3232, '9', 'User logged in successfully from new device: Michaella Asinas (mikaayy84@gmail.com) - IP: 223.25.19.182, Location: Lemery, Calabarzon, Philippines', '2025-11-11 10:50:04', '2025-11-11 10:50:04', NULL),
(3233, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 11:17:37', '2025-11-11 11:17:37', NULL),
(3234, '8', 'permission_settings was deleted', '2025-11-11 11:18:52', '2025-11-11 11:18:52', NULL),
(3235, '8', 'permission_settings was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3236, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3237, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3238, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3239, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3240, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3241, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3242, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3243, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3244, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3245, '8', 'permission_settings_list was created', '2025-11-11 11:19:39', '2025-11-11 11:19:39', NULL),
(3246, '8', 'appointment_schedule_daily was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3247, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3248, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3249, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3250, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3251, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3252, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3253, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3254, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3255, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3256, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3257, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3258, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3259, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3260, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3261, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3262, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3263, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3264, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3265, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3266, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3267, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3268, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3269, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3270, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3271, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3272, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3273, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3274, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3275, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3276, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3277, '8', 'appointment_schedule_dates was created', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(3278, '9', 'appointment was created', '2025-11-11 11:24:21', '2025-11-11 11:24:21', NULL),
(3279, '8', 'tbl_billing_management was created', '2025-11-11 11:26:06', '2025-11-11 11:26:06', NULL),
(3280, '8', 'Created new billing for Michaella Asinas - Amount: ₱250.00 - Bill #000020 - Status: sent to owners', '2025-11-11 11:26:06', '2025-11-11 11:26:06', NULL),
(3281, NULL, 'Failed login attempt for user: Aethelbelle (aecabatay12@gmail.com)', '2025-11-11 11:40:48', '2025-11-11 11:40:48', NULL),
(3282, '1', 'User logged in successfully from new device: Aethelbelle (aecabatay12@gmail.com) - IP: 223.25.19.182, Location: Lemery, Calabarzon, Philippines', '2025-11-11 11:41:21', '2025-11-11 11:41:21', NULL),
(3283, '1', 'User was updated', '2025-11-11 11:41:47', '2025-11-11 11:41:47', NULL),
(3284, '1', 'User logged out: Aethelbelle (aecabatay12@gmail.com) from 223.25.19.182', '2025-11-11 11:41:47', '2025-11-11 11:41:47', NULL),
(3285, '8', 'User was updated', '2025-11-11 11:42:43', '2025-11-11 11:42:43', NULL),
(3286, '8', 'User deactivated: Aethelbelle (aecabatay12@gmail.com)', '2025-11-11 11:42:43', '2025-11-11 11:42:43', NULL),
(3287, '8', 'User was updated', '2025-11-11 11:43:00', '2025-11-11 11:43:00', NULL),
(3288, '8', 'User activated: Aethelbelle (aecabatay12@gmail.com)', '2025-11-11 11:43:00', '2025-11-11 11:43:00', NULL),
(3289, '8', 'User was updated', '2025-11-11 11:43:20', '2025-11-11 11:43:20', NULL),
(3290, '8', 'User was updated', '2025-11-11 11:43:36', '2025-11-11 11:43:36', NULL),
(3291, NULL, 'User was created', '2025-11-11 12:55:45', '2025-11-11 12:55:45', NULL),
(3292, NULL, 'Login attempt blocked for inactive user: Aethelbert Cabatay (reiko.ytsumi09@gmail.com)', '2025-11-11 12:55:58', '2025-11-11 12:55:58', NULL),
(3293, NULL, 'Login attempt blocked for inactive user: Aethelbert Cabatay (reiko.ytsumi09@gmail.com)', '2025-11-11 12:56:01', '2025-11-11 12:56:01', NULL),
(3294, '8', 'Approved landlord application for Michaella Asinas D. - Property: MJCA Boarding House - Unit: Lot 5 - Business clearance uploaded', '2025-11-11 13:52:55', '2025-11-11 13:52:55', NULL),
(3295, '8', 'Tenant access enabled for landlord: Michaella Asinas D. - Property: MJCA Boarding House', '2025-11-11 14:04:04', '2025-11-11 14:04:04', NULL),
(3296, '9', 'appointment was created', '2025-11-11 14:48:09', '2025-11-11 14:48:09', NULL),
(3297, '9', 'appointment was deleted', '2025-11-11 14:48:41', '2025-11-11 14:48:41', NULL),
(3298, '9', 'tbl_billing_management was updated', '2025-11-11 15:32:22', '2025-11-11 15:32:22', NULL),
(3299, '9', 'Payment submitted for Bill #000020 - Amount: ₱250.00 - Payment method: Main GCash - Status: Under Review', '2025-11-11 15:32:22', '2025-11-11 15:32:22', NULL),
(3300, '8', 'tbl_billing_management was updated', '2025-11-11 15:33:10', '2025-11-11 15:33:10', NULL),
(3301, '8', 'tbl_billing_management was updated', '2025-11-11 15:33:10', '2025-11-11 15:33:10', NULL),
(3302, '8', 'Approved payment for Michaella Asinas - Amount: ₱250.00 - Bill #000020', '2025-11-11 15:33:10', '2025-11-11 15:33:10', NULL),
(3303, '9', 'User was updated', '2025-11-11 15:37:37', '2025-11-11 15:37:37', NULL),
(3304, '9', 'User logged out: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 15:37:37', '2025-11-11 15:37:37', NULL),
(3305, '9', 'User was updated', '2025-11-11 15:37:48', '2025-11-11 15:37:48', NULL),
(3306, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 15:37:48', '2025-11-11 15:37:48', NULL),
(3307, '8', 'User was updated', '2025-11-11 15:47:26', '2025-11-11 15:47:26', NULL),
(3308, '8', 'User was updated', '2025-11-11 15:48:19', '2025-11-11 15:48:19', NULL),
(3309, '9', 'User was updated', '2025-11-11 16:19:44', '2025-11-11 16:19:44', NULL),
(3310, '9', 'User logged out: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 16:19:44', '2025-11-11 16:19:44', NULL),
(3311, '9', 'User was updated', '2025-11-11 16:19:54', '2025-11-11 16:19:54', NULL),
(3312, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 16:19:55', '2025-11-11 16:19:55', NULL),
(3313, '8', 'permission_settings was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3314, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3315, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3316, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3317, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3318, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3319, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3320, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3321, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3322, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3323, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3324, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3325, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3326, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3327, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3328, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3329, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3330, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3331, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3332, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3333, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3334, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3335, '8', 'permission_settings_list was created', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(3336, '8', 'permission_settings was updated', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3337, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3338, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3339, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3340, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3341, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3342, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3343, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3344, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3345, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3346, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3347, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3348, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3349, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3350, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3351, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3352, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3353, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3354, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3355, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3356, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3357, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3358, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3359, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3360, '8', 'permission_settings_list was created', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(3361, '8', 'sticker_control_number was created', '2025-11-11 16:24:59', '2025-11-11 16:24:59', NULL),
(3362, '8', 'sticker_control_number was updated', '2025-11-11 16:25:05', '2025-11-11 16:25:05', NULL),
(3363, '8', 'sticker_control_number was created', '2025-11-11 16:26:40', '2025-11-11 16:26:40', NULL),
(3364, '8', 'sticker_control_number was updated', '2025-11-11 16:26:49', '2025-11-11 16:26:49', NULL),
(3365, '8', 'User was updated', '2025-11-11 16:28:51', '2025-11-11 16:28:51', NULL),
(3366, '8', 'User was updated', '2025-11-11 16:30:03', '2025-11-11 16:30:03', NULL),
(3367, '8', 'User was updated', '2025-11-11 16:30:21', '2025-11-11 16:30:21', NULL),
(3368, NULL, 'Failed login attempt for user: Miguel Garcia (aecabatay12@gmail.com)', '2025-11-11 16:32:04', '2025-11-11 16:32:04', NULL),
(3369, '1', 'User was updated', '2025-11-11 16:32:20', '2025-11-11 16:32:20', NULL),
(3370, '1', 'User logged in successfully: Miguel Garcia (aecabatay12@gmail.com) from 223.25.19.182', '2025-11-11 16:32:31', '2025-11-11 16:32:31', NULL),
(3371, '1', 'User logged in successfully: Miguel Garcia (aecabatay12@gmail.com) from 223.25.19.182', '2025-11-11 16:32:49', '2025-11-11 16:32:49', NULL),
(3372, '1', 'User was updated', '2025-11-11 16:33:02', '2025-11-11 16:33:02', NULL),
(3373, '1', 'User logged out: Miguel Garcia (aecabatay12@gmail.com) from 223.25.19.182', '2025-11-11 16:33:02', '2025-11-11 16:33:02', NULL),
(3374, NULL, 'Failed login attempt for user: Elle Cabatay (kotoriminami828@gmail.com)', '2025-11-11 16:33:10', '2025-11-11 16:33:10', NULL),
(3375, '12', 'User logged in successfully: Elle Cabatay (kotoriminami828@gmail.com) from 223.25.19.182', '2025-11-11 16:33:13', '2025-11-11 16:33:13', NULL),
(3376, '8', 'User was updated', '2025-11-11 16:33:43', '2025-11-11 16:33:43', NULL),
(3377, '8', 'User activated: Aethelbert Cabatay (reiko.ytsumi09@gmail.com)', '2025-11-11 16:33:43', '2025-11-11 16:33:43', NULL),
(3378, '8', 'User was updated', '2025-11-11 16:34:03', '2025-11-11 16:34:03', NULL),
(3379, '8', 'permission_settings was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3380, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3381, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3382, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3383, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3384, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3385, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3386, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3387, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3388, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3389, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3390, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3391, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3392, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3393, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3394, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3395, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3396, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3397, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3398, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3399, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3400, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3401, '8', 'permission_settings_list was created', '2025-11-11 16:35:57', '2025-11-11 16:35:57', NULL),
(3402, '8', 'permission_settings was updated', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3403, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3404, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3405, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3406, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3407, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3408, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3409, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3410, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3411, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3412, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3413, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3414, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3415, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3416, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3417, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3418, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3419, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3420, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3421, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3422, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3423, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3424, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3425, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3426, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3427, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3428, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3429, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3430, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3431, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3432, '8', 'permission_settings_list was created', '2025-11-11 16:36:24', '2025-11-11 16:36:24', NULL),
(3433, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3434, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3435, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3436, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3437, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3438, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3439, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3440, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3441, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3442, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3443, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3444, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3445, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3446, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3447, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3448, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3449, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3450, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3451, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3452, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3453, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3454, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3455, '8', 'permission_settings_list was created', '2025-11-11 16:36:41', '2025-11-11 16:36:41', NULL),
(3456, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3457, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3458, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3459, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3460, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3461, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3462, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3463, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3464, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3465, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3466, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3467, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3468, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3469, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3470, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3471, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3472, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3473, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3474, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3475, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3476, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3477, '8', 'permission_settings_list was created', '2025-11-11 16:37:07', '2025-11-11 16:37:07', NULL),
(3478, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3479, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3480, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3481, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3482, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3483, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3484, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3485, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3486, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3487, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3488, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3489, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3490, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3491, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3492, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3493, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3494, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL);
INSERT INTO `activitylogs` (`id`, `users_id`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3495, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3496, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3497, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3498, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3499, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3500, '8', 'permission_settings_list was created', '2025-11-11 16:37:21', '2025-11-11 16:37:21', NULL),
(3501, '8', 'User was updated', '2025-11-11 16:42:18', '2025-11-11 16:42:18', NULL),
(3502, '8', 'permission_settings was deleted', '2025-11-11 16:42:29', '2025-11-11 16:42:29', NULL),
(3503, '8', 'permission_settings was deleted', '2025-11-11 16:42:34', '2025-11-11 16:42:34', NULL),
(3504, '8', 'permission_settings was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3505, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3506, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3507, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3508, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3509, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3510, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3511, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3512, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3513, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3514, '8', 'permission_settings_list was created', '2025-11-11 16:42:42', '2025-11-11 16:42:42', NULL),
(3515, '9', 'User was updated', '2025-11-11 17:12:54', '2025-11-11 17:12:54', NULL),
(3516, '9', 'User logged out: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 17:12:54', '2025-11-11 17:12:54', NULL),
(3517, '9', 'User was updated', '2025-11-11 17:13:15', '2025-11-11 17:13:15', NULL),
(3518, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 17:13:16', '2025-11-11 17:13:16', NULL),
(3519, '8', 'User was updated', '2025-11-11 17:31:42', '2025-11-11 17:31:42', NULL),
(3520, '8', 'User was updated', '2025-11-11 17:41:10', '2025-11-11 17:41:10', NULL),
(3521, '8', 'User was updated', '2025-11-11 17:41:30', '2025-11-11 17:41:30', NULL),
(3522, '8', 'User was updated', '2025-11-11 17:53:25', '2025-11-11 17:53:25', NULL),
(3523, '8', 'User was updated', '2025-11-11 18:26:13', '2025-11-11 18:26:13', NULL),
(3524, '8', 'User was updated', '2025-11-11 18:26:36', '2025-11-11 18:26:36', NULL),
(3525, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 223.25.19.182', '2025-11-11 18:34:37', '2025-11-11 18:34:37', NULL),
(3526, '8', 'User was updated', '2025-11-11 21:29:43', '2025-11-11 21:29:43', NULL),
(3527, '8', 'permission_settings was deleted', '2025-11-11 21:29:55', '2025-11-11 21:29:55', NULL),
(3528, '8', 'permission_settings was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3529, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3530, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3531, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3532, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3533, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3534, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3535, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3536, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3537, '8', 'permission_settings_list was created', '2025-11-11 21:30:04', '2025-11-11 21:30:04', NULL),
(3538, '8', 'User was updated', '2025-11-11 21:33:52', '2025-11-11 21:33:52', NULL),
(3539, '8', 'permission_settings was deleted', '2025-11-11 21:34:01', '2025-11-11 21:34:01', NULL),
(3540, '8', 'permission_settings was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3541, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3542, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3543, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3544, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3545, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3546, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3547, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3548, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3549, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3550, '8', 'permission_settings_list was created', '2025-11-11 21:34:10', '2025-11-11 21:34:10', NULL),
(3551, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 21:35:11', '2025-11-11 21:35:11', NULL),
(3552, '8', 'Tenant access disabled for landlord: Michaella Asinas D. - Property: MJCA Boarding House', '2025-11-11 22:12:13', '2025-11-11 22:12:13', NULL),
(3553, '12', 'User logged in successfully: Elle Cabatay (kotoriminami828@gmail.com) from 223.25.19.182', '2025-11-11 22:58:18', '2025-11-11 22:58:18', NULL),
(3554, '8', 'User was updated', '2025-11-11 22:59:02', '2025-11-11 22:59:02', NULL),
(3555, '8', 'permission_settings was deleted', '2025-11-11 22:59:39', '2025-11-11 22:59:39', NULL),
(3556, '8', 'permission_settings was created', '2025-11-11 22:59:50', '2025-11-11 22:59:50', NULL),
(3557, '8', 'permission_settings_list was created', '2025-11-11 22:59:50', '2025-11-11 22:59:50', NULL),
(3558, '8', 'permission_settings_list was created', '2025-11-11 22:59:50', '2025-11-11 22:59:50', NULL),
(3559, '8', 'permission_settings_list was created', '2025-11-11 22:59:50', '2025-11-11 22:59:50', NULL),
(3560, '12', 'User was updated', '2025-11-11 23:03:17', '2025-11-11 23:03:17', NULL),
(3561, '12', 'User logged out: Elle Cabatay (kotoriminami828@gmail.com) from 223.25.19.182', '2025-11-11 23:03:17', '2025-11-11 23:03:17', NULL),
(3562, '9', 'User was updated', '2025-11-11 23:03:34', '2025-11-11 23:03:34', NULL),
(3563, '9', 'User logged out: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 23:03:34', '2025-11-11 23:03:34', NULL),
(3564, '12', 'User was updated', '2025-11-11 23:03:43', '2025-11-11 23:03:43', NULL),
(3565, '12', 'User logged in successfully: Elle Cabatay (kotoriminami828@gmail.com) from 223.25.19.182', '2025-11-11 23:03:43', '2025-11-11 23:03:43', NULL),
(3566, '12', 'appointment was created', '2025-11-11 23:09:39', '2025-11-11 23:09:39', NULL),
(3567, '8', 'appointment was updated', '2025-11-11 23:49:19', '2025-11-11 23:49:19', NULL),
(3568, '8', 'Appointment status changed from \'Pending\' to \'approved\' for tracking number: APT-GXQVBZSP', '2025-11-11 23:49:19', '2025-11-11 23:49:19', NULL),
(3569, '12', 'User was updated', '2025-11-11 23:55:10', '2025-11-11 23:55:10', NULL),
(3570, '12', 'User logged out: Elle Cabatay (kotoriminami828@gmail.com) from 223.25.19.182', '2025-11-11 23:55:10', '2025-11-11 23:55:10', NULL),
(3571, '9', 'User was updated', '2025-11-11 23:55:21', '2025-11-11 23:55:21', NULL),
(3572, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-11 23:55:21', '2025-11-11 23:55:21', NULL),
(3573, '8', 'tbl_billing_management was created', '2025-11-11 23:57:27', '2025-11-11 23:57:27', NULL),
(3574, '8', 'Created new billing for Michaella Asinas - Amount: ₱50.00 - Bill #000021 - Status: sent to owners', '2025-11-11 23:57:27', '2025-11-11 23:57:27', NULL),
(3575, '8', 'User was updated', '2025-11-12 00:00:52', '2025-11-12 00:00:52', NULL),
(3576, '8', 'appointment was updated', '2025-11-12 00:03:53', '2025-11-12 00:03:53', NULL),
(3577, '8', 'Appointment status changed from \'Pending\' to \'approved\' for tracking number: APT-WGYVTNDX', '2025-11-12 00:03:53', '2025-11-12 00:03:53', NULL),
(3578, '8', 'User was updated', '2025-11-12 00:24:20', '2025-11-12 00:24:20', NULL),
(3579, '8', 'permission_settings was deleted', '2025-11-12 00:25:07', '2025-11-12 00:25:07', NULL),
(3580, '8', 'permission_settings was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3581, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3582, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3583, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3584, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3585, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3586, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3587, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3588, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3589, '8', 'permission_settings_list was created', '2025-11-12 00:25:15', '2025-11-12 00:25:15', NULL),
(3590, '8', 'permission_settings was updated', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3591, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3592, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3593, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3594, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3595, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3596, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3597, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3598, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3599, '8', 'permission_settings_list was created', '2025-11-12 00:25:42', '2025-11-12 00:25:42', NULL),
(3600, '8', 'permission_settings was updated', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3601, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3602, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3603, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3604, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3605, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3606, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3607, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3608, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3609, '8', 'permission_settings_list was created', '2025-11-12 00:26:04', '2025-11-12 00:26:04', NULL),
(3610, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 223.25.19.182', '2025-11-12 05:10:51', '2025-11-12 05:10:51', NULL),
(3611, '8', 'User was updated', '2025-11-12 05:25:41', '2025-11-12 05:25:41', NULL),
(3612, '8', 'permission_settings was deleted', '2025-11-12 05:25:54', '2025-11-12 05:25:54', NULL),
(3613, '8', 'permission_settings was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3614, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3615, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3616, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3617, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3618, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3619, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3620, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3621, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3622, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3623, '8', 'permission_settings_list was created', '2025-11-12 05:26:02', '2025-11-12 05:26:02', NULL),
(3624, '12', 'User was updated', '2025-11-12 05:59:58', '2025-11-12 05:59:58', NULL),
(3625, '12', 'User logged in successfully: Elle Cabatay (kotoriminami828@gmail.com) from 223.25.19.182', '2025-11-12 05:59:58', '2025-11-12 05:59:58', NULL),
(3626, '8', 'permission_settings_list was created', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(3627, '8', 'permission_settings_list was created', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(3628, '8', 'permission_settings_list was created', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(3629, '8', 'permission_settings_list was created', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(3630, '9', 'User logged in successfully: Michaella Asinas (mikaayy84@gmail.com) from 223.25.19.182', '2025-11-12 07:30:28', '2025-11-12 07:30:28', NULL),
(3631, '9', 'tbl_billing_management was updated', '2025-11-12 07:30:57', '2025-11-12 07:30:57', NULL),
(3632, '9', 'Payment submitted for Bill #000021 - Amount: ₱50.00 - Payment method: Main GCash - Status: Under Review', '2025-11-12 07:30:57', '2025-11-12 07:30:57', NULL),
(3633, '8', 'Tenant access enabled for landlord: Michaella Asinas D. - Property: MJCA Boarding House', '2025-11-12 08:38:14', '2025-11-12 08:38:14', NULL),
(3634, '8', 'User was updated', '2025-11-12 09:06:15', '2025-11-12 09:06:15', NULL),
(3635, '8', 'User logged out: Elijah Esguerra (eliracheloca111@gmail.com) from 223.25.19.182', '2025-11-12 09:06:15', '2025-11-12 09:06:15', NULL),
(3636, '8', 'User was updated', '2025-11-12 09:06:20', '2025-11-12 09:06:20', NULL),
(3637, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 223.25.19.182', '2025-11-12 09:06:21', '2025-11-12 09:06:21', NULL),
(3638, NULL, 'User was created', '2025-11-12 09:26:22', '2025-11-12 09:26:22', NULL),
(3639, NULL, 'Login attempt blocked for inactive user: Kai (kaidlunaa01@gmail.com)', '2025-11-12 09:26:37', '2025-11-12 09:26:37', NULL),
(3640, '8', 'User was updated', '2025-11-12 09:26:55', '2025-11-12 09:26:55', NULL),
(3641, '8', 'User activated: Kai (kaidlunaa01@gmail.com)', '2025-11-12 09:26:55', '2025-11-12 09:26:55', NULL),
(3642, '20', 'User was updated', '2025-11-12 09:27:43', '2025-11-12 09:27:43', NULL),
(3643, '20', 'User logged in successfully from new device: Kai (kaidlunaa01@gmail.com) - IP: 223.25.19.182, Location: Lemery, Calabarzon, Philippines', '2025-11-12 09:27:43', '2025-11-12 09:27:43', NULL),
(3644, '8', 'permission_settings was updated', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3645, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3646, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3647, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3648, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3649, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3650, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3651, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3652, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3653, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3654, '8', 'permission_settings_list was created', '2025-11-12 09:30:03', '2025-11-12 09:30:03', NULL),
(3655, '8', 'permission_settings was deleted', '2025-11-12 09:30:34', '2025-11-12 09:30:34', NULL),
(3656, '8', 'User was updated', '2025-11-12 09:30:53', '2025-11-12 09:30:53', NULL),
(3657, '8', 'permission_settings was created', '2025-11-12 09:31:22', '2025-11-12 09:31:22', NULL),
(3658, '8', 'permission_settings_list was created', '2025-11-12 09:31:22', '2025-11-12 09:31:22', NULL),
(3659, '8', 'permission_settings_list was created', '2025-11-12 09:31:22', '2025-11-12 09:31:22', NULL),
(3660, '8', 'permission_settings_list was created', '2025-11-12 09:31:22', '2025-11-12 09:31:22', NULL),
(3661, '8', 'sticker_control_number was created', '2025-11-12 09:34:13', '2025-11-12 09:34:13', NULL),
(3662, '8', 'sticker_control_number was updated', '2025-11-12 09:34:19', '2025-11-12 09:34:19', NULL),
(3663, '20', 'appointment was created', '2025-11-12 09:36:17', '2025-11-12 09:36:17', NULL),
(3664, '20', 'User was updated', '2025-11-12 09:45:20', '2025-11-12 09:45:20', NULL),
(3665, '8', 'User was updated', '2025-11-12 10:24:39', '2025-11-12 10:24:39', NULL),
(3666, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3667, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3668, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3669, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3670, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3671, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3672, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3673, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3674, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3675, '8', 'permission_settings_list was created', '2025-11-12 10:25:04', '2025-11-12 10:25:04', NULL),
(3676, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 223.25.19.182', '2025-11-12 10:49:24', '2025-11-12 10:49:24', NULL),
(3677, '8', 'Approved landlord application for Kai A. De Luna - Property: MIJCA - Unit: Blk 03 - Business clearance uploaded', '2025-11-12 11:03:31', '2025-11-12 11:03:31', NULL),
(3678, '8', 'Tenant access enabled for landlord: Kai A. De Luna - Property: MIJCA', '2025-11-12 11:04:13', '2025-11-12 11:04:13', NULL),
(3679, '8', 'appointment was updated', '2025-11-12 11:06:45', '2025-11-12 11:06:45', NULL),
(3680, '8', 'Appointment status changed from \'Pending\' to \'approved\' for tracking number: APT-NEWZ1QGE', '2025-11-12 11:06:45', '2025-11-12 11:06:45', NULL),
(3681, '8', 'tbl_billing_management was created', '2025-11-12 11:11:54', '2025-11-12 11:11:54', NULL),
(3682, '8', 'Created new billing for Kai - Amount: ₱1,150.00 - Bill #000022 - Status: sent to owners', '2025-11-12 11:11:54', '2025-11-12 11:11:54', NULL),
(3683, '20', 'tbl_billing_management was updated', '2025-11-12 11:13:24', '2025-11-12 11:13:24', NULL),
(3684, '20', 'Payment submitted for Bill #000022 - Amount: ₱1,150.00 - Payment method: Main GCash - Status: Under Review', '2025-11-12 11:13:24', '2025-11-12 11:13:24', NULL),
(3685, '8', 'tbl_billing_management was updated', '2025-11-12 11:13:38', '2025-11-12 11:13:38', NULL),
(3686, '8', 'Rejected payment for Kai - Amount: ₱1,150.00 - Bill #000022 - Reason: Kulang', '2025-11-12 11:13:38', '2025-11-12 11:13:38', NULL),
(3687, '20', 'tbl_billing_management was updated', '2025-11-12 11:14:49', '2025-11-12 11:14:49', NULL),
(3688, '20', 'Payment submitted for Bill #000022 - Amount: ₱1,150.00 - Payment method: Main GCash - Status: Under Review', '2025-11-12 11:14:49', '2025-11-12 11:14:49', NULL),
(3689, '8', 'tbl_billing_management was updated', '2025-11-12 11:15:04', '2025-11-12 11:15:04', NULL),
(3690, '8', 'tbl_billing_management was updated', '2025-11-12 11:15:04', '2025-11-12 11:15:04', NULL),
(3691, '8', 'Approved payment for Kai - Amount: ₱1,150.00 - Bill #000022', '2025-11-12 11:15:04', '2025-11-12 11:15:04', NULL),
(3692, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 103.89.236.100', '2025-11-12 16:38:47', '2025-11-12 16:38:47', NULL),
(3693, '8', 'User was updated', '2025-11-12 16:40:35', '2025-11-12 16:40:35', NULL),
(3694, '8', 'User logged out: Elijah Esguerra (eliracheloca111@gmail.com) from 103.89.236.100', '2025-11-12 16:40:35', '2025-11-12 16:40:35', NULL),
(3695, '8', 'User was updated', '2025-11-12 16:41:47', '2025-11-12 16:41:47', NULL),
(3696, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 103.89.236.100', '2025-11-12 16:41:47', '2025-11-12 16:41:47', NULL),
(3697, '8', 'User was updated', '2025-11-12 16:48:39', '2025-11-12 16:48:39', NULL),
(3698, '8', 'User logged out: Elijah Esguerra (eliracheloca111@gmail.com) from 103.89.236.100', '2025-11-12 16:48:39', '2025-11-12 16:48:39', NULL),
(3699, '8', 'User was updated', '2025-11-12 16:51:47', '2025-11-12 16:51:47', NULL),
(3700, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 103.89.236.100', '2025-11-12 16:51:47', '2025-11-12 16:51:47', NULL),
(3701, '8', 'User was updated', '2025-11-12 16:52:22', '2025-11-12 16:52:22', NULL),
(3702, '8', 'User logged out: Elijah Esguerra (eliracheloca111@gmail.com) from 103.89.236.100', '2025-11-12 16:52:22', '2025-11-12 16:52:22', NULL),
(3703, '8', 'User was updated', '2025-11-12 17:08:41', '2025-11-12 17:08:41', NULL),
(3704, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 103.89.236.100', '2025-11-12 17:08:42', '2025-11-12 17:08:42', NULL),
(3705, '8', 'User was updated', '2025-11-12 17:11:32', '2025-11-12 17:11:32', NULL),
(3706, '8', 'permission_settings was deleted', '2025-11-12 17:11:54', '2025-11-12 17:11:54', NULL),
(3707, '8', 'permission_settings was created', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(3708, '8', 'permission_settings_list was created', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(3709, '8', 'permission_settings_list was created', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(3710, '8', 'permission_settings_list was created', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(3711, '8', 'permission_settings_list was created', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(3712, NULL, 'Failed login attempt for user: Miguel Garcia (aecabatay12@gmail.com)', '2025-11-12 17:13:19', '2025-11-12 17:13:19', NULL),
(3713, '1', 'User was updated', '2025-11-12 17:13:23', '2025-11-12 17:13:23', NULL),
(3714, '1', 'User logged in successfully: Miguel Garcia (aecabatay12@gmail.com) from 103.89.236.100', '2025-11-12 17:13:24', '2025-11-12 17:13:24', NULL),
(3715, '8', 'User was updated', '2025-11-12 17:50:22', '2025-11-12 17:50:22', NULL),
(3716, '8', 'permission_settings was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3717, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3718, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3719, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3720, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3721, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3722, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3723, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3724, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3725, '8', 'permission_settings_list was created', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(3726, '1', 'User was updated', '2025-11-12 17:51:48', '2025-11-12 17:51:48', NULL),
(3727, '1', 'User logged out: Miguel Garcia (aecabatay12@gmail.com) from 103.89.236.100', '2025-11-12 17:51:48', '2025-11-12 17:51:48', NULL),
(3728, NULL, 'User was updated', '2025-11-12 17:54:10', '2025-11-12 17:54:10', NULL),
(3729, '19', 'User was updated', '2025-11-12 17:54:58', '2025-11-12 17:54:58', NULL),
(3730, '19', 'User logged in successfully from new device: Aethelbert Cabatay (reiko.ytsumi09@gmail.com) - IP: 103.89.236.100, Location: Batangas, Calabarzon, Philippines', '2025-11-12 17:54:58', '2025-11-12 17:54:58', NULL),
(3731, '8', 'User was updated', '2025-11-12 18:35:00', '2025-11-12 18:35:00', NULL),
(3732, '8', 'permission_settings was deleted', '2025-11-12 18:35:14', '2025-11-12 18:35:14', NULL),
(3733, '8', 'permission_settings was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3734, '8', 'permission_settings_list was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3735, '8', 'permission_settings_list was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3736, '8', 'permission_settings_list was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3737, '8', 'permission_settings_list was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3738, '8', 'permission_settings_list was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3739, '8', 'permission_settings_list was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3740, '8', 'permission_settings_list was created', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(3741, '19', 'User was updated', '2025-11-12 18:35:46', '2025-11-12 18:35:46', NULL),
(3742, '19', 'User logged out: Aethelbert Cabatay (reiko.ytsumi09@gmail.com) from 103.89.236.100', '2025-11-12 18:35:46', '2025-11-12 18:35:46', NULL),
(3743, NULL, 'Failed login attempt for user: Kai (kaidlunaa01@gmail.com)', '2025-11-12 18:35:58', '2025-11-12 18:35:58', NULL),
(3744, NULL, 'Failed login attempt for user: Kai (kaidlunaa01@gmail.com)', '2025-11-12 18:36:04', '2025-11-12 18:36:04', NULL),
(3745, NULL, 'User was updated', '2025-11-12 18:36:28', '2025-11-12 18:36:28', NULL),
(3746, '20', 'User logged in successfully from new device: Kai (kaidlunaa01@gmail.com) - IP: 103.89.236.100, Location: Batangas, Calabarzon, Philippines', '2025-11-12 18:37:04', '2025-11-12 18:37:04', NULL),
(3747, '20', 'User was updated', '2025-11-12 18:47:02', '2025-11-12 18:47:02', NULL),
(3748, '20', 'User logged out: Kai (kaidlunaa01@gmail.com) from 103.89.236.100', '2025-11-12 18:47:02', '2025-11-12 18:47:02', NULL),
(3749, '19', 'User was updated', '2025-11-12 18:47:25', '2025-11-12 18:47:25', NULL),
(3750, '19', 'User logged in successfully: Aethelbert Cabatay (reiko.ytsumi09@gmail.com) from 103.89.236.100', '2025-11-12 18:47:25', '2025-11-12 18:47:25', NULL),
(3751, '19', 'User was updated', '2025-11-12 18:56:26', '2025-11-12 18:56:26', NULL),
(3752, '19', 'User logged out: Aethelbert Cabatay (reiko.ytsumi09@gmail.com) from 103.89.236.100', '2025-11-12 18:56:26', '2025-11-12 18:56:26', NULL),
(3753, '20', 'User was updated', '2025-11-12 18:57:01', '2025-11-12 18:57:01', NULL),
(3754, '20', 'User logged in successfully: Kai (kaidlunaa01@gmail.com) from 103.89.236.100', '2025-11-12 18:57:01', '2025-11-12 18:57:01', NULL),
(3755, '8', 'User logged in successfully: Elijah Esguerra (eliracheloca111@gmail.com) from 180.195.77.132', '2025-11-13 15:25:36', '2025-11-13 15:25:36', NULL),
(3756, '8', 'User was created', '2025-11-13 15:58:30', '2025-11-13 15:58:30', NULL),
(3757, '21', 'User was updated', '2025-11-13 16:00:10', '2025-11-13 16:00:10', NULL),
(3758, '21', 'User logged in successfully from new device: Raever Gio Marcus C. Delos Reyes (illinoispss@gmail.com) - IP: 180.195.77.132, Location: Batangas, Calabarzon, Philippines', '2025-11-13 16:00:10', '2025-11-13 16:00:10', NULL),
(3759, '21', 'User was updated', '2025-11-13 16:00:38', '2025-11-13 16:00:38', NULL),
(3760, '8', 'permission_settings was created', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(3761, '8', 'permission_settings_list was created', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(3762, '8', 'permission_settings_list was created', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(3763, '8', 'permission_settings_list was created', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(3764, '8', 'permission_settings_list was created', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(3765, '8', 'permission_settings_list was created', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(3766, '8', 'permission_settings_list was created', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(3767, '8', 'User was created', '2025-11-13 16:21:38', '2025-11-13 16:21:38', NULL),
(3768, '8', 'permission_settings was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3769, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3770, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3771, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3772, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3773, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3774, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3775, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3776, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3777, '8', 'permission_settings_list was created', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(3778, '21', 'User was updated', '2025-11-13 16:22:12', '2025-11-13 16:22:12', NULL),
(3779, '21', 'User logged out: Raever Gio Marcus C. Delos Reyes (illinoispss@gmail.com) from 180.195.77.132', '2025-11-13 16:22:12', '2025-11-13 16:22:12', NULL),
(3780, '22', 'User was updated', '2025-11-13 16:25:25', '2025-11-13 16:25:25', NULL),
(3781, '22', 'User logged in successfully from new device: John Ezekiel G. Mendiola (johnezekielmendiola@gmail.com) - IP: 180.195.77.132, Location: Batangas, Calabarzon, Philippines', '2025-11-13 16:25:25', '2025-11-13 16:25:25', NULL),
(3782, '22', 'User was updated', '2025-11-13 16:25:50', '2025-11-13 16:25:50', NULL),
(3783, '22', 'User was updated', '2025-11-13 17:17:06', '2025-11-13 17:17:06', NULL),
(3784, '22', 'User logged out: John Ezekiel G. Mendiola (johnezekielmendiola@gmail.com) from 180.195.77.132', '2025-11-13 17:17:06', '2025-11-13 17:17:06', NULL),
(3785, '22', 'User was updated', '2025-11-13 17:17:38', '2025-11-13 17:17:38', NULL),
(3786, '22', 'User logged in successfully: John Ezekiel G. Mendiola (johnezekielmendiola@gmail.com) from 180.195.77.132', '2025-11-13 17:17:38', '2025-11-13 17:17:38', NULL),
(3787, '12', 'User logged in successfully: Elle Cabatay (kotoriminami828@gmail.com) from 180.195.77.132', '2025-11-13 17:20:13', '2025-11-13 17:20:13', NULL),
(3788, '12', 'appointment was created', '2025-11-13 17:20:51', '2025-11-13 17:20:51', NULL),
(3789, '8', 'User was created', '2025-11-13 18:12:08', '2025-11-13 18:12:08', NULL),
(3790, '22', 'User was updated', '2025-11-13 18:12:24', '2025-11-13 18:12:24', NULL),
(3791, '22', 'User logged out: John Ezekiel G. Mendiola (johnezekielmendiola@gmail.com) from 180.195.77.132', '2025-11-13 18:12:24', '2025-11-13 18:12:24', NULL),
(3792, '23', 'User was updated', '2025-11-13 18:13:24', '2025-11-13 18:13:24', NULL),
(3793, '23', 'User logged in successfully from new device: Gio Angelo A. Jobog (giojobogg@gmail.com) - IP: 180.195.77.132, Location: Batangas, Calabarzon, Philippines', '2025-11-13 18:13:24', '2025-11-13 18:13:24', NULL),
(3794, '23', 'User was updated', '2025-11-13 18:13:49', '2025-11-13 18:13:49', NULL),
(3795, '8', 'permission_settings was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(3796, '8', 'permission_settings_list was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(3797, '8', 'permission_settings_list was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(3798, '8', 'permission_settings_list was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(3799, '8', 'permission_settings_list was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(3800, '8', 'permission_settings_list was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(3801, '8', 'permission_settings_list was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(3802, '8', 'permission_settings_list was created', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applied_landlord`
--

CREATE TABLE `applied_landlord` (
  `id` int(11) NOT NULL,
  `submitted_by` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `middle_initial` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `years_of_residency` varchar(255) DEFAULT NULL,
  `property_name` varchar(255) DEFAULT NULL,
  `unit_number` varchar(255) DEFAULT NULL,
  `property_address` varchar(255) DEFAULT NULL,
  `unit_type` varchar(255) DEFAULT NULL,
  `floor_area` varchar(255) DEFAULT NULL,
  `unit_condition` varchar(255) DEFAULT NULL,
  `unit_condition_optional` varchar(255) DEFAULT NULL,
  `supporting_documents` longtext DEFAULT NULL,
  `business_clearance_attachments` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applied_landlord`
--

INSERT INTO `applied_landlord` (`id`, `submitted_by`, `first_name`, `last_name`, `middle_initial`, `date_of_birth`, `address`, `civil_status`, `nationality`, `email`, `phone_number`, `years_of_residency`, `property_name`, `unit_number`, `property_address`, `unit_type`, `floor_area`, `unit_condition`, `unit_condition_optional`, `supporting_documents`, `business_clearance_attachments`, `reason`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(24, '9', 'Michaella', 'D.', 'Asinas', '2004-02-12 00:00:00', 'Earth Street, Golden Country Homes, Alangilan, Batangas City', 'Single', 'Filipino', 'mikaayy84@gmail.com', '0921 588 8425', '3', 'MJCA Boarding House', 'Lot 5', 'Earth Street, Golden Country Homes, Alangilan, Batangas City', 'Condo', '250', 'Fully Furnished', NULL, '[\"landlord_documents\\/1762868888_69133e98250b2_Lease of Lot.pdf\"]', 'business_clearance_attachments/1762869175_Business Clearance.pdf', NULL, 'approved', '2025-11-11 13:48:08', '2025-11-11 13:52:55', NULL),
(25, '20', 'Kai', 'De Luna', 'A.', '2015-10-06 00:00:00', 'Earth Street Golden Country Homes, Alangilan Batangas City', 'Single', 'Filipino', 'micaasinas@gmail.com', '09386871522', '3', 'MIJCA', 'Blk 03', 'MIJCA Blk 03 Golden Country Homes', 'Apartment', '140', 'Fully Furnished', NULL, '[\"landlord_documents\\/1762945360_69146950f3a51_IMG_20251010_100733647.jpg\"]', 'business_clearance_attachments/1762945411_17629453977442948010525593399028.jpg', NULL, 'approved', '2025-11-12 11:02:41', '2025-11-12 11:03:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `appointment_category_id` varchar(255) DEFAULT NULL,
  `users_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `appointment_date` datetime DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `appointment_category_id`, `users_id`, `description`, `appointment_date`, `tracking_number`, `remarks`, `status`, `created_at`, `updated_at`, `deleted_at`, `time`) VALUES
(25, '5', '9', 'I\'m gonna apply for a vehicle sticker for my Honda Civic.', '2025-11-17 00:00:00', 'APT-GXQVBZSP', 'Your appointment is approved and you may now go to office at that time and date that in your appointment', 'approved', '2025-11-11 11:24:21', '2025-11-11 23:49:19', NULL, '09:00 AM'),
(26, '14', '9', 'a', '2025-11-11 00:00:00', 'APT-YDYEOKKC', NULL, 'Pending', '2025-11-11 14:48:09', '2025-11-11 14:48:41', '2025-11-11 14:48:41', '08:00 AM'),
(27, '13', '12', 'Vehicle sticker registration for my Toyota Camaro.', '2025-11-19 00:00:00', 'APT-WGYVTNDX', 'Your appointment is approved and you may now go to office at that time and date that in your appointment', 'approved', '2025-11-11 23:09:39', '2025-11-12 00:03:53', NULL, '01:00 PM'),
(28, '4', '20', 'Apply Business Permit for my new sari-sari store', '2025-11-16 00:00:00', 'APT-NEWZ1QGE', 'Your appointment is approved and you may now go to office at that time and date that in your appointment', 'approved', '2025-11-12 09:36:17', '2025-11-12 11:06:45', NULL, '11:00 AM'),
(29, '6', '12', 'Test Appointment.', '2025-11-20 00:00:00', 'APT-EFKA9KGX', NULL, 'Pending', '2025-11-13 17:20:51', '2025-11-13 17:20:51', NULL, '08:30 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_category`
--

CREATE TABLE `appointment_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `for_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_category`
--

INSERT INTO `appointment_category` (`id`, `category_name`, `status`, `created_at`, `updated_at`, `deleted_at`, `for_role`) VALUES
(4, 'Business Permit', 'Active', '2025-10-20 13:00:10', '2025-10-20 13:00:10', NULL, ''),
(5, 'Vehicle Sticker', 'Active', '2025-10-21 14:35:32', '2025-10-27 00:43:32', NULL, ''),
(6, 'Facility Booking', 'Active', '2025-10-26 22:36:24', '2025-10-26 22:36:24', NULL, ''),
(13, 'Vehicle Registration For Non Homeowners', 'Active', '2025-10-30 17:05:37', '2025-10-30 17:05:37', NULL, 'non home owners'),
(14, 'Anything', 'Active', '2025-10-30 17:08:08', '2025-10-30 17:08:26', NULL, 'home owners,non home owners');

-- --------------------------------------------------------

--
-- Table structure for table `appointment_schedule_daily`
--

CREATE TABLE `appointment_schedule_daily` (
  `id` int(11) NOT NULL,
  `allow_number_of_appointment` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_schedule_daily`
--

INSERT INTO `appointment_schedule_daily` (`id`, `allow_number_of_appointment`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, '50', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appointment_schedule_dates`
--

CREATE TABLE `appointment_schedule_dates` (
  `id` int(11) NOT NULL,
  `appointment_schedule_daily_id` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `dates` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_schedule_dates`
--

INSERT INTO `appointment_schedule_dates` (`id`, `appointment_schedule_daily_id`, `day`, `dates`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(436, '16', 'Tuesday', '2025-11-11', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(437, '16', 'Wednesday', '2025-11-12', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(438, '16', 'Thursday', '2025-11-13', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(439, '16', 'Friday', '2025-11-14', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(440, '16', 'Saturday', '2025-11-15', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(441, '16', 'Sunday', '2025-11-16', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(442, '16', 'Monday', '2025-11-17', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(443, '16', 'Tuesday', '2025-11-18', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(444, '16', 'Wednesday', '2025-11-19', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(445, '16', 'Thursday', '2025-11-20', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(446, '16', 'Friday', '2025-11-21', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(447, '16', 'Saturday', '2025-11-22', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(448, '16', 'Sunday', '2025-11-23', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(449, '16', 'Monday', '2025-11-24', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(450, '16', 'Tuesday', '2025-11-25', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(451, '16', 'Wednesday', '2025-11-26', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(452, '16', 'Thursday', '2025-11-27', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(453, '16', 'Friday', '2025-11-28', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(454, '16', 'Saturday', '2025-11-29', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(455, '16', 'Sunday', '2025-11-30', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(456, '16', 'Monday', '2025-12-01', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(457, '16', 'Tuesday', '2025-12-02', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(458, '16', 'Wednesday', '2025-12-03', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(459, '16', 'Thursday', '2025-12-04', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(460, '16', 'Friday', '2025-12-05', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(461, '16', 'Saturday', '2025-12-06', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(462, '16', 'Sunday', '2025-12-07', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(463, '16', 'Monday', '2025-12-08', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(464, '16', 'Tuesday', '2025-12-09', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(465, '16', 'Wednesday', '2025-12-10', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL),
(466, '16', 'Thursday', '2025-12-11', 'Active', '2025-11-11 11:22:10', '2025-11-11 11:22:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_management_list`
--

CREATE TABLE `business_management_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `type_of_business` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `business_clearance` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_management_list`
--

INSERT INTO `business_management_list` (`id`, `user_id`, `type_of_business`, `business_name`, `business_clearance`, `address`, `status`, `reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(38, '9', 'Cafe', 'Dice Tower Board Game Cafe', 'business-clearances/1762867475_Business Clearance.pdf', 'Golden Country Homes, 15 Mars Street, Batangas City, 4200 Batangas', 'approved', NULL, '2025-11-11 13:24:35', '2025-11-11 13:25:37', NULL),
(39, '20', 'Sari-Sari Store', 'Mikay\'s', 'business-clearances/clearance_1762945034_20.jpg', 'Earth Street Golden Country Homes, Alangilan Batangas City', 'approved', NULL, '2025-11-12 10:54:26', '2025-11-12 10:57:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chatbot_messages`
--

CREATE TABLE `chatbot_messages` (
  `id` int(11) NOT NULL,
  `from_guest_id` varchar(255) DEFAULT NULL,
  `from_users_id` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot_messages`
--

INSERT INTO `chatbot_messages` (`id`, `from_guest_id`, `from_users_id`, `message`, `parent_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(515, 'USER-8', NULL, 'Help me please.', NULL, 'replied', '2025-11-12 18:49:20', '2025-11-13 18:22:11', NULL),
(516, 'USER-8', NULL, 'I\'m here to help! You can ask me about:\n• Vehicle sticker application\n• Business registration\n• Service requests\n• Incident reports\n• User management\n\nWhat would you like to know more about?', NULL, 'bot_response', '2025-11-12 18:49:20', '2025-11-12 18:49:20', NULL),
(517, 'USER-8', '23', 'f', '515', 'admin_reply', '2025-11-13 18:22:11', '2025-11-13 18:22:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ch_favorites`
--

CREATE TABLE `ch_favorites` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `favorite_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ch_messages`
--

CREATE TABLE `ch_messages` (
  `id` char(36) NOT NULL,
  `from_id` bigint(20) NOT NULL,
  `to_id` bigint(20) NOT NULL,
  `body` varchar(5000) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `landlord_permission`
--

CREATE TABLE `landlord_permission` (
  `id` int(11) NOT NULL,
  `applied_landlord_id` varchar(255) DEFAULT NULL,
  `has_have_permission` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `landlord_permission`
--

INSERT INTO `landlord_permission` (`id`, `applied_landlord_id`, `has_have_permission`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, '24', '1', 'active', '2025-11-11 14:04:04', '2025-11-12 08:38:14', NULL),
(9, '25', '1', 'active', '2025-11-12 11:04:13', '2025-11-12 11:04:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_id` varchar(45) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `to_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_id`, `message`, `to_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(34, '9', 'Hello!', '8', 'read', '2025-11-11 11:44:22', '2025-11-11 11:44:24', NULL),
(35, '8', 'Hi!', '9', 'read', '2025-11-11 11:44:27', '2025-11-11 11:44:27', NULL),
(36, '20', 'hello', '8', 'read', '2025-11-12 10:45:43', '2025-11-12 10:45:52', NULL),
(37, '20', 'hello', '8', 'read', '2025-11-12 10:45:46', '2025-11-12 10:45:52', NULL),
(38, '8', 'blocked', '20', 'read', '2025-11-12 10:45:58', '2025-11-12 10:46:01', NULL),
(39, '20', 'hi', '8', 'read', '2025-11-12 10:46:06', '2025-11-12 10:46:09', NULL),
(40, '20', 'test', '8', 'read', '2025-11-12 10:46:24', '2025-11-12 10:46:27', NULL),
(41, '20', 'kapagod na mag revise ha', '8', 'read', '2025-11-12 10:47:55', '2025-11-12 10:47:58', NULL),
(42, '8', 'oooooooooooo', '20', 'read', '2025-11-12 10:48:09', '2025-11-12 10:48:09', NULL),
(43, '8', 'hi gois', '20', 'read', '2025-11-12 10:49:50', '2025-11-12 10:49:52', NULL),
(44, '8', 'watsup', '20', 'read', '2025-11-12 10:49:56', '2025-11-12 10:49:56', NULL),
(45, '20', 'luh', '8', 'read', '2025-11-12 10:50:03', '2025-11-12 10:50:05', NULL),
(46, '1', 'Hello', '8', 'read', '2025-11-12 17:16:33', '2025-11-12 17:16:42', NULL),
(47, '19', 'Hi', '8', 'read', '2025-11-12 18:03:58', '2025-11-12 18:04:42', NULL),
(48, '20', 'Hi', '8', 'read', '2025-11-12 19:01:09', '2025-11-12 19:01:32', NULL),
(49, '20', 'Can you please help me with this part', '8', 'read', '2025-11-12 19:01:25', '2025-11-12 19:01:32', NULL),
(50, '8', 'What seems to be the problem?', '20', 'read', '2025-11-12 19:01:39', '2025-11-12 19:01:41', NULL),
(51, '20', 'Lorem ipsum dolor', '8', 'read', '2025-11-12 19:02:01', '2025-11-12 19:02:02', NULL),
(52, '8', 'Oh ok! Let me get back to you in a moment.', '20', 'read', '2025-11-12 19:02:20', '2025-11-12 19:02:21', NULL),
(53, '20', 'Hello', '12', 'unread', '2025-11-12 19:02:58', '2025-11-12 19:02:58', NULL),
(54, '21', 'Hello', '20', 'unread', '2025-11-13 16:06:13', '2025-11-13 16:06:13', NULL),
(55, '22', 'hi', '19', 'unread', '2025-11-13 16:49:43', '2025-11-13 16:49:43', NULL),
(56, '23', 'Hello!', '22', 'unread', '2025-11-13 18:19:15', '2025-11-13 18:19:15', NULL);

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
(5, '2024_01_01_000001_create_business_management_list_table', 1),
(6, '2024_01_01_000002_create_tbl_entry_data_table', 1),
(7, '2024_01_01_000003_create_tbl_entry_data_product_table', 1),
(8, '2024_01_01_000004_create_vehicle_management_list_table', 1),
(9, '2024_01_01_000005_create_vehicle_details_table', 1),
(10, '2024_01_01_000006_create_tbl_appointment_table', 1),
(11, '2025_08_19_999999_add_active_status_to_users', 1),
(12, '2025_08_19_999999_add_avatar_to_users', 1),
(13, '2025_08_19_999999_add_dark_mode_to_users', 1),
(14, '2025_08_19_999999_add_messenger_color_to_users', 1),
(15, '2025_08_19_999999_create_chatify_favorites_table', 1),
(16, '2025_08_19_999999_create_chatify_messages_table', 1),
(17, '2025_08_20_004909_create_tbl_incident_report_table', 1),
(18, '2025_08_30_000100_create_tbl_announcement_table', 1),
(19, '2025_08_30_000110_create_tbl_bank_account_type_table', 1),
(20, '2025_08_30_000120_create_tbl_bank_account_category_table', 1),
(21, '2025_08_30_000130_create_tbl_billing_management_table', 1),
(22, '2025_08_30_000140_create_tbl_billing_management_list_table', 1),
(23, '2025_08_30_000150_create_tbl_feedback_table', 1),
(24, '2025_08_30_000160_create_tbl_otp_table', 1),
(25, '2025_08_30_000170_create_tbl_service_management_type_table', 1),
(26, '2025_08_30_000180_create_tbl_service_management_category_table', 1),
(27, '2025_08_30_000190_create_tbl_service_management_complaints_table', 1),
(28, '2025_08_30_000200_create_tbl_tenant_list_table', 1),
(29, '2025_08_30_000210_create_tbl_vehicle_homeowners_table', 1),
(30, '2025_08_30_000220_create_tbl_vehicle_homeowners_supporting_documents_table', 1),
(31, '2025_08_30_000230_create_tbl_vehicle_list_details_homeowners_table', 1),
(32, '2025_08_30_000300_update_existing_tables_to_strings', 1),
(33, '2025_09_21_073748_create_activity_logs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `module_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `module_name`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'dashboard', 'active', '2025-09-21 01:05:33', NULL, NULL),
(2, 'message', 'active', '2025-09-21 01:05:33', NULL, NULL),
(3, 'feedback', 'active', '2025-09-21 01:05:33', NULL, NULL),
(4, 'service request', 'active', '2025-09-21 01:05:33', NULL, NULL),
(6, 'billing payment', 'active', '2025-09-21 01:05:33', NULL, NULL),
(7, 'vehicle', 'active', '2025-09-21 01:05:33', NULL, NULL),
(8, 'user management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(9, 'establishment management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(10, 'vehicle management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(11, 'service management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(12, 'incident management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(13, 'announcements management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(14, 'billing management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(15, 'payment account management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(16, 'feedback management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(17, 'appointment management', 'active', '2025-09-21 01:05:33', NULL, NULL),
(19, 'notification settings', 'active', '2025-09-21 05:32:35', NULL, NULL),
(20, 'system settings', 'active', '2025-09-21 05:32:58', NULL, NULL),
(21, 'Permission Settings', 'active', '2025-09-21 05:32:58', NULL, NULL),
(22, 'apply business', 'active', '2025-10-12 00:33:13', NULL, NULL),
(23, 'incident report', 'active', '2025-10-12 02:59:16', NULL, NULL),
(24, 'apply landlord', 'active', '2025-10-26 12:11:32', NULL, NULL),
(26, 'apply appointment', 'active', '2025-10-26 12:12:40', NULL, NULL),
(27, 'landlord permissions', 'active', '2025-10-26 12:13:48', NULL, NULL),
(28, 'appointment category', 'active', '2025-10-26 12:14:54', NULL, NULL),
(29, 'appointment allow schedule', 'active', '2025-10-26 12:16:51', NULL, NULL),
(30, 'activity logs', 'active', '2025-10-26 12:17:15', NULL, NULL),
(32, 'guest chatbot', 'active', '2025-10-26 23:17:00', NULL, NULL),
(33, 'landlord management', 'active', '2025-11-04 14:36:17', NULL, NULL),
(38, 'calendar', 'active', '2025-11-04 15:38:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `users_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `notification_settings_id` varchar(45) DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `users_id`, `type`, `title`, `message`, `notification_settings_id`, `read_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(324, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-09 06:50:43', '2025-11-09 06:50:36', '2025-11-09 06:50:43', NULL),
(325, '12', 'success', 'Welcome Back!', 'Hello Elle Cabatay, you have successfully logged in from a new device.', NULL, '2025-11-09 07:07:40', '2025-11-09 07:07:29', '2025-11-09 07:07:40', NULL),
(326, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, you have successfully logged in from a new device.', NULL, '2025-11-11 10:34:26', '2025-11-11 10:33:54', '2025-11-11 10:34:26', NULL),
(327, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-11 10:45:16', '2025-11-11 10:45:08', '2025-11-11 10:45:16', NULL),
(328, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-11 11:18:32', '2025-11-11 10:46:54', '2025-11-11 11:18:32', NULL),
(329, '12', 'success', 'Welcome Back!', 'Hello Elle Cabatay, you have successfully logged in from a new device.', NULL, '2025-11-11 10:48:42', '2025-11-11 10:48:30', '2025-11-11 10:48:42', NULL),
(330, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, you have successfully logged in from a new device.', NULL, '2025-11-11 10:50:17', '2025-11-11 10:50:04', '2025-11-11 10:50:17', NULL),
(331, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-11 11:17:46', '2025-11-11 11:17:37', '2025-11-11 11:17:46', NULL),
(332, '9', 'info', 'New Billing Created', 'A new billing has been created for you - Amount: ₱250.00 for Bill #000020. Please check your billing details and make payment when ready.', '13', '2025-11-11 11:26:28', '2025-11-11 11:26:06', '2025-11-11 11:26:28', NULL),
(333, '9', 'info', 'New Billing Created', 'Elijah Esguerra has created a new billing for Michaella Asinas - Amount: ₱250.00 for Bill #000020. Billing has been created and sent to the user.', '13', '2025-11-11 11:26:30', '2025-11-11 11:26:06', '2025-11-11 11:26:30', NULL),
(334, '1', 'success', 'Welcome Back!', 'Hello Aethelbelle, you have successfully logged in from a new device.', NULL, '2025-11-11 11:41:34', '2025-11-11 11:41:21', '2025-11-11 11:41:34', NULL),
(335, '8', 'message', 'New Message', 'You have a new message from Michaella Asinas', NULL, '2025-11-11 13:02:48', '2025-11-11 11:44:22', '2025-11-11 13:02:48', NULL),
(336, '9', 'message', 'New Message', 'You have a new message from Elijah Esguerra', NULL, '2025-11-11 11:44:35', '2025-11-11 11:44:27', '2025-11-11 11:44:35', NULL),
(337, '1', 'info', 'New Business Registration', 'New business \'Dice Tower Board Game Cafe\' has been registered by Michaella Asinas', '2', '2025-11-11 16:33:00', '2025-11-11 13:24:35', '2025-11-11 16:33:00', NULL),
(338, '9', 'info', 'New Business Registration', 'New business \'Dice Tower Board Game Cafe\' has been registered by Michaella Asinas', '8', '2025-11-11 13:24:41', '2025-11-11 13:24:35', '2025-11-11 13:24:41', NULL),
(339, '8', 'info', 'New Business Registration', 'New business \'Dice Tower Board Game Cafe\' has been registered by Michaella Asinas', '36', '2025-11-11 13:25:29', '2025-11-11 13:24:35', '2025-11-11 13:25:29', NULL),
(340, '9', 'success', 'Business Approved', 'Your business \'Dice Tower Board Game Cafe\' has been approved!', '8', '2025-11-11 13:34:05', '2025-11-11 13:25:37', '2025-11-11 13:34:05', NULL),
(341, '9', 'success', 'Payment Submitted Successfully', 'Your payment of ₱250.00 for Bill #000020 has been submitted and is now under review. You will be notified once it is processed.', '13', '2025-11-11 15:32:29', '2025-11-11 15:32:22', '2025-11-11 15:32:29', NULL),
(342, '9', 'success', 'Payment Approved', 'Your payment of ₱250.00 for Bill #000020 has been approved and processed successfully.', '13', '2025-11-11 15:33:20', '2025-11-11 15:33:10', '2025-11-11 15:33:20', NULL),
(343, '9', 'info', 'Payment Approved', 'Elijah Esguerra has approvedd a payment for Michaella Asinas - Amount: ₱250.00 for Bill #000020. Payment has been approved and processed.', '13', '2025-11-11 15:33:22', '2025-11-11 15:33:10', '2025-11-11 15:33:22', NULL),
(344, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-11 15:37:59', '2025-11-11 15:37:48', '2025-11-11 15:37:59', NULL),
(345, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-11 16:20:12', '2025-11-11 16:19:55', '2025-11-11 16:20:12', NULL),
(346, '1', 'success', 'Welcome Back!', 'Hello Miguel Garcia, welcome back to Golden Country Homes!', NULL, '2025-11-11 16:32:58', '2025-11-11 16:32:31', '2025-11-11 16:32:58', NULL),
(347, '1', 'success', 'Welcome Back!', 'Hello Miguel Garcia, welcome back to Golden Country Homes!', NULL, '2025-11-11 16:32:56', '2025-11-11 16:32:49', '2025-11-11 16:32:56', NULL),
(348, '12', 'success', 'Welcome Back!', 'Hello Elle Cabatay, welcome back to Golden Country Homes!', NULL, '2025-11-11 16:33:19', '2025-11-11 16:33:13', '2025-11-11 16:33:19', NULL),
(349, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-11 17:13:24', '2025-11-11 17:13:16', '2025-11-11 17:13:24', NULL),
(350, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-11 18:34:44', '2025-11-11 18:34:37', '2025-11-11 18:34:44', NULL),
(351, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-11 21:35:18', '2025-11-11 21:35:11', '2025-11-11 21:35:18', NULL),
(352, '12', 'success', 'Welcome Back!', 'Hello Elle Cabatay, welcome back to Golden Country Homes!', NULL, '2025-11-11 22:58:28', '2025-11-11 22:58:18', '2025-11-11 22:58:28', NULL),
(353, '12', 'success', 'Welcome Back!', 'Hello Elle Cabatay, welcome back to Golden Country Homes!', NULL, '2025-11-11 23:04:00', '2025-11-11 23:03:43', '2025-11-11 23:04:00', NULL),
(354, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-11 23:55:28', '2025-11-11 23:55:21', '2025-11-11 23:55:28', NULL),
(355, '9', 'info', 'New Billing Created', 'A new billing has been created for you - Amount: ₱50.00 for Bill #000021. Please check your billing details and make payment when ready.', '13', '2025-11-11 23:59:02', '2025-11-11 23:57:27', '2025-11-11 23:59:02', NULL),
(356, '9', 'info', 'New Billing Created', 'Elijah Esguerra has created a new billing for Michaella Asinas - Amount: ₱50.00 for Bill #000021. Billing has been created and sent to the user.', '13', '2025-11-11 23:59:05', '2025-11-11 23:57:27', '2025-11-11 23:59:05', NULL),
(357, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-12 05:11:01', '2025-11-12 05:10:51', '2025-11-12 05:11:01', NULL),
(358, '12', 'success', 'Welcome Back!', 'Hello Elle Cabatay, welcome back to Golden Country Homes!', NULL, '2025-11-12 06:00:04', '2025-11-12 05:59:58', '2025-11-12 06:00:04', NULL),
(359, '9', 'success', 'Welcome Back!', 'Hello Michaella Asinas, welcome back to Golden Country Homes!', NULL, '2025-11-12 07:30:35', '2025-11-12 07:30:28', '2025-11-12 07:30:35', NULL),
(360, '9', 'success', 'Payment Submitted Successfully', 'Your payment of ₱50.00 for Bill #000021 has been submitted and is now under review. You will be notified once it is processed.', '13', '2025-11-12 07:31:04', '2025-11-12 07:30:57', '2025-11-12 07:31:04', NULL),
(361, '8', 'info', 'New Chatbot Message', 'Guest USER-9 sent a message: Help me please, I need an admin to talk to.', '32', '2025-11-12 08:22:18', '2025-11-12 08:22:08', '2025-11-12 08:22:18', NULL),
(362, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-12 09:06:27', '2025-11-12 09:06:21', '2025-11-12 09:06:27', NULL),
(363, '20', 'success', 'Welcome Back!', 'Hello Kai, you have successfully logged in from a new device.', NULL, '2025-11-12 09:27:55', '2025-11-12 09:27:43', '2025-11-12 09:27:55', NULL),
(364, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-12 10:47:12', '2025-11-12 10:45:43', '2025-11-12 10:47:12', NULL),
(365, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-12 10:47:12', '2025-11-12 10:45:46', '2025-11-12 10:47:12', NULL),
(366, '20', 'message', 'New Message', 'You have a new message from Elijah Esguerra', NULL, '2025-11-12 10:46:36', '2025-11-12 10:45:58', '2025-11-12 10:46:36', NULL),
(367, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-12 10:47:11', '2025-11-12 10:46:06', '2025-11-12 10:47:11', NULL),
(368, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-12 10:47:09', '2025-11-12 10:46:24', '2025-11-12 10:47:09', NULL),
(369, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-12 10:49:39', '2025-11-12 10:47:55', '2025-11-12 10:49:39', NULL),
(370, '20', 'message', 'New Message', 'You have a new message from Elijah Esguerra', NULL, '2025-11-12 10:49:02', '2025-11-12 10:48:09', '2025-11-12 10:49:02', NULL),
(371, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-12 10:49:33', '2025-11-12 10:49:24', '2025-11-12 10:49:33', NULL),
(372, '20', 'message', 'New Message', 'You have a new message from Elijah Esguerra', NULL, '2025-11-12 10:50:57', '2025-11-12 10:49:50', '2025-11-12 10:50:57', NULL),
(373, '20', 'message', 'New Message', 'You have a new message from Elijah Esguerra', NULL, '2025-11-12 10:50:54', '2025-11-12 10:49:56', '2025-11-12 10:50:54', NULL),
(374, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-12 10:50:09', '2025-11-12 10:50:03', '2025-11-12 10:50:09', NULL),
(375, '1', 'info', 'New Business Registration', 'New business \'Mikay\'s\' has been registered by Kai', '2', '2025-11-12 17:13:32', '2025-11-12 10:54:26', '2025-11-12 17:13:32', NULL),
(376, '9', 'info', 'New Business Registration', 'New business \'Mikay\'s\' has been registered by Kai', '8', NULL, '2025-11-12 10:54:26', '2025-11-12 10:54:26', NULL),
(377, '8', 'info', 'New Business Registration', 'New business \'Mikay\'s\' has been registered by Kai', '36', '2025-11-12 10:54:57', '2025-11-12 10:54:26', '2025-11-12 10:54:57', NULL),
(378, '20', 'success', 'Business Approved', 'Your business \'Mikay\'s\' has been approved!', NULL, '2025-11-12 10:57:09', '2025-11-12 10:56:42', '2025-11-12 10:57:09', NULL),
(379, '20', 'info', 'New Billing Created', 'A new billing has been created for you - Amount: ₱1,150.00 for Bill #000022. Please check your billing details and make payment when ready.', NULL, '2025-11-12 11:12:04', '2025-11-12 11:11:54', '2025-11-12 11:12:04', NULL),
(380, '9', 'info', 'New Billing Created', 'Elijah Esguerra has created a new billing for Kai - Amount: ₱1,150.00 for Bill #000022. Billing has been created and sent to the user.', '13', NULL, '2025-11-12 11:11:54', '2025-11-12 11:11:54', NULL),
(381, '20', 'success', 'Payment Submitted Successfully', 'Your payment of ₱1,150.00 for Bill #000022 has been submitted and is now under review. You will be notified once it is processed.', NULL, '2025-11-12 11:13:32', '2025-11-12 11:13:24', '2025-11-12 11:13:32', NULL),
(382, '9', 'info', 'New Payment Submitted', 'Kai has submitted a payment of ₱1,150.00 for Bill #000022. Payment method: Main GCash. Payment has been submitted and is under review.', '13', NULL, '2025-11-12 11:13:24', '2025-11-12 11:13:24', NULL),
(383, '20', 'error', 'Payment Rejected', 'Your payment of ₱1,150.00 for Bill #000022 has been rejected. Reason: Kulang', NULL, '2025-11-12 11:13:51', '2025-11-12 11:13:38', '2025-11-12 11:13:51', NULL),
(384, '9', 'info', 'Payment Rejected', 'Elijah Esguerra has rejectedd a payment for Kai - Amount: ₱1,150.00 for Bill #000022. Payment has been rejected. Reason: Kulang', '13', NULL, '2025-11-12 11:13:38', '2025-11-12 11:13:38', NULL),
(385, '20', 'success', 'Payment Submitted Successfully', 'Your payment of ₱1,150.00 for Bill #000022 has been submitted and is now under review. You will be notified once it is processed.', NULL, '2025-11-12 11:14:56', '2025-11-12 11:14:49', '2025-11-12 11:14:56', NULL),
(386, '9', 'info', 'New Payment Submitted', 'Kai has submitted a payment of ₱1,150.00 for Bill #000022. Payment method: Main GCash. Payment has been submitted and is under review.', '13', NULL, '2025-11-12 11:14:49', '2025-11-12 11:14:49', NULL),
(387, '20', 'success', 'Payment Approved', 'Your payment of ₱1,150.00 for Bill #000022 has been approved and processed successfully.', NULL, '2025-11-12 11:15:10', '2025-11-12 11:15:04', '2025-11-12 11:15:10', NULL),
(388, '9', 'info', 'Payment Approved', 'Elijah Esguerra has approvedd a payment for Kai - Amount: ₱1,150.00 for Bill #000022. Payment has been approved and processed.', '13', NULL, '2025-11-12 11:15:04', '2025-11-12 11:15:04', NULL),
(389, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-12 16:39:01', '2025-11-12 16:38:47', '2025-11-12 16:39:01', NULL),
(390, '8', 'info', 'New Chatbot Message', 'Guest USER-8 sent a message: help', '32', '2025-11-12 16:39:43', '2025-11-12 16:39:21', '2025-11-12 16:39:43', NULL),
(391, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: asdsad', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:12', '2025-11-12 16:46:39', NULL),
(392, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saflsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:12', '2025-11-12 16:46:39', NULL),
(393, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: as', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:12', '2025-11-12 16:46:39', NULL),
(394, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:13', '2025-11-12 16:46:39', NULL),
(395, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fas', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:13', '2025-11-12 16:46:39', NULL),
(396, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:13', '2025-11-12 16:46:39', NULL),
(397, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:13', '2025-11-12 16:46:39', NULL),
(398, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: asf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:14', '2025-11-12 16:46:39', NULL),
(399, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:14', '2025-11-12 16:46:39', NULL),
(400, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:14', '2025-11-12 16:46:39', NULL),
(401, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:15', '2025-11-12 16:46:39', NULL),
(402, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:15', '2025-11-12 16:46:39', NULL),
(403, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:15', '2025-11-12 16:46:39', NULL),
(404, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:16', '2025-11-12 16:46:39', NULL),
(405, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:16', '2025-11-12 16:46:39', NULL),
(406, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:17', '2025-11-12 16:46:39', NULL),
(407, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: asf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:17', '2025-11-12 16:46:39', NULL),
(408, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: asf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:17', '2025-11-12 16:46:39', NULL),
(409, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:17', '2025-11-12 16:46:39', NULL),
(410, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:18', '2025-11-12 16:46:39', NULL),
(411, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:18', '2025-11-12 16:46:39', NULL),
(412, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:18', '2025-11-12 16:46:39', NULL),
(413, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:18', '2025-11-12 16:46:39', NULL),
(414, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: asf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:19', '2025-11-12 16:46:39', NULL),
(415, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: asf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:19', '2025-11-12 16:46:39', NULL),
(416, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: as', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:19', '2025-11-12 16:46:39', NULL),
(417, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:20', '2025-11-12 16:46:39', NULL),
(418, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:20', '2025-11-12 16:46:39', NULL),
(419, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: safsafsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:20', '2025-11-12 16:46:39', NULL),
(420, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:21', '2025-11-12 16:46:39', NULL),
(421, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:21', '2025-11-12 16:46:39', NULL),
(422, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:21', '2025-11-12 16:46:39', NULL),
(423, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:21', '2025-11-12 16:46:39', NULL),
(424, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:22', '2025-11-12 16:46:39', NULL),
(425, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:22', '2025-11-12 16:46:39', NULL),
(426, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: safsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:22', '2025-11-12 16:46:39', NULL),
(427, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:23', '2025-11-12 16:46:39', NULL),
(428, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:23', '2025-11-12 16:46:39', NULL),
(429, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fas', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:23', '2025-11-12 16:46:39', NULL),
(430, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:24', '2025-11-12 16:46:39', NULL),
(431, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fas', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:24', '2025-11-12 16:46:39', NULL),
(432, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:24', '2025-11-12 16:46:39', NULL),
(433, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:24', '2025-11-12 16:46:39', NULL),
(434, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsaf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:25', '2025-11-12 16:46:39', NULL),
(435, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:25', '2025-11-12 16:46:39', NULL),
(436, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:25', '2025-11-12 16:46:39', NULL),
(437, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: ga', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:35', '2025-11-12 16:46:39', NULL),
(438, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: safga', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:35', '2025-11-12 16:46:39', NULL),
(439, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: ga', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:35', '2025-11-12 16:46:39', NULL),
(440, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: ga', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:36', '2025-11-12 16:46:39', NULL),
(441, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: gg', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:36', '2025-11-12 16:46:39', NULL),
(442, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: et', '32', '2025-11-12 16:46:34', '2025-11-12 16:41:36', '2025-11-12 16:46:34', NULL),
(443, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: e\'s', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:36', '2025-11-12 16:46:39', NULL),
(444, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: \'', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:37', '2025-11-12 16:46:39', NULL),
(445, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a;f', '32', '2025-11-12 16:46:34', '2025-11-12 16:41:37', '2025-11-12 16:46:34', NULL),
(446, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: ;a', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:37', '2025-11-12 16:46:39', NULL),
(447, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:34', '2025-11-12 16:41:37', '2025-11-12 16:46:34', NULL),
(448, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:46:33', '2025-11-12 16:41:38', '2025-11-12 16:46:33', NULL),
(449, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: wr', '32', '2025-11-12 16:46:33', '2025-11-12 16:41:38', '2025-11-12 16:46:33', NULL),
(450, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: wqr', '32', '2025-11-12 16:46:39', '2025-11-12 16:41:38', '2025-11-12 16:46:39', NULL),
(451, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: wqr', '32', '2025-11-12 16:46:32', '2025-11-12 16:41:39', '2025-11-12 16:46:32', NULL),
(452, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:46:32', '2025-11-12 16:41:39', '2025-11-12 16:46:32', NULL),
(453, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sad', '32', '2025-11-12 16:46:33', '2025-11-12 16:41:39', '2025-11-12 16:46:33', NULL),
(454, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:33', '2025-11-12 16:41:39', '2025-11-12 16:46:33', NULL),
(455, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:30', '2025-11-12 16:41:40', '2025-11-12 16:46:30', NULL),
(456, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:31', '2025-11-12 16:41:40', '2025-11-12 16:46:31', NULL),
(457, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:32', '2025-11-12 16:41:40', '2025-11-12 16:46:32', NULL),
(458, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:46:29', '2025-11-12 16:41:41', '2025-11-12 16:46:29', NULL),
(459, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:46:30', '2025-11-12 16:41:41', '2025-11-12 16:46:30', NULL),
(460, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:30', '2025-11-12 16:41:41', '2025-11-12 16:46:30', NULL),
(461, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:30', '2025-11-12 16:41:41', '2025-11-12 16:46:30', NULL),
(462, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:28', '2025-11-12 16:41:42', '2025-11-12 16:46:28', NULL),
(463, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:46:29', '2025-11-12 16:41:42', '2025-11-12 16:46:29', NULL),
(464, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: w', '32', '2025-11-12 16:46:15', '2025-11-12 16:41:43', '2025-11-12 16:46:15', NULL),
(465, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: w', '32', '2025-11-12 16:46:28', '2025-11-12 16:41:43', '2025-11-12 16:46:28', NULL),
(466, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: as', '32', '2025-11-12 16:46:28', '2025-11-12 16:41:43', '2025-11-12 16:46:28', NULL),
(467, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fa', '32', '2025-11-12 16:46:28', '2025-11-12 16:41:43', '2025-11-12 16:46:28', NULL),
(468, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:45:39', '2025-11-12 16:41:44', '2025-11-12 16:45:39', NULL),
(469, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:45:39', '2025-11-12 16:41:44', '2025-11-12 16:45:39', NULL),
(470, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:45:39', '2025-11-12 16:41:44', '2025-11-12 16:45:39', NULL),
(471, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:46:15', '2025-11-12 16:41:44', '2025-11-12 16:46:15', NULL),
(472, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:45:14', '2025-11-12 16:41:45', '2025-11-12 16:45:14', NULL),
(473, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:45:39', '2025-11-12 16:41:45', '2025-11-12 16:45:39', NULL),
(474, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:45:04', '2025-11-12 16:41:46', '2025-11-12 16:45:04', NULL),
(475, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: safsa', '32', '2025-11-12 16:45:08', '2025-11-12 16:41:46', '2025-11-12 16:45:08', NULL),
(476, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-12 16:44:58', '2025-11-12 16:41:47', '2025-11-12 16:44:58', NULL),
(477, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fa', '32', '2025-11-12 16:45:01', '2025-11-12 16:41:47', '2025-11-12 16:45:01', NULL),
(478, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: s\'f', '32', '2025-11-12 16:45:02', '2025-11-12 16:41:47', '2025-11-12 16:45:02', NULL),
(479, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: as;', '32', '2025-11-12 16:44:53', '2025-11-12 16:41:48', '2025-11-12 16:44:53', NULL),
(480, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sadsa', '32', '2025-11-12 16:44:54', '2025-11-12 16:41:48', '2025-11-12 16:44:54', NULL),
(481, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:44:57', '2025-11-12 16:41:48', '2025-11-12 16:44:57', NULL),
(482, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:42:12', '2025-11-12 16:41:49', '2025-11-12 16:42:12', NULL),
(483, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa\'f', '32', '2025-11-12 16:42:13', '2025-11-12 16:41:49', '2025-11-12 16:42:13', NULL),
(484, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: as\'f', '32', '2025-11-12 16:44:47', '2025-11-12 16:41:49', '2025-11-12 16:44:47', NULL),
(485, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa\'f', '32', '2025-11-12 16:44:50', '2025-11-12 16:41:49', '2025-11-12 16:44:50', NULL),
(486, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: as', '32', '2025-11-12 16:42:07', '2025-11-12 16:41:50', '2025-11-12 16:42:07', NULL),
(487, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:42:11', '2025-11-12 16:41:50', '2025-11-12 16:42:11', NULL),
(488, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:44:39', '2025-11-12 16:41:52', '2025-11-12 16:44:39', NULL),
(489, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:44:41', '2025-11-12 16:41:52', '2025-11-12 16:44:41', NULL),
(490, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:44:43', '2025-11-12 16:41:52', '2025-11-12 16:44:43', NULL),
(491, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsaf', '32', '2025-11-12 16:44:45', '2025-11-12 16:41:52', '2025-11-12 16:44:45', NULL),
(492, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:44:33', '2025-11-12 16:41:53', '2025-11-12 16:44:33', NULL),
(493, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:44:35', '2025-11-12 16:41:53', '2025-11-12 16:44:35', NULL),
(494, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:44:37', '2025-11-12 16:41:53', '2025-11-12 16:44:37', NULL),
(495, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:44:29', '2025-11-12 16:41:54', '2025-11-12 16:44:29', NULL),
(496, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:44:31', '2025-11-12 16:41:54', '2025-11-12 16:44:31', NULL),
(497, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:44:23', '2025-11-12 16:41:55', '2025-11-12 16:44:23', NULL),
(498, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:44:25', '2025-11-12 16:41:55', '2025-11-12 16:44:25', NULL),
(499, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:44:27', '2025-11-12 16:41:55', '2025-11-12 16:44:27', NULL),
(500, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:44:17', '2025-11-12 16:41:56', '2025-11-12 16:44:17', NULL),
(501, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: saf', '32', '2025-11-12 16:44:19', '2025-11-12 16:41:56', '2025-11-12 16:44:19', NULL),
(502, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a', '32', '2025-11-12 16:44:21', '2025-11-12 16:41:56', '2025-11-12 16:44:21', NULL),
(503, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: fsa', '32', '2025-11-12 16:44:13', '2025-11-12 16:41:57', '2025-11-12 16:44:13', NULL),
(504, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: f', '32', '2025-11-12 16:44:15', '2025-11-12 16:41:57', '2025-11-12 16:44:15', NULL),
(505, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: sa', '32', '2025-11-12 16:44:07', '2025-11-12 16:41:58', '2025-11-12 16:44:07', NULL),
(506, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: dsa', '32', '2025-11-12 16:44:09', '2025-11-12 16:41:58', '2025-11-12 16:44:09', NULL),
(507, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:44:11', '2025-11-12 16:41:58', '2025-11-12 16:44:11', NULL),
(508, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: d', '32', '2025-11-12 16:44:01', '2025-11-12 16:41:59', '2025-11-12 16:44:01', NULL),
(509, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: ad', '32', '2025-11-12 16:44:03', '2025-11-12 16:41:59', '2025-11-12 16:44:03', NULL),
(510, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a', '32', '2025-11-12 16:44:05', '2025-11-12 16:41:59', '2025-11-12 16:44:05', NULL),
(511, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:59', '2025-11-12 16:42:00', '2025-11-12 16:43:59', NULL),
(512, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: d', '32', '2025-11-12 16:43:55', '2025-11-12 16:42:00', '2025-11-12 16:43:55', NULL),
(513, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a', '32', '2025-11-12 16:43:57', '2025-11-12 16:42:00', '2025-11-12 16:43:57', NULL),
(514, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:49', '2025-11-12 16:42:01', '2025-11-12 16:43:49', NULL),
(515, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: d', '32', '2025-11-12 16:43:51', '2025-11-12 16:42:01', '2025-11-12 16:43:51', NULL),
(516, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a', '32', '2025-11-12 16:43:53', '2025-11-12 16:42:01', '2025-11-12 16:43:53', NULL),
(517, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:47', '2025-11-12 16:42:02', '2025-11-12 16:43:47', NULL),
(518, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:48', '2025-11-12 16:42:02', '2025-11-12 16:43:48', NULL),
(519, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:42', '2025-11-12 16:42:03', '2025-11-12 16:43:42', NULL),
(520, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:44', '2025-11-12 16:42:03', '2025-11-12 16:43:44', NULL),
(521, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:37', '2025-11-12 16:42:04', '2025-11-12 16:43:37', NULL),
(522, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:38', '2025-11-12 16:42:04', '2025-11-12 16:43:38', NULL),
(523, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:41', '2025-11-12 16:42:04', '2025-11-12 16:43:41', NULL),
(524, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:29', '2025-11-12 16:42:05', '2025-11-12 16:42:29', NULL),
(525, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:31', '2025-11-12 16:42:05', '2025-11-12 16:42:31', NULL),
(526, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:28', '2025-11-12 16:42:07', '2025-11-12 16:42:28', NULL),
(527, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:22', '2025-11-12 16:42:08', '2025-11-12 16:42:22', NULL),
(528, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:25', '2025-11-12 16:42:08', '2025-11-12 16:42:25', NULL),
(529, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:26', '2025-11-12 16:42:08', '2025-11-12 16:42:26', NULL),
(530, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:34', '2025-11-12 16:42:10', '2025-11-12 16:43:34', NULL),
(531, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:31', '2025-11-12 16:42:11', '2025-11-12 16:43:31', NULL),
(532, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: a', '32', '2025-11-12 16:43:32', '2025-11-12 16:42:11', '2025-11-12 16:43:32', NULL),
(533, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:26', '2025-11-12 16:42:12', '2025-11-12 16:43:26', NULL),
(534, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:28', '2025-11-12 16:42:12', '2025-11-12 16:43:28', NULL),
(535, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:23', '2025-11-12 16:42:13', '2025-11-12 16:43:23', NULL),
(536, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:25', '2025-11-12 16:42:13', '2025-11-12 16:43:25', NULL),
(537, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:18', '2025-11-12 16:42:14', '2025-11-12 16:43:18', NULL),
(538, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:20', '2025-11-12 16:42:14', '2025-11-12 16:43:20', NULL),
(539, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:12', '2025-11-12 16:42:15', '2025-11-12 16:43:12', NULL),
(540, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:15', '2025-11-12 16:42:15', '2025-11-12 16:43:15', NULL),
(541, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:17', '2025-11-12 16:42:15', '2025-11-12 16:43:17', NULL),
(542, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:06', '2025-11-12 16:42:16', '2025-11-12 16:43:06', NULL),
(543, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:09', '2025-11-12 16:42:16', '2025-11-12 16:43:09', NULL),
(544, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: d', '32', '2025-11-12 16:43:11', '2025-11-12 16:42:16', '2025-11-12 16:43:11', NULL),
(545, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:00', '2025-11-12 16:42:17', '2025-11-12 16:43:00', NULL),
(546, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:02', '2025-11-12 16:42:17', '2025-11-12 16:43:02', NULL),
(547, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:43:05', '2025-11-12 16:42:17', '2025-11-12 16:43:05', NULL),
(548, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:56', '2025-11-12 16:42:18', '2025-11-12 16:42:56', NULL),
(549, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:59', '2025-11-12 16:42:18', '2025-11-12 16:42:59', NULL),
(550, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: dada', '32', '2025-11-12 16:42:49', '2025-11-12 16:42:19', '2025-11-12 16:42:49', NULL),
(551, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:51', '2025-11-12 16:42:19', '2025-11-12 16:42:51', NULL),
(552, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:53', '2025-11-12 16:42:19', '2025-11-12 16:42:53', NULL),
(553, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:47', '2025-11-12 16:42:20', '2025-11-12 16:42:47', NULL),
(554, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:41', '2025-11-12 16:42:21', '2025-11-12 16:42:41', NULL),
(555, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: dada', '32', '2025-11-12 16:42:43', '2025-11-12 16:42:21', '2025-11-12 16:42:43', NULL),
(556, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:45', '2025-11-12 16:42:21', '2025-11-12 16:42:45', NULL),
(557, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:39', '2025-11-12 16:42:22', '2025-11-12 16:42:39', NULL),
(558, '8', 'info', 'New Chatbot Message', 'Guest GUEST-1762965637702-onq3eafdjde sent a message: da', '32', '2025-11-12 16:42:37', '2025-11-12 16:42:23', '2025-11-12 16:42:37', NULL),
(559, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-12 16:51:54', '2025-11-12 16:51:47', '2025-11-12 16:51:54', NULL),
(560, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-12 17:08:48', '2025-11-12 17:08:42', '2025-11-12 17:08:48', NULL),
(561, '1', 'success', 'Welcome Back!', 'Hello Miguel Garcia, welcome back to Golden Country Homes!', NULL, '2025-11-12 17:13:30', '2025-11-12 17:13:24', '2025-11-12 17:13:30', NULL),
(562, '8', 'message', 'New Message', 'You have a new message from Miguel Garcia', NULL, '2025-11-12 17:50:00', '2025-11-12 17:16:33', '2025-11-12 17:50:00', NULL),
(563, '19', 'success', 'Welcome Back!', 'Hello Aethelbert Cabatay, you have successfully logged in from a new device.', NULL, '2025-11-12 17:55:10', '2025-11-12 17:54:58', '2025-11-12 17:55:10', NULL),
(564, '8', 'message', 'New Message', 'You have a new message from Aethelbert Cabatay', NULL, '2025-11-12 18:34:27', '2025-11-12 18:03:58', '2025-11-12 18:34:27', NULL),
(565, '20', 'success', 'Welcome Back!', 'Hello Kai, you have successfully logged in from a new device.', NULL, '2025-11-12 18:37:15', '2025-11-12 18:37:04', '2025-11-12 18:37:15', NULL),
(566, '19', 'success', 'Welcome Back!', 'Hello Aethelbert Cabatay, welcome back to Golden Country Homes!', NULL, '2025-11-12 18:47:31', '2025-11-12 18:47:25', '2025-11-12 18:47:31', NULL),
(567, '8', 'info', 'New Chatbot Message', 'Guest USER-8 sent a message: Help me please.', '32', '2025-11-13 15:25:56', '2025-11-12 18:49:20', '2025-11-13 15:25:56', NULL),
(568, '20', 'success', 'Welcome Back!', 'Hello Kai, welcome back to Golden Country Homes!', NULL, '2025-11-12 18:57:08', '2025-11-12 18:57:01', '2025-11-12 18:57:08', NULL),
(569, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-13 15:25:53', '2025-11-12 19:01:09', '2025-11-13 15:25:53', NULL),
(570, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-13 15:25:51', '2025-11-12 19:01:25', '2025-11-13 15:25:51', NULL),
(571, '20', 'message', 'New Message', 'You have a new message from Elijah Esguerra', NULL, '2025-11-12 19:03:05', '2025-11-12 19:01:39', '2025-11-12 19:03:05', NULL),
(572, '8', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-13 15:25:50', '2025-11-12 19:02:01', '2025-11-13 15:25:50', NULL),
(573, '20', 'message', 'New Message', 'You have a new message from Elijah Esguerra', NULL, '2025-11-12 19:03:05', '2025-11-12 19:02:20', '2025-11-12 19:03:05', NULL),
(574, '12', 'message', 'New Message', 'You have a new message from Kai', NULL, '2025-11-13 17:20:24', '2025-11-12 19:02:58', '2025-11-13 17:20:24', NULL),
(575, '8', 'success', 'Welcome Back!', 'Hello Elijah Esguerra, welcome back to Golden Country Homes!', NULL, '2025-11-13 15:25:47', '2025-11-13 15:25:36', '2025-11-13 15:25:47', NULL),
(576, '21', 'success', 'Welcome Back!', 'Hello Raever Gio Marcus C. Delos Reyes, you have successfully logged in from a new device.', NULL, '2025-11-13 16:00:23', '2025-11-13 16:00:10', '2025-11-13 16:00:23', NULL),
(577, '20', 'message', 'New Message', 'You have a new message from Raever Gio Marcus C. Delos Reyes', NULL, NULL, '2025-11-13 16:06:13', '2025-11-13 16:06:13', NULL),
(578, '22', 'success', 'Welcome Back!', 'Hello John Ezekiel G. Mendiola, you have successfully logged in from a new device.', NULL, '2025-11-13 16:25:38', '2025-11-13 16:25:25', '2025-11-13 16:25:38', NULL),
(579, '19', 'message', 'New Message', 'You have a new message from John Ezekiel G. Mendiola', NULL, NULL, '2025-11-13 16:49:43', '2025-11-13 16:49:43', NULL),
(580, '22', 'success', 'Welcome Back!', 'Hello John Ezekiel G. Mendiola, welcome back to Golden Country Homes!', NULL, '2025-11-13 17:17:46', '2025-11-13 17:17:38', '2025-11-13 17:17:46', NULL),
(581, '12', 'success', 'Welcome Back!', 'Hello Elle Cabatay, welcome back to Golden Country Homes!', NULL, '2025-11-13 17:20:23', '2025-11-13 17:20:13', '2025-11-13 17:20:23', NULL),
(582, '23', 'success', 'Welcome Back!', 'Hello Gio Angelo A. Jobog, you have successfully logged in from a new device.', NULL, '2025-11-13 18:13:34', '2025-11-13 18:13:24', '2025-11-13 18:13:34', NULL),
(583, '22', 'message', 'New Message', 'You have a new message from Gio Angelo A. Jobog', NULL, NULL, '2025-11-13 18:19:15', '2025-11-13 18:19:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notification_settings`
--

CREATE TABLE `notification_settings` (
  `id` int(11) NOT NULL,
  `module_id` varchar(255) DEFAULT NULL,
  `users_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification_settings`
--

INSERT INTO `notification_settings` (`id`, `module_id`, `users_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '14', '1', 'inactive', '2025-09-21 01:12:27', '2025-10-26 21:30:10', NULL),
(2, '22', '1', 'active', '2025-10-12 00:33:37', '2025-10-12 00:33:37', NULL),
(3, '3', '9', 'active', '2025-10-26 12:49:30', '2025-10-26 12:49:30', NULL),
(4, '16', '9', 'active', '2025-10-26 12:49:30', '2025-10-26 12:49:30', NULL),
(5, '30', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(6, '13', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(7, '26', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(8, '22', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(9, '24', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(10, '29', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(11, '28', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(12, '17', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(13, '14', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(14, '6', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(15, '9', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(16, '1', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(17, '12', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(18, '23', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(19, '5', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(20, '27', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(21, '2', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(22, '19', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(23, '15', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(24, '21', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(25, '11', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(26, '4', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(27, '20', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(28, '31', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(29, '8', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(30, '7', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(31, '10', '9', 'active', '2025-10-26 21:29:08', '2025-10-26 21:29:08', NULL),
(32, '32', '8', 'active', '2025-10-30 16:00:39', '2025-10-30 16:00:39', NULL),
(33, '30', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(34, '13', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(35, '26', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(36, '22', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(37, '24', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(38, '31', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(39, '8', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(40, '7', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL),
(41, '10', '8', 'active', '2025-10-30 16:40:52', '2025-10-30 16:40:52', NULL);

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
-- Table structure for table `permission_settings`
--

CREATE TABLE `permission_settings` (
  `id` int(11) NOT NULL,
  `users_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission_settings`
--

INSERT INTO `permission_settings` (`id`, `users_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'active', '2025-09-21 05:17:29', '2025-09-21 05:30:43', '2025-09-21 05:30:43'),
(2, '1', 'inactive', '2025-09-21 05:30:29', '2025-10-30 16:45:16', NULL),
(3, '2', 'active', '2025-09-22 12:07:40', '2025-09-22 12:07:40', NULL),
(4, '1', 'active', '2025-10-12 02:59:38', '2025-10-12 03:01:30', '2025-10-12 03:01:30'),
(5, '8', 'active', '2025-10-26 12:29:29', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(6, '9', 'active', '2025-10-26 12:48:11', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(7, '10', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(8, '12', 'active', '2025-10-26 23:10:19', '2025-11-09 07:06:21', '2025-11-09 07:06:21'),
(9, '17', 'active', '2025-10-30 16:24:53', '2025-10-30 16:24:53', NULL),
(10, '1', 'active', '2025-10-30 16:44:31', '2025-11-12 17:11:54', '2025-11-12 17:11:54'),
(11, '3', 'active', '2025-10-30 16:44:38', '2025-11-05 16:08:10', '2025-11-05 16:08:10'),
(12, '5', 'active', '2025-10-30 16:44:46', '2025-11-05 16:08:14', '2025-11-05 16:08:14'),
(13, '13', 'active', '2025-10-30 16:44:55', '2025-11-05 16:08:05', '2025-11-05 16:08:05'),
(14, '8', 'active', '2025-11-04 15:40:17', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(15, '8', 'inactive', '2025-11-04 15:40:37', '2025-11-09 04:54:27', NULL),
(16, '9', 'active', '2025-11-06 15:34:52', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(17, '9', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(18, '9', 'inactive', '2025-11-06 16:15:08', '2025-11-06 16:19:28', NULL),
(19, '9', 'inactive', '2025-11-06 16:19:22', '2025-11-06 16:22:18', NULL),
(20, '9', 'inactive', '2025-11-06 16:20:41', '2025-11-06 16:22:26', NULL),
(21, '9', 'inactive', '2025-11-06 16:22:11', '2025-11-06 16:23:19', NULL),
(22, '9', 'inactive', '2025-11-06 16:23:13', '2025-11-06 16:26:26', NULL),
(23, '9', 'inactive', '2025-11-06 16:26:55', '2025-11-06 16:28:25', NULL),
(24, '9', 'inactive', '2025-11-06 16:28:51', '2025-11-06 16:30:29', NULL),
(25, '9', 'inactive', '2025-11-06 16:30:22', '2025-11-06 17:03:04', NULL),
(26, '9', 'active', '2025-11-06 17:04:35', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(27, '8', 'inactive', '2025-11-09 04:54:03', '2025-11-11 16:22:25', NULL),
(28, '9', 'active', '2025-11-09 05:19:24', '2025-11-09 05:21:37', '2025-11-09 05:21:37'),
(29, '9', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(30, '9', 'active', '2025-11-09 05:24:26', '2025-11-09 05:25:06', '2025-11-09 05:25:06'),
(31, '9', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(32, '9', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(33, '9', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(34, '9', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(35, '9', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(36, '12', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(37, '9', 'inactive', '2025-11-11 11:19:39', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(38, '8', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(39, '9', 'active', '2025-11-11 16:35:57', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(40, '9', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(41, '9', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(42, '9', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(43, '12', 'active', '2025-11-11 22:59:50', '2025-11-11 22:59:50', NULL),
(44, '9', 'active', '2025-11-12 00:25:15', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(45, '20', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(46, '20', 'active', '2025-11-12 09:31:22', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(47, '1', 'active', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(48, '19', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(49, '20', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(50, '21', 'active', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(51, '22', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(52, '23', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_settings_list`
--

CREATE TABLE `permission_settings_list` (
  `id` int(11) NOT NULL,
  `permission_settings_id` varchar(45) DEFAULT NULL,
  `permission_allowed` varchar(255) DEFAULT NULL,
  `module_id` varchar(45) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permission_settings_list`
--

INSERT INTO `permission_settings_list` (`id`, `permission_settings_id`, `permission_allowed`, `module_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'user management', '8', 'active', '2025-09-21 05:17:29', '2025-09-21 05:30:43', '2025-09-21 05:30:43'),
(2, '1', 'vehicle management', '10', 'active', '2025-09-21 05:17:29', '2025-09-21 05:30:43', '2025-09-21 05:30:43'),
(3, '2', 'announcement', '13', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(4, '2', 'appointment management', '17', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(5, '2', 'billing management', '14', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(6, '2', 'billing payment', '6', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(7, '2', 'business management', '9', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(8, '2', 'dashboard', '1', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(9, '2', 'feedback', '3', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(10, '2', 'feedback management', '16', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(11, '2', 'incident management', '12', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(12, '2', 'incident request', '5', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(13, '2', 'message', '2', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(14, '2', 'payment method management', '15', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(15, '2', 'service management', '11', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(16, '2', 'service request', '4', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(17, '2', 'user management', '8', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(18, '2', 'vehicle', '7', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(19, '2', 'vehicle management', '10', 'active', '2025-09-21 05:30:29', '2025-09-21 05:30:52', '2025-09-21 05:30:52'),
(20, '2', 'announcement', '13', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(21, '2', 'appointment management', '17', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(22, '2', 'billing management', '14', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(23, '2', 'billing payment', '6', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(24, '2', 'business management', '9', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(25, '2', 'dashboard', '1', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(26, '2', 'feedback', '3', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(27, '2', 'feedback management', '16', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(28, '2', 'incident management', '12', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(29, '2', 'incident request', '5', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(30, '2', 'message', '2', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(31, '2', 'payment method management', '15', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(32, '2', 'service management', '11', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(33, '2', 'service request', '4', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(34, '2', 'user management', '8', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(35, '2', 'vehicle', '7', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(36, '2', 'vehicle management', '10', 'active', '2025-09-21 05:30:52', '2025-09-21 05:33:34', '2025-09-21 05:33:34'),
(37, '2', 'announcement', '13', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(38, '2', 'appointment management', '17', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(39, '2', 'billing management', '14', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(40, '2', 'billing payment', '6', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(41, '2', 'business management', '9', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(42, '2', 'dashboard', '1', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(43, '2', 'feedback', '3', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(44, '2', 'feedback management', '16', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(45, '2', 'incident management', '12', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(46, '2', 'incident request', '5', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(47, '2', 'message', '2', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(48, '2', 'notification settings', '19', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(49, '2', 'payment account management', '15', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(50, '2', 'Permission Settings', '21', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(51, '2', 'service management', '11', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(52, '2', 'service request', '4', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(53, '2', 'system settings', '20', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(54, '2', 'user management', '8', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(55, '2', 'vehicle', '7', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(56, '2', 'vehicle management', '10', 'active', '2025-09-21 05:33:34', '2025-10-12 03:01:41', '2025-10-12 03:01:41'),
(57, '3', 'announcement', '13', 'active', '2025-09-22 12:07:40', '2025-10-11 08:59:55', '2025-10-11 08:59:55'),
(58, '3', 'announcement', '13', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(59, '3', 'appointment management', '17', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(60, '3', 'billing management', '14', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(61, '3', 'billing payment', '6', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(62, '3', 'business management', '9', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(63, '3', 'dashboard', '1', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(64, '3', 'feedback', '3', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(65, '3', 'feedback management', '16', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(66, '3', 'incident management', '12', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(67, '3', 'incident request', '5', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(68, '3', 'message', '2', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(69, '3', 'notification settings', '19', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(70, '3', 'payment account management', '15', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(71, '3', 'Permission Settings', '21', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(72, '3', 'service management', '11', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(73, '3', 'service request', '4', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(74, '3', 'system settings', '20', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(75, '3', 'user management', '8', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(76, '3', 'vehicle', '7', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(77, '3', 'vehicle management', '10', 'active', '2025-10-11 08:59:55', '2025-10-11 08:59:55', NULL),
(78, '4', 'incident report', '23', 'active', '2025-10-12 02:59:38', '2025-10-12 03:01:30', '2025-10-12 03:01:30'),
(79, '2', 'announcement', '13', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(80, '2', 'appointment management', '17', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(81, '2', 'billing management', '14', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(82, '2', 'billing payment', '6', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(83, '2', 'business management', '9', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(84, '2', 'dashboard', '1', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(85, '2', 'feedback', '3', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(86, '2', 'feedback management', '16', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(87, '2', 'incident management', '12', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(88, '2', 'incident report', '23', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(89, '2', 'incident request', '5', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(90, '2', 'message', '2', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(91, '2', 'notification settings', '19', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(92, '2', 'payment account management', '15', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(93, '2', 'Permission Settings', '21', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(94, '2', 'service management', '11', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(95, '2', 'service request', '4', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(96, '2', 'system settings', '20', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(97, '2', 'user management', '8', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(98, '2', 'vehicle', '7', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(99, '2', 'vehicle management', '10', 'active', '2025-10-12 03:01:41', '2025-10-21 14:31:42', '2025-10-21 14:31:42'),
(100, '2', 'announcement', '13', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(101, '2', 'apply business', '22', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(102, '2', 'appointment management', '17', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(103, '2', 'billing management', '14', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(104, '2', 'billing payment', '6', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(105, '2', 'business management', '9', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(106, '2', 'dashboard', '1', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(107, '2', 'feedback', '3', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(108, '2', 'feedback management', '16', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(109, '2', 'incident management', '12', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(110, '2', 'incident report', '23', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(111, '2', 'incident request', '5', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(112, '2', 'message', '2', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(113, '2', 'notification settings', '19', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(114, '2', 'payment account management', '15', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(115, '2', 'Permission Settings', '21', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(116, '2', 'service management', '11', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(117, '2', 'service request', '4', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(118, '2', 'system settings', '20', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(119, '2', 'user management', '8', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(120, '2', 'vehicle', '7', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(121, '2', 'vehicle management', '10', 'active', '2025-10-21 14:31:42', '2025-10-21 15:36:32', '2025-10-21 15:36:32'),
(122, '2', 'announcement', '13', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(123, '2', 'apply business', '22', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(124, '2', 'appointment management', '17', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(125, '2', 'billing management', '14', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(126, '2', 'billing payment', '6', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(127, '2', 'business management', '9', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(128, '2', 'dashboard', '1', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(129, '2', 'feedback', '3', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(130, '2', 'feedback management', '16', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(131, '2', 'incident management', '12', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(132, '2', 'incident report', '23', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(133, '2', 'incident request', '5', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(134, '2', 'message', '2', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(135, '2', 'notification settings', '19', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(136, '2', 'payment account management', '15', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(137, '2', 'Permission Settings', '21', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(138, '2', 'service management', '11', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(139, '2', 'service request', '4', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(140, '2', 'system settings', '20', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(141, '2', 'user management', '8', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(142, '2', 'vehicle', '7', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(143, '2', 'vehicle management', '10', 'active', '2025-10-21 15:36:32', '2025-10-21 15:44:43', '2025-10-21 15:44:43'),
(144, '2', 'apply business', '22', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(145, '2', 'appointment management', '17', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(146, '2', 'billing management', '14', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(147, '2', 'billing payment', '6', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(148, '2', 'business management', '9', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(149, '2', 'dashboard', '1', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(150, '2', 'feedback', '3', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(151, '2', 'feedback management', '16', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(152, '2', 'incident management', '12', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(153, '2', 'incident report', '23', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(154, '2', 'incident request', '5', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(155, '2', 'message', '2', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(156, '2', 'notification settings', '19', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(157, '2', 'payment account management', '15', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(158, '2', 'Permission Settings', '21', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(159, '2', 'service management', '11', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(160, '2', 'service request', '4', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(161, '2', 'system settings', '20', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(162, '2', 'user management', '8', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(163, '2', 'vehicle', '7', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(164, '2', 'vehicle management', '10', 'active', '2025-10-21 15:44:43', '2025-10-21 15:44:59', '2025-10-21 15:44:59'),
(165, '2', 'announcement', '13', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(166, '2', 'apply business', '22', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(167, '2', 'appointment management', '17', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(168, '2', 'billing management', '14', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(169, '2', 'billing payment', '6', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(170, '2', 'business management', '9', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(171, '2', 'dashboard', '1', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(172, '2', 'feedback', '3', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(173, '2', 'feedback management', '16', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(174, '2', 'incident management', '12', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(175, '2', 'incident report', '23', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(176, '2', 'incident request', '5', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(177, '2', 'message', '2', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(178, '2', 'notification settings', '19', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(179, '2', 'payment account management', '15', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(180, '2', 'Permission Settings', '21', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(181, '2', 'service management', '11', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(182, '2', 'service request', '4', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(183, '2', 'system settings', '20', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(184, '2', 'user management', '8', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(185, '2', 'vehicle', '7', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(186, '2', 'vehicle management', '10', 'active', '2025-10-21 15:44:59', '2025-10-21 15:59:31', '2025-10-21 15:59:31'),
(187, '2', 'announcement', '13', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(188, '2', 'apply business', '22', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(189, '2', 'appointment management', '17', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(190, '2', 'billing management', '14', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(191, '2', 'billing payment', '6', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(192, '2', 'business management', '9', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(193, '2', 'feedback', '3', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(194, '2', 'feedback management', '16', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(195, '2', 'incident management', '12', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(196, '2', 'incident report', '23', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(197, '2', 'incident request', '5', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(198, '2', 'message', '2', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(199, '2', 'notification settings', '19', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(200, '2', 'payment account management', '15', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(201, '2', 'Permission Settings', '21', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(202, '2', 'service management', '11', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(203, '2', 'service request', '4', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(204, '2', 'system settings', '20', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(205, '2', 'user management', '8', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(206, '2', 'vehicle', '7', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(207, '2', 'vehicle management', '10', 'active', '2025-10-21 15:59:31', '2025-10-21 16:00:12', '2025-10-21 16:00:12'),
(208, '2', 'announcement', '13', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(209, '2', 'apply business', '22', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(210, '2', 'appointment management', '17', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(211, '2', 'billing management', '14', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(212, '2', 'billing payment', '6', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(213, '2', 'business management', '9', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(214, '2', 'dashboard', '1', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(215, '2', 'feedback', '3', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(216, '2', 'feedback management', '16', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(217, '2', 'incident management', '12', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(218, '2', 'incident report', '23', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(219, '2', 'incident request', '5', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(220, '2', 'message', '2', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(221, '2', 'notification settings', '19', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(222, '2', 'payment account management', '15', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(223, '2', 'Permission Settings', '21', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(224, '2', 'service management', '11', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(225, '2', 'service request', '4', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(226, '2', 'system settings', '20', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(227, '2', 'user management', '8', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(228, '2', 'vehicle', '7', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(229, '2', 'vehicle management', '10', 'active', '2025-10-21 16:00:12', '2025-10-21 16:10:19', '2025-10-21 16:10:19'),
(230, '2', 'Permission Settings', '21', 'active', '2025-10-21 16:10:19', '2025-10-24 06:04:16', '2025-10-24 06:04:16'),
(231, '2', 'announcement', '13', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(232, '2', 'apply business', '22', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(233, '2', 'appointment management', '17', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(234, '2', 'billing management', '14', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(235, '2', 'billing payment', '6', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(236, '2', 'business management', '9', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(237, '2', 'dashboard', '1', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(238, '2', 'feedback', '3', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(239, '2', 'feedback management', '16', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(240, '2', 'incident management', '12', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(241, '2', 'incident report', '23', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(242, '2', 'incident request', '5', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(243, '2', 'message', '2', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(244, '2', 'notification settings', '19', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(245, '2', 'payment account management', '15', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(246, '2', 'Permission Settings', '21', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(247, '2', 'service management', '11', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(248, '2', 'service request', '4', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(249, '2', 'system settings', '20', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(250, '2', 'user management', '8', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(251, '2', 'vehicle', '7', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(252, '2', 'vehicle management', '10', 'active', '2025-10-24 06:04:16', '2025-10-26 12:18:19', '2025-10-26 12:18:19'),
(253, '2', 'activity logs', '30', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(254, '2', 'announcement', '13', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(255, '2', 'apply appointment', '26', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(256, '2', 'apply business', '22', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(257, '2', 'apply landlord', '24', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(258, '2', 'appointment allow schedule', '29', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(259, '2', 'appointment category', '28', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(260, '2', 'appointment management', '17', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(261, '2', 'billing management', '14', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(262, '2', 'billing payment', '6', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(263, '2', 'business management', '9', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(264, '2', 'dashboard', '1', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(265, '2', 'feedback', '3', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(266, '2', 'feedback management', '16', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(267, '2', 'incident management', '12', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(268, '2', 'incident report', '23', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(269, '2', 'incident request', '5', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(270, '2', 'landlord permissions', '27', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(271, '2', 'message', '2', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(272, '2', 'notification settings', '19', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(273, '2', 'payment account management', '15', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(274, '2', 'Permission Settings', '21', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(275, '2', 'service management', '11', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(276, '2', 'service request', '4', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(277, '2', 'system settings', '20', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(278, '2', 'user login', '31', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(279, '2', 'user management', '8', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(280, '2', 'vehicle', '7', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(281, '2', 'vehicle management', '10', 'active', '2025-10-26 12:18:19', '2025-10-30 16:45:16', '2025-10-30 16:45:16'),
(282, '5', 'activity logs', '30', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(283, '5', 'announcement', '13', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(284, '5', 'apply appointment', '26', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(285, '5', 'apply business', '22', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(286, '5', 'apply landlord', '24', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(287, '5', 'appointment allow schedule', '29', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(288, '5', 'appointment category', '28', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(289, '5', 'appointment management', '17', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(290, '5', 'billing management', '14', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(291, '5', 'billing payment', '6', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(292, '5', 'business management', '9', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(293, '5', 'dashboard', '1', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(294, '5', 'feedback', '3', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(295, '5', 'feedback management', '16', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(296, '5', 'incident management', '12', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(297, '5', 'incident report', '23', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(298, '5', 'incident request', '5', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(299, '5', 'landlord permissions', '27', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(300, '5', 'message', '2', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(301, '5', 'notification settings', '19', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(302, '5', 'payment account management', '15', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(303, '5', 'Permission Settings', '21', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(304, '5', 'service management', '11', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(305, '5', 'service request', '4', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(306, '5', 'system settings', '20', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(307, '5', 'user login', '31', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(308, '5', 'user management', '8', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(309, '5', 'vehicle', '7', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(310, '5', 'vehicle management', '10', 'active', '2025-10-26 12:29:29', '2025-10-30 16:01:08', '2025-10-30 16:01:08'),
(311, '6', 'activity logs', '30', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(312, '6', 'announcement', '13', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(313, '6', 'apply appointment', '26', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(314, '6', 'apply business', '22', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(315, '6', 'apply landlord', '24', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(316, '6', 'appointment allow schedule', '29', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(317, '6', 'appointment category', '28', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(318, '6', 'appointment management', '17', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(319, '6', 'billing management', '14', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(320, '6', 'billing payment', '6', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(321, '6', 'business management', '9', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(322, '6', 'dashboard', '1', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(323, '6', 'feedback', '3', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(324, '6', 'feedback management', '16', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(325, '6', 'incident management', '12', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(326, '6', 'incident report', '23', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(327, '6', 'incident request', '5', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(328, '6', 'landlord permissions', '27', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(329, '6', 'message', '2', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(330, '6', 'notification settings', '19', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(331, '6', 'payment account management', '15', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(332, '6', 'Permission Settings', '21', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(333, '6', 'service management', '11', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(334, '6', 'service request', '4', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(335, '6', 'system settings', '20', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(336, '6', 'user login', '31', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(337, '6', 'user management', '8', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(338, '6', 'vehicle', '7', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(339, '6', 'vehicle management', '10', 'active', '2025-10-26 12:48:11', '2025-11-02 15:08:13', '2025-11-02 15:08:13'),
(340, '7', 'activity logs', '30', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(341, '7', 'announcement', '13', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(342, '7', 'apply appointment', '26', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(343, '7', 'apply business', '22', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(344, '7', 'apply landlord', '24', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(345, '7', 'appointment allow schedule', '29', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(346, '7', 'appointment category', '28', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(347, '7', 'appointment management', '17', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(348, '7', 'billing management', '14', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(349, '7', 'billing payment', '6', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(350, '7', 'business management', '9', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(351, '7', 'dashboard', '1', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(352, '7', 'feedback', '3', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(353, '7', 'feedback management', '16', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(354, '7', 'incident management', '12', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(355, '7', 'incident report', '23', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(356, '7', 'incident request', '5', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(357, '7', 'landlord permissions', '27', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(358, '7', 'message', '2', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(359, '7', 'notification settings', '19', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(360, '7', 'payment account management', '15', 'active', '2025-10-26 15:30:56', '2025-10-26 15:30:56', NULL),
(361, '8', 'dashboard', '1', 'active', '2025-10-26 23:10:19', '2025-10-26 23:13:20', '2025-10-26 23:13:20'),
(362, '8', 'incident management', '12', 'active', '2025-10-26 23:10:19', '2025-10-26 23:13:20', '2025-10-26 23:13:20'),
(363, '8', 'message', '2', 'active', '2025-10-26 23:10:19', '2025-10-26 23:13:20', '2025-10-26 23:13:20'),
(364, '8', 'service management', '11', 'active', '2025-10-26 23:10:19', '2025-10-26 23:13:20', '2025-10-26 23:13:20'),
(365, '8', 'dashboard', '1', 'active', '2025-10-26 23:13:20', '2025-10-26 23:14:04', '2025-10-26 23:14:04'),
(366, '8', 'incident management', '12', 'active', '2025-10-26 23:13:20', '2025-10-26 23:14:04', '2025-10-26 23:14:04'),
(367, '8', 'service management', '11', 'active', '2025-10-26 23:13:20', '2025-10-26 23:14:04', '2025-10-26 23:14:04'),
(368, '8', 'dashboard', '1', 'active', '2025-10-26 23:14:04', '2025-10-26 23:17:19', '2025-10-26 23:17:19'),
(369, '8', 'incident management', '12', 'active', '2025-10-26 23:14:04', '2025-10-26 23:17:19', '2025-10-26 23:17:19'),
(370, '8', 'message', '2', 'active', '2025-10-26 23:14:04', '2025-10-26 23:17:19', '2025-10-26 23:17:19'),
(371, '8', 'service management', '11', 'active', '2025-10-26 23:14:04', '2025-10-26 23:17:19', '2025-10-26 23:17:19'),
(372, '8', 'dashboard', '1', 'active', '2025-10-26 23:17:19', '2025-10-26 23:17:32', '2025-10-26 23:17:32'),
(373, '8', 'guest chatbot', '32', 'active', '2025-10-26 23:17:19', '2025-10-26 23:17:32', '2025-10-26 23:17:32'),
(374, '8', 'incident management', '12', 'active', '2025-10-26 23:17:19', '2025-10-26 23:17:32', '2025-10-26 23:17:32'),
(375, '8', 'message', '2', 'active', '2025-10-26 23:17:19', '2025-10-26 23:17:32', '2025-10-26 23:17:32'),
(376, '8', 'service management', '11', 'active', '2025-10-26 23:17:19', '2025-10-26 23:17:32', '2025-10-26 23:17:32'),
(377, '8', 'dashboard', '1', 'active', '2025-10-26 23:17:32', '2025-10-26 23:20:40', '2025-10-26 23:20:40'),
(378, '8', 'incident management', '12', 'active', '2025-10-26 23:17:32', '2025-10-26 23:20:40', '2025-10-26 23:20:40'),
(379, '8', 'message', '2', 'active', '2025-10-26 23:17:32', '2025-10-26 23:20:40', '2025-10-26 23:20:40'),
(380, '8', 'service management', '11', 'active', '2025-10-26 23:17:32', '2025-10-26 23:20:40', '2025-10-26 23:20:40'),
(381, '8', 'dashboard', '1', 'active', '2025-10-26 23:20:40', '2025-10-26 23:21:16', '2025-10-26 23:21:16'),
(382, '8', 'billing management', '14', 'active', '2025-10-26 23:21:16', '2025-10-26 23:25:19', '2025-10-26 23:25:19'),
(383, '8', 'dashboard', '1', 'active', '2025-10-26 23:21:16', '2025-10-26 23:25:19', '2025-10-26 23:25:19'),
(384, '8', 'dashboard', '1', 'active', '2025-10-26 23:25:19', '2025-10-26 23:26:10', '2025-10-26 23:26:10'),
(385, '8', 'dashboard', '1', 'active', '2025-10-26 23:26:10', '2025-10-26 23:28:10', '2025-10-26 23:28:10'),
(386, '8', 'message', '2', 'active', '2025-10-26 23:26:10', '2025-10-26 23:28:10', '2025-10-26 23:28:10'),
(387, '8', 'dashboard', '1', 'active', '2025-10-26 23:28:10', '2025-10-26 23:33:22', '2025-10-26 23:33:22'),
(388, '8', 'message', '2', 'active', '2025-10-26 23:28:10', '2025-10-26 23:33:22', '2025-10-26 23:33:22'),
(389, '8', 'service management', '11', 'active', '2025-10-26 23:28:10', '2025-10-26 23:33:22', '2025-10-26 23:33:22'),
(390, '8', 'billing management', '14', 'active', '2025-10-26 23:33:22', '2025-10-26 23:33:47', '2025-10-26 23:33:47'),
(391, '8', 'message', '2', 'active', '2025-10-26 23:33:22', '2025-10-26 23:33:47', '2025-10-26 23:33:47'),
(392, '8', 'service management', '11', 'active', '2025-10-26 23:33:22', '2025-10-26 23:33:47', '2025-10-26 23:33:47'),
(393, '8', 'billing management', '14', 'active', '2025-10-26 23:33:47', '2025-10-27 00:28:41', '2025-10-27 00:28:41'),
(394, '8', 'message', '2', 'active', '2025-10-26 23:33:47', '2025-10-27 00:28:41', '2025-10-27 00:28:41'),
(395, '8', 'billing management', '14', 'active', '2025-10-27 00:28:41', '2025-10-27 00:42:36', '2025-10-27 00:42:36'),
(396, '8', 'billing payment', '6', 'active', '2025-10-27 00:28:41', '2025-10-27 00:42:36', '2025-10-27 00:42:36'),
(397, '8', 'message', '2', 'active', '2025-10-27 00:28:41', '2025-10-27 00:42:36', '2025-10-27 00:42:36'),
(398, '8', 'apply appointment', '26', 'active', '2025-10-27 00:42:36', '2025-10-27 01:48:50', '2025-10-27 01:48:50'),
(399, '8', 'dashboard', '1', 'active', '2025-10-27 00:42:36', '2025-10-27 01:48:50', '2025-10-27 01:48:50'),
(400, '8', 'vehicle', '7', 'active', '2025-10-27 00:42:36', '2025-10-27 01:48:50', '2025-10-27 01:48:50'),
(401, '8', 'apply appointment', '26', 'active', '2025-10-27 01:48:50', '2025-11-09 07:06:21', '2025-11-09 07:06:21'),
(402, '8', 'dashboard', '1', 'active', '2025-10-27 01:48:50', '2025-11-09 07:06:21', '2025-11-09 07:06:21'),
(403, '8', 'vehicle', '7', 'active', '2025-10-27 01:48:50', '2025-11-09 07:06:21', '2025-11-09 07:06:21'),
(404, '5', 'activity logs', '30', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(405, '5', 'announcement', '13', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(406, '5', 'apply appointment', '26', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(407, '5', 'apply business', '22', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(408, '5', 'apply landlord', '24', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(409, '5', 'appointment allow schedule', '29', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(410, '5', 'appointment category', '28', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(411, '5', 'appointment management', '17', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(412, '5', 'billing management', '14', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(413, '5', 'billing payment', '6', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(414, '5', 'business management', '9', 'active', '2025-10-30 16:01:08', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(415, '5', 'dashboard', '1', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(416, '5', 'feedback', '3', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(417, '5', 'feedback management', '16', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(418, '5', 'guest chatbot', '32', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(419, '5', 'incident management', '12', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(420, '5', 'incident report', '23', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(421, '5', 'incident request', '5', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(422, '5', 'landlord permissions', '27', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(423, '5', 'message', '2', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(424, '5', 'notification settings', '19', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(425, '5', 'payment account management', '15', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(426, '5', 'Permission Settings', '21', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(427, '5', 'service management', '11', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(428, '5', 'service request', '4', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(429, '5', 'system settings', '20', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(430, '5', 'user login', '31', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(431, '5', 'user management', '8', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(432, '5', 'vehicle', '7', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(433, '5', 'vehicle management', '10', 'active', '2025-10-30 16:01:09', '2025-10-30 16:13:19', '2025-10-30 16:13:19'),
(434, '5', 'activity logs', '30', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(435, '5', 'announcement', '13', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(436, '5', 'apply appointment', '26', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(437, '5', 'apply business', '22', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(438, '5', 'apply landlord', '24', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(439, '5', 'appointment allow schedule', '29', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(440, '5', 'appointment category', '28', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(441, '5', 'appointment management', '17', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(442, '5', 'billing management', '14', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(443, '5', 'billing payment', '6', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35');
INSERT INTO `permission_settings_list` (`id`, `permission_settings_id`, `permission_allowed`, `module_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(444, '5', 'business management', '9', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(445, '5', 'dashboard', '1', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(446, '5', 'feedback', '3', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(447, '5', 'feedback management', '16', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(448, '5', 'incident management', '12', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(449, '5', 'incident report', '23', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(450, '5', 'incident request', '5', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(451, '5', 'landlord permissions', '27', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(452, '5', 'message', '2', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(453, '5', 'notification settings', '19', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(454, '5', 'payment account management', '15', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(455, '5', 'Permission Settings', '21', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(456, '5', 'service management', '11', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(457, '5', 'service request', '4', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(458, '5', 'system settings', '20', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(459, '5', 'user login', '31', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(460, '5', 'user management', '8', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(461, '5', 'vehicle', '7', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(462, '5', 'vehicle management', '10', 'active', '2025-10-30 16:13:19', '2025-10-30 16:13:35', '2025-10-30 16:13:35'),
(463, '5', 'activity logs', '30', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(464, '5', 'announcement', '13', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(465, '5', 'apply appointment', '26', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(466, '5', 'apply business', '22', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(467, '5', 'apply landlord', '24', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(468, '5', 'appointment allow schedule', '29', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(469, '5', 'appointment category', '28', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(470, '5', 'appointment management', '17', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(471, '5', 'billing management', '14', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(472, '5', 'billing payment', '6', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(473, '5', 'business management', '9', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(474, '5', 'dashboard', '1', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(475, '5', 'feedback', '3', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(476, '5', 'feedback management', '16', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(477, '5', 'guest chatbot', '32', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(478, '5', 'incident management', '12', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(479, '5', 'incident report', '23', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(480, '5', 'incident request', '5', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(481, '5', 'landlord permissions', '27', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(482, '5', 'message', '2', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(483, '5', 'notification settings', '19', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(484, '5', 'payment account management', '15', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(485, '5', 'Permission Settings', '21', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(486, '5', 'service management', '11', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(487, '5', 'service request', '4', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(488, '5', 'system settings', '20', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(489, '5', 'user login', '31', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(490, '5', 'user management', '8', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(491, '5', 'vehicle', '7', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(492, '5', 'vehicle management', '10', 'active', '2025-10-30 16:13:35', '2025-11-02 13:34:44', '2025-11-02 13:34:44'),
(493, '9', 'apply landlord', '24', 'active', '2025-10-30 16:24:53', '2025-10-30 17:07:30', '2025-10-30 17:07:30'),
(494, '9', 'dashboard', '1', 'active', '2025-10-30 16:24:53', '2025-10-30 17:07:30', '2025-10-30 17:07:30'),
(495, '10', 'activity logs', '30', 'active', '2025-10-30 16:44:31', '2025-11-12 17:11:54', '2025-11-12 17:11:54'),
(496, '11', 'activity logs', '30', 'active', '2025-10-30 16:44:38', '2025-11-05 16:08:10', '2025-11-05 16:08:10'),
(497, '12', 'activity logs', '30', 'active', '2025-10-30 16:44:46', '2025-11-05 16:08:14', '2025-11-05 16:08:14'),
(498, '13', 'activity logs', '30', 'active', '2025-10-30 16:44:55', '2025-11-05 16:08:05', '2025-11-05 16:08:05'),
(499, '2', 'activity logs', '30', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(500, '2', 'announcement', '13', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(501, '2', 'apply appointment', '26', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(502, '2', 'apply business', '22', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(503, '2', 'apply landlord', '24', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(504, '2', 'appointment allow schedule', '29', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(505, '2', 'appointment category', '28', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(506, '2', 'appointment management', '17', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(507, '2', 'billing management', '14', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(508, '2', 'billing payment', '6', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(509, '2', 'business management', '9', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(510, '2', 'dashboard', '1', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(511, '2', 'feedback', '3', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(512, '2', 'feedback management', '16', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(513, '2', 'incident management', '12', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(514, '2', 'incident report', '23', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(515, '2', 'incident request', '5', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(516, '2', 'landlord permissions', '27', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(517, '2', 'message', '2', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(518, '2', 'notification settings', '19', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(519, '2', 'payment account management', '15', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(520, '2', 'Permission Settings', '21', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(521, '2', 'service management', '11', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(522, '2', 'service request', '4', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(523, '2', 'system settings', '20', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(524, '2', 'user login', '31', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(525, '2', 'user management', '8', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(526, '2', 'vehicle', '7', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(527, '2', 'vehicle management', '10', 'active', '2025-10-30 16:45:16', '2025-10-30 16:45:16', NULL),
(528, '9', 'apply appointment', '26', 'active', '2025-10-30 17:07:30', '2025-10-30 17:07:30', NULL),
(529, '9', 'apply landlord', '24', 'active', '2025-10-30 17:07:30', '2025-10-30 17:07:30', NULL),
(530, '9', 'dashboard', '1', 'active', '2025-10-30 17:07:30', '2025-10-30 17:07:30', NULL),
(531, '5', 'activity logs', '30', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(532, '5', 'announcement', '13', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(533, '5', 'apply appointment', '26', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(534, '5', 'apply business', '22', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(535, '5', 'apply landlord', '24', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(536, '5', 'appointment allow schedule', '29', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(537, '5', 'appointment category', '28', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(538, '5', 'appointment management', '17', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(539, '5', 'billing management', '14', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(540, '5', 'billing payment', '6', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(541, '5', 'business management', '9', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(542, '5', 'dashboard', '1', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(543, '5', 'feedback', '3', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(544, '5', 'feedback management', '16', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(545, '5', 'guest chatbot', '32', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(546, '5', 'incident management', '12', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(547, '5', 'incident report', '23', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(548, '5', 'incident request', '5', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(549, '5', 'landlord permissions', '27', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(550, '5', 'message', '2', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(551, '5', 'notification settings', '19', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(552, '5', 'payment account management', '15', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(553, '5', 'Permission Settings', '21', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(554, '5', 'service management', '11', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(555, '5', 'service request', '4', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(556, '5', 'system settings', '20', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(557, '5', 'user management', '8', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(558, '5', 'vehicle', '7', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(559, '5', 'vehicle management', '10', 'active', '2025-11-02 13:34:44', '2025-11-02 13:35:55', '2025-11-02 13:35:55'),
(560, '5', 'activity logs', '30', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(561, '5', 'announcement', '13', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(562, '5', 'apply appointment', '26', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(563, '5', 'apply business', '22', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(564, '5', 'apply landlord', '24', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(565, '5', 'appointment allow schedule', '29', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(566, '5', 'appointment category', '28', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(567, '5', 'appointment management', '17', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(568, '5', 'billing management', '14', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(569, '5', 'billing payment', '6', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(570, '5', 'business management', '9', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(571, '5', 'dashboard', '1', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(572, '5', 'feedback', '3', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(573, '5', 'feedback management', '16', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(574, '5', 'guest chatbot', '32', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(575, '5', 'incident management', '12', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(576, '5', 'incident report', '23', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(577, '5', 'incident request', '5', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(578, '5', 'landlord permissions', '27', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(579, '5', 'message', '2', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(580, '5', 'notification settings', '19', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(581, '5', 'payment account management', '15', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(582, '5', 'Permission Settings', '21', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(583, '5', 'service management', '11', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(584, '5', 'service request', '4', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(585, '5', 'system settings', '20', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(586, '5', 'user login', '31', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(587, '5', 'user management', '8', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(588, '5', 'vehicle', '7', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(589, '5', 'vehicle management', '10', 'active', '2025-11-02 13:35:55', '2025-11-02 13:38:27', '2025-11-02 13:38:27'),
(590, '5', 'activity logs', '30', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(591, '5', 'announcement', '13', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(592, '5', 'apply appointment', '26', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(593, '5', 'apply business', '22', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(594, '5', 'apply landlord', '24', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(595, '5', 'appointment allow schedule', '29', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(596, '5', 'appointment category', '28', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(597, '5', 'appointment management', '17', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(598, '5', 'billing management', '14', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(599, '5', 'billing payment', '6', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(600, '5', 'business management', '9', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(601, '5', 'dashboard', '1', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(602, '5', 'feedback', '3', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(603, '5', 'feedback management', '16', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(604, '5', 'guest chatbot', '32', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(605, '5', 'incident management', '12', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(606, '5', 'incident report', '23', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(607, '5', 'incident request', '5', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(608, '5', 'landlord permissions', '27', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(609, '5', 'message', '2', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(610, '5', 'notification settings', '19', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(611, '5', 'payment account management', '15', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(612, '5', 'Permission Settings', '21', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(613, '5', 'service management', '11', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(614, '5', 'service request', '4', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(615, '5', 'system settings', '20', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(616, '5', 'user management', '8', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(617, '5', 'vehicle', '7', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(618, '5', 'vehicle management', '10', 'active', '2025-11-02 13:38:27', '2025-11-02 15:53:10', '2025-11-02 15:53:10'),
(619, '6', 'apply appointment', '26', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(620, '6', 'apply business', '22', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(621, '6', 'apply landlord', '24', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(622, '6', 'billing payment', '6', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(623, '6', 'dashboard', '1', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(624, '6', 'feedback', '3', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(625, '6', 'incident report', '23', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(626, '6', 'message', '2', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(627, '6', 'service request', '4', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(628, '6', 'vehicle', '7', 'active', '2025-11-02 15:08:13', '2025-11-02 15:15:01', '2025-11-02 15:15:01'),
(629, '6', 'apply appointment', '26', 'active', '2025-11-02 15:15:01', '2025-11-02 15:18:01', '2025-11-02 15:18:01'),
(630, '6', 'dashboard', '1', 'active', '2025-11-02 15:15:01', '2025-11-02 15:18:01', '2025-11-02 15:18:01'),
(631, '6', 'vehicle', '7', 'active', '2025-11-02 15:15:01', '2025-11-02 15:18:01', '2025-11-02 15:18:01'),
(632, '6', 'dashboard', '1', 'active', '2025-11-02 15:18:01', '2025-11-02 15:18:16', '2025-11-02 15:18:16'),
(633, '6', 'incident management', '12', 'active', '2025-11-02 15:18:01', '2025-11-02 15:18:16', '2025-11-02 15:18:16'),
(634, '6', 'service management', '11', 'active', '2025-11-02 15:18:01', '2025-11-02 15:18:16', '2025-11-02 15:18:16'),
(635, '6', 'dashboard', '1', 'active', '2025-11-02 15:18:16', '2025-11-02 15:20:28', '2025-11-02 15:20:28'),
(636, '6', 'incident management', '12', 'active', '2025-11-02 15:18:16', '2025-11-02 15:20:28', '2025-11-02 15:20:28'),
(637, '6', 'service management', '11', 'active', '2025-11-02 15:18:16', '2025-11-02 15:20:28', '2025-11-02 15:20:28'),
(638, '6', 'activity logs', '30', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(639, '6', 'announcement', '13', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(640, '6', 'dashboard', '1', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(641, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(642, '6', 'notification settings', '19', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(643, '6', 'Permission Settings', '21', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(644, '6', 'system settings', '20', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(645, '6', 'user management', '8', 'active', '2025-11-02 15:20:28', '2025-11-02 15:25:08', '2025-11-02 15:25:08'),
(646, '6', 'activity logs', '30', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(647, '6', 'announcement', '13', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(648, '6', 'dashboard', '1', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(649, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(650, '6', 'message', '2', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(651, '6', 'notification settings', '19', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(652, '6', 'Permission Settings', '21', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(653, '6', 'system settings', '20', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(654, '6', 'user management', '8', 'active', '2025-11-02 15:25:08', '2025-11-02 15:27:12', '2025-11-02 15:27:12'),
(655, '6', 'dashboard', '1', 'active', '2025-11-02 15:27:12', '2025-11-02 15:32:58', '2025-11-02 15:32:58'),
(656, '6', 'feedback management', '16', 'active', '2025-11-02 15:27:12', '2025-11-02 15:32:58', '2025-11-02 15:32:58'),
(657, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:27:12', '2025-11-02 15:32:58', '2025-11-02 15:32:58'),
(658, '6', 'incident management', '12', 'active', '2025-11-02 15:27:12', '2025-11-02 15:32:58', '2025-11-02 15:32:58'),
(659, '6', 'message', '2', 'active', '2025-11-02 15:27:12', '2025-11-02 15:32:58', '2025-11-02 15:32:58'),
(660, '6', 'service management', '11', 'active', '2025-11-02 15:27:12', '2025-11-02 15:32:58', '2025-11-02 15:32:58'),
(661, '6', 'system settings', '20', 'active', '2025-11-02 15:27:12', '2025-11-02 15:32:58', '2025-11-02 15:32:58'),
(662, '6', 'dashboard', '1', 'active', '2025-11-02 15:32:58', '2025-11-02 15:33:53', '2025-11-02 15:33:53'),
(663, '6', 'feedback management', '16', 'active', '2025-11-02 15:32:58', '2025-11-02 15:33:53', '2025-11-02 15:33:53'),
(664, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:32:58', '2025-11-02 15:33:53', '2025-11-02 15:33:53'),
(665, '6', 'incident management', '12', 'active', '2025-11-02 15:32:58', '2025-11-02 15:33:53', '2025-11-02 15:33:53'),
(666, '6', 'message', '2', 'active', '2025-11-02 15:32:58', '2025-11-02 15:33:53', '2025-11-02 15:33:53'),
(667, '6', 'service management', '11', 'active', '2025-11-02 15:32:58', '2025-11-02 15:33:53', '2025-11-02 15:33:53'),
(668, '6', 'dashboard', '1', 'active', '2025-11-02 15:33:53', '2025-11-02 15:36:32', '2025-11-02 15:36:32'),
(669, '6', 'feedback management', '16', 'active', '2025-11-02 15:33:53', '2025-11-02 15:36:32', '2025-11-02 15:36:32'),
(670, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:33:53', '2025-11-02 15:36:32', '2025-11-02 15:36:32'),
(671, '6', 'incident management', '12', 'active', '2025-11-02 15:33:53', '2025-11-02 15:36:32', '2025-11-02 15:36:32'),
(672, '6', 'message', '2', 'active', '2025-11-02 15:33:53', '2025-11-02 15:36:32', '2025-11-02 15:36:32'),
(673, '6', 'service management', '11', 'active', '2025-11-02 15:33:53', '2025-11-02 15:36:32', '2025-11-02 15:36:32'),
(674, '6', 'system settings', '20', 'active', '2025-11-02 15:33:53', '2025-11-02 15:36:32', '2025-11-02 15:36:32'),
(675, '6', 'billing management', '14', 'active', '2025-11-02 15:36:32', '2025-11-02 15:41:05', '2025-11-02 15:41:05'),
(676, '6', 'dashboard', '1', 'active', '2025-11-02 15:36:32', '2025-11-02 15:41:05', '2025-11-02 15:41:05'),
(677, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:36:32', '2025-11-02 15:41:05', '2025-11-02 15:41:05'),
(678, '6', 'message', '2', 'active', '2025-11-02 15:36:32', '2025-11-02 15:41:05', '2025-11-02 15:41:05'),
(679, '6', 'payment account management', '15', 'active', '2025-11-02 15:36:32', '2025-11-02 15:41:05', '2025-11-02 15:41:05'),
(680, '6', 'system settings', '20', 'active', '2025-11-02 15:36:32', '2025-11-02 15:41:05', '2025-11-02 15:41:05'),
(681, '6', 'appointment allow schedule', '29', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(682, '6', 'appointment category', '28', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(683, '6', 'appointment management', '17', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(684, '6', 'dashboard', '1', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(685, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(686, '6', 'message', '2', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(687, '6', 'system settings', '20', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(688, '6', 'vehicle management', '10', 'active', '2025-11-02 15:41:05', '2025-11-02 15:48:07', '2025-11-02 15:48:07'),
(689, '6', 'dashboard', '1', 'active', '2025-11-02 15:48:07', '2025-11-02 15:48:19', '2025-11-02 15:48:19'),
(690, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:48:07', '2025-11-02 15:48:19', '2025-11-02 15:48:19'),
(691, '6', 'landlord permissions', '27', 'active', '2025-11-02 15:48:07', '2025-11-02 15:48:19', '2025-11-02 15:48:19'),
(692, '6', 'message', '2', 'active', '2025-11-02 15:48:07', '2025-11-02 15:48:19', '2025-11-02 15:48:19'),
(693, '6', 'system settings', '20', 'active', '2025-11-02 15:48:07', '2025-11-02 15:48:19', '2025-11-02 15:48:19'),
(694, '6', 'business management', '9', 'active', '2025-11-02 15:48:19', '2025-11-02 15:55:16', '2025-11-02 15:55:16'),
(695, '6', 'dashboard', '1', 'active', '2025-11-02 15:48:19', '2025-11-02 15:55:16', '2025-11-02 15:55:16'),
(696, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:48:19', '2025-11-02 15:55:16', '2025-11-02 15:55:16'),
(697, '6', 'landlord permissions', '27', 'active', '2025-11-02 15:48:19', '2025-11-02 15:55:16', '2025-11-02 15:55:16'),
(698, '6', 'message', '2', 'active', '2025-11-02 15:48:19', '2025-11-02 15:55:16', '2025-11-02 15:55:16'),
(699, '6', 'system settings', '20', 'active', '2025-11-02 15:48:19', '2025-11-02 15:55:16', '2025-11-02 15:55:16'),
(700, '5', 'activity logs', '30', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(701, '5', 'announcement', '13', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(702, '5', 'apply appointment', '26', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(703, '5', 'apply business', '22', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(704, '5', 'apply landlord', '24', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(705, '5', 'appointment allow schedule', '29', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(706, '5', 'appointment category', '28', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(707, '5', 'appointment management', '17', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(708, '5', 'billing management', '14', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(709, '5', 'billing payment', '6', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(710, '5', 'business management', '9', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(711, '5', 'dashboard', '1', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(712, '5', 'feedback', '3', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(713, '5', 'feedback management', '16', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(714, '5', 'guest chatbot', '32', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(715, '5', 'incident management', '12', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(716, '5', 'incident report', '23', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(717, '5', 'incident request', '5', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(718, '5', 'landlord permissions', '27', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(719, '5', 'message', '2', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(720, '5', 'notification settings', '19', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(721, '5', 'payment account management', '15', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(722, '5', 'Permission Settings', '21', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(723, '5', 'service management', '11', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(724, '5', 'service request', '4', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(725, '5', 'system settings', '20', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(726, '5', 'user login', '31', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(727, '5', 'user management', '8', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(728, '5', 'vehicle', '7', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(729, '5', 'vehicle management', '10', 'active', '2025-11-02 15:53:10', '2025-11-05 16:07:35', '2025-11-05 16:07:35'),
(730, '6', 'dashboard', '1', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(731, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(732, '6', 'incident report', '23', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(733, '6', 'incident request', '5', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(734, '6', 'landlord permissions', '27', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(735, '6', 'message', '2', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(736, '6', 'notification settings', '19', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(737, '6', 'payment account management', '15', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(738, '6', 'Permission Settings', '21', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(739, '6', 'service management', '11', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(740, '6', 'system settings', '20', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(741, '6', 'user management', '8', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(742, '6', 'vehicle management', '10', 'active', '2025-11-02 15:55:16', '2025-11-02 15:55:31', '2025-11-02 15:55:31'),
(743, '6', 'dashboard', '1', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(744, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(745, '6', 'incident request', '5', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(746, '6', 'landlord permissions', '27', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(747, '6', 'message', '2', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(748, '6', 'notification settings', '19', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(749, '6', 'payment account management', '15', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(750, '6', 'Permission Settings', '21', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(751, '6', 'service management', '11', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(752, '6', 'system settings', '20', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(753, '6', 'user management', '8', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(754, '6', 'vehicle management', '10', 'active', '2025-11-02 15:55:31', '2025-11-02 15:55:50', '2025-11-02 15:55:50'),
(755, '6', 'dashboard', '1', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(756, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(757, '6', 'incident report', '23', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(758, '6', 'landlord permissions', '27', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(759, '6', 'message', '2', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(760, '6', 'notification settings', '19', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(761, '6', 'payment account management', '15', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(762, '6', 'Permission Settings', '21', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(763, '6', 'service management', '11', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(764, '6', 'system settings', '20', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(765, '6', 'user management', '8', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(766, '6', 'vehicle management', '10', 'active', '2025-11-02 15:55:50', '2025-11-02 15:57:56', '2025-11-02 15:57:56'),
(767, '6', 'activity logs', '30', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(768, '6', 'announcement', '13', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(769, '6', 'appointment allow schedule', '29', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(770, '6', 'appointment category', '28', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(771, '6', 'appointment management', '17', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(772, '6', 'billing management', '14', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(773, '6', 'business management', '9', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(774, '6', 'dashboard', '1', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(775, '6', 'feedback management', '16', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(776, '6', 'guest chatbot', '32', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(777, '6', 'incident management', '12', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(778, '6', 'landlord permissions', '27', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(779, '6', 'message', '2', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(780, '6', 'notification settings', '19', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(781, '6', 'payment account management', '15', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(782, '6', 'Permission Settings', '21', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(783, '6', 'service management', '11', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(784, '6', 'system settings', '20', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(785, '6', 'user management', '8', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(786, '6', 'vehicle management', '10', 'active', '2025-11-02 15:57:56', '2025-11-04 16:15:47', '2025-11-04 16:15:47'),
(787, '14', 'activity logs', '30', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(788, '14', 'announcement', '13', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(789, '14', 'apply appointment', '26', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(790, '14', 'apply business', '22', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(791, '14', 'apply landlord', '24', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(792, '14', 'appointment allow schedule', '29', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(793, '14', 'appointment category', '28', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(794, '14', 'appointment management', '17', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(795, '14', 'billing management', '14', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(796, '14', 'billing payment', '6', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(797, '14', 'business management', '9', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(798, '14', 'dashboard', '1', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(799, '14', 'feedback', '3', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(800, '14', 'feedback management', '16', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(801, '14', 'guest chatbot', '32', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(802, '14', 'incident management', '12', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(803, '14', 'incident report', '23', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(804, '14', 'incident request', '5', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(805, '14', 'landlord permissions', '27', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(806, '14', 'message', '2', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(807, '14', 'notification settings', '19', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(808, '14', 'payment account management', '15', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(809, '14', 'Permission Settings', '21', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(810, '14', 'service management', '11', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(811, '14', 'service request', '4', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(812, '14', 'system settings', '20', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(813, '14', 'user login', '31', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(814, '14', 'user management', '8', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(815, '14', 'vehicle', '7', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(816, '14', 'vehicle management', '10', 'active', '2025-11-04 15:40:17', '2025-11-05 15:51:36', '2025-11-05 15:51:36'),
(817, '15', 'activity logs', '30', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(818, '15', 'announcement', '13', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(819, '15', 'apply appointment', '26', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(820, '15', 'apply business', '22', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(821, '15', 'apply landlord', '24', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(822, '15', 'appointment allow schedule', '29', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(823, '15', 'appointment calendar', '38', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(824, '15', 'appointment category', '28', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(825, '15', 'appointment management', '17', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(826, '15', 'billing management', '14', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(827, '15', 'billing payment', '6', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(828, '15', 'business management', '9', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(829, '15', 'dashboard', '1', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(830, '15', 'feedback', '3', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(831, '15', 'feedback management', '16', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(832, '15', 'guest chatbot', '32', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(833, '15', 'incident management', '12', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(834, '15', 'incident report', '23', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(835, '15', 'incident request', '5', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(836, '15', 'landlord management', '33', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(837, '15', 'landlord permissions', '27', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(838, '15', 'message', '2', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(839, '15', 'notification settings', '19', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(840, '15', 'payment account management', '15', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(841, '15', 'Permission Settings', '21', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(842, '15', 'service management', '11', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(843, '15', 'service request', '4', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(844, '15', 'system settings', '20', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(845, '15', 'user login', '31', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(846, '15', 'user management', '8', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(847, '15', 'vehicle', '7', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(848, '15', 'vehicle management', '10', 'active', '2025-11-04 15:40:37', '2025-11-05 15:50:30', '2025-11-05 15:50:30'),
(849, '6', 'activity logs', '30', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(850, '6', 'announcements management', '13', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(851, '6', 'apply appointment', '26', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(852, '6', 'apply business', '22', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(853, '6', 'apply landlord', '24', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(854, '6', 'appointment allow schedule', '29', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(855, '6', 'appointment calendar', '38', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(856, '6', 'appointment category', '28', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(857, '6', 'appointment management', '17', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(858, '6', 'billing management', '14', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(859, '6', 'billing payment', '6', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(860, '6', 'dashboard', '1', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(861, '6', 'establishment management', '9', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(862, '6', 'feedback', '3', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(863, '6', 'feedback management', '16', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(864, '6', 'guest chatbot', '32', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(865, '6', 'incident management', '12', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(866, '6', 'incident report', '23', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(867, '6', 'incident request', '5', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(868, '6', 'landlord management', '33', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(869, '6', 'landlord permissions', '27', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(870, '6', 'message', '2', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(871, '6', 'notification settings', '19', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(872, '6', 'payment account management', '15', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(873, '6', 'Permission Settings', '21', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(874, '6', 'service management', '11', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(875, '6', 'service request', '4', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(876, '6', 'system settings', '20', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(877, '6', 'user management', '8', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(878, '6', 'vehicle', '7', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(879, '6', 'vehicle management', '10', 'active', '2025-11-04 16:15:47', '2025-11-04 17:31:40', '2025-11-04 17:31:40'),
(880, '6', 'apply appointment', '26', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(881, '6', 'apply business', '22', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(882, '6', 'apply landlord', '24', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32');
INSERT INTO `permission_settings_list` (`id`, `permission_settings_id`, `permission_allowed`, `module_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(883, '6', 'billing payment', '6', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(884, '6', 'dashboard', '1', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(885, '6', 'feedback', '3', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(886, '6', 'incident report', '23', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(887, '6', 'message', '2', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(888, '6', 'service request', '4', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(889, '6', 'vehicle', '7', 'active', '2025-11-04 17:31:40', '2025-11-05 16:06:32', '2025-11-05 16:06:32'),
(890, '15', 'activity logs', '30', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(891, '15', 'announcements management', '13', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(892, '15', 'apply appointment', '26', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(893, '15', 'apply business', '22', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(894, '15', 'apply landlord', '24', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(895, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(896, '15', 'appointment calendar', '38', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(897, '15', 'appointment category', '28', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(898, '15', 'appointment management', '17', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(899, '15', 'billing management', '14', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(900, '15', 'billing payment', '6', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(901, '15', 'dashboard', '1', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(902, '15', 'establishment management', '9', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(903, '15', 'feedback', '3', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(904, '15', 'feedback management', '16', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(905, '15', 'guest chatbot', '32', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(906, '15', 'incident management', '12', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(907, '15', 'incident report', '23', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(908, '15', 'incident request', '5', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(909, '15', 'landlord management', '33', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(910, '15', 'landlord permissions', '27', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(911, '15', 'message', '2', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(912, '15', 'notification settings', '19', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(913, '15', 'payment account management', '15', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(914, '15', 'Permission Settings', '21', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(915, '15', 'service management', '11', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(916, '15', 'service request', '4', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(917, '15', 'system settings', '20', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(918, '15', 'user management', '8', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(919, '15', 'vehicle', '7', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(920, '15', 'vehicle management', '10', 'active', '2025-11-05 15:50:30', '2025-11-05 15:51:27', '2025-11-05 15:51:27'),
(921, '15', 'activity logs', '30', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(922, '15', 'announcements management', '13', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(923, '15', 'apply appointment', '26', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(924, '15', 'apply business', '22', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(925, '15', 'apply landlord', '24', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(926, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(927, '15', 'appointment calendar', '38', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(928, '15', 'appointment category', '28', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(929, '15', 'appointment management', '17', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(930, '15', 'billing management', '14', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(931, '15', 'billing payment', '6', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(932, '15', 'dashboard', '1', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(933, '15', 'establishment management', '9', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(934, '15', 'feedback', '3', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(935, '15', 'feedback management', '16', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(936, '15', 'guest chatbot', '32', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(937, '15', 'incident management', '12', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(938, '15', 'incident report', '23', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(939, '15', 'incident request', '5', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(940, '15', 'landlord management', '33', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(941, '15', 'landlord permissions', '27', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(942, '15', 'message', '2', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(943, '15', 'notification settings', '19', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(944, '15', 'payment account management', '15', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(945, '15', 'Permission Settings', '21', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(946, '15', 'service management', '11', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(947, '15', 'service request', '4', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(948, '15', 'system settings', '20', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(949, '15', 'user management', '8', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(950, '15', 'vehicle', '7', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(951, '15', 'vehicle management', '10', 'active', '2025-11-05 15:51:27', '2025-11-05 16:07:48', '2025-11-05 16:07:48'),
(952, '14', 'activity logs', '30', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(953, '14', 'announcements management', '13', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(954, '14', 'apply appointment', '26', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(955, '14', 'apply business', '22', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(956, '14', 'apply landlord', '24', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(957, '14', 'appointment allow schedule', '29', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(958, '14', 'appointment calendar', '38', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(959, '14', 'appointment category', '28', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(960, '14', 'appointment management', '17', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(961, '14', 'billing management', '14', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(962, '14', 'billing payment', '6', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(963, '14', 'dashboard', '1', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(964, '14', 'establishment management', '9', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(965, '14', 'feedback', '3', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(966, '14', 'feedback management', '16', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(967, '14', 'guest chatbot', '32', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(968, '14', 'incident management', '12', 'active', '2025-11-05 15:51:36', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(969, '14', 'incident report', '23', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(970, '14', 'incident request', '5', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(971, '14', 'landlord management', '33', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(972, '14', 'landlord permissions', '27', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(973, '14', 'message', '2', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(974, '14', 'notification settings', '19', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(975, '14', 'payment account management', '15', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(976, '14', 'Permission Settings', '21', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(977, '14', 'service management', '11', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(978, '14', 'service request', '4', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(979, '14', 'system settings', '20', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(980, '14', 'user management', '8', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(981, '14', 'vehicle', '7', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(982, '14', 'vehicle management', '10', 'active', '2025-11-05 15:51:37', '2025-11-05 16:07:39', '2025-11-05 16:07:39'),
(983, '6', 'dashboard', '1', 'active', '2025-11-05 16:06:32', '2025-11-05 16:25:25', '2025-11-05 16:25:25'),
(984, '6', 'landlord management', '33', 'active', '2025-11-05 16:06:32', '2025-11-05 16:25:25', '2025-11-05 16:25:25'),
(985, '6', 'Permission Settings', '21', 'active', '2025-11-05 16:06:32', '2025-11-05 16:25:25', '2025-11-05 16:25:25'),
(986, '15', 'activity logs', '30', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(987, '15', 'announcements management', '13', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(988, '15', 'apply appointment', '26', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(989, '15', 'apply business', '22', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(990, '15', 'apply landlord', '24', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(991, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(992, '15', 'appointment calendar', '38', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(993, '15', 'appointment category', '28', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(994, '15', 'appointment management', '17', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(995, '15', 'billing management', '14', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(996, '15', 'billing payment', '6', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(997, '15', 'dashboard', '1', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(998, '15', 'establishment management', '9', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(999, '15', 'feedback', '3', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1000, '15', 'feedback management', '16', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1001, '15', 'guest chatbot', '32', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1002, '15', 'incident management', '12', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1003, '15', 'incident report', '23', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1004, '15', 'incident request', '5', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1005, '15', 'landlord management', '33', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1006, '15', 'landlord permissions', '27', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1007, '15', 'message', '2', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1008, '15', 'notification settings', '19', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1009, '15', 'payment account management', '15', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1010, '15', 'Permission Settings', '21', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1011, '15', 'service management', '11', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1012, '15', 'service request', '4', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1013, '15', 'system settings', '20', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1014, '15', 'user management', '8', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1015, '15', 'vehicle', '7', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1016, '15', 'vehicle management', '10', 'active', '2025-11-05 16:07:48', '2025-11-05 16:11:35', '2025-11-05 16:11:35'),
(1017, '15', 'activity logs', '30', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1018, '15', 'announcements management', '13', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1019, '15', 'apply appointment', '26', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1020, '15', 'apply business', '22', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1021, '15', 'apply landlord', '24', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1022, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1023, '15', 'appointment calendar', '38', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1024, '15', 'appointment category', '28', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1025, '15', 'appointment management', '17', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1026, '15', 'billing management', '14', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1027, '15', 'billing payment', '6', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1028, '15', 'dashboard', '1', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1029, '15', 'establishment management', '9', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1030, '15', 'feedback', '3', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1031, '15', 'feedback management', '16', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1032, '15', 'guest chatbot', '32', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1033, '15', 'incident management', '12', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1034, '15', 'incident report', '23', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1035, '15', 'incident request', '5', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1036, '15', 'landlord management', '33', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1037, '15', 'landlord permissions', '27', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1038, '15', 'message', '2', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1039, '15', 'notification settings', '19', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1040, '15', 'payment account management', '15', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1041, '15', 'Permission Settings', '21', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1042, '15', 'service management', '11', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1043, '15', 'service request', '4', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1044, '15', 'system settings', '20', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1045, '15', 'user management', '8', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1046, '15', 'vehicle', '7', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1047, '15', 'vehicle management', '10', 'active', '2025-11-05 16:11:35', '2025-11-05 16:12:18', '2025-11-05 16:12:18'),
(1048, '15', 'activity logs', '30', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1049, '15', 'announcements management', '13', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1050, '15', 'apply appointment', '26', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1051, '15', 'apply business', '22', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1052, '15', 'apply landlord', '24', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1053, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1054, '15', 'appointment category', '28', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1055, '15', 'appointment management', '17', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1056, '15', 'billing management', '14', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1057, '15', 'billing payment', '6', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1058, '15', 'dashboard', '1', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1059, '15', 'establishment management', '9', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1060, '15', 'feedback', '3', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1061, '15', 'feedback management', '16', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1062, '15', 'guest chatbot', '32', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1063, '15', 'incident management', '12', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1064, '15', 'incident report', '23', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1065, '15', 'incident request', '5', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1066, '15', 'landlord management', '33', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1067, '15', 'landlord permissions', '27', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1068, '15', 'message', '2', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1069, '15', 'notification settings', '19', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1070, '15', 'payment account management', '15', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1071, '15', 'Permission Settings', '21', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1072, '15', 'service management', '11', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1073, '15', 'service request', '4', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1074, '15', 'system settings', '20', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1075, '15', 'user management', '8', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1076, '15', 'vehicle', '7', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1077, '15', 'vehicle management', '10', 'active', '2025-11-05 16:12:18', '2025-11-05 16:12:30', '2025-11-05 16:12:30'),
(1078, '15', 'activity logs', '30', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1079, '15', 'announcements management', '13', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1080, '15', 'apply appointment', '26', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1081, '15', 'apply business', '22', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1082, '15', 'apply landlord', '24', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1083, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1084, '15', 'appointment calendar', '38', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1085, '15', 'appointment category', '28', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1086, '15', 'appointment management', '17', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1087, '15', 'billing management', '14', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1088, '15', 'billing payment', '6', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1089, '15', 'dashboard', '1', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1090, '15', 'establishment management', '9', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1091, '15', 'feedback', '3', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1092, '15', 'feedback management', '16', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1093, '15', 'guest chatbot', '32', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1094, '15', 'incident management', '12', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1095, '15', 'incident report', '23', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1096, '15', 'incident request', '5', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1097, '15', 'landlord management', '33', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1098, '15', 'landlord permissions', '27', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1099, '15', 'message', '2', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1100, '15', 'notification settings', '19', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1101, '15', 'payment account management', '15', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1102, '15', 'Permission Settings', '21', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1103, '15', 'service management', '11', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1104, '15', 'service request', '4', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1105, '15', 'system settings', '20', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1106, '15', 'user management', '8', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1107, '15', 'vehicle', '7', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1108, '15', 'vehicle management', '10', 'active', '2025-11-05 16:12:30', '2025-11-05 16:13:38', '2025-11-05 16:13:38'),
(1109, '15', 'activity logs', '30', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1110, '15', 'announcements management', '13', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1111, '15', 'apply appointment', '26', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1112, '15', 'apply business', '22', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1113, '15', 'apply landlord', '24', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1114, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1115, '15', 'appointment category', '28', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1116, '15', 'appointment management', '17', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1117, '15', 'billing management', '14', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1118, '15', 'billing payment', '6', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1119, '15', 'dashboard', '1', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1120, '15', 'establishment management', '9', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1121, '15', 'feedback', '3', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1122, '15', 'feedback management', '16', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1123, '15', 'guest chatbot', '32', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1124, '15', 'incident management', '12', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1125, '15', 'incident report', '23', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1126, '15', 'incident request', '5', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1127, '15', 'landlord management', '33', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1128, '15', 'landlord permissions', '27', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1129, '15', 'message', '2', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1130, '15', 'notification settings', '19', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1131, '15', 'payment account management', '15', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1132, '15', 'Permission Settings', '21', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1133, '15', 'service management', '11', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1134, '15', 'service request', '4', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1135, '15', 'system settings', '20', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1136, '15', 'user management', '8', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1137, '15', 'vehicle', '7', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1138, '15', 'vehicle management', '10', 'active', '2025-11-05 16:13:38', '2025-11-05 16:13:46', '2025-11-05 16:13:46'),
(1139, '15', 'activity logs', '30', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1140, '15', 'announcements management', '13', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1141, '15', 'apply appointment', '26', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1142, '15', 'apply business', '22', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1143, '15', 'apply landlord', '24', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1144, '15', 'appointment allow schedule', '29', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1145, '15', 'appointment calendar', '38', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1146, '15', 'appointment category', '28', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1147, '15', 'appointment management', '17', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1148, '15', 'billing management', '14', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1149, '15', 'billing payment', '6', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1150, '15', 'dashboard', '1', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1151, '15', 'establishment management', '9', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1152, '15', 'feedback', '3', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1153, '15', 'feedback management', '16', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1154, '15', 'guest chatbot', '32', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1155, '15', 'incident management', '12', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1156, '15', 'incident report', '23', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1157, '15', 'incident request', '5', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1158, '15', 'landlord management', '33', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1159, '15', 'landlord permissions', '27', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1160, '15', 'message', '2', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1161, '15', 'notification settings', '19', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1162, '15', 'payment account management', '15', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1163, '15', 'Permission Settings', '21', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1164, '15', 'service management', '11', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1165, '15', 'service request', '4', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1166, '15', 'system settings', '20', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1167, '15', 'user management', '8', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1168, '15', 'vehicle', '7', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1169, '15', 'vehicle management', '10', 'active', '2025-11-05 16:13:46', '2025-11-06 14:45:07', '2025-11-06 14:45:07'),
(1170, '6', 'apply appointment', '26', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1171, '6', 'apply business', '22', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1172, '6', 'apply landlord', '24', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1173, '6', 'billing payment', '6', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1174, '6', 'dashboard', '1', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1175, '6', 'feedback', '3', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1176, '6', 'feedback management', '16', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1177, '6', 'incident report', '23', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1178, '6', 'landlord management', '33', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1179, '6', 'message', '2', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1180, '6', 'Permission Settings', '21', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1181, '6', 'service request', '4', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1182, '6', 'vehicle', '7', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1183, '6', 'vehicle management', '10', 'active', '2025-11-05 16:25:25', '2025-11-05 16:26:15', '2025-11-05 16:26:15'),
(1184, '6', 'apply appointment', '26', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1185, '6', 'apply business', '22', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1186, '6', 'apply landlord', '24', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1187, '6', 'billing payment', '6', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1188, '6', 'dashboard', '1', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1189, '6', 'feedback', '3', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1190, '6', 'incident report', '23', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1191, '6', 'message', '2', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1192, '6', 'service request', '4', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1193, '6', 'vehicle', '7', 'active', '2025-11-05 16:26:15', '2025-11-06 15:35:07', '2025-11-06 15:35:07'),
(1194, '15', 'activity logs', '30', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1195, '15', 'announcements management', '13', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1196, '15', 'apply appointment', '26', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1197, '15', 'apply business', '22', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1198, '15', 'apply landlord', '24', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1199, '15', 'appointment allow schedule', '29', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1200, '15', 'appointment calendar', '38', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1201, '15', 'appointment category', '28', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1202, '15', 'appointment management', '17', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1203, '15', 'billing management', '14', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1204, '15', 'billing payment', '6', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1205, '15', 'dashboard', '1', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1206, '15', 'establishment management', '9', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1207, '15', 'feedback', '3', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1208, '15', 'feedback management', '16', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1209, '15', 'guest chatbot', '32', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1210, '15', 'incident management', '12', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1211, '15', 'incident report', '23', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1212, '15', 'incident request', '5', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1213, '15', 'landlord management', '33', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1214, '15', 'landlord permissions', '27', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1215, '15', 'message', '2', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1216, '15', 'notification settings', '19', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1217, '15', 'payment account management', '15', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1218, '15', 'Permission Settings', '21', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1219, '15', 'service management', '11', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1220, '15', 'service request', '4', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1221, '15', 'system settings', '20', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1222, '15', 'user management', '8', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1223, '15', 'vehicle', '7', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1224, '15', 'vehicle management', '10', 'active', '2025-11-06 14:45:07', '2025-11-06 17:00:16', '2025-11-06 17:00:16'),
(1225, '16', 'dashboard', '1', 'active', '2025-11-06 15:34:52', '2025-11-06 15:51:43', '2025-11-06 15:51:43'),
(1226, '16', 'incident management', '12', 'active', '2025-11-06 15:34:52', '2025-11-06 15:51:43', '2025-11-06 15:51:43'),
(1227, '16', 'message', '2', 'active', '2025-11-06 15:34:52', '2025-11-06 15:51:43', '2025-11-06 15:51:43'),
(1228, '16', 'service management', '11', 'active', '2025-11-06 15:34:52', '2025-11-06 15:51:43', '2025-11-06 15:51:43'),
(1229, '16', 'dashboard', '1', 'active', '2025-11-06 15:51:43', '2025-11-06 15:56:21', '2025-11-06 15:56:21'),
(1230, '16', 'incident management', '12', 'active', '2025-11-06 15:51:43', '2025-11-06 15:56:21', '2025-11-06 15:56:21'),
(1231, '16', 'incident request', '5', 'active', '2025-11-06 15:51:43', '2025-11-06 15:56:21', '2025-11-06 15:56:21'),
(1232, '16', 'message', '2', 'active', '2025-11-06 15:51:43', '2025-11-06 15:56:21', '2025-11-06 15:56:21'),
(1233, '16', 'service management', '11', 'active', '2025-11-06 15:51:43', '2025-11-06 15:56:21', '2025-11-06 15:56:21'),
(1234, '16', 'apply appointment', '26', 'active', '2025-11-06 15:56:21', '2025-11-06 16:06:37', '2025-11-06 16:06:37'),
(1235, '16', 'dashboard', '1', 'active', '2025-11-06 15:56:21', '2025-11-06 16:06:37', '2025-11-06 16:06:37'),
(1236, '16', 'incident management', '12', 'active', '2025-11-06 15:56:21', '2025-11-06 16:06:37', '2025-11-06 16:06:37'),
(1237, '16', 'message', '2', 'active', '2025-11-06 15:56:21', '2025-11-06 16:06:37', '2025-11-06 16:06:37'),
(1238, '16', 'service management', '11', 'active', '2025-11-06 15:56:21', '2025-11-06 16:06:37', '2025-11-06 16:06:37'),
(1239, '16', 'vehicle', '7', 'active', '2025-11-06 15:56:21', '2025-11-06 16:06:37', '2025-11-06 16:06:37'),
(1240, '16', 'vehicle management', '10', 'active', '2025-11-06 15:56:21', '2025-11-06 16:06:37', '2025-11-06 16:06:37'),
(1241, '16', 'apply appointment', '26', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1242, '16', 'apply business', '22', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1243, '16', 'apply landlord', '24', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1244, '16', 'billing payment', '6', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1245, '16', 'dashboard', '1', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1246, '16', 'feedback', '3', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1247, '16', 'feedback management', '16', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1248, '16', 'incident management', '12', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1249, '16', 'incident report', '23', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1250, '16', 'message', '2', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1251, '16', 'service management', '11', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1252, '16', 'service request', '4', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1253, '16', 'vehicle', '7', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1254, '16', 'vehicle management', '10', 'active', '2025-11-06 16:06:37', '2025-11-06 16:12:25', '2025-11-06 16:12:25'),
(1255, '16', 'activity logs', '30', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1256, '16', 'announcements management', '13', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1257, '16', 'apply appointment', '26', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1258, '16', 'apply business', '22', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1259, '16', 'apply landlord', '24', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1260, '16', 'appointment allow schedule', '29', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1261, '16', 'appointment calendar', '38', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1262, '16', 'appointment category', '28', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1263, '16', 'appointment management', '17', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1264, '16', 'billing management', '14', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1265, '16', 'billing payment', '6', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1266, '16', 'dashboard', '1', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1267, '16', 'establishment management', '9', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1268, '16', 'feedback', '3', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1269, '16', 'feedback management', '16', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1270, '16', 'guest chatbot', '32', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1271, '16', 'incident management', '12', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1272, '16', 'incident report', '23', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1273, '16', 'landlord management', '33', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1274, '16', 'landlord permissions', '27', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1275, '16', 'message', '2', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1276, '16', 'notification settings', '19', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1277, '16', 'payment account management', '15', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1278, '16', 'Permission Settings', '21', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1279, '16', 'service management', '11', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1280, '16', 'service request', '4', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1281, '16', 'system settings', '20', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1282, '16', 'user management', '8', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1283, '16', 'vehicle', '7', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1284, '16', 'vehicle management', '10', 'active', '2025-11-06 16:12:25', '2025-11-06 16:13:49', '2025-11-06 16:13:49'),
(1285, '17', 'dashboard', '1', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(1286, '17', 'guest chatbot', '32', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(1287, '17', 'message', '2', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(1288, '17', 'notification settings', '19', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(1289, '17', 'Permission Settings', '21', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(1290, '17', 'system settings', '20', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(1291, '17', 'user management', '8', 'active', '2025-11-06 16:13:43', '2025-11-06 16:15:01', '2025-11-06 16:15:01'),
(1292, '18', 'activity logs', '30', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1293, '18', 'announcements management', '13', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1294, '18', 'apply appointment', '26', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1295, '18', 'apply business', '22', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1296, '18', 'apply landlord', '24', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1297, '18', 'appointment allow schedule', '29', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1298, '18', 'appointment calendar', '38', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1299, '18', 'appointment category', '28', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1300, '18', 'appointment management', '17', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1301, '18', 'billing management', '14', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1302, '18', 'billing payment', '6', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1303, '18', 'dashboard', '1', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1304, '18', 'establishment management', '9', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1305, '18', 'feedback', '3', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1306, '18', 'feedback management', '16', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1307, '18', 'guest chatbot', '32', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1308, '18', 'incident management', '12', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1309, '18', 'incident report', '23', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28');
INSERT INTO `permission_settings_list` (`id`, `permission_settings_id`, `permission_allowed`, `module_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1310, '18', 'landlord management', '33', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1311, '18', 'landlord permissions', '27', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1312, '18', 'message', '2', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1313, '18', 'notification settings', '19', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1314, '18', 'payment account management', '15', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1315, '18', 'Permission Settings', '21', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1316, '18', 'service management', '11', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1317, '18', 'service request', '4', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1318, '18', 'system settings', '20', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1319, '18', 'user management', '8', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1320, '18', 'vehicle', '7', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1321, '18', 'vehicle management', '10', 'active', '2025-11-06 16:15:08', '2025-11-06 16:19:28', '2025-11-06 16:19:28'),
(1322, '19', 'apply appointment', '26', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1323, '19', 'apply business', '22', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1324, '19', 'apply landlord', '24', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1325, '19', 'billing payment', '6', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1326, '19', 'dashboard', '1', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1327, '19', 'feedback', '3', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1328, '19', 'feedback management', '16', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1329, '19', 'incident report', '23', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1330, '19', 'message', '2', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1331, '19', 'service request', '4', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1332, '19', 'vehicle', '7', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1333, '19', 'vehicle management', '10', 'active', '2025-11-06 16:19:22', '2025-11-06 16:22:18', '2025-11-06 16:22:18'),
(1334, '18', 'activity logs', '30', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1335, '18', 'announcements management', '13', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1336, '18', 'apply appointment', '26', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1337, '18', 'apply business', '22', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1338, '18', 'apply landlord', '24', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1339, '18', 'appointment allow schedule', '29', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1340, '18', 'appointment calendar', '38', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1341, '18', 'appointment category', '28', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1342, '18', 'appointment management', '17', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1343, '18', 'billing management', '14', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1344, '18', 'billing payment', '6', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1345, '18', 'dashboard', '1', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1346, '18', 'establishment management', '9', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1347, '18', 'feedback', '3', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1348, '18', 'feedback management', '16', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1349, '18', 'guest chatbot', '32', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1350, '18', 'incident management', '12', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1351, '18', 'incident report', '23', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1352, '18', 'landlord management', '33', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1353, '18', 'landlord permissions', '27', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1354, '18', 'message', '2', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1355, '18', 'notification settings', '19', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1356, '18', 'payment account management', '15', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1357, '18', 'Permission Settings', '21', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1358, '18', 'service management', '11', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1359, '18', 'service request', '4', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1360, '18', 'system settings', '20', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1361, '18', 'user management', '8', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1362, '18', 'vehicle', '7', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1363, '18', 'vehicle management', '10', 'active', '2025-11-06 16:19:28', '2025-11-09 04:54:11', '2025-11-09 04:54:11'),
(1364, '20', 'apply appointment', '26', 'active', '2025-11-06 16:20:41', '2025-11-06 16:22:26', '2025-11-06 16:22:26'),
(1365, '20', 'dashboard', '1', 'active', '2025-11-06 16:20:41', '2025-11-06 16:22:26', '2025-11-06 16:22:26'),
(1366, '20', 'vehicle', '7', 'active', '2025-11-06 16:20:41', '2025-11-06 16:22:26', '2025-11-06 16:22:26'),
(1367, '20', 'vehicle management', '10', 'active', '2025-11-06 16:20:41', '2025-11-06 16:22:26', '2025-11-06 16:22:26'),
(1368, '21', 'dashboard', '1', 'active', '2025-11-06 16:22:11', '2025-11-06 16:23:19', '2025-11-06 16:23:19'),
(1369, '21', 'incident management', '12', 'active', '2025-11-06 16:22:11', '2025-11-06 16:23:19', '2025-11-06 16:23:19'),
(1370, '21', 'message', '2', 'active', '2025-11-06 16:22:11', '2025-11-06 16:23:19', '2025-11-06 16:23:19'),
(1371, '21', 'service management', '11', 'active', '2025-11-06 16:22:11', '2025-11-06 16:23:19', '2025-11-06 16:23:19'),
(1372, '19', 'apply appointment', '26', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1373, '19', 'apply business', '22', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1374, '19', 'apply landlord', '24', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1375, '19', 'billing payment', '6', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1376, '19', 'dashboard', '1', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1377, '19', 'feedback', '3', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1378, '19', 'feedback management', '16', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1379, '19', 'incident management', '12', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1380, '19', 'incident report', '23', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1381, '19', 'message', '2', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1382, '19', 'service management', '11', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1383, '19', 'service request', '4', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1384, '19', 'vehicle', '7', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1385, '19', 'vehicle management', '10', 'active', '2025-11-06 16:22:18', '2025-11-06 16:22:18', NULL),
(1386, '20', 'apply appointment', '26', 'active', '2025-11-06 16:22:26', '2025-11-06 16:22:26', NULL),
(1387, '20', 'dashboard', '1', 'active', '2025-11-06 16:22:26', '2025-11-06 16:22:26', NULL),
(1388, '20', 'incident management', '12', 'active', '2025-11-06 16:22:26', '2025-11-06 16:22:26', NULL),
(1389, '20', 'message', '2', 'active', '2025-11-06 16:22:26', '2025-11-06 16:22:26', NULL),
(1390, '20', 'service management', '11', 'active', '2025-11-06 16:22:26', '2025-11-06 16:22:26', NULL),
(1391, '20', 'vehicle', '7', 'active', '2025-11-06 16:22:26', '2025-11-06 16:22:26', NULL),
(1392, '20', 'vehicle management', '10', 'active', '2025-11-06 16:22:26', '2025-11-06 16:22:26', NULL),
(1393, '22', 'dashboard', '1', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1394, '22', 'feedback', '3', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1395, '22', 'feedback management', '16', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1396, '22', 'guest chatbot', '32', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1397, '22', 'incident management', '12', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1398, '22', 'message', '2', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1399, '22', 'service management', '11', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1400, '22', 'system settings', '20', 'active', '2025-11-06 16:23:13', '2025-11-06 16:26:26', '2025-11-06 16:26:26'),
(1401, '21', 'dashboard', '1', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1402, '21', 'feedback', '3', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1403, '21', 'feedback management', '16', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1404, '21', 'guest chatbot', '32', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1405, '21', 'incident management', '12', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1406, '21', 'message', '2', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1407, '21', 'service management', '11', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1408, '21', 'system settings', '20', 'active', '2025-11-06 16:23:19', '2025-11-06 16:23:19', NULL),
(1409, '22', 'dashboard', '1', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1410, '22', 'feedback', '3', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1411, '22', 'feedback management', '16', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1412, '22', 'guest chatbot', '32', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1413, '22', 'incident management', '12', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1414, '22', 'message', '2', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1415, '22', 'service management', '11', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1416, '22', 'system settings', '20', 'active', '2025-11-06 16:26:26', '2025-11-06 16:26:26', NULL),
(1417, '23', 'billing management', '14', 'active', '2025-11-06 16:26:55', '2025-11-06 16:28:25', '2025-11-06 16:28:25'),
(1418, '23', 'dashboard', '1', 'active', '2025-11-06 16:26:55', '2025-11-06 16:28:25', '2025-11-06 16:28:25'),
(1419, '23', 'guest chatbot', '32', 'active', '2025-11-06 16:26:55', '2025-11-06 16:28:25', '2025-11-06 16:28:25'),
(1420, '23', 'message', '2', 'active', '2025-11-06 16:26:55', '2025-11-06 16:28:25', '2025-11-06 16:28:25'),
(1421, '23', 'payment account management', '15', 'active', '2025-11-06 16:26:55', '2025-11-06 16:28:25', '2025-11-06 16:28:25'),
(1422, '23', 'system settings', '20', 'active', '2025-11-06 16:26:55', '2025-11-06 16:28:25', '2025-11-06 16:28:25'),
(1423, '23', 'billing management', '14', 'active', '2025-11-06 16:28:25', '2025-11-06 16:28:25', NULL),
(1424, '23', 'dashboard', '1', 'active', '2025-11-06 16:28:25', '2025-11-06 16:28:25', NULL),
(1425, '23', 'guest chatbot', '32', 'active', '2025-11-06 16:28:25', '2025-11-06 16:28:25', NULL),
(1426, '23', 'message', '2', 'active', '2025-11-06 16:28:25', '2025-11-06 16:28:25', NULL),
(1427, '23', 'payment account management', '15', 'active', '2025-11-06 16:28:25', '2025-11-06 16:28:25', NULL),
(1428, '23', 'system settings', '20', 'active', '2025-11-06 16:28:25', '2025-11-06 16:28:25', NULL),
(1429, '24', 'appointment allow schedule', '29', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1430, '24', 'appointment calendar', '38', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1431, '24', 'appointment category', '28', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1432, '24', 'appointment management', '17', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1433, '24', 'dashboard', '1', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1434, '24', 'guest chatbot', '32', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1435, '24', 'message', '2', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1436, '24', 'system settings', '20', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1437, '24', 'vehicle', '7', 'active', '2025-11-06 16:28:51', '2025-11-06 16:30:29', '2025-11-06 16:30:29'),
(1438, '25', 'dashboard', '1', 'active', '2025-11-06 16:30:22', '2025-11-06 17:03:04', '2025-11-06 17:03:04'),
(1439, '25', 'establishment management', '9', 'active', '2025-11-06 16:30:22', '2025-11-06 17:03:04', '2025-11-06 17:03:04'),
(1440, '25', 'guest chatbot', '32', 'active', '2025-11-06 16:30:22', '2025-11-06 17:03:04', '2025-11-06 17:03:04'),
(1441, '25', 'landlord management', '33', 'active', '2025-11-06 16:30:22', '2025-11-06 17:03:04', '2025-11-06 17:03:04'),
(1442, '25', 'landlord permissions', '27', 'active', '2025-11-06 16:30:22', '2025-11-06 17:03:04', '2025-11-06 17:03:04'),
(1443, '25', 'message', '2', 'active', '2025-11-06 16:30:22', '2025-11-06 17:03:04', '2025-11-06 17:03:04'),
(1444, '25', 'system settings', '20', 'active', '2025-11-06 16:30:22', '2025-11-06 17:03:04', '2025-11-06 17:03:04'),
(1445, '24', 'appointment allow schedule', '29', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1446, '24', 'appointment calendar', '38', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1447, '24', 'appointment category', '28', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1448, '24', 'appointment management', '17', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1449, '24', 'dashboard', '1', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1450, '24', 'establishment management', '9', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1451, '24', 'guest chatbot', '32', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1452, '24', 'landlord management', '33', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1453, '24', 'landlord permissions', '27', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1454, '24', 'message', '2', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1455, '24', 'system settings', '20', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1456, '24', 'vehicle', '7', 'active', '2025-11-06 16:30:29', '2025-11-06 16:30:29', NULL),
(1457, '15', 'activity logs', '30', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1458, '15', 'announcements management', '13', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1459, '15', 'appointment allow schedule', '29', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1460, '15', 'appointment calendar', '38', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1461, '15', 'appointment category', '28', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1462, '15', 'appointment management', '17', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1463, '15', 'billing management', '14', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1464, '15', 'dashboard', '1', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1465, '15', 'establishment management', '9', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1466, '15', 'feedback management', '16', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1467, '15', 'guest chatbot', '32', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1468, '15', 'incident management', '12', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1469, '15', 'landlord management', '33', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1470, '15', 'landlord permissions', '27', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1471, '15', 'message', '2', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1472, '15', 'notification settings', '19', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1473, '15', 'payment account management', '15', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1474, '15', 'Permission Settings', '21', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1475, '15', 'service management', '11', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1476, '15', 'system settings', '20', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1477, '15', 'user management', '8', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1478, '15', 'vehicle management', '10', 'active', '2025-11-06 17:00:16', '2025-11-09 04:54:27', '2025-11-09 04:54:27'),
(1479, '25', 'apply appointment', '26', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1480, '25', 'apply business', '22', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1481, '25', 'apply landlord', '24', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1482, '25', 'billing payment', '6', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1483, '25', 'dashboard', '1', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1484, '25', 'establishment management', '9', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1485, '25', 'feedback', '3', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1486, '25', 'feedback management', '16', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1487, '25', 'guest chatbot', '32', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1488, '25', 'incident report', '23', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1489, '25', 'landlord management', '33', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1490, '25', 'landlord permissions', '27', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1491, '25', 'message', '2', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1492, '25', 'service request', '4', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1493, '25', 'system settings', '20', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1494, '25', 'vehicle', '7', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1495, '25', 'vehicle management', '10', 'active', '2025-11-06 17:03:04', '2025-11-06 17:03:04', NULL),
(1496, '26', 'apply appointment', '26', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1497, '26', 'apply business', '22', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1498, '26', 'apply landlord', '24', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1499, '26', 'billing payment', '6', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1500, '26', 'dashboard', '1', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1501, '26', 'feedback', '3', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1502, '26', 'incident report', '23', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1503, '26', 'message', '2', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1504, '26', 'service request', '4', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1505, '26', 'vehicle', '7', 'active', '2025-11-06 17:04:35', '2025-11-09 05:17:54', '2025-11-09 05:17:54'),
(1506, '27', 'activity logs', '30', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1507, '27', 'announcements management', '13', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1508, '27', 'apply landlord', '24', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1509, '27', 'appointment allow schedule', '29', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1510, '27', 'appointment category', '28', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1511, '27', 'appointment management', '17', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1512, '27', 'billing management', '14', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1513, '27', 'calendar', '38', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1514, '27', 'dashboard', '1', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1515, '27', 'establishment management', '9', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1516, '27', 'feedback management', '16', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1517, '27', 'guest chatbot', '32', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1518, '27', 'incident management', '12', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1519, '27', 'landlord management', '33', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1520, '27', 'landlord permissions', '27', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1521, '27', 'message', '2', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1522, '27', 'notification settings', '19', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1523, '27', 'payment account management', '15', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1524, '27', 'Permission Settings', '21', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1525, '27', 'service management', '11', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1526, '27', 'system settings', '20', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1527, '27', 'user management', '8', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1528, '27', 'vehicle management', '10', 'active', '2025-11-09 04:54:03', '2025-11-09 06:52:43', '2025-11-09 06:52:43'),
(1529, '18', 'activity logs', '30', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1530, '18', 'announcements management', '13', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1531, '18', 'apply appointment', '26', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1532, '18', 'apply business', '22', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1533, '18', 'apply landlord', '24', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1534, '18', 'appointment allow schedule', '29', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1535, '18', 'appointment category', '28', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1536, '18', 'appointment management', '17', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1537, '18', 'billing management', '14', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1538, '18', 'billing payment', '6', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1539, '18', 'calendar', '38', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1540, '18', 'dashboard', '1', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1541, '18', 'establishment management', '9', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1542, '18', 'feedback', '3', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1543, '18', 'feedback management', '16', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1544, '18', 'guest chatbot', '32', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1545, '18', 'incident management', '12', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1546, '18', 'incident report', '23', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1547, '18', 'landlord management', '33', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1548, '18', 'landlord permissions', '27', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1549, '18', 'message', '2', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1550, '18', 'notification settings', '19', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1551, '18', 'payment account management', '15', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1552, '18', 'Permission Settings', '21', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1553, '18', 'service management', '11', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1554, '18', 'service request', '4', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1555, '18', 'system settings', '20', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1556, '18', 'user management', '8', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1557, '18', 'vehicle', '7', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1558, '18', 'vehicle management', '10', 'active', '2025-11-09 04:54:11', '2025-11-09 04:54:11', NULL),
(1559, '15', 'activity logs', '30', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1560, '15', 'announcements management', '13', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1561, '15', 'apply landlord', '24', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1562, '15', 'appointment allow schedule', '29', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1563, '15', 'appointment category', '28', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1564, '15', 'appointment management', '17', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1565, '15', 'billing management', '14', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1566, '15', 'calendar', '38', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1567, '15', 'dashboard', '1', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1568, '15', 'establishment management', '9', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1569, '15', 'feedback management', '16', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1570, '15', 'guest chatbot', '32', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1571, '15', 'incident management', '12', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1572, '15', 'landlord management', '33', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1573, '15', 'landlord permissions', '27', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1574, '15', 'message', '2', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1575, '15', 'notification settings', '19', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1576, '15', 'payment account management', '15', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1577, '15', 'Permission Settings', '21', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1578, '15', 'service management', '11', 'active', '2025-11-09 04:54:27', '2025-11-09 04:54:27', NULL),
(1579, '15', 'system settings', '20', 'active', '2025-11-09 04:54:28', '2025-11-09 04:54:28', NULL),
(1580, '15', 'user management', '8', 'active', '2025-11-09 04:54:28', '2025-11-09 04:54:28', NULL),
(1581, '15', 'vehicle management', '10', 'active', '2025-11-09 04:54:28', '2025-11-09 04:54:28', NULL),
(1582, '26', 'apply appointment', '26', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1583, '26', 'apply business', '22', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1584, '26', 'apply landlord', '24', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1585, '26', 'billing payment', '6', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1586, '26', 'dashboard', '1', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1587, '26', 'establishment management', '9', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1588, '26', 'feedback', '3', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1589, '26', 'guest chatbot', '32', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1590, '26', 'incident report', '23', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1591, '26', 'landlord management', '33', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1592, '26', 'landlord permissions', '27', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1593, '26', 'message', '2', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1594, '26', 'service request', '4', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1595, '26', 'system settings', '20', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1596, '26', 'vehicle', '7', 'active', '2025-11-09 05:17:54', '2025-11-09 05:19:09', '2025-11-09 05:19:09'),
(1597, '26', 'apply appointment', '26', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1598, '26', 'apply business', '22', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1599, '26', 'apply landlord', '24', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1600, '26', 'billing payment', '6', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1601, '26', 'dashboard', '1', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1602, '26', 'establishment management', '9', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1603, '26', 'feedback', '3', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1604, '26', 'guest chatbot', '32', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1605, '26', 'incident management', '12', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1606, '26', 'incident report', '23', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1607, '26', 'landlord management', '33', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1608, '26', 'landlord permissions', '27', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1609, '26', 'message', '2', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1610, '26', 'service management', '11', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1611, '26', 'service request', '4', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1612, '26', 'system settings', '20', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1613, '26', 'vehicle', '7', 'active', '2025-11-09 05:19:09', '2025-11-09 05:19:15', '2025-11-09 05:19:15'),
(1614, '28', 'dashboard', '1', 'active', '2025-11-09 05:19:24', '2025-11-09 05:21:37', '2025-11-09 05:21:37'),
(1615, '28', 'incident management', '12', 'active', '2025-11-09 05:19:24', '2025-11-09 05:21:37', '2025-11-09 05:21:37'),
(1616, '28', 'message', '2', 'active', '2025-11-09 05:19:24', '2025-11-09 05:21:37', '2025-11-09 05:21:37'),
(1617, '28', 'service management', '11', 'active', '2025-11-09 05:19:24', '2025-11-09 05:21:37', '2025-11-09 05:21:37'),
(1618, '29', 'apply appointment', '26', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1619, '29', 'apply business', '22', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1620, '29', 'apply landlord', '24', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1621, '29', 'billing payment', '6', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1622, '29', 'dashboard', '1', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1623, '29', 'feedback', '3', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1624, '29', 'incident report', '23', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1625, '29', 'message', '2', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1626, '29', 'service request', '4', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1627, '29', 'vehicle', '7', 'active', '2025-11-09 05:21:43', '2025-11-09 05:24:17', '2025-11-09 05:24:17'),
(1628, '30', 'apply appointment', '26', 'active', '2025-11-09 05:24:26', '2025-11-09 05:25:06', '2025-11-09 05:25:06'),
(1629, '30', 'dashboard', '1', 'active', '2025-11-09 05:24:26', '2025-11-09 05:25:06', '2025-11-09 05:25:06'),
(1630, '30', 'vehicle', '7', 'active', '2025-11-09 05:24:26', '2025-11-09 05:25:06', '2025-11-09 05:25:06'),
(1631, '31', 'activity logs', '30', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1632, '31', 'announcements management', '13', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1633, '31', 'dashboard', '1', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1634, '31', 'guest chatbot', '32', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1635, '31', 'message', '2', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1636, '31', 'notification settings', '19', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1637, '31', 'Permission Settings', '21', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1638, '31', 'system settings', '20', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1639, '31', 'user management', '8', 'active', '2025-11-09 05:25:13', '2025-11-09 05:26:14', '2025-11-09 05:26:14'),
(1640, '32', 'dashboard', '1', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(1641, '32', 'feedback management', '16', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(1642, '32', 'guest chatbot', '32', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(1643, '32', 'incident management', '12', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(1644, '32', 'message', '2', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(1645, '32', 'service management', '11', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(1646, '32', 'system settings', '20', 'active', '2025-11-09 05:26:09', '2025-11-09 05:27:27', '2025-11-09 05:27:27'),
(1647, '33', 'appointment allow schedule', '29', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1648, '33', 'appointment category', '28', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1649, '33', 'appointment management', '17', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1650, '33', 'calendar', '38', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1651, '33', 'dashboard', '1', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1652, '33', 'guest chatbot', '32', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1653, '33', 'message', '2', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1654, '33', 'system settings', '20', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1655, '33', 'vehicle management', '10', 'active', '2025-11-09 05:27:22', '2025-11-09 05:28:28', '2025-11-09 05:28:28'),
(1656, '34', 'activity logs', '30', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1657, '34', 'announcements management', '13', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1658, '34', 'apply landlord', '24', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1659, '34', 'appointment allow schedule', '29', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1660, '34', 'appointment category', '28', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1661, '34', 'appointment management', '17', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1662, '34', 'billing management', '14', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1663, '34', 'calendar', '38', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1664, '34', 'dashboard', '1', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1665, '34', 'establishment management', '9', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1666, '34', 'feedback management', '16', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1667, '34', 'guest chatbot', '32', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1668, '34', 'incident management', '12', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1669, '34', 'landlord management', '33', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1670, '34', 'landlord permissions', '27', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1671, '34', 'message', '2', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1672, '34', 'notification settings', '19', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1673, '34', 'payment account management', '15', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1674, '34', 'Permission Settings', '21', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1675, '34', 'service management', '11', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1676, '34', 'system settings', '20', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1677, '34', 'user management', '8', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1678, '34', 'vehicle management', '10', 'active', '2025-11-09 05:28:22', '2025-11-09 06:51:43', '2025-11-09 06:51:43'),
(1679, '35', 'apply appointment', '26', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1680, '35', 'apply business', '22', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1681, '35', 'apply landlord', '24', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1682, '35', 'billing payment', '6', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1683, '35', 'dashboard', '1', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1684, '35', 'feedback', '3', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1685, '35', 'incident report', '23', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1686, '35', 'message', '2', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1687, '35', 'service request', '4', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1688, '35', 'vehicle', '7', 'active', '2025-11-09 06:51:38', '2025-11-11 11:18:52', '2025-11-11 11:18:52'),
(1689, '27', 'activity logs', '30', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1690, '27', 'announcements management', '13', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1691, '27', 'apply landlord', '24', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1692, '27', 'appointment allow schedule', '29', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1693, '27', 'appointment category', '28', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1694, '27', 'appointment management', '17', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1695, '27', 'billing management', '14', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1696, '27', 'calendar', '38', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1697, '27', 'dashboard', '1', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1698, '27', 'establishment management', '9', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1699, '27', 'feedback management', '16', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1700, '27', 'guest chatbot', '32', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1701, '27', 'incident management', '12', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1702, '27', 'landlord management', '33', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1703, '27', 'landlord permissions', '27', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1704, '27', 'message', '2', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1705, '27', 'notification settings', '19', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1706, '27', 'payment account management', '15', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1707, '27', 'Permission Settings', '21', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1708, '27', 'service management', '11', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1709, '27', 'system settings', '20', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1710, '27', 'user management', '8', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1711, '27', 'vehicle', '7', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1712, '27', 'vehicle management', '10', 'active', '2025-11-09 06:52:43', '2025-11-11 16:22:25', '2025-11-11 16:22:25'),
(1713, '36', 'apply appointment', '26', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1714, '36', 'apply business', '22', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1715, '36', 'apply landlord', '24', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1716, '36', 'billing payment', '6', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1717, '36', 'dashboard', '1', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1718, '36', 'feedback', '3', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1719, '36', 'incident report', '23', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1720, '36', 'message', '2', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1721, '36', 'service request', '4', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1722, '36', 'vehicle', '7', 'active', '2025-11-09 07:06:32', '2025-11-11 22:59:39', '2025-11-11 22:59:39'),
(1723, '37', 'apply appointment', '26', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1724, '37', 'apply business', '22', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1725, '37', 'apply landlord', '24', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1726, '37', 'billing payment', '6', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1727, '37', 'dashboard', '1', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1728, '37', 'feedback', '3', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1729, '37', 'incident report', '23', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1730, '37', 'message', '2', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1731, '37', 'service request', '4', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1732, '37', 'vehicle', '7', 'active', '2025-11-11 11:19:39', '2025-11-11 16:36:24', '2025-11-11 16:36:24'),
(1733, '38', 'activity logs', '30', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1734, '38', 'announcements management', '13', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1735, '38', 'appointment allow schedule', '29', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1736, '38', 'appointment category', '28', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1737, '38', 'appointment management', '17', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1738, '38', 'billing management', '14', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1739, '38', 'calendar', '38', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1740, '38', 'dashboard', '1', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1741, '38', 'establishment management', '9', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1742, '38', 'feedback management', '16', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1743, '38', 'guest chatbot', '32', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1744, '38', 'incident management', '12', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1745, '38', 'landlord management', '33', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1746, '38', 'landlord permissions', '27', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1747, '38', 'message', '2', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1748, '38', 'notification settings', '19', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1749, '38', 'payment account management', '15', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1750, '38', 'Permission Settings', '21', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1751, '38', 'service management', '11', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1752, '38', 'system settings', '20', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1753, '38', 'user management', '8', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1754, '38', 'vehicle management', '10', 'active', '2025-11-11 16:21:46', '2025-11-11 16:21:46', NULL),
(1755, '27', 'activity logs', '30', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1756, '27', 'announcements management', '13', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1757, '27', 'apply landlord', '24', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1758, '27', 'appointment allow schedule', '29', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1759, '27', 'appointment category', '28', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL);
INSERT INTO `permission_settings_list` (`id`, `permission_settings_id`, `permission_allowed`, `module_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1760, '27', 'appointment management', '17', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1761, '27', 'billing management', '14', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1762, '27', 'calendar', '38', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1763, '27', 'dashboard', '1', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1764, '27', 'establishment management', '9', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1765, '27', 'feedback management', '16', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1766, '27', 'guest chatbot', '32', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1767, '27', 'incident management', '12', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1768, '27', 'landlord management', '33', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1769, '27', 'landlord permissions', '27', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1770, '27', 'message', '2', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1771, '27', 'notification settings', '19', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1772, '27', 'payment account management', '15', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1773, '27', 'Permission Settings', '21', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1774, '27', 'service management', '11', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1775, '27', 'system settings', '20', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1776, '27', 'user management', '8', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1777, '27', 'vehicle', '7', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1778, '27', 'vehicle management', '10', 'active', '2025-11-11 16:22:25', '2025-11-11 16:22:25', NULL),
(1779, '39', 'activity logs', '30', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1780, '39', 'announcements management', '13', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1781, '39', 'appointment allow schedule', '29', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1782, '39', 'appointment category', '28', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1783, '39', 'appointment management', '17', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1784, '39', 'billing management', '14', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1785, '39', 'calendar', '38', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1786, '39', 'dashboard', '1', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1787, '39', 'establishment management', '9', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1788, '39', 'feedback management', '16', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1789, '39', 'guest chatbot', '32', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1790, '39', 'incident management', '12', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1791, '39', 'landlord management', '33', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1792, '39', 'landlord permissions', '27', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1793, '39', 'message', '2', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1794, '39', 'notification settings', '19', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1795, '39', 'payment account management', '15', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1796, '39', 'Permission Settings', '21', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1797, '39', 'service management', '11', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1798, '39', 'system settings', '20', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1799, '39', 'user management', '8', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1800, '39', 'vehicle management', '10', 'active', '2025-11-11 16:35:57', '2025-11-11 16:36:41', '2025-11-11 16:36:41'),
(1801, '37', 'activity logs', '30', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1802, '37', 'announcements management', '13', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1803, '37', 'apply appointment', '26', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1804, '37', 'apply business', '22', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1805, '37', 'apply landlord', '24', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1806, '37', 'appointment allow schedule', '29', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1807, '37', 'appointment category', '28', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1808, '37', 'appointment management', '17', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1809, '37', 'billing management', '14', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1810, '37', 'billing payment', '6', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1811, '37', 'calendar', '38', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1812, '37', 'dashboard', '1', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1813, '37', 'establishment management', '9', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1814, '37', 'feedback', '3', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1815, '37', 'feedback management', '16', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1816, '37', 'guest chatbot', '32', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1817, '37', 'incident management', '12', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1818, '37', 'incident report', '23', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1819, '37', 'landlord management', '33', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1820, '37', 'landlord permissions', '27', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1821, '37', 'message', '2', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1822, '37', 'notification settings', '19', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1823, '37', 'payment account management', '15', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1824, '37', 'Permission Settings', '21', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1825, '37', 'service management', '11', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1826, '37', 'service request', '4', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1827, '37', 'system settings', '20', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1828, '37', 'user management', '8', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1829, '37', 'vehicle', '7', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1830, '37', 'vehicle management', '10', 'active', '2025-11-11 16:36:24', '2025-11-11 16:42:34', '2025-11-11 16:42:34'),
(1831, '39', 'activity logs', '30', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1832, '39', 'announcements management', '13', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1833, '39', 'appointment allow schedule', '29', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1834, '39', 'appointment category', '28', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1835, '39', 'appointment management', '17', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1836, '39', 'billing management', '14', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1837, '39', 'billing payment', '6', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1838, '39', 'calendar', '38', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1839, '39', 'dashboard', '1', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1840, '39', 'establishment management', '9', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1841, '39', 'feedback management', '16', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1842, '39', 'guest chatbot', '32', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1843, '39', 'incident management', '12', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1844, '39', 'landlord management', '33', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1845, '39', 'landlord permissions', '27', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1846, '39', 'message', '2', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1847, '39', 'notification settings', '19', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1848, '39', 'payment account management', '15', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1849, '39', 'Permission Settings', '21', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1850, '39', 'service management', '11', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1851, '39', 'system settings', '20', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1852, '39', 'user management', '8', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1853, '39', 'vehicle management', '10', 'active', '2025-11-11 16:36:41', '2025-11-11 16:37:07', '2025-11-11 16:37:07'),
(1854, '39', 'activity logs', '30', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1855, '39', 'announcements management', '13', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1856, '39', 'appointment allow schedule', '29', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1857, '39', 'appointment category', '28', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1858, '39', 'appointment management', '17', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1859, '39', 'billing payment', '6', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1860, '39', 'calendar', '38', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1861, '39', 'dashboard', '1', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1862, '39', 'establishment management', '9', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1863, '39', 'feedback management', '16', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1864, '39', 'guest chatbot', '32', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1865, '39', 'incident management', '12', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1866, '39', 'landlord management', '33', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1867, '39', 'landlord permissions', '27', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1868, '39', 'message', '2', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1869, '39', 'notification settings', '19', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1870, '39', 'payment account management', '15', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1871, '39', 'Permission Settings', '21', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1872, '39', 'service management', '11', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1873, '39', 'system settings', '20', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1874, '39', 'user management', '8', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1875, '39', 'vehicle management', '10', 'active', '2025-11-11 16:37:07', '2025-11-11 16:37:21', '2025-11-11 16:37:21'),
(1876, '39', 'activity logs', '30', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1877, '39', 'announcements management', '13', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1878, '39', 'appointment allow schedule', '29', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1879, '39', 'appointment category', '28', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1880, '39', 'appointment management', '17', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1881, '39', 'billing management', '14', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1882, '39', 'billing payment', '6', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1883, '39', 'calendar', '38', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1884, '39', 'dashboard', '1', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1885, '39', 'establishment management', '9', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1886, '39', 'feedback management', '16', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1887, '39', 'guest chatbot', '32', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1888, '39', 'incident management', '12', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1889, '39', 'landlord management', '33', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1890, '39', 'landlord permissions', '27', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1891, '39', 'message', '2', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1892, '39', 'notification settings', '19', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1893, '39', 'payment account management', '15', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1894, '39', 'Permission Settings', '21', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1895, '39', 'service management', '11', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1896, '39', 'system settings', '20', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1897, '39', 'user management', '8', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1898, '39', 'vehicle management', '10', 'active', '2025-11-11 16:37:21', '2025-11-11 16:42:29', '2025-11-11 16:42:29'),
(1899, '40', 'apply appointment', '26', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1900, '40', 'apply business', '22', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1901, '40', 'apply landlord', '24', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1902, '40', 'billing payment', '6', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1903, '40', 'dashboard', '1', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1904, '40', 'feedback', '3', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1905, '40', 'incident report', '23', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1906, '40', 'message', '2', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1907, '40', 'service request', '4', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1908, '40', 'vehicle', '7', 'active', '2025-11-11 16:42:42', '2025-11-11 21:29:55', '2025-11-11 21:29:55'),
(1909, '41', 'appointment allow schedule', '29', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1910, '41', 'appointment category', '28', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1911, '41', 'appointment management', '17', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1912, '41', 'calendar', '38', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1913, '41', 'dashboard', '1', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1914, '41', 'guest chatbot', '32', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1915, '41', 'message', '2', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1916, '41', 'system settings', '20', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1917, '41', 'vehicle management', '10', 'active', '2025-11-11 21:30:04', '2025-11-11 21:34:01', '2025-11-11 21:34:01'),
(1918, '42', 'apply appointment', '26', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1919, '42', 'apply business', '22', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1920, '42', 'apply landlord', '24', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1921, '42', 'billing payment', '6', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1922, '42', 'dashboard', '1', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1923, '42', 'feedback', '3', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1924, '42', 'incident report', '23', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1925, '42', 'message', '2', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1926, '42', 'service request', '4', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1927, '42', 'vehicle', '7', 'active', '2025-11-11 21:34:10', '2025-11-12 00:25:07', '2025-11-12 00:25:07'),
(1928, '43', 'apply appointment', '26', 'active', '2025-11-11 22:59:50', '2025-11-12 06:34:55', '2025-11-12 06:34:55'),
(1929, '43', 'dashboard', '1', 'active', '2025-11-11 22:59:50', '2025-11-12 06:34:55', '2025-11-12 06:34:55'),
(1930, '43', 'vehicle', '7', 'active', '2025-11-11 22:59:50', '2025-11-12 06:34:55', '2025-11-12 06:34:55'),
(1931, '44', 'activity logs', '30', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1932, '44', 'announcements management', '13', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1933, '44', 'dashboard', '1', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1934, '44', 'guest chatbot', '32', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1935, '44', 'message', '2', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1936, '44', 'notification settings', '19', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1937, '44', 'Permission Settings', '21', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1938, '44', 'system settings', '20', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1939, '44', 'user management', '8', 'active', '2025-11-12 00:25:15', '2025-11-12 00:25:42', '2025-11-12 00:25:42'),
(1940, '44', 'activity logs', '30', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1941, '44', 'announcements management', '13', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1942, '44', 'dashboard', '1', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1943, '44', 'guest chatbot', '32', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1944, '44', 'message', '2', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1945, '44', 'notification settings', '19', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1946, '44', 'Permission Settings', '21', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1947, '44', 'system settings', '20', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1948, '44', 'user management', '8', 'active', '2025-11-12 00:25:42', '2025-11-12 00:26:04', '2025-11-12 00:26:04'),
(1949, '44', 'activity logs', '30', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1950, '44', 'announcements management', '13', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1951, '44', 'dashboard', '1', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1952, '44', 'guest chatbot', '32', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1953, '44', 'message', '2', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1954, '44', 'notification settings', '19', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1955, '44', 'Permission Settings', '21', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1956, '44', 'system settings', '20', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1957, '44', 'user management', '8', 'active', '2025-11-12 00:26:04', '2025-11-12 05:25:54', '2025-11-12 05:25:54'),
(1958, '45', 'apply appointment', '26', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1959, '45', 'apply business', '22', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1960, '45', 'apply landlord', '24', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1961, '45', 'billing payment', '6', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1962, '45', 'dashboard', '1', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1963, '45', 'feedback', '3', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1964, '45', 'incident report', '23', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1965, '45', 'message', '2', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1966, '45', 'service request', '4', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1967, '45', 'vehicle', '7', 'active', '2025-11-12 05:26:02', '2025-11-12 09:30:03', '2025-11-12 09:30:03'),
(1968, '43', 'apply appointment', '26', 'active', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(1969, '43', 'dashboard', '1', 'active', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(1970, '43', 'service request', '4', 'active', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(1971, '43', 'vehicle', '7', 'active', '2025-11-12 06:34:55', '2025-11-12 06:34:55', NULL),
(1972, '45', 'apply appointment', '26', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1973, '45', 'apply business', '22', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1974, '45', 'apply landlord', '24', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1975, '45', 'billing payment', '6', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1976, '45', 'dashboard', '1', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1977, '45', 'feedback', '3', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1978, '45', 'incident report', '23', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1979, '45', 'message', '2', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1980, '45', 'service request', '4', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1981, '45', 'vehicle', '7', 'active', '2025-11-12 09:30:03', '2025-11-12 09:30:34', '2025-11-12 09:30:34'),
(1982, '46', 'apply appointment', '26', 'active', '2025-11-12 09:31:22', '2025-11-12 10:25:04', '2025-11-12 10:25:04'),
(1983, '46', 'dashboard', '1', 'active', '2025-11-12 09:31:22', '2025-11-12 10:25:04', '2025-11-12 10:25:04'),
(1984, '46', 'vehicle', '7', 'active', '2025-11-12 09:31:22', '2025-11-12 10:25:04', '2025-11-12 10:25:04'),
(1985, '46', 'apply appointment', '26', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1986, '46', 'apply business', '22', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1987, '46', 'apply landlord', '24', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1988, '46', 'billing payment', '6', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1989, '46', 'dashboard', '1', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1990, '46', 'feedback', '3', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1991, '46', 'incident report', '23', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1992, '46', 'message', '2', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1993, '46', 'service request', '4', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1994, '46', 'vehicle', '7', 'active', '2025-11-12 10:25:04', '2025-11-12 18:35:14', '2025-11-12 18:35:14'),
(1995, '47', 'dashboard', '1', 'active', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(1996, '47', 'incident management', '12', 'active', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(1997, '47', 'message', '2', 'active', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(1998, '47', 'service management', '11', 'active', '2025-11-12 17:12:17', '2025-11-12 17:12:17', NULL),
(1999, '48', 'activity logs', '30', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2000, '48', 'announcements management', '13', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2001, '48', 'dashboard', '1', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2002, '48', 'guest chatbot', '32', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2003, '48', 'message', '2', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2004, '48', 'notification settings', '19', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2005, '48', 'Permission Settings', '21', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2006, '48', 'system settings', '20', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2007, '48', 'user management', '8', 'active', '2025-11-12 17:51:08', '2025-11-12 17:51:08', NULL),
(2008, '49', 'dashboard', '1', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(2009, '49', 'feedback management', '16', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(2010, '49', 'guest chatbot', '32', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(2011, '49', 'incident management', '12', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(2012, '49', 'message', '2', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(2013, '49', 'service management', '11', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(2014, '49', 'system settings', '20', 'active', '2025-11-12 18:35:27', '2025-11-12 18:35:27', NULL),
(2015, '50', 'billing management', '14', 'active', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(2016, '50', 'dashboard', '1', 'active', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(2017, '50', 'guest chatbot', '32', 'active', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(2018, '50', 'message', '2', 'active', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(2019, '50', 'payment account management', '15', 'active', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(2020, '50', 'system settings', '20', 'active', '2025-11-13 16:01:47', '2025-11-13 16:01:47', NULL),
(2021, '51', 'appointment allow schedule', '29', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2022, '51', 'appointment category', '28', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2023, '51', 'appointment management', '17', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2024, '51', 'calendar', '38', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2025, '51', 'dashboard', '1', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2026, '51', 'guest chatbot', '32', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2027, '51', 'message', '2', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2028, '51', 'system settings', '20', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2029, '51', 'vehicle management', '10', 'active', '2025-11-13 16:22:03', '2025-11-13 16:22:03', NULL),
(2030, '52', 'dashboard', '1', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(2031, '52', 'establishment management', '9', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(2032, '52', 'guest chatbot', '32', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(2033, '52', 'landlord management', '33', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(2034, '52', 'landlord permissions', '27', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(2035, '52', 'message', '2', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL),
(2036, '52', 'system settings', '20', 'active', '2025-11-13 18:15:13', '2025-11-13 18:15:13', NULL);

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

-- --------------------------------------------------------

--
-- Table structure for table `sticker_control_number`
--

CREATE TABLE `sticker_control_number` (
  `id` int(11) NOT NULL,
  `vehicle_list_details_homeowners_id` varchar(45) DEFAULT NULL,
  `control_number` varchar(255) DEFAULT NULL,
  `valid_until` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sticker_control_number`
--

INSERT INTO `sticker_control_number` (`id`, `vehicle_list_details_homeowners_id`, `control_number`, `valid_until`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, '34', 'SCN20251588', '2026-03-25', 'Active', '2025-11-09 07:10:21', '2025-11-09 07:10:26', NULL),
(10, '35', 'SCN20250430', '2026-03-26', 'Active', '2025-11-11 16:24:59', '2025-11-11 16:25:05', NULL),
(11, '36', 'SCN20254167', '2026-01-30', 'Active', '2025-11-11 16:26:40', '2025-11-11 16:26:49', NULL),
(12, '38', 'SCN20255244', '2026-03-25', 'Active', '2025-11-12 09:34:13', '2025-11-12 09:34:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `key`, `description`, `value`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'login_logo', NULL, 'system_settings/1762857614_LOGO_copy.png', 'image', 'active', '2025-09-21 23:11:09', '2025-11-11 10:40:14', NULL),
(2, 'login_top_logo', NULL, 'system_settings/1762277668_LOGO_copy.png', 'image', 'active', '2025-09-21 23:11:09', '2025-11-04 17:34:28', NULL),
(3, 'login_top_text', NULL, 'Golden Country Homes HOA Connect', 'text', 'active', '2025-09-21 23:11:09', '2025-11-04 17:35:05', NULL),
(4, 'login_center_text', NULL, 'Golden Country Homes', 'text', 'active', '2025-09-21 23:11:09', '2025-11-04 17:39:12', NULL),
(5, 'login_bottom_text', NULL, 'Homeowner\'s Association INC.', 'text', 'active', '2025-09-21 23:11:09', '2025-11-04 17:36:35', NULL),
(6, 'topbar_top_logo', NULL, 'system_settings/1762277824_LOGO_copy.png', 'image', 'active', '2025-09-21 23:11:09', '2025-11-04 17:37:04', NULL),
(7, 'topbar_top_text', NULL, 'Golden Country Homes HOA Connect', 'text', 'active', '2025-09-21 23:11:09', '2025-11-04 17:37:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_announcement`
--

CREATE TABLE `tbl_announcement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `visible_to` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_announcement`
--

INSERT INTO `tbl_announcement` (`id`, `type`, `description`, `visible_to`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 'Advisory', 'This is a public service announcement. Due to the recent Influenza outbreak, all guests who enter and leave the premises need to have their temperature checked.', 'public', 'Active', '2025-10-26 17:48:43', '2025-10-26 17:49:53', NULL),
(18, 'Announcement', 'Signal No. 3 has hit Batangas City. Stay safe everyone!', 'public', 'Active', '2025-10-26 18:35:10', '2025-11-04 17:42:57', NULL),
(28, 'Test Announcement', 'This Announcement should be private.', 'private', 'Active', '2025-11-06 15:57:32', '2025-11-06 15:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment`
--

CREATE TABLE `tbl_appointment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `appointment_date` varchar(255) DEFAULT NULL,
  `tracking_number` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `is_expired` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_account_category`
--

CREATE TABLE `tbl_bank_account_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bank_account_type_id` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `qrcode_image` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_bank_account_category`
--

INSERT INTO `tbl_bank_account_category` (`id`, `bank_account_type_id`, `account_name`, `account_number`, `qrcode_image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Main GCash', '09215888429', 'uploads/qrcodes/1762281490_qr1.png', 'active', '2025-08-30 23:43:10', '2025-11-04 18:38:10', NULL),
(2, '2', 'Main Maya', '09196864743', NULL, 'active', '2025-08-30 23:43:10', '2025-10-30 15:54:56', NULL),
(3, '3', 'LandBank', '31101741', NULL, 'active', '2025-08-30 23:43:10', '2025-10-30 15:55:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_account_type`
--

CREATE TABLE `tbl_bank_account_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_bank_account_type`
--

INSERT INTO `tbl_bank_account_type` (`id`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'GCash', 'active', '2025-08-30 23:43:09', '2025-08-30 23:43:09', NULL),
(2, 'PayMaya', 'active', '2025-08-30 23:43:10', '2025-08-30 23:43:10', NULL),
(3, 'Bank', 'active', '2025-08-30 23:43:10', '2025-08-30 23:43:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billing_management`
--

CREATE TABLE `tbl_billing_management` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `billing_date` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL,
  `official_receipt` varchar(255) DEFAULT NULL,
  `amount_due` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `payment_account_id` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_billing_management`
--

INSERT INTO `tbl_billing_management` (`id`, `user_id`, `billing_date`, `receipt`, `official_receipt`, `amount_due`, `status`, `payment_account_id`, `reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(20, '9', '12 Nov, 2025 - 12 Dec, 2025', 'payment_proofs/1762875141_576585044_1119374136646737_7836384802909362874_n.jpg', 'receipts/official/official_receipt_20_1762875190.html', '250', 'approved', '1', NULL, '2025-11-11 11:26:06', '2025-11-11 15:33:10', NULL),
(21, '9', '12 Nov, 2025 - 12 Dec, 2025', 'payment_proofs/1762932657_573463595_1255851556272733_1514517022939676453_n.jpg', NULL, '50', 'under review', '1', NULL, '2025-11-11 23:57:27', '2025-11-12 07:30:57', NULL),
(22, '20', '12 Nov, 2025 - 12 Dec, 2025', 'payment_proofs/1762946089_IMG_20250806_122946779.jpg', 'receipts/official/official_receipt_22_1762946104.html', '1150', 'approved', '1', NULL, '2025-11-12 11:11:54', '2025-11-12 11:15:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_billing_management_list`
--

CREATE TABLE `tbl_billing_management_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `billing_management_id` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `qty` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `is_pay` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_billing_management_list`
--

INSERT INTO `tbl_billing_management_list` (`id`, `billing_management_id`, `description`, `qty`, `price`, `is_pay`, `created_at`, `updated_at`, `deleted_at`) VALUES
(28, '20', 'Monthly Dues', '1', '150', 'yes', '2025-11-11 11:26:06', '2025-11-11 15:33:10', NULL),
(29, '20', 'Membership Fee', '1', '100', 'yes', '2025-11-11 11:26:06', '2025-11-11 15:33:10', NULL),
(30, '21', 'Amenities', '1', '50', 'No', '2025-11-11 23:57:27', '2025-11-11 23:57:27', NULL),
(31, '22', 'Monthly Dues', '1', '1000', 'yes', '2025-11-12 11:11:54', '2025-11-12 11:15:04', NULL),
(32, '22', 'Membership Fee', '1', '150', 'yes', '2025-11-12 11:11:54', '2025-11-12 11:15:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `rating` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`id`, `user_id`, `description`, `rating`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(55, '9', 'This system is great!', '4', 'active', '2025-11-11 11:59:48', '2025-11-11 11:59:48', NULL),
(56, '20', 'haha', '2', 'active', '2025-11-12 10:49:21', '2025-11-12 10:49:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_incident_report`
--

CREATE TABLE `tbl_incident_report` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `person_involved_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `datetime_of_incident` varchar(255) DEFAULT NULL,
  `location_of_incident` varchar(255) DEFAULT NULL,
  `guard_id` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `street` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_incident_report`
--

INSERT INTO `tbl_incident_report` (`id`, `created_at`, `updated_at`, `user_id`, `person_involved_name`, `address`, `designation`, `datetime_of_incident`, `location_of_incident`, `guard_id`, `reason`, `status`, `deleted_at`, `street`) VALUES
(28, '2025-11-11 22:05:57', '2025-11-11 22:05:57', '9', 'Aethelbelle Cabatay', 'Lot 5', 'non home owners', '2025-11-12T11:05', 'She was trying to rile me up and was being a nuisance.', NULL, NULL, 'Pending', NULL, 'Earth Street, Golden Country Homes, Alangilan, Batangas City'),
(29, '2025-11-12 11:09:26', '2025-11-12 11:09:49', '20', 'Mica', 'Blk 05', 'guard', '2025-11-12T19:09', 'haha', NULL, NULL, 'Closed', NULL, 'Earth Street, Golden Country Homes, Alangilan, Batangas City');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_otp`
--

CREATE TABLE `tbl_otp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `otp_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `expire_at` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_otp`
--

INSERT INTO `tbl_otp` (`id`, `user_id`, `email`, `otp_code`, `status`, `expire_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(38, '12', 'kotoriminami828@gmail.com', '514225', 'used', '2025-11-09 15:17:08', '2025-11-09 07:07:08', '2025-11-09 07:07:29', NULL),
(39, '8', 'eliracheloca111@gmail.com', '788112', 'used', '2025-11-11 18:43:00', '2025-11-11 10:33:01', '2025-11-11 10:33:43', NULL),
(40, '9', 'mikaayy84@gmail.com', '209118', 'used', '2025-11-11 18:56:30', '2025-11-11 10:46:30', '2025-11-11 10:49:52', NULL),
(41, '12', 'kotoriminami828@gmail.com', '013560', 'used', '2025-11-11 18:58:13', '2025-11-11 10:48:13', '2025-11-11 10:48:29', NULL),
(42, '9', 'mikaayy84@gmail.com', '296204', 'expired', '2025-11-11 18:59:04', '2025-11-11 10:49:04', '2025-11-12 16:49:49', NULL),
(43, '1', 'aecabatay12@gmail.com', '409250', 'used', '2025-11-11 19:50:54', '2025-11-11 11:40:54', '2025-11-11 11:41:21', NULL),
(44, '20', 'kaidlunaa01@gmail.com', '690750', 'used', '2025-11-12 17:36:59', '2025-11-12 09:26:59', '2025-11-12 09:27:43', NULL),
(45, '8', 'eliracheloca111@gmail.com', '112064', 'used', '2025-11-13 00:59:12', '2025-11-12 16:49:12', '2025-11-12 16:49:49', NULL),
(46, '9', 'mikaayy84@gmail.com', '919129', 'expired', '2025-11-13 01:02:34', '2025-11-12 16:52:34', '2025-11-12 17:52:35', NULL),
(47, '9', 'mikaayy84@gmail.com', '720610', 'expired', '2025-11-13 01:04:25', '2025-11-12 16:54:25', '2025-11-12 17:52:35', NULL),
(48, '19', 'reiko.ytsumi09@gmail.com', '384400', 'used', '2025-11-13 02:02:01', '2025-11-12 17:52:01', '2025-11-12 17:52:35', NULL),
(49, '19', 'reiko.ytsumi09@gmail.com', '194015', 'expired', '2025-11-13 02:04:24', '2025-11-12 17:54:24', '2025-11-12 18:36:21', NULL),
(50, '19', 'reiko.ytsumi09@gmail.com', '239385', 'used', '2025-11-13 02:04:48', '2025-11-12 17:54:48', '2025-11-12 17:54:58', NULL),
(51, '20', 'kaidlunaa01@gmail.com', '730927', 'used', '2025-11-13 02:46:10', '2025-11-12 18:36:10', '2025-11-12 18:36:21', NULL),
(52, '20', 'kaidlunaa01@gmail.com', '669108', 'used', '2025-11-13 02:46:47', '2025-11-12 18:36:47', '2025-11-12 18:37:04', NULL),
(53, '21', 'illinoispss@gmail.com', '416514', 'used', '2025-11-14 00:09:21', '2025-11-13 15:59:21', '2025-11-13 16:00:10', NULL),
(54, '22', 'johnezekielmendiola@gmail.com', '799246', 'used', '2025-11-14 00:33:46', '2025-11-13 16:23:46', '2025-11-13 16:25:25', NULL),
(55, '23', 'giojobogg@gmail.com', '931312', 'used', '2025-11-14 02:22:33', '2025-11-13 18:12:33', '2025-11-13 18:13:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_management_category`
--

CREATE TABLE `tbl_service_management_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_management_type_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_service_management_category`
--

INSERT INTO `tbl_service_management_category` (`id`, `service_management_type_id`, `category`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Electrical', 'active', '2025-08-30 23:43:10', '2025-08-30 23:43:10', NULL),
(2, '1', 'Plumbing', 'active', '2025-08-30 23:43:10', '2025-08-30 23:43:10', NULL),
(3, '2', 'Patrol', 'active', '2025-08-30 23:43:10', '2025-08-30 23:43:10', NULL),
(4, '4', 'Complaint', 'active', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_management_complaints`
--

CREATE TABLE `tbl_service_management_complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_management_category_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `complaint_description` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_service_management_complaints`
--

INSERT INTO `tbl_service_management_complaints` (`id`, `service_management_category_id`, `user_id`, `complaint_description`, `status`, `reason`, `created_at`, `updated_at`, `deleted_at`) VALUES
(34, '4', '9', 'It\'s so dark when it\'s evening! Not only is it scary, it is also dangerous. Please add lights, especially at the entrance.', 'Approved', NULL, '2025-11-11 21:51:36', '2025-11-11 23:48:47', NULL),
(35, '2', '12', 'There\'s a leak on a pipe just outside of our dormitory!', 'Pending', NULL, '2025-11-12 06:36:17', '2025-11-12 06:36:17', NULL),
(36, '3', '20', 'May lalaki na kumakatok sa pintuan ko 12am ng madaling araw', 'Approved', NULL, '2025-11-12 11:07:55', '2025-11-12 11:08:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service_management_type`
--

CREATE TABLE `tbl_service_management_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_service_management_type`
--

INSERT INTO `tbl_service_management_type` (`id`, `type`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Maintenance', 'active', '2025-08-30 23:43:10', '2025-08-30 23:43:10', NULL),
(2, 'Security', 'active', '2025-08-30 23:43:10', '2025-08-30 23:43:10', NULL),
(4, 'Other', 'Active', '2025-11-04 17:41:03', '2025-11-04 17:41:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tenant_list`
--

CREATE TABLE `tbl_tenant_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_tenant_list`
--

INSERT INTO `tbl_tenant_list` (`id`, `user_id`, `full_name`, `relationship`, `contact_number`, `email`, `photo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(16, '9', 'Elijah Esguerra', 'friend', '09912179245', 'eliracheloca111@gmail.com', '1762870078_6913433e576a3.jpg', 'active', '2025-11-11 14:07:58', '2025-11-11 14:07:58', NULL),
(17, '20', 'Elijah Garcia', 'boarder', '09627274821', 'elijahesguerra23@gmail.com', '1762945533_691469fd63196.jpg', 'active', '2025-11-12 11:05:33', '2025-11-12 11:05:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_homeowners`
--

CREATE TABLE `tbl_vehicle_homeowners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `type_of_vehicle` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vehicle_homeowners`
--

INSERT INTO `tbl_vehicle_homeowners` (`id`, `user_id`, `type_of_vehicle`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(44, '12', 'car', 'Approved', '2025-11-09 07:08:42', '2025-11-09 07:10:21', NULL),
(45, '9', 'car', 'Approved', '2025-11-11 13:02:00', '2025-11-11 16:24:59', NULL),
(46, '9', 'car', 'Approved', '2025-11-11 16:26:14', '2025-11-11 16:26:40', NULL),
(47, '12', 'car', 'Pending', '2025-11-12 06:02:03', '2025-11-12 06:02:03', NULL),
(48, '20', 'motorcycle', 'Pending', '2025-11-12 09:33:42', '2025-11-12 09:34:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_homeowners_supporting_documents`
--

CREATE TABLE `tbl_vehicle_homeowners_supporting_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_homeowners_id` varchar(255) DEFAULT NULL,
  `supporting_documents_attachments` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vehicle_homeowners_supporting_documents`
--

INSERT INTO `tbl_vehicle_homeowners_supporting_documents` (`id`, `vehicle_homeowners_id`, `supporting_documents_attachments`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(41, '44', '[\"vehicle_documents\\/1762672121_69103df91af2d_OR-CR.pdf\"]', 'Approved', '2025-11-09 07:08:42', '2025-11-09 07:10:21', NULL),
(42, '45', '[\"vehicle_documents\\/1762866120_691333c898734_OR-CR.pdf\"]', 'Approved', '2025-11-11 13:02:00', '2025-11-11 16:24:59', NULL),
(43, '46', '[\"vehicle_documents\\/1762878374_691363a6ec451_OR-CR.pdf\"]', 'Approved', '2025-11-11 16:26:14', '2025-11-11 16:26:40', NULL),
(44, '47', '[\"vehicle_documents\\/1762927322_691422dac0c13_OR-CR.pdf\"]', 'Pending', '2025-11-12 06:02:03', '2025-11-12 06:02:03', NULL),
(45, '48', '[\"vehicle_documents\\/1762940022_691454769bfb5_IMG_20251112_051936102~2.jpg\"]', 'Pending', '2025-11-12 09:33:42', '2025-11-12 09:34:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vehicle_list_details_homeowners`
--

CREATE TABLE `tbl_vehicle_list_details_homeowners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_homeowners_supporting_documents_id` varchar(255) DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `or_no` varchar(255) DEFAULT NULL,
  `vehicle_model` varchar(255) DEFAULT NULL,
  `cr_no` varchar(255) DEFAULT NULL,
  `color_of_vehicle` varchar(255) DEFAULT NULL,
  `vehicle_sticker_control_no` varchar(255) DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `driver` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_vehicle_list_details_homeowners`
--

INSERT INTO `tbl_vehicle_list_details_homeowners` (`id`, `vehicle_homeowners_supporting_documents_id`, `plate_number`, `or_no`, `vehicle_model`, `cr_no`, `color_of_vehicle`, `vehicle_sticker_control_no`, `reason`, `status`, `created_at`, `updated_at`, `deleted_at`, `driver`, `owner`) VALUES
(34, '41', 'SUB 2495', '2309451-4', 'Toyota Camaro', '42395315', 'White', '9', NULL, 'Approved', '2025-11-09 07:08:42', '2025-11-09 07:10:21', NULL, 'Ae Cabatay', 'Ae Cabatay'),
(35, '42', 'AVS 1293', '2837412-1', 'Honda Civic', '27248105', 'Gold', '10', NULL, 'Approved', '2025-11-11 13:02:00', '2025-11-11 16:24:59', NULL, 'Mike Asinas', 'Michaella Asinas'),
(36, '43', 'FSB 2837', '2384614-2', 'Toyota Camaro', '34856192', 'White', '11', NULL, 'Approved', '2025-11-11 16:26:14', '2025-11-11 16:26:40', NULL, 'Michaella Asinas', 'Michaella Asinas'),
(37, '44', 'NIX 6579', '4346756-5', 'Montero', '57841469', 'Gray', NULL, NULL, 'Pending', '2025-11-12 06:02:03', '2025-11-12 06:02:03', NULL, 'Mike Asinas', 'Doris Asinas'),
(38, '45', 'BNR-5739', '2747583-5', 'Ninja Bike', '58392744', 'Green and Black', '12', NULL, 'Pending', '2025-11-12 09:33:42', '2025-11-12 09:34:57', NULL, 'Kai De Luna', 'Kai De Luna');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `block` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) DEFAULT NULL,
  `membership_fee` decimal(10,2) DEFAULT NULL,
  `is_with_title` tinyint(1) DEFAULT 0,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'user',
  `active` tinyint(1) DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `active_status` tinyint(1) DEFAULT 0,
  `avatar` varchar(255) DEFAULT 'avatar.png',
  `dark_mode` tinyint(1) DEFAULT 0,
  `messenger_color` varchar(255) DEFAULT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `civil_status` varchar(255) DEFAULT NULL,
  `number_of_months_stay` varchar(255) DEFAULT NULL,
  `telephone_number` varchar(255) DEFAULT NULL,
  `fb_account` varchar(255) DEFAULT NULL,
  `messenger_account` varchar(255) DEFAULT NULL,
  `prepared_contact` varchar(255) DEFAULT NULL,
  `caretaker_name` varchar(255) DEFAULT NULL,
  `caretaker_address` varchar(255) DEFAULT NULL,
  `caretaker_contact_number` varchar(255) DEFAULT NULL,
  `caretaker_email` varchar(255) DEFAULT NULL,
  `signature_image` varchar(255) DEFAULT NULL,
  `incase_of_emergency` varchar(255) DEFAULT NULL,
  `is_online` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `street`, `lot`, `block`, `contact_number`, `membership_fee`, `is_with_title`, `gender`, `email`, `email_verified_at`, `password`, `photo`, `role`, `active`, `remember_token`, `active_status`, `avatar`, `dark_mode`, `messenger_color`, `date_of_birth`, `civil_status`, `number_of_months_stay`, `telephone_number`, `fb_account`, `messenger_account`, `prepared_contact`, `caretaker_name`, `caretaker_address`, `caretaker_contact_number`, `caretaker_email`, `signature_image`, `incase_of_emergency`, `is_online`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Miguel Garcia', NULL, NULL, NULL, NULL, NULL, 0, 'male', 'aecabatay12@gmail.com', '2025-08-29 15:39:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1762278824_1.jpg', 'guard', 1, NULL, 0, 'avatar.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'signature_1760181226_1.jpg', NULL, '0', NULL, '2025-11-12 17:51:48', NULL),
(8, 'Elijah Esguerra', 'M-64, San Pascual Poblacion, Batangas City', NULL, NULL, '09393551241', 1200.00, 0, 'male', 'eliracheloca111@gmail.com', NULL, '$2y$10$AHyYZCkDEnFKYrerBR5M/.wbDcJOQ0LPDa36T/wAaWndQGmR7ZScK', '1762270610_8.png', 'admin', 1, NULL, 0, 'avatar.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2025-10-26 12:21:52', '2025-11-12 17:08:41', NULL),
(9, 'Michaella Asinas', 'Earth Street', '2', '4', '09215888426', 23.00, 0, 'female', 'mikaayy84@gmail.com', NULL, '$2y$10$FZS3/iqEDhzdJPjczIarc.FBh1EBtdnhw4XWMS6mpUgL5U3h1lILu', '1761482101_68fe1575895b5.png', 'home owners', 1, NULL, 0, 'avatar.png', 0, NULL, '2004-02-12', 'married', 'N/A', 'N/A', '@mikayy', '@mikayy', 'N/A', 'N/A', 'N/A', 'N/A', NULL, 'signature_1762285332_9.png', '09912179245', '1', '2025-10-26 12:35:02', '2025-11-12 05:25:41', NULL),
(12, 'Elle Cabatay', NULL, NULL, NULL, '09215888426', NULL, 0, 'female', 'kotoriminami828@gmail.com', NULL, '$2y$10$ZQiPoU2lOtyHCIkhKRNtNu6rqRg4QS5ZzwETbjp4vf6gFJDNOGxfG', '1762279204_12.jpg', 'non home owners', 1, NULL, 0, 'avatar.png', 0, NULL, '2004-03-15', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2025-10-26 16:09:13', '2025-11-12 05:59:58', NULL),
(19, 'Aethelbert Cabatay', NULL, NULL, NULL, '09955131178', NULL, 0, 'male', 'reiko.ytsumi09@gmail.com', NULL, '$2y$10$i8B6Z.CnqbtPOn8F3tvpaOkJ/itkdHbKnoHNTyyMQ77soQEvG1oXS', '1762865745_691332515911c.png', 'operational manager', 1, NULL, 0, 'avatar.png', 0, NULL, '2004-09-12', 'Single', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-11-11 12:55:45', '2025-11-12 18:56:26', NULL),
(20, 'Kai', NULL, NULL, NULL, '09693119162', NULL, 0, 'female', 'kaidlunaa01@gmail.com', NULL, '$2y$10$4i9RFN1D9zivu7EjEVodEOXmS9FzBtMQQL4S/.3YmsLwoB0IWSima', '1762939582_691452be18403.jpg', 'service manager', 1, NULL, 0, 'avatar.png', 0, NULL, '2004-02-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2025-11-12 09:26:22', '2025-11-12 18:57:01', NULL),
(21, 'Raever Gio Marcus C. Delos Reyes', 'Venus', '5', '20', '09215637218', NULL, 0, 'male', 'illinoispss@gmail.com', NULL, '$2y$10$rBlcmfBAbD99w5Io.I8bzusNjdIALz3ELeuZlwHpnpfnamUdxs962', '1763049637_21.png', 'financial manager', 1, NULL, 0, 'avatar.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-11-13 15:58:30', '2025-11-13 16:22:12', NULL),
(22, 'John Ezekiel G. Mendiola', 'Mercury', '8', '1', '09472485182', NULL, 0, 'male', 'johnezekielmendiola@gmail.com', NULL, '$2y$10$0oJGVv5qw05o6TuEPoLqxuynlVa9wp9JwIZ.m.atAT2orvPL5Nw0O', '1763051150_22.png', 'appointment coordinator', 1, NULL, 0, 'avatar.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2025-11-13 16:21:38', '2025-11-13 18:12:24', NULL),
(23, 'Gio Angelo A. Jobog', 'Mars', '1', '4', '09374223461', NULL, 0, 'male', 'giojobogg@gmail.com', NULL, '$2y$10$ZI1P.UK8hgCHR8bn2Feg5.sgsFbn5bLztJZR2sM8eK8DjL6Xf9Bsa', '1763057629_23.png', 'occupancy manager', 1, NULL, 0, 'avatar.png', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2025-11-13 18:12:08', '2025-11-13 18:13:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE `users_login` (
  `id` int(11) NOT NULL,
  `users_id` varchar(255) DEFAULT NULL,
  `browser` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `mac_address` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `users_id`, `browser`, `ip_address`, `mac_address`, `location`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(141, '9', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-09 06:29:31', '2025-11-09 06:29:31', NULL),
(142, '9', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-09 06:30:36', '2025-11-09 06:30:36', NULL),
(143, '9', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-09 06:50:27', '2025-11-09 06:50:27', NULL),
(144, '9', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-09 06:50:36', '2025-11-09 06:50:36', NULL),
(145, '12', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-09 07:07:29', '2025-11-09 07:07:29', NULL),
(146, '8', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:1B:3D:9F:DA', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 10:33:54', '2025-11-11 10:33:54', NULL),
(147, '8', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 10:45:08', '2025-11-11 10:45:08', NULL),
(148, '8', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 10:46:54', '2025-11-11 10:46:54', NULL),
(149, '12', 'Chrome 142.0.0.0 on Linux', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:BD', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 10:48:30', '2025-11-11 10:48:30', NULL),
(150, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:78:51:0B:E7', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 10:50:04', '2025-11-11 10:50:04', NULL),
(151, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 11:17:37', '2025-11-11 11:17:37', NULL),
(152, '1', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 11:41:21', '2025-11-11 11:41:21', NULL),
(153, '1', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 11:41:47', '2025-11-11 11:41:47', NULL),
(154, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 15:37:37', '2025-11-11 15:37:37', NULL),
(155, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 15:37:48', '2025-11-11 15:37:48', NULL),
(156, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 16:19:44', '2025-11-11 16:19:44', NULL),
(157, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 16:19:55', '2025-11-11 16:19:55', NULL),
(158, '1', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 16:32:31', '2025-11-11 16:32:31', NULL),
(159, '1', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 16:32:49', '2025-11-11 16:32:49', NULL),
(160, '1', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 16:33:02', '2025-11-11 16:33:02', NULL),
(161, '12', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 16:33:13', '2025-11-11 16:33:13', NULL),
(162, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 17:12:54', '2025-11-11 17:12:54', NULL),
(163, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 17:13:16', '2025-11-11 17:13:16', NULL),
(164, '8', 'Chrome 142.0.0.0 on Linux', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:BD', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 18:34:37', '2025-11-11 18:34:37', NULL),
(165, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 21:35:11', '2025-11-11 21:35:11', NULL),
(166, '12', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 22:58:18', '2025-11-11 22:58:18', NULL),
(167, '12', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 23:03:17', '2025-11-11 23:03:17', NULL),
(168, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 23:03:34', '2025-11-11 23:03:34', NULL),
(169, '12', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 23:03:43', '2025-11-11 23:03:43', NULL),
(170, '12', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-11 23:55:10', '2025-11-11 23:55:10', NULL),
(171, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-11 23:55:21', '2025-11-11 23:55:21', NULL),
(172, '8', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-12 05:10:51', '2025-11-12 05:10:51', NULL),
(173, '12', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-12 05:59:58', '2025-11-12 05:59:58', NULL),
(174, '9', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-12 07:30:28', '2025-11-12 07:30:28', NULL),
(175, '8', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:42:9E:E8:1E', 'Lemery, Calabarzon, Philippines', 'logout', '2025-11-12 09:06:15', '2025-11-12 09:06:15', NULL),
(176, '8', 'Chrome 142.0.0.0 on Windows 10', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:C2', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-12 09:06:21', '2025-11-12 09:06:21', NULL),
(177, '20', 'Chrome 142.0.0.0 on Linux', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:BD', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-12 09:27:43', '2025-11-12 09:27:43', NULL),
(178, '8', 'Chrome 142.0.0.0 on Linux', '223.25.19.182', 'DEVICE-00:00:0B:AA:B1:BD', 'Lemery, Calabarzon, Philippines', 'login', '2025-11-12 10:49:24', '2025-11-12 10:49:24', NULL),
(179, '8', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 16:38:47', '2025-11-12 16:38:47', NULL),
(180, '8', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:42:9E:E8:1E', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-12 16:40:35', '2025-11-12 16:40:35', NULL),
(181, '8', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 16:41:47', '2025-11-12 16:41:47', NULL),
(182, '8', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:42:9E:E8:1E', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-12 16:48:39', '2025-11-12 16:48:39', NULL),
(183, '8', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:74:A9:D7:05', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 16:51:47', '2025-11-12 16:51:47', NULL),
(184, '8', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:10:F3:E2:E6', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-12 16:52:22', '2025-11-12 16:52:22', NULL),
(185, '8', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 17:08:42', '2025-11-12 17:08:42', NULL),
(186, '1', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 17:13:24', '2025-11-12 17:13:24', NULL),
(187, '1', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:42:9E:E8:1E', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-12 17:51:48', '2025-11-12 17:51:48', NULL),
(188, '19', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 17:54:58', '2025-11-12 17:54:58', NULL),
(189, '19', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:42:9E:E8:1E', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-12 18:35:46', '2025-11-12 18:35:46', NULL),
(190, '20', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 18:37:04', '2025-11-12 18:37:04', NULL),
(191, '20', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:42:9E:E8:1E', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-12 18:47:02', '2025-11-12 18:47:02', NULL),
(192, '19', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 18:47:25', '2025-11-12 18:47:25', NULL),
(193, '19', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:42:9E:E8:1E', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-12 18:56:26', '2025-11-12 18:56:26', NULL),
(194, '20', 'Chrome 142.0.0.0 on Windows 10', '103.89.236.100', 'DEVICE-00:00:0B:AA:B1:C2', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-12 18:57:01', '2025-11-12 18:57:01', NULL),
(195, '8', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-13 15:25:36', '2025-11-13 15:25:36', NULL),
(196, '21', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-13 16:00:10', '2025-11-13 16:00:10', NULL),
(197, '21', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-13 16:22:12', '2025-11-13 16:22:12', NULL),
(198, '22', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-13 16:25:25', '2025-11-13 16:25:25', NULL),
(199, '22', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-13 17:17:06', '2025-11-13 17:17:06', NULL),
(200, '22', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-13 17:17:38', '2025-11-13 17:17:38', NULL),
(201, '12', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-13 17:20:13', '2025-11-13 17:20:13', NULL),
(202, '22', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'logout', '2025-11-13 18:12:24', '2025-11-13 18:12:24', NULL),
(203, '23', 'Chrome 142.0.0.0 on Windows 10', '180.195.77.132', 'DEVICE-00:00:1B:3D:9F:DA', 'Batangas, Calabarzon, Philippines', 'login', '2025-11-13 18:13:24', '2025-11-13 18:13:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE `vehicle_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vehicle_management_id` varchar(255) DEFAULT NULL,
  `plate_number` varchar(255) DEFAULT NULL,
  `or_number` varchar(255) DEFAULT NULL,
  `cr_number` varchar(255) DEFAULT NULL,
  `vehicle_model` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `sticker_control_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_management_list`
--

CREATE TABLE `vehicle_management_list` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `non_homeowners` varchar(255) DEFAULT NULL,
  `type_of_vehicle` varchar(255) DEFAULT NULL,
  `incase_of_emergency_name` varchar(255) DEFAULT NULL,
  `incase_of_emergency_number` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activitylogs`
--
ALTER TABLE `activitylogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_landlord`
--
ALTER TABLE `applied_landlord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_category`
--
ALTER TABLE `appointment_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_schedule_daily`
--
ALTER TABLE `appointment_schedule_daily`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_schedule_dates`
--
ALTER TABLE `appointment_schedule_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_management_list`
--
ALTER TABLE `business_management_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_management_list_user_id_foreign` (`user_id`);

--
-- Indexes for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_favorites`
--
ALTER TABLE `ch_favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ch_messages`
--
ALTER TABLE `ch_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `landlord_permission`
--
ALTER TABLE `landlord_permission`
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
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_settings`
--
ALTER TABLE `notification_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permission_settings`
--
ALTER TABLE `permission_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_settings_list`
--
ALTER TABLE `permission_settings_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sticker_control_number`
--
ALTER TABLE `sticker_control_number`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank_account_category`
--
ALTER TABLE `tbl_bank_account_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank_account_type`
--
ALTER TABLE `tbl_bank_account_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_billing_management`
--
ALTER TABLE `tbl_billing_management`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_billing_management_list`
--
ALTER TABLE `tbl_billing_management_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_incident_report`
--
ALTER TABLE `tbl_incident_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_management_category`
--
ALTER TABLE `tbl_service_management_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_management_complaints`
--
ALTER TABLE `tbl_service_management_complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service_management_type`
--
ALTER TABLE `tbl_service_management_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tenant_list`
--
ALTER TABLE `tbl_tenant_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle_homeowners`
--
ALTER TABLE `tbl_vehicle_homeowners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle_homeowners_supporting_documents`
--
ALTER TABLE `tbl_vehicle_homeowners_supporting_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_vehicle_list_details_homeowners`
--
ALTER TABLE `tbl_vehicle_list_details_homeowners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_details_vehicle_management_id_foreign` (`vehicle_management_id`);

--
-- Indexes for table `vehicle_management_list`
--
ALTER TABLE `vehicle_management_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_management_list_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activitylogs`
--
ALTER TABLE `activitylogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3803;

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applied_landlord`
--
ALTER TABLE `applied_landlord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `appointment_category`
--
ALTER TABLE `appointment_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `appointment_schedule_daily`
--
ALTER TABLE `appointment_schedule_daily`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `appointment_schedule_dates`
--
ALTER TABLE `appointment_schedule_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=467;

--
-- AUTO_INCREMENT for table `business_management_list`
--
ALTER TABLE `business_management_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `chatbot_messages`
--
ALTER TABLE `chatbot_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=518;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `landlord_permission`
--
ALTER TABLE `landlord_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT for table `notification_settings`
--
ALTER TABLE `notification_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `permission_settings`
--
ALTER TABLE `permission_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `permission_settings_list`
--
ALTER TABLE `permission_settings_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2037;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sticker_control_number`
--
ALTER TABLE `sticker_control_number`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_announcement`
--
ALTER TABLE `tbl_announcement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tbl_appointment`
--
ALTER TABLE `tbl_appointment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_bank_account_category`
--
ALTER TABLE `tbl_bank_account_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_bank_account_type`
--
ALTER TABLE `tbl_bank_account_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_billing_management`
--
ALTER TABLE `tbl_billing_management`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_billing_management_list`
--
ALTER TABLE `tbl_billing_management_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `tbl_incident_report`
--
ALTER TABLE `tbl_incident_report`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_otp`
--
ALTER TABLE `tbl_otp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tbl_service_management_category`
--
ALTER TABLE `tbl_service_management_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_service_management_complaints`
--
ALTER TABLE `tbl_service_management_complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_service_management_type`
--
ALTER TABLE `tbl_service_management_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_tenant_list`
--
ALTER TABLE `tbl_tenant_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_vehicle_homeowners`
--
ALTER TABLE `tbl_vehicle_homeowners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_vehicle_homeowners_supporting_documents`
--
ALTER TABLE `tbl_vehicle_homeowners_supporting_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_vehicle_list_details_homeowners`
--
ALTER TABLE `tbl_vehicle_list_details_homeowners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_management_list`
--
ALTER TABLE `vehicle_management_list`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
