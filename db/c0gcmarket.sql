-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 18 juil. 2023 à 09:33
-- Version du serveur :  10.3.39-MariaDB-0+deb10u1
-- Version de PHP :  7.2.34-39+0~20230609.84+debian10~1.gbpf63844

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `c0gcmarket`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `product_image` varchar(191) NOT NULL,
  `shipping_cost` float NOT NULL,
  `total_without_shipping` float NOT NULL,
  `total_with_shipping` float NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `product_name`, `product_price`, `qty`, `product_image`, `shipping_cost`, `total_without_shipping`, `total_with_shipping`, `created_at`, `updated_at`) VALUES
(329, 51, 4, 'Naini', 175, 5, 'product_images/article4.jpg', 18, 875, 980, '2023-06-15 11:40:31', '2023-07-06 10:52:25'),
(328, 51, 3, 'Donec', 15, 10, 'product_images/article3.jpg', 5.25, 15, 20.25, '2023-06-15 11:40:31', '2023-06-15 16:50:45'),
(327, 51, 44, 'Nam tristique ', 25, 29, 'product_images/article29.jpg', 3.75, 25, 28.75, '2023-06-15 11:40:31', '2023-06-15 11:40:31'),
(326, 51, 23, 'Camron McKenzie IV', 13, 5, 'product_images/article10.jpg', 3.2, 13, 16.2, '2023-06-15 11:40:31', '2023-06-15 16:50:45'),
(336, 51, 1, 'Consectetur adipiscing', 65, 3, 'product_images/article1.jpg', 3.5, 65, 68.5, '2023-06-25 11:35:05', '2023-06-30 05:50:58'),
(337, 51, 2, 'Feugiat fringilla', 25, 1, 'product_images/article2.jpg', 4.25, 25, 29.25, '2023-07-03 10:24:32', '2023-07-03 10:24:32');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) NOT NULL,
  `category_image` varchar(350) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `category_image`, `created_at`, `updated_at`) VALUES
(1, 'Vêtements', 'frontend/images/categories/category-1.jpg', '2023-05-29 09:09:02', '2023-05-29 09:09:02'),
(2, 'Livres', 'frontend/images/categories/category-2.jpg', '2023-05-29 09:09:25', '2023-05-29 09:09:25'),
(3, 'Jeux', 'frontend/images/categories/category-3.jpg', '2023-05-29 09:09:30', '2023-05-29 09:09:30'),
(4, 'Chaussures', 'frontend/images/categories/category-4.jpg', '2023-05-29 09:09:38', '2023-05-29 09:09:38'),
(5, 'Parfums', 'frontend/images/categories/category-5.jpg', '2023-05-29 09:22:06', '2023-05-29 09:22:06'),
(6, 'Cosmétiques', 'frontend/images/categories/category-6.jpg', '2023-05-29 09:25:20', '2023-05-29 09:25:20'),
(7, 'Nourriture', 'frontend/images/categories/category-7.jpg', '2023-05-29 09:26:39', '2023-05-29 09:26:39'),
(8, 'Sport', 'frontend/images/categories/category-8.jpg', '2023-05-29 09:27:59', '2023-05-29 09:27:59');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(450) NOT NULL,
  `description` varchar(450) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `job` varchar(191) DEFAULT NULL,
  `client_image` varchar(450) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `name`, `description`, `email`, `password`, `job`, `client_image`, `created_at`, `updated_at`) VALUES
