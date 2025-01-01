-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 01, 2025 at 11:56 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `casts`
--

CREATE TABLE `casts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `biodata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `casts`
--

INSERT INTO `casts` (`id`, `name`, `age`, `biodata`, `created_at`, `updated_at`) VALUES
(1, 'Hershel Macejkovic', 59, 'Fugiat minima cumque facere dolorum expedita. Laboriosam et nemo et sed. Sed ipsam eos dolores eum voluptatem.', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(2, 'Ms. Danielle Boyer', 99, 'Aspernatur hic quibusdam sequi id quisquam. Nulla voluptas ratione itaque nobis qui quibusdam. Eos maiores qui debitis et voluptates qui iusto dicta. Quas quam eos ut sed provident.', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(3, 'Ms. Sophie Wisoky', 76, 'Aliquid reiciendis commodi sapiente qui nesciunt inventore perspiciatis. Ut enim ab ducimus temporibus non ut quaerat. Et fugit est non corporis optio rem.', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(4, 'Dr. Chaim Bauch MD', 91, 'Rerum repudiandae dolor distinctio quaerat excepturi eos quaerat. Sequi ducimus quos error sapiente non. Dolorem et corrupti ut quibusdam. Mollitia et consectetur sed quibusdam asperiores totam.', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(5, 'Ellis Shields', 57, 'Quo atque omnis dolores rerum. Incidunt voluptas perferendis illum aliquam. Reiciendis cum officiis facilis aspernatur.', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(6, 'Dexter Blick II', 30, 'Ex atque animi eveniet mollitia libero atque minus. Modi odio autem hic dolor. Excepturi sit animi similique quod ea.', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(7, 'Josh Kiehn', 78, 'Non delectus rem similique quisquam aperiam vero saepe. Sequi commodi explicabo illo autem. Aut enim quos officiis velit ut et.', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(8, 'Shanelle Wunsch', 80, 'Odio dolore nostrum eos et magnam. Eos repellendus suscipit debitis ab. Similique modi quisquam recusandae aperiam error odit tenetur.', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(9, 'Prof. Werner Lebsack', 31, 'Est illum ea rerum qui fugiat voluptatibus. Natus aut inventore sit est temporibus magni qui voluptatem. Officiis optio sit omnis ipsa sed quos.', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(10, 'Jordane Collins', 23, 'Qui eum esse et ut quasi. Vero repellendus consequatur quaerat fuga et voluptatem fuga. Vel est neque fuga. Molestiae consequatur et dolores voluptate odio corrupti non.', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(11, 'Narciso Larkin', 69, 'Sit voluptatibus et porro. Nulla corrupti nulla non quia. Eos reiciendis cumque quidem facere voluptas ipsum.', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(12, 'Renee Spinka', 28, 'Ea a animi rem soluta saepe perferendis. Similique et quam cum delectus occaecati illo consequuntur. Natus distinctio officiis corrupti omnis.', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(13, 'Dr. Kristoffer O\'Connell', 49, 'Quam et odio velit doloremque optio suscipit. Alias asperiores laboriosam voluptatibus rerum illum quas aut. Earum quaerat dolorem voluptas blanditiis non dolorem sequi. Et non fuga quos. Asperiores vero et dicta deleniti necessitatibus.', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(14, 'Deion Rosenbaum', 46, 'Ipsam sed illum alias laboriosam et. Doloribus facilis perspiciatis commodi est id. Fugit autem doloribus nemo quod quia sapiente similique aliquam. Modi qui eum numquam sit odio dicta nemo illo.', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(15, 'Cesar Schroeder', 80, 'Ut minima dolorum ut. Omnis molestiae aut nihil sunt molestias totam sed. Et commodi dolorem accusantium qui voluptatem.', '2025-01-01 04:23:51', '2025-01-01 04:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `cast_movies`
--

CREATE TABLE `cast_movies` (
  `id` bigint UNSIGNED NOT NULL,
  `movie_id` bigint UNSIGNED NOT NULL,
  `cast_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'tenetur', '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(2, 'perspiciatis', '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(3, 'cum', '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(4, 'eos', '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(5, 'ut', '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(6, 'et', '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(7, 'numquam', '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(8, 'voluptates', '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(9, 'consequuntur', '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(10, 'iusto', '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(11, 'recusandae', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(12, 'minus', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(13, 'laudantium', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(14, 'laudantium', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(15, 'atque', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(16, 'labore', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(17, 'sed', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(18, 'explicabo', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(19, 'earum', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(20, 'qui', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(21, 'totam', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(22, 'laborum', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(23, 'perspiciatis', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(24, 'quas', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(25, 'excepturi', '2025-01-01 04:23:51', '2025-01-01 04:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_01_01_085640_create_roles_table', 1),
(6, '2025_01_01_091623_create_penggunas_table', 1),
(7, '2025_01_01_092412_create_profiles_table', 1),
(8, '2025_01_01_092632_create_genres_table', 1),
(9, '2025_01_01_093005_create_movies_table', 1),
(10, '2025_01_01_093415_create_casts_table', 1),
(11, '2025_01_01_093739_create_reviews_table', 1),
(12, '2025_01_01_093949_create_cast_movies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` int NOT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  `genre_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `synopsis`, `poster`, `year`, `available`, `genre_id`, `created_at`, `updated_at`) VALUES
(1, 'Cupiditate molestiae dignissimos quia iste.', 'Voluptatibus veritatis non et iure. Nesciunt non a earum est illum. Aliquam quia sed dolore. Rerum laudantium corporis qui assumenda aliquid vitae voluptatum.', 'https://via.placeholder.com/640x480.png/0077ee?text=ducimus', 1979, 1, 1, '2025-01-01 04:18:51', '2025-01-01 04:18:51'),
(2, 'Tempore cupiditate repellendus fugit et minima.', 'Ullam et odit dolores sint fuga sed architecto aut. Assumenda ut explicabo amet voluptatem inventore molestiae error. Nulla ea possimus illo corporis sit. Amet sed quaerat voluptatem et a.', 'https://via.placeholder.com/640x480.png/00ffcc?text=tempora', 1992, 0, 3, '2025-01-01 04:18:51', '2025-01-01 04:18:51'),
(3, 'Iure qui sit autem atque.', 'Doloribus quia dolorem distinctio iusto ut ut est cupiditate. Sint dicta aut libero pariatur laudantium iusto quaerat eaque. Consectetur sed perferendis qui velit iusto magni.', 'https://via.placeholder.com/640x480.png/000033?text=asperiores', 2003, 1, 5, '2025-01-01 04:18:51', '2025-01-01 04:18:51'),
(4, 'Omnis hic est tempore deleniti eaque eaque velit itaque.', 'Ut et reiciendis est et tenetur vero corporis. Aperiam aut ipsam ut quos perferendis ea sint voluptatem. Inventore quis consequatur quaerat velit sint.', 'https://via.placeholder.com/640x480.png/004466?text=molestiae', 2003, 1, 3, '2025-01-01 04:18:51', '2025-01-01 04:18:51'),
(5, 'Autem consectetur dicta dolor iure sequi.', 'Qui placeat sit ipsam enim. Nam optio a sint omnis. Explicabo velit error et iure quia omnis.', 'https://via.placeholder.com/640x480.png/0000aa?text=est', 2023, 1, 2, '2025-01-01 04:18:51', '2025-01-01 04:18:51'),
(6, 'Ut debitis nihil quam veniam a iusto.', 'Eligendi magnam corrupti quia soluta. Consequatur ab est nulla omnis porro provident laudantium. Impedit aut dignissimos eius minus quisquam quidem esse porro. Molestiae accusamus sint possimus quam.', 'https://via.placeholder.com/640x480.png/0088ff?text=vero', 2016, 0, 3, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(7, 'Illum ipsa eum et consectetur consequatur similique.', 'Minus expedita id alias dolore laborum. Voluptatum illo qui blanditiis dolore molestias deleniti. Expedita non autem recusandae iure. Non velit qui consequuntur et in.', 'https://via.placeholder.com/640x480.png/0000aa?text=consequuntur', 2024, 0, 3, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(8, 'Quia eligendi facilis cupiditate suscipit commodi doloremque.', 'Consequatur nihil optio voluptas aut aut quae omnis aperiam. Distinctio officiis molestiae beatae dicta. Dolores minima debitis ipsum qui.', 'https://via.placeholder.com/640x480.png/00ccaa?text=officiis', 2001, 1, 1, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(9, 'Enim quia nostrum dolore quos dolore voluptatum.', 'Veritatis adipisci porro illo tenetur omnis incidunt ut. Possimus est commodi voluptatibus aut autem et commodi voluptatem. Quas laborum tenetur delectus. Iusto facilis omnis laboriosam ea tempore eveniet. Veritatis quam voluptatem deleniti consequatur quis asperiores.', 'https://via.placeholder.com/640x480.png/0022aa?text=ut', 1988, 0, 1, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(10, 'Veritatis enim doloremque provident nobis quae ea.', 'Fuga quia deserunt doloribus atque repellat nostrum natus. In provident aperiam voluptas officiis sapiente sequi aut. Laborum eos explicabo autem quaerat ullam accusantium tempore.', 'https://via.placeholder.com/640x480.png/00cc11?text=aliquam', 1981, 0, 5, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(11, 'Deleniti quibusdam consequatur dicta voluptates.', 'Odit error qui labore. Aut sed accusantium quod nisi distinctio. Quam aliquid non est cum et. Velit molestias nulla iste dolorem maiores quod consequatur consectetur.', 'https://via.placeholder.com/640x480.png/006688?text=sit', 1991, 0, 5, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(12, 'Voluptate quae et qui quaerat ex qui veniam.', 'Debitis rem voluptatibus consequatur exercitationem. Et aliquam non dolorem eos hic. Aliquam explicabo eius eaque quo dolorem qui. Aut praesentium odio voluptatum consequatur nam autem rem. Est quia sint eius ut.', 'https://via.placeholder.com/640x480.png/00aaff?text=sint', 1997, 1, 4, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(13, 'Necessitatibus architecto velit voluptatem et ea.', 'Ipsam eveniet pariatur et vel sunt non dicta. Dolorem ad ut et. Id quo ut nihil unde molestiae amet saepe.', 'https://via.placeholder.com/640x480.png/0022dd?text=itaque', 1981, 0, 5, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(14, 'Aut quas ea ad iusto.', 'Voluptatum quia quis sit voluptatem enim eveniet saepe sequi. Sequi est eaque et et. Recusandae debitis repellat nostrum similique aut sapiente recusandae. Rerum quos voluptatem deleniti facilis facilis dolore nihil aperiam.', 'https://via.placeholder.com/640x480.png/007777?text=architecto', 2012, 0, 3, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(15, 'Consequatur fugit eaque cupiditate.', 'Ex nostrum aut culpa quia est. Labore est nulla tempore et. Praesentium ut ab repellendus voluptatibus. Impedit eum eos excepturi veritatis.', 'https://via.placeholder.com/640x480.png/00aa11?text=dolores', 2018, 0, 2, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(16, 'Quo dolores est culpa saepe.', 'In optio ut ducimus. Earum a possimus voluptas ut incidunt quia. Nostrum alias maxime alias nesciunt omnis porro officia ea.', 'https://via.placeholder.com/640x480.png/00bb88?text=et', 1975, 0, 1, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(17, 'Voluptatum ut quia nostrum sunt.', 'Est omnis quas ut vero et enim sed. Perferendis voluptate et id earum dolorum non. Magni natus qui rerum ullam nemo quibusdam est sequi.', 'https://via.placeholder.com/640x480.png/00aa00?text=ut', 1987, 1, 3, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(18, 'Et quos minus magni excepturi et.', 'Atque facilis aliquam libero excepturi aut aut nostrum. Est ex eos aliquam voluptas velit quod ut. Cum itaque ab doloremque architecto rerum velit.', 'https://via.placeholder.com/640x480.png/00aaee?text=nemo', 1984, 0, 5, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(19, 'Alias dolor velit id debitis corporis impedit sint.', 'Consectetur quisquam velit et voluptas quod. Quisquam deserunt quia perferendis eaque accusamus sunt maxime reiciendis. Et consequatur aspernatur consequatur laboriosam perspiciatis blanditiis.', 'https://via.placeholder.com/640x480.png/00cccc?text=vel', 2020, 1, 5, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(20, 'Velit facilis quas architecto voluptatem nam praesentium.', 'Corporis doloremque itaque sed ut eos ea similique. Aut magni est rem debitis. Commodi molestiae quas omnis dicta facere consequuntur.', 'https://via.placeholder.com/640x480.png/0022cc?text=nemo', 1993, 1, 4, '2025-01-01 04:23:51', '2025-01-01 04:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penggunas`
--

CREATE TABLE `penggunas` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penggunas`
--

INSERT INTO `penggunas` (`id`, `name`, `email`, `password`, `email_verified_at`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Susana Heaney', 'hans.metz@example.net', '$2y$10$DOCoAofuNich5e5Rv.CReuuC2YR6DF8KmUpiMpMbP6Vdnj2NUG.3K', NULL, 2, '2025-01-01 04:14:24', '2025-01-01 04:14:24'),
(2, 'Cindy Watsica', 'heichmann@example.com', '$2y$10$EQpc7lglhfpYif15nbcD5OHH2tRo1na91666x3am/A31B.XfbOZli', NULL, 2, '2025-01-01 04:14:24', '2025-01-01 04:14:24'),
(3, 'Delphia Kautzer', 'satterfield.vita@example.com', '$2y$10$IIcigLpeSQBrbcrSVd7zRO701gPJHxBTXvKMMrHOEsLmGfppBjsCO', NULL, 2, '2025-01-01 04:14:24', '2025-01-01 04:14:24'),
(4, 'Candido Gutmann MD', 'mbogan@example.org', '$2y$10$Ay0XVG.0Lkhb8w/UPAH1P.a4COJXFXVUdjYyGwTA4Wwq4cJDYGpFq', NULL, 1, '2025-01-01 04:14:24', '2025-01-01 04:14:24'),
(5, 'Adan Stroman', 'ischroeder@example.com', '$2y$10$GKw.aThWXlij25VSVQ0wau4cFzfZyBROaLWo.wpGfVnR35Iwa45sG', NULL, 2, '2025-01-01 04:14:24', '2025-01-01 04:14:24'),
(6, 'Dr. Johnathan Goyette MD', 'jessie93@example.org', '$2y$10$xWX172oIe8NUH8FpWRDp/e8h7tZRFCbA21/jstdKS.Jmua7fNaGAe', NULL, 2, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(7, 'Darby Wolf', 'kristin31@example.org', '$2y$10$pv/9UcrkPtCb8ErAEHQ2aOlfuwTUVOL8x/Rg5bYEQv4S0KocC43V2', NULL, 2, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(8, 'Alycia Moore', 'marco.cremin@example.net', '$2y$10$XV.9KMYkuT34NVYwHIcck.be/.qJDdWs9occFztq.RVe5kMSIU0.6', NULL, 2, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(9, 'Kylee McKenzie', 'helga23@example.org', '$2y$10$ISvyx85CX7X3qmy4QhXkC.5kN/jqEN/olGTwyRxYHOBnxDNUNJkyO', NULL, 1, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(10, 'Mollie Yundt', 'qkoch@example.com', '$2y$10$AIdXSY1OwSxV9aLVvPK6q.HmI60c6.Kkmu7XSS2uLoU64vdF2ewv.', NULL, 1, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(11, 'Everette Lehner', 'ferry.marguerite@example.org', '$2y$10$DryAYEqernxlXJveDw/uTuc5fjWw42NQ8SUTvoid/jtci26BLDwL6', NULL, 2, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(12, 'Jennyfer Stamm', 'ayana.miller@example.com', '$2y$10$8uuHVMinbtT0V5Fy4RcQLOcNOL7nygOLQUgwiQy2DoTuZ.ikIey4C', NULL, 1, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(13, 'Jeffry Stiedemann', 'moen.nathen@example.org', '$2y$10$YrebAIkukp96p1z/YwJ7PeTNY80FVW60eVRM64aN5EG28naGGTgVe', NULL, 2, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(14, 'Dr. Chester Carter III', 'ryder18@example.com', '$2y$10$WcM2/hI2I4Mv4ZXyLuU2/.UZrg4gDj0AoOlXKbQz7jvwUck/t0sc.', NULL, 2, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(15, 'Webster Rau', 'margarett29@example.net', '$2y$10$24aGeCsTDw/yMyM04al10urMjsR4GtlTaoR8bqXw.aaLpUlwxl0Dy', NULL, 1, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(16, 'Dr. Sydnee Feeney V', 'xstokes@example.org', '$2y$10$Wlp432EaT1PgoPdf/PhpoOq5uFcWq3hMmNZWPU73J6QKuXk0xnsGu', NULL, 2, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(17, 'Claudine Marvin', 'kali.ratke@example.org', '$2y$10$58J2.2blyuWSbkvwxazQo.sieMaeG0zZJoYBW.XihIOVe7cXPBIjG', NULL, 1, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(18, 'Milton Bartoletti V', 'coty.ebert@example.org', '$2y$10$/rzYx1v2w0HHLkoFpszefu0.OeayU/i0x0gOozuCikpkJ.YZHMQvK', NULL, 1, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(19, 'Dino Stroman', 'brandt37@example.net', '$2y$10$WqO.xviPeXkXebxBHcf/duz1YFeQfjQ7GZYyeIhrXVR/Dkaol9oXC', NULL, 1, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(20, 'Freida Upton', 'gorczany.monserrate@example.org', '$2y$10$olGx/rnpHcZbgaegQ0m8I.8q5dEJa3YkxXf3HBYVRRihSd8.ydksu', NULL, 1, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(21, 'Arden Koch', 'shaina.stamm@example.com', '$2y$10$sSf/Pcqd.vbltJPaHazbbuB0H0vq7LqZMb4dGJE36z8.BFQlngsyW', NULL, 2, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(22, 'Zoie Hettinger', 'russel.effertz@example.org', '$2y$10$Xrzp4d0gEkMGZ35/t43nQ.yya6EoKFv2ttyq5.asXWHS.lXbNNIaG', NULL, 1, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(23, 'Kristian Lehner', 'vivien27@example.com', '$2y$10$AEhUPga7KWnDW2kAUhRbreEDObIcQULudwxaUkoGaIa1z8UhtcsOG', NULL, 2, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(24, 'Dorian Farrell', 'spencer.ratke@example.org', '$2y$10$/otQ1EreN9hsVKbsGuexm.tihXdcS/RGgwcO7uy4cUZoimNqrD7JO', NULL, 2, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(25, 'Willow Hettinger', 'stroman.allie@example.org', '$2y$10$lcg5DpzQzaklbkGv9qXmFehyXo2G8dmFqLk6EaSrRUShQOlg1j4vG', NULL, 2, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(26, 'Verner Gorczany III', 'rozella22@example.org', '$2y$10$H3XSgFdpm7RiMmLQnMMcWOEWNjsow5gwXfet.8b54C8LvfoW.SvEG', NULL, 1, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(27, 'Philip Christiansen', 'qlittle@example.org', '$2y$10$NefvRr7I2nsv1ZvcWAqQWuZDpD9vVJNk7u4MemlIS2ArBWvs/imsy', NULL, 2, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(28, 'Amos Mohr', 'frami.kasey@example.net', '$2y$10$6ybOvx2BfgJK3fXHLK/y4eMKCe0Mkebl37Y74ogB9kCgmT7TrGUxy', NULL, 2, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(29, 'Brando Hayes PhD', 'west.maryjane@example.org', '$2y$10$qjApF5EdQVJjq10k/kiKlepY95cVK8F/GfyZSpBsBbgeEaVsVsVY2', NULL, 1, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(30, 'Kelli Herzog', 'sophie15@example.org', '$2y$10$5xah20cITQELpBIK8sGB6uIpQTTznpDr0l9ZlddeqrMQtLXMHUL3O', NULL, 2, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(31, 'Libbie Hintz', 'wunsch.lottie@example.org', '$2y$10$ntWy/d6H3PCDhexeXNddq.9OmCzQKTw37h6WODC0CiaFkSwUuP6m2', NULL, 2, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(32, 'Mr. Garret Cronin I', 'little.kameron@example.org', '$2y$10$mdg3tVpr9N/sAY4B5or4BOhWE99wJBaCE/eNYJF56LPxCxw9w8RLe', NULL, 1, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(33, 'Dr. Katelyn Hessel Jr.', 'tdoyle@example.net', '$2y$10$J5/ZfcUryoEDVMztqiJTlOA60fOvM4mhHGppF7SXPMmVaDLejnREC', NULL, 2, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(34, 'Mrs. Christine Volkman', 'melody.oconner@example.org', '$2y$10$uMbsfmG8FuscjzdLc5pHb.Ig1MmiXrJQg21W10LeF2ljUv83b17v2', NULL, 2, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(35, 'Prof. Geovanni Kunze V', 'lucy30@example.org', '$2y$10$Un/jrOXnUX6SGP5AsVBdU.6X5KAbtIcZ.lYEn0OmyQroJEyY0eZVK', NULL, 1, '2025-01-01 04:23:51', '2025-01-01 04:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `biodata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `pengguna_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `biodata`, `age`, `address`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, 'Molestiae id esse accusantium qui. Sunt aut corporis nesciunt autem dolor. Temporibus quam delectus et omnis est.', 46, '74299 Brekke Ford\nHanebury, FL 40757-1444', 2, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(2, 'Facilis praesentium totam iusto nihil ex maxime rerum. Omnis rerum ad atque sunt molestiae laboriosam maiores qui. Sint placeat aut atque at sed.', 27, '9731 Swift Loop Suite 181\nStrackemouth, RI 73956-6621', 5, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(3, 'Itaque a quia eius asperiores veritatis ab. Iure explicabo dicta delectus quibusdam saepe occaecati beatae. Ratione excepturi odio quia et qui et quia. Ex itaque sed aliquam esse.', 32, '968 Alan Glens\nNorth Geraldtown, WI 67599', 1, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(4, 'Fuga quia nihil deleniti quasi quasi quia incidunt id. Dolorum omnis eius deserunt fugiat voluptas. Non illo accusamus officiis natus voluptates fugit consequatur. Sapiente aperiam quas rem beatae.', 44, '5793 Larkin Track Apt. 493\nVelmamouth, AL 79605-2517', 4, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(5, 'Fugit aut quia eligendi vero. Corporis error fugit aliquam sint incidunt. Dignissimos voluptas et amet deleniti a molestiae est. Accusantium occaecati inventore ut dolorem est.', 44, '538 Mohr Haven\nLake Kareemburgh, RI 98056', 1, '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(6, 'Odio deleniti odio in neque veniam tempore sunt. Eum quaerat enim blanditiis. Nostrum adipisci doloremque rerum quos impedit. Voluptate ipsam quis sequi.', 39, '976 Jerde View Suite 909\nLake Eldaton, DE 97931-8047', 4, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(7, 'Neque praesentium ipsa qui molestiae officiis. Mollitia provident minima et voluptas ipsam eum molestiae. Officiis assumenda voluptatum enim doloribus nam impedit laudantium. Quasi eos atque magnam quos.', 39, '2714 Collier Junction Apt. 013\nOrnfort, KY 34317', 1, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(8, 'Alias laboriosam qui nobis ab ab aut velit. Odio ipsum id voluptatem voluptatem amet a. Necessitatibus consequatur voluptas quia molestiae deleniti quia voluptatem. Nulla consequatur officiis quidem et sit est quasi.', 18, '54931 Jaylon Parkways\nNorth Raleigh, WI 89048-7290', 3, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(9, 'Quos et dolore quo eos et necessitatibus. Eos suscipit hic quia libero. Repellat et ut sed at sequi inventore magni.', 59, '560 Sandra Creek\nEast June, NM 68758-8472', 5, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(10, 'Dolores possimus aut a eius repellendus earum nesciunt similique. Velit corrupti excepturi molestias ab aliquid accusantium aut. Sit at animi repellendus illo hic quis.', 28, '888 Stark Land\nAlyssontown, AL 74691-1775', 2, '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(11, 'Ipsa soluta deserunt unde et. Earum ipsum rem omnis.', 42, '18037 Taylor Avenue\nLauriefort, HI 62941', 4, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(12, 'Consequuntur est ducimus cum eius. Repellendus qui excepturi nihil maxime minima. Quasi ab labore sapiente id culpa quia.', 22, '963 Muller Shore\nPort Adeliaview, SD 45026', 3, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(13, 'Omnis corporis dolorum assumenda quam sunt porro aut consequatur. Inventore natus beatae tenetur nemo eligendi optio. Repellendus amet sed iure consequatur temporibus sunt asperiores atque. Alias quis ab rerum officiis non dolorem minima quis.', 56, '646 Moore Forge Suite 560\nNew General, CA 90851-7586', 4, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(14, 'Esse ea minus aut qui. Velit esse debitis numquam ex saepe et esse. Quidem dolor recusandae repellat. Vel error ut quia sint tempore velit. Doloribus et ullam voluptas quia et.', 41, '304 Vilma Common\nLake Lillie, OH 28800-2327', 4, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(15, 'Non magnam quod qui et. Et ipsum et animi accusamus architecto neque exercitationem. Tempore dolores libero aliquam.', 33, '46686 Streich Meadows Apt. 554\nIvoryberg, OH 21641-2939', 4, '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(16, 'Nesciunt voluptatem ratione ut et quis quo fugiat. Est non rerum vel tenetur quas at. Sunt numquam neque possimus recusandae neque ducimus.', 54, '18636 Franecki Meadows Apt. 198\nAndreanneland, WY 63191-4765', 1, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(17, 'Adipisci asperiores aut eius excepturi autem in deleniti. At est omnis repellat et. Ipsum unde maxime et aut. Officiis eos enim quo aperiam est.', 43, '37232 Mose Walks Apt. 555\nLake Savannah, WV 36859', 2, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(18, 'Officia fugit in rem labore dicta quam. Velit aut et voluptas eos. Quibusdam ratione ab esse numquam.', 55, '9422 Alden Overpass Apt. 053\nNew Hobart, IN 74656-7757', 2, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(19, 'Non ex eos non magni earum deserunt voluptatem at. Omnis expedita quod temporibus sit fugit quo sed recusandae. Eos minima sunt eaque aut repellat molestias et.', 50, '19207 Herzog Parks\nRoelbury, SC 61426-9441', 1, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(20, 'Enim veniam voluptas quo earum beatae eos hic. Modi ipsam debitis voluptatem corporis modi. Natus rerum alias possimus qui voluptatem quia at.', 35, '49842 Piper Gateway\nGeneralport, MO 52973-2890', 1, '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(21, 'Quasi quis alias adipisci velit animi natus. Autem quas incidunt qui error illum aliquid. Aut voluptates quas ipsa quibusdam quae facere.', 28, '31747 Thiel Centers Suite 507\nBuddyborough, HI 72554-6434', 1, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(22, 'Quis debitis aut aut quidem quae est eligendi. Dolores officiis nihil nihil minima corporis eos et. Facere voluptatem est perferendis dolores temporibus quam. Sunt quasi ipsam aperiam facere recusandae libero.', 43, '7943 Reichert Falls\nLake Elmochester, NH 65926-0536', 4, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(23, 'Consequatur amet dignissimos omnis corrupti amet consectetur. Quia deleniti harum ipsa perferendis rerum iusto. Eum nobis non numquam voluptates libero et aspernatur iusto. Harum culpa expedita cupiditate voluptatem qui ullam voluptas.', 26, '4214 Margaret Union Suite 258\nLake Tressie, OH 41795', 1, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(24, 'Provident atque et qui beatae dignissimos laboriosam suscipit. Nesciunt quam ut officia aut saepe distinctio. Placeat sunt quo unde ad dolore nemo vitae.', 38, '766 Wilderman Expressway Suite 330\nPort Linneamouth, VT 74266', 3, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(25, 'Dolores sed molestias sint dolores cupiditate consectetur incidunt. Ut ducimus sequi earum accusantium et sed. Saepe delectus maxime aliquam explicabo aut voluptatem ut fuga.', 60, '769 Dach Glens\nIvoryland, AZ 72835-9457', 4, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(26, 'Rerum sed eius ut repudiandae eos ipsam. Rem doloremque dolor occaecati. Quia sit ut odio ex ut hic.', 55, '3041 Collier Springs Apt. 523\nBraedenmouth, DE 51771', 4, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(27, 'Voluptatem autem atque eos in labore tempore consequatur. Est eos rerum rem recusandae. Qui eos quaerat est et optio. Aliquam autem temporibus dolor dolorem possimus ut.', 41, '1061 Noemy Branch\nGorczanyland, AZ 26968', 5, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(28, 'Non nihil cupiditate omnis voluptatum. Quaerat quis ex enim iste et ea libero. Nam numquam incidunt possimus id quis voluptatem labore explicabo.', 57, '149 Green Ranch\nLake Tierra, IN 19697-1121', 4, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(29, 'Possimus unde soluta vero deleniti in facere et vitae. Exercitationem odio dicta porro ipsa blanditiis iste id. Dicta autem beatae architecto consequuntur quo.', 33, '42899 Queen Avenue Apt. 562\nKarenshire, ID 96309', 2, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(30, 'Unde assumenda voluptates aperiam omnis voluptates deserunt est. Aut at aliquid libero asperiores dolor aut quo. Nisi perferendis adipisci et aut ut voluptatum illo. Dolorem numquam ducimus ut praesentium.', 57, '176 VonRueden Unions\nNorth Megane, MN 68019-1502', 4, '2025-01-01 04:23:51', '2025-01-01 04:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int NOT NULL,
  `pengguna_id` bigint UNSIGNED NOT NULL,
  `movie_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `review`, `rating`, `pengguna_id`, `movie_id`, `created_at`, `updated_at`) VALUES
(1, 'Est sapiente magni ab doloribus. Et et harum perferendis in.', 2, 2, 10, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(2, 'Quia voluptatum ut tempora hic eius sit aliquid sapiente. Dolor ex repellat occaecati sed sit cum dolore. Commodi facilis aperiam maiores et voluptatem consequatur voluptatem.', 1, 5, 7, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(3, 'Nihil quis omnis delectus. Numquam asperiores id et aut. Id saepe eius dolores accusamus earum. Sint provident eius corporis expedita corporis sit.', 2, 2, 5, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(4, 'Similique eum deleniti et sit neque. Totam ut aut ut corporis eligendi. Fuga ut sit placeat quod ullam est dolorum. Facilis qui reprehenderit itaque.', 3, 3, 7, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(5, 'Tenetur iure vitae dolor in aspernatur et in dolore. Reiciendis voluptas voluptatibus repellendus natus molestiae repellat dolore qui. Consectetur iure optio quae dolores perferendis rem aliquam.', 2, 3, 3, '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(6, 'Possimus dignissimos est excepturi amet voluptatibus aut doloremque et. Molestiae atque aut earum eveniet. Sapiente ad culpa ut aut porro cupiditate.', 1, 2, 4, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(7, 'Ratione ab nostrum quia quae rem ipsam voluptas corrupti. Sunt rerum deleniti quia et consequatur rerum ratione. Consectetur nulla nesciunt dolores blanditiis suscipit. Aut et odit quo ut molestias a.', 5, 2, 3, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(8, 'In corporis dolore neque. Soluta explicabo dolores consectetur ea qui qui. Tempore rerum consequatur qui voluptatem non vero neque dolor. Sapiente iusto dolorum consequatur impedit voluptatem culpa.', 5, 5, 5, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(9, 'Voluptates accusantium neque occaecati enim in labore qui. Exercitationem laboriosam dolorum nemo corrupti architecto at.', 4, 1, 4, '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(10, 'Non porro voluptas atque libero totam quibusdam. Recusandae et vel nesciunt libero sint commodi molestiae. Molestiae corrupti sed corrupti consequatur qui necessitatibus odit.', 3, 2, 2, '2025-01-01 04:23:51', '2025-01-01 04:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Facere eveniet suscipit autem et facere. Ut aliquid non rem. Perspiciatis ipsa incidunt autem. Deleniti quia consequatur nostrum et delectus provident.', '2025-01-01 04:14:24', '2025-01-01 04:14:24'),
(2, 'Consequatur at consectetur soluta sunt consequatur consectetur earum et. Enim cum et omnis est cumque quam qui. Similique nam voluptatem esse et.', '2025-01-01 04:14:24', '2025-01-01 04:14:24'),
(3, 'Ipsa facere quisquam natus autem quisquam. Voluptatem eum officia velit. Non sed et libero rerum necessitatibus.', '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(4, 'Officiis aut velit nulla repudiandae non aut quos aliquid. Asperiores quia facere nihil non. Dolorem dolorum sed molestiae. Ab cupiditate qui qui.', '2025-01-01 04:16:51', '2025-01-01 04:16:51'),
(5, 'Qui possimus doloribus nesciunt est. Mollitia adipisci dignissimos eaque rerum dolore in voluptatibus esse. Numquam nisi rem eius et.', '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(6, 'Eum qui expedita provident numquam. Voluptatem est id adipisci accusantium voluptatem illo rem. Illo amet ut mollitia quasi. Et nobis et voluptatem nobis illo consectetur.', '2025-01-01 04:17:58', '2025-01-01 04:17:58'),
(7, 'Similique officiis et id aut nostrum quasi. Qui sapiente est minima sint quia est consectetur et. Quis molestiae vel corrupti eum.', '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(8, 'Magni animi cum provident ut illo. Distinctio qui nisi illo ipsam. Officia dolore ipsa magni doloremque labore qui est. Reiciendis quod natus debitis et incidunt at.', '2025-01-01 04:18:50', '2025-01-01 04:18:50'),
(9, 'In assumenda ea molestias beatae ut. Autem tempore quod debitis. Nulla vel sunt est deleniti odio. Sed quibusdam qui non cupiditate deleniti laborum est.', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(10, 'Reprehenderit dolore vel praesentium vitae tenetur officia est. Eveniet facere occaecati velit debitis ut.', '2025-01-01 04:19:38', '2025-01-01 04:19:38'),
(11, 'Dolor praesentium et explicabo nobis. Iure libero consectetur perferendis dolorem consectetur quia qui. Repellendus ratione ratione perferendis. Rerum qui tempore temporibus doloremque aperiam.', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(12, 'Cum quaerat et distinctio dignissimos vitae ullam. Molestias velit quos tempora et exercitationem consequuntur aliquid corporis. Dolorem dolor quos voluptate unde.', '2025-01-01 04:21:22', '2025-01-01 04:21:22'),
(13, 'Rerum aliquid nostrum est repellendus illo sit. Atque omnis quisquam repellendus natus. Et qui voluptatem rerum facere neque quia. Dolor incidunt nihil excepturi minima magni incidunt ut.', '2025-01-01 04:23:51', '2025-01-01 04:23:51'),
(14, 'Earum beatae dolorem libero sed repellat rerum. Voluptatem natus adipisci ipsa fugiat. Quo molestiae eius molestiae fugiat.', '2025-01-01 04:23:51', '2025-01-01 04:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casts`
--
ALTER TABLE `casts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cast_movies`
--
ALTER TABLE `cast_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cast_movies_movie_id_foreign` (`movie_id`),
  ADD KEY `cast_movies_cast_id_foreign` (`cast_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movies_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penggunas_email_unique` (`email`),
  ADD KEY `penggunas_role_id_foreign` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_pengguna_id_foreign` (`pengguna_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_pengguna_id_foreign` (`pengguna_id`),
  ADD KEY `reviews_movie_id_foreign` (`movie_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
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
-- AUTO_INCREMENT for table `casts`
--
ALTER TABLE `casts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cast_movies`
--
ALTER TABLE `cast_movies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cast_movies`
--
ALTER TABLE `cast_movies`
  ADD CONSTRAINT `cast_movies_cast_id_foreign` FOREIGN KEY (`cast_id`) REFERENCES `casts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cast_movies_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggunas`
--
ALTER TABLE `penggunas`
  ADD CONSTRAINT `penggunas_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `penggunas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_movie_id_foreign` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviews_pengguna_id_foreign` FOREIGN KEY (`pengguna_id`) REFERENCES `penggunas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