(50, 'Prof. Andreanne Volkman III', 'Voluptas sit sed ut.', 'mallory21@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Grinder OR Polisher', 'client_images/client10.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(49, 'Wyatt Morissette', 'Debitis odio quas exercitationem et dolorem.', 'jgutkowski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Dishwasher', 'client_images/client9.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(48, 'Kylie Goldner', 'Occaecati eos dolore et accusamus aspernatur necessitatibus.', 'xruecker@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Program Director', 'client_images/client8.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(46, 'Toney Buckridge', 'Consequatur dolorem laboriosam in quasi deleniti.', 'rogahn.harmon@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Engineer', 'client_images/client6.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(47, 'Adrian Weber', 'Ad dolorem voluptas qui molestiae et maiores.', 'kira.muller@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Order Filler', 'client_images/client7.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(44, 'Aletha Cruickshank', 'Temporibus expedita velit et repellendus recusandae voluptate amet officia.', 'kunde.magali@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Stringed Instrument Repairer and Tuner', 'client_images/client4.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(45, 'Cassandra Upton', 'Eaque dolorum laborum amet explicabo nemo.', 'macy14@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Patternmaker', 'client_images/client5.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(43, 'Meta Dickinson', 'Dolores ullam voluptate in non sunt.', 'madie53@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Compacting Machine Operator', 'client_images/client3.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(42, 'Raoul Stroman', 'Aut magnam exercitationem qui perspiciatis et.', 'dgreen@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Diesel Engine Specialist', 'client_images/client2.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(41, 'General Bailey', 'Laboriosam soluta fuga officia sed.', 'fthompson@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Social Sciences Teacher', 'client_images/client1.jpg', '2023-05-29 09:55:08', '2023-05-29 09:55:08'),
(51, 'Cassano', NULL, 'gabriel_cassano@hotmail.com', '$2y$10$yucwITUwIccRZO5BRR/C2e/gTY5oG.reV0z5YdRuxQ9FJFD50CIaC', NULL, NULL, '2023-06-05 10:42:52', '2023-06-05 10:42:52');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 15),
(27, '2014_10_12_100000_create_password_resets_table', 15),
(28, '2019_08_19_000000_create_failed_jobs_table', 15),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 15),
(6, '2023_02_23_192006_create_categorie_table', 2),
(30, '2023_02_09_183236_create_products_table', 15),
(31, '2023_02_28_195138_create_categories_table', 15),
(42, '2023_06_07_100352_add_fields_to_table_products', 18),
(44, '2023_06_07_100545_add_fields_to_table_cart', 19),
(45, '2023_06_13_104940_create_product_wishlist_table', 20),
(20, '2023_03_26_162210_cart', 9),
(32, '2023_03_08_192737_create_sliders_table', 15),
(22, '2023_04_05_183547_create_orders_table', 11),
(39, '2023_04_01_133139_create_cart_table', 17),
(25, '2023_05_29_110345_add_column_to_table', 14),
(34, '2023_04_06_184132_create_orders_table', 15),
(35, '2023_04_12_173302_create_clients_table', 15),
(48, '2023_06_05_104807_create_wishlist_table', 21),
(49, '2023_07_07_085816_add_field_to_table_orders', 22);

-- --------------------------------------------------------

--
-- Structure de la table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(191) NOT NULL,
  `adresse` varchar(191) NOT NULL,
  `panier` mediumtext NOT NULL,
  `payment_id` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credit_card` varchar(191) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `orders`
--

INSERT INTO `orders` (`id`, `nom`, `adresse`, `panier`, `payment_id`, `created_at`, `updated_at`, `credit_card`) VALUES
(14, 'Cassano Gabriele', 'Rue Saint-Alphonse, 84, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NQsktI1PfFa9viO18QHbM2G', '2023-07-06 12:02:00', '2023-07-06 12:02:00', ''),
(13, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NQsi5I1PfFa9viO0Nmzy0Qw', '2023-07-06 11:59:07', '2023-07-06 11:59:07', ''),
(12, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NQsYfI1PfFa9viO089x4hdo', '2023-07-06 11:49:23', '2023-07-06 11:49:23', ''),
(15, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRAtUI1PfFa9viO0EBQgFAm', '2023-07-07 07:24:06', '2023-07-07 07:24:06', '4000056655665556'),
(16, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRAu7I1PfFa9viO09yxHO8T', '2023-07-07 07:24:44', '2023-07-07 07:24:44', '5555555555554444'),
(17, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRAv5I1PfFa9viO0Fe0aNxD', '2023-07-07 07:25:45', '2023-07-07 07:25:45', '5555555555554444'),
(18, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRAzwI1PfFa9viO1T5rHXdk', '2023-07-07 07:30:46', '2023-07-07 07:30:46', '5555555555554444'),
(19, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRB16I1PfFa9viO1o77ZVyW', '2023-07-07 07:31:58', '2023-07-07 07:31:58', '5555555555554444'),
(20, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRB3cI1PfFa9viO1zwutffn', '2023-07-07 07:34:33', '2023-07-07 07:34:33', '5555555555554444'),
(21, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRB5fI1PfFa9viO04uBt9Vn', '2023-07-07 07:36:40', '2023-07-07 07:36:40', '5555555555554444'),
(22, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRB6KI1PfFa9viO0FNsG6y0', '2023-07-07 07:37:21', '2023-07-07 07:37:21', '5555555555554444'),
(23, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRB7EI1PfFa9viO1mcmn7Fd', '2023-07-07 07:38:18', '2023-07-07 07:38:18', '5555555555554444'),
(24, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRB8hI1PfFa9viO0HzaD03j', '2023-07-07 07:39:49', '2023-07-07 07:39:49', '5555555555554444'),
(25, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRB9oI1PfFa9viO0GCgxJHH', '2023-07-07 07:40:58', '2023-07-07 07:40:58', '5555555555554444'),
(26, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBBZI1PfFa9viO0aiyEbwk', '2023-07-07 07:42:47', '2023-07-07 07:42:47', '5555555555554444'),
(27, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBCiI1PfFa9viO0RKI8Dbw', '2023-07-07 07:43:58', '2023-07-07 07:43:58', '5555555555554444'),
(28, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBEII1PfFa9viO19F89xkH', '2023-07-07 07:45:36', '2023-07-07 07:45:36', '5555555555554444'),
(29, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBFRI1PfFa9viO0tiWbUlC', '2023-07-07 07:46:46', '2023-07-07 07:46:46', '5555555555554444'),
(30, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBHEI1PfFa9viO034jtZqX', '2023-07-07 07:48:37', '2023-07-07 07:48:37', '4242424242424242'),
(31, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBI5I1PfFa9viO1yQwp9EA', '2023-07-07 07:49:31', '2023-07-07 07:49:31', '4242424242424242'),
(32, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBJGI1PfFa9viO0sxJXrwi', '2023-07-07 07:50:43', '2023-07-07 07:50:43', '4242424242424242'),
(33, 'Cassano Gabriele', 'Rue Saint-Alphonse, 180, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBNQI1PfFa9viO0AVqOVlW', '2023-07-07 07:55:01', '2023-07-07 07:55:01', '4242424242424242');
INSERT INTO `orders` (`id`, `nom`, `adresse`, `panier`, `payment_id`, `created_at`, `updated_at`, `credit_card`) VALUES
(34, 'Cassano Gabriele', 'Rue Saint-Alphonse, 84, 7110 Strépy-Bracqegnies', '[{\"id\":329,\"user_id\":51,\"product_id\":4,\"product_name\":\"Naini\",\"product_price\":175,\"qty\":5,\"product_image\":\"product_images\\/article4.jpg\",\"shipping_cost\":18,\"total_without_shipping\":875,\"total_with_shipping\":980,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-07-06T12:52:25.000000Z\"},{\"id\":328,\"user_id\":51,\"product_id\":3,\"product_name\":\"Donec\",\"product_price\":15,\"qty\":10,\"product_image\":\"product_images\\/article3.jpg\",\"shipping_cost\":5.25,\"total_without_shipping\":15,\"total_with_shipping\":20.25,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":327,\"user_id\":51,\"product_id\":44,\"product_name\":\"Nam tristique \",\"product_price\":25,\"qty\":29,\"product_image\":\"product_images\\/article29.jpg\",\"shipping_cost\":3.75,\"total_without_shipping\":25,\"total_with_shipping\":28.75,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T13:40:31.000000Z\"},{\"id\":326,\"user_id\":51,\"product_id\":23,\"product_name\":\"Camron McKenzie IV\",\"product_price\":13,\"qty\":5,\"product_image\":\"product_images\\/article10.jpg\",\"shipping_cost\":3.2,\"total_without_shipping\":13,\"total_with_shipping\":16.2,\"created_at\":\"2023-06-15T13:40:31.000000Z\",\"updated_at\":\"2023-06-15T18:50:45.000000Z\"},{\"id\":336,\"user_id\":51,\"product_id\":1,\"product_name\":\"Consectetur adipiscing\",\"product_price\":65,\"qty\":3,\"product_image\":\"product_images\\/article1.jpg\",\"shipping_cost\":3.5,\"total_without_shipping\":65,\"total_with_shipping\":68.5,\"created_at\":\"2023-06-25T13:35:05.000000Z\",\"updated_at\":\"2023-06-30T07:50:58.000000Z\"},{\"id\":337,\"user_id\":51,\"product_id\":2,\"product_name\":\"Feugiat fringilla\",\"product_price\":25,\"qty\":1,\"product_image\":\"product_images\\/article2.jpg\",\"shipping_cost\":4.25,\"total_without_shipping\":25,\"total_with_shipping\":29.25,\"created_at\":\"2023-07-03T12:24:32.000000Z\",\"updated_at\":\"2023-07-03T12:24:32.000000Z\"}]', 'ch_3NRBP7I1PfFa9viO1tFQGPjn', '2023-07-07 07:56:47', '2023-07-07 07:56:47', '4242424242424242');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(191) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_image` varchar(191) NOT NULL,
  `shipping_cost` double(8,2) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_description` varchar(191) NOT NULL DEFAULT '0',
  `product_category` varchar(191) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `product_name`, `product_price`, `product_image`, `shipping_cost`, `qty`, `product_description`, `product_category`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Consectetur adipiscing', 65, 'product_images/article1.jpg', 3.50, 35, 'Praesent ac velit at magna fermentum volutpat. Maecenas eu ipsum tempor, faucibus tortor id, maximus neque. Donec pretium ex orci.', '5', 1, '2023-05-29 09:24:10', '2023-05-29 09:24:10'),
(2, 'Feugiat fringilla', 25, 'product_images/article2.jpg', 4.25, 112, 'Sed imperdiet nunc eu est egestas, eu fringilla tellus lacinia. ', '6', 1, '2023-05-29 09:25:35', '2023-05-29 09:25:35'),
(3, 'Donec', 15, 'product_images/article3.jpg', 5.25, 15, 'Maecenas et massa nec urna hendrerit faucibus ut ut quam. ', '7', 1, '2023-05-29 09:26:59', '2023-05-29 09:26:59'),
(4, 'Naini', 175, 'product_images/article4.jpg', 3.50, 35, 'Pellentesque eu velit dui. Praesent nec tincidunt ligula. Curabitur nunc metus, elementum nec accumsan sit amet, gravida ornare purus. Sed faucibus nec nibh eu fermentum. V', '3', 1, '2023-05-29 09:28:25', '2023-05-29 09:28:25'),
(20, 'Laverne Labadie', 32, 'product_images/article13.jpg', 3.25, 14, 'Vero sed inventore dolorem laudantium.', '8', 1, '2022-11-24 20:07:27', '2023-05-30 07:09:26'),
(21, 'Maverick Weber', 4, 'product_images/article12.jpg', 4.10, 83, 'Iusto tempore voluptas molestias debitis ut adipisci impedit fuga.', '6', 1, '2022-06-22 03:18:11', '2023-05-30 07:09:26'),
(22, 'Vivamus imperdiet ', 34, 'product_images/article11.jpg', 3.50, 44, 'Est necessitatibus quis consequatur corporis quas sequi.', '1', 1, '2023-02-05 07:31:28', '2023-05-30 07:09:26'),
(23, 'Camron McKenzie IV', 13, 'product_images/article10.jpg', 3.20, 3, 'Possimus adipisci et a tempora aut.', '6', 1, '2022-07-02 10:38:09', '2023-05-30 07:09:26'),
(24, 'Space Tante ', 43, 'product_images/article9.jpg', 0.00, 53, 'Dolorem beatae eius eaque rerum.', '2', 1, '2022-08-03 08:26:20', '2023-05-30 07:09:26'),
(25, 'Savanah Christiansen', 55, 'product_images/article8.jpg', 3.50, 8, 'Sapiente libero qui praesentium impedit.', '7', 1, '2023-04-15 08:18:02', '2023-05-30 07:09:26'),
(26, 'Ara Metz II', 49, 'product_images/article7.jpg', 5.25, 98, 'Neque labore et est.', '8', 1, '2023-02-12 08:44:26', '2023-05-30 07:09:26'),
(27, 'Nulla bibendum', 9, 'product_images/article6.jpg', 3.25, 54, 'Et nulla iusto ut ea dicta tenetur et.', '1', 1, '2022-11-17 22:49:51', '2023-05-30 07:09:26'),
(28, 'Dolor sit amet', 6, 'product_images/article5.jpg', 5.25, 20, 'Occaecati et eos eaque impedit.', '1', 1, '2023-01-13 00:29:05', '2023-05-30 07:09:26'),
(29, 'Ward Sanford', 16, 'product_images/article14.jpg', 4.10, 85, 'Dolor est cumque omnis nam non provident temporibus laudantium.', '5', 1, '2022-10-21 21:28:21', '2023-05-30 07:09:26'),
(30, 'Ephraim Koelpin', 90, 'product_images/article15.jpg', 3.50, 14, 'Expedita asperiores omnis id sit omnis.', '7', 1, '2022-08-02 17:39:47', '2023-05-30 07:09:26'),
(31, 'Abby Schaden', 12, 'product_images/article16.jpg', 3.50, 89, 'Totam sunt autem ea.', '4', 1, '2023-02-24 12:54:04', '2023-05-30 07:09:26'),
(32, 'Waldo Bartell PhD', 94, 'product_images/article17.jpg', 4.10, 50, 'Nostrum aut velit voluptate nihil.', '4', 1, '2022-11-20 20:12:31', '2023-05-30 07:09:26'),
(33, 'Ino Wio Wta', 92, 'product_images/article18.jpg', 3.50, 98, 'Esse at qui modi iure doloremque inventore fugit.', '2', 1, '2023-05-01 02:44:23', '2023-05-30 07:09:26'),
(34, 'Dr. Lesly Gislason', 32, 'product_images/article19.jpg', 2.25, 89, 'A culpa exercitationem sed et nisi.', '4', 1, '2022-11-30 20:26:12', '2023-05-30 07:09:26'),
(35, 'WD Dex\r\n', 175, 'product_images/article20.jpg', 3.50, 35, 'Praesent id tellus sed nunc elementum mollis.', '3', 1, '2023-05-29 09:28:25', '2023-05-29 09:28:25'),
(36, 'Vivamus imperdiet ', 6, 'product_images/article21.jpg', 4.25, 20, 'Donec a elit lacinia, placerat libero non, feugiat mi.', '1', 1, '2023-01-13 00:29:05', '2023-05-30 07:09:26'),
(37, 'JRA\'HE', 43, 'product_images/article22.jpg', 2.10, 53, 'Aenean vel lacus et ligula molestie ultricies.', '2', 1, '2022-08-03 08:26:20', '2023-05-30 07:09:26'),
(38, 'Unil Rallr', 43, 'product_images/article23.jpg', 3.75, 53, 'Aenean blandit nunc eu porttitor elementum.', '2', 1, '2022-08-03 08:26:20', '2023-05-30 07:09:26'),
(39, 'GUUOIDTE\r\n', 175, 'product_images/article24.jpg', 3.75, 35, 'Nam pharetra augue non tincidunt rutrum.', '3', 1, '2023-05-29 09:28:25', '2023-05-29 09:28:25'),
(40, 'Neon ligths', 175, 'product_images/article25.jpg', 3.75, 35, 'Nunc ut ante sit amet nisi varius pellentesque.', '3', 1, '2023-05-29 09:28:25', '2023-05-29 09:28:25'),
(41, 'Proin varius', 12, 'product_images/article26.jpg', 4.50, 89, 'Proin varius dolor id lorem facilisis, ut tincidunt metus blandit.', '4', 1, '2023-02-24 12:54:04', '2023-05-30 07:09:26'),
(42, 'Praesent id', 16, 'product_images/article27.jpg', 3.20, 85, 'Praesent id tellus sed nunc elementum mollis.', '5', 1, '2022-10-21 21:28:21', '2023-05-30 07:09:26'),
(43, 'Aenean non', 16, 'product_images/article28.jpg', 4.50, 85, 'Aenean non ligula gravida, fringilla tortor eget, vulputate nibh.', '5', 1, '2022-10-21 21:28:21', '2023-05-30 07:09:26'),
(44, 'Nam tristique ', 25, 'product_images/article29.jpg', 3.75, 112, 'Nam tristique neque eget hendrerit aliquam.', '6', 1, '2023-05-29 09:25:35', '2023-05-29 09:25:35'),
(45, 'Quisque', 90, 'product_images/article30.jpg', 3.75, 14, 'Quisque in neque ac nulla sodales auctor..', '7', 1, '2022-08-02 17:39:47', '2023-05-30 07:09:26'),
(46, 'Mauris sed', 32, 'product_images/article31.jpg', 3.75, 14, 'Mauris sed ante maximus, aliquet nibh et, vehicula risus', '8', 1, '2022-11-24 20:07:27', '2023-05-30 07:09:26'),
(47, 'In congue', 32, 'product_images/article32.jpg', 3.45, 14, 'In congue mauris id commodo euismod.', '8', 1, '2022-11-24 20:07:27', '2023-05-30 07:09:26');

-- --------------------------------------------------------

--
-- Structure de la table `product_wishlist`
--

CREATE TABLE `product_wishlist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `wishlist_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product_wishlist`
--

INSERT INTO `product_wishlist` (`id`, `product_id`, `wishlist_id`, `created_at`, `updated_at`) VALUES
(1, 43, 1, '2023-07-03 00:00:00', NULL),
(2, 29, 2, '2023-07-03 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description1` varchar(191) NOT NULL,
  `description2` varchar(191) NOT NULL,
  `slider_image` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sliders`
--

INSERT INTO `sliders` (`id`, `description1`, `description2`, `slider_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Vétements', 'Vivamus vitae dui finibus, rhoncus sapien eu, blandit odio.', 'slider_images/slider1.jpg', '1', '2023-05-29 09:16:54', '2023-05-29 09:19:27'),
(2, 'Livres', 'Quisque in ligula aliquet, iaculis magna sit amet, dignissim lectus.', 'slider_images/slider2.jpg', '1', '2023-05-29 09:17:24', '2023-05-29 09:19:46'),
(3, 'Chaussures', 'Duis tincidunt lorem porttitor sem molestie, et tempor nisi viverra.', 'slider_images/slider3.jpg', '1', '2023-05-29 09:18:18', '2023-05-29 09:19:54'),
(4, 'Cosmétiques', 'Quisque sed erat eu erat mollis faucibus.', 'slider_images/slider4.jpg', '1', '2023-05-29 09:20:34', '2023-05-29 09:20:34');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Cassano', 'gabriel_cassano@hotmail.com', NULL, '$2y$10$eg3UTi.x8DGq6tUXhKRUJ.a8h6AS7gB5eceBqwZGgf2dIrKkmb2Fy', NULL, NULL, '2023-07-02 13:12:52');

-- --------------------------------------------------------

--
-- Structure de la table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 3, 'test01', '2023-07-17 00:00:00', NULL),
(2, 3, 'test02', '2023-07-17 00:00:00', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_name_unique` (`category_name`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `product_wishlist`
--
ALTER TABLE `product_wishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wishlist_product_id_foreign` (`product_id`),
  ADD KEY `product_wishlist_wishlist_id_foreign` (`wishlist_id`);

--
-- Index pour la table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Index pour la table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT pour la table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT pour la table `product_wishlist`
--
ALTER TABLE `product_wishlist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product_wishlist`
--
ALTER TABLE `product_wishlist`
  ADD CONSTRAINT `product_wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_wishlist_wishlist_id_foreign` FOREIGN KEY (`wishlist_id`) REFERENCES `wishlists` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
