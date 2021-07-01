-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 01 juil. 2021 à 21:21
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mylittlestore`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_64C19C17E3C61F9` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `owner_id`) VALUES
(21, 'Sports', 'sports', NULL),
(22, 'Toys & Jewelry', 'toys-and-jewelry', NULL),
(23, 'Automotive', 'automotive', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210610180850', '2021-06-10 20:55:01', 204),
('DoctrineMigrations\\Version20210617125208', '2021-06-17 12:57:11', 73),
('DoctrineMigrations\\Version20210628153643', '2021-06-28 15:37:56', 160),
('DoctrineMigrations\\Version20210628202747', '2021-06-28 20:29:06', 164);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `price`, `slug`, `main_picture`, `short_description`) VALUES
(305, 21, 'Sleek Wool Shirt', 18139, 'sleek-wool-shirt', 'https://picsum.photos/id/82/400/400', 'Laudantium voluptas quasi ipsam earum qui alias. Nisi voluptates illum dolor dolorem vero et. Magnam et harum quae laborum. Dolor dolorum et non odit exercitationem commodi.'),
(306, 21, 'Enormous Wooden Bottle', 12689, 'enormous-wooden-bottle', 'https://picsum.photos/id/217/400/400', 'Laboriosam illum vel quasi. Eum architecto quibusdam rerum alias ea. Impedit dolores molestiae dolores sint id cupiditate expedita. Nam ipsum deleniti eos rerum assumenda magnam sunt.'),
(307, 21, 'Gorgeous Concrete Bottle', 19739, 'gorgeous-concrete-bottle', 'https://picsum.photos/id/1001/400/400', 'Amet dolor dolorem similique libero quis maxime rerum. Quis et quam est repudiandae et nisi incidunt. Aliquam eligendi et voluptatem non.'),
(308, 21, 'Fantastic Granite Table', 13609, 'fantastic-granite-table', 'https://picsum.photos/id/825/400/400', 'Facilis rem eligendi animi voluptates temporibus quo temporibus. Pariatur asperiores quas qui. Ipsam maxime non neque ut. Quis voluptatum quos quo in.'),
(309, 21, 'Fantastic Linen Table', 10509, 'fantastic-linen-table', 'https://picsum.photos/id/169/400/400', 'Qui cum voluptas est blanditiis consectetur quo molestiae. Accusamus voluptates at ipsa ut asperiores illum. Est necessitatibus qui nisi aliquid omnis et. Ullam rerum aut eaque et. Quae tempora quaerat saepe quo reprehenderit dicta consequatur.'),
(310, 21, 'Aerodynamic Concrete Bench', 5579, 'aerodynamic-concrete-bench', 'https://picsum.photos/id/929/400/400', 'Quia id doloribus sint omnis quo deserunt. Ut minus nihil repellat maxime quisquam. Eos et et vero qui praesentium aut. Minus est assumenda sed atque et quia. Adipisci culpa esse necessitatibus est.'),
(311, 21, 'Heavy Duty Leather Pants', 18009, 'heavy-duty-leather-pants', 'https://picsum.photos/id/389/400/400', 'Tenetur consequatur fuga quos dolorum pariatur et. Possimus sapiente voluptas et. Eius vitae ea molestiae. Eaque nihil quibusdam consequuntur vitae dolores minus consequuntur.'),
(312, 21, 'Gorgeous Silk Computer', 11279, 'gorgeous-silk-computer', 'https://picsum.photos/id/797/400/400', 'Est ad et et natus eos. Et et quis sed vitae consequuntur. Alias et libero ut at ipsam nihil. Quo qui eveniet totam non.'),
(313, 21, 'Intelligent Iron Bottle', 19489, 'intelligent-iron-bottle', 'https://picsum.photos/id/511/400/400', 'Minima harum et inventore. Nulla rerum nihil iste. Fugit sit ut natus labore officia omnis consectetur molestiae. Eos esse et consequatur repellendus cupiditate.'),
(314, 21, 'Practical Aluminum Wallet', 7569, 'practical-aluminum-wallet', 'https://picsum.photos/id/355/400/400', 'Reiciendis iusto incidunt temporibus. Qui ipsam magnam cumque facilis. Ratione et et odio. Qui aspernatur rerum perspiciatis.'),
(315, 21, 'Fantastic Leather Bottle', 7609, 'fantastic-leather-bottle', 'https://picsum.photos/id/266/400/400', 'Et consequuntur voluptatem dicta pariatur aut similique. Velit vero sit cupiditate velit tempore architecto. Qui aspernatur dolor nisi eaque. Magnam assumenda voluptatem rem neque facere. At amet voluptatem et earum ut ratione corporis reprehenderit.'),
(316, 21, 'Enormous Paper Bottle', 5479, 'enormous-paper-bottle', 'https://picsum.photos/id/671/400/400', 'Aut et provident architecto nemo. Impedit sed libero officia fuga rem recusandae.'),
(317, 21, 'Gorgeous Paper Bag', 19309, 'gorgeous-paper-bag', 'https://picsum.photos/id/130/400/400', 'Numquam veritatis sed deleniti architecto molestiae ratione. Fugit sed velit pariatur vero esse.'),
(318, 21, 'Aerodynamic Concrete Bench', 6529, 'aerodynamic-concrete-bench', 'https://picsum.photos/id/385/400/400', 'Delectus quis est qui sit. Iure quis velit quo nobis cumque. Qui aperiam quis autem et aut rerum inventore id. Nobis explicabo qui et consequatur nam quia.'),
(319, 21, 'Durable Bronze Shirt', 7749, 'durable-bronze-shirt', 'https://picsum.photos/id/731/400/400', 'Neque soluta eos eum quos. Quam enim in laudantium. At praesentium numquam repellendus autem ullam. Quo ea dolor in.'),
(320, 21, 'Small Linen Gloves', 7369, 'small-linen-gloves', 'https://picsum.photos/id/833/400/400', 'Quo praesentium quasi vel. Ratione tenetur accusamus nihil porro dolor. Reiciendis et voluptas sunt incidunt minus. Sit accusamus rerum laudantium quos repellat.'),
(321, 21, 'Awesome Aluminum Coat', 14789, 'awesome-aluminum-coat', 'https://picsum.photos/id/142/400/400', 'Maiores possimus corporis harum at voluptas praesentium. Quia fuga in suscipit velit nihil dolores enim. Ad ex soluta sequi architecto.'),
(322, 21, 'Sleek Granite Computer', 4829, 'sleek-granite-computer', 'https://picsum.photos/id/929/400/400', 'Et eum nihil eos modi. Sint expedita unde velit reiciendis blanditiis et quos. Voluptas tenetur est maiores totam praesentium.'),
(323, 22, 'Enormous Steel Gloves', 5539, 'enormous-steel-gloves', 'https://picsum.photos/id/898/400/400', 'Et reiciendis temporibus qui qui sunt officia necessitatibus. Ut architecto sequi error sapiente reprehenderit vero. Incidunt qui dolorum itaque accusantium recusandae et totam.'),
(324, 22, 'Gorgeous Concrete Watch', 11139, 'gorgeous-concrete-watch', 'https://picsum.photos/id/810/400/400', 'Eos ut animi et nesciunt quia sint laboriosam commodi. Voluptas possimus explicabo libero sit. Autem molestias laboriosam recusandae dolores voluptate culpa. Vel et beatae aliquid atque molestiae. Et molestiae sunt et similique deleniti qui non at.'),
(325, 22, 'Rustic Granite Lamp', 7909, 'rustic-granite-lamp', 'https://picsum.photos/id/676/400/400', 'Vero voluptatum aut cum sed. Voluptates voluptatem sapiente eaque. Quo aliquid nulla dolor veniam corrupti hic aut. Itaque laudantium consequatur ut nemo esse.'),
(326, 22, 'Mediocre Silk Shoes', 8629, 'mediocre-silk-shoes', 'https://picsum.photos/id/278/400/400', 'Qui modi assumenda quae facere consequatur. Non delectus nisi autem in. Distinctio natus placeat sunt non aspernatur enim sint assumenda.'),
(327, 22, 'Lightweight Wooden Keyboard', 15389, 'lightweight-wooden-keyboard', 'https://picsum.photos/id/769/400/400', 'Consectetur accusantium error omnis. Dolor tenetur aliquid et nihil et. Nobis quia vel numquam qui.'),
(328, 22, 'Gorgeous Leather Bottle', 8679, 'gorgeous-leather-bottle', 'https://picsum.photos/id/437/400/400', 'Necessitatibus fugit voluptatibus eos et. Culpa nesciunt laborum et ut voluptatem rem. Nobis nemo necessitatibus minus possimus. Fuga repudiandae assumenda enim nesciunt fugit harum.'),
(329, 22, 'Mediocre Wooden Clock', 14819, 'mediocre-wooden-clock', 'https://picsum.photos/id/328/400/400', 'Ut ea natus a beatae nisi deserunt. Dolorem animi molestias dolorem voluptatem ut accusamus. At qui est beatae et cupiditate.'),
(330, 22, 'Lightweight Bronze Chair', 12899, 'lightweight-bronze-chair', 'https://picsum.photos/id/550/400/400', 'Nesciunt sed totam sunt aut nobis voluptatem. Dolor rem numquam quia numquam et. Mollitia facilis eos quas. Illo quis culpa quaerat ea rem.'),
(331, 22, 'Gorgeous Cotton Watch', 9139, 'gorgeous-cotton-watch', 'https://picsum.photos/id/375/400/400', 'Natus ut culpa cupiditate sed voluptatem officia. Et molestiae error et culpa. Velit laudantium consequuntur iusto sapiente iste beatae natus.'),
(332, 22, 'Rustic Silk Coat', 11049, 'rustic-silk-coat', 'https://picsum.photos/id/335/400/400', 'Eveniet et consequatur praesentium consequatur. Doloremque ad voluptas aliquam aspernatur et omnis. Rerum voluptatibus et perspiciatis totam nihil alias in.'),
(333, 22, 'Synergistic Rubber Bottle', 15399, 'synergistic-rubber-bottle', 'https://picsum.photos/id/153/400/400', 'Quam asperiores ut maiores adipisci animi est. Inventore et fugit placeat in est aut. Ut ducimus quam quisquam et et sequi. Temporibus omnis nam alias.'),
(334, 22, 'Aerodynamic Plastic Lamp', 15729, 'aerodynamic-plastic-lamp', 'https://picsum.photos/id/918/400/400', 'Expedita qui non dolorem illum fuga. Fuga delectus eos non. Eos alias cum dolore eaque accusamus delectus. Commodi deleniti voluptas voluptatem et reiciendis blanditiis aliquid qui.'),
(335, 22, 'Small Cotton Bench', 12979, 'small-cotton-bench', 'https://picsum.photos/id/729/400/400', 'Eveniet eveniet illo quisquam non voluptatem perspiciatis sint voluptatum. Molestias commodi similique autem consequatur. Deserunt suscipit porro modi doloribus.'),
(336, 22, 'Incredible Concrete Plate', 7999, 'incredible-concrete-plate', 'https://picsum.photos/id/259/400/400', 'Aut ad dolorum hic totam eius necessitatibus omnis. Ipsum vel nihil illum est. Qui veniam corrupti illum at. Et a tenetur et ea animi voluptates ut vel.'),
(337, 22, 'Lightweight Paper Table', 16349, 'lightweight-paper-table', 'https://picsum.photos/id/165/400/400', 'Dolores ipsa dignissimos iusto quo. Aut libero nulla nulla id. Quam odit placeat distinctio facere.'),
(338, 22, 'Mediocre Cotton Bench', 10329, 'mediocre-cotton-bench', 'https://picsum.photos/id/363/400/400', 'Doloribus fugiat quibusdam natus adipisci modi ipsam voluptatem deserunt. Ex et explicabo repudiandae. Sed sed magni iste velit iure minima eligendi esse. Consequuntur est maiores ea excepturi impedit.'),
(339, 22, 'Awesome Copper Plate', 16769, 'awesome-copper-plate', 'https://picsum.photos/id/365/400/400', 'Repudiandae doloribus voluptatem accusamus consequuntur et. Est quas voluptas accusantium et perferendis veritatis. Et minima vel mollitia.'),
(340, 23, 'Synergistic Iron Table', 10179, 'synergistic-iron-table', 'https://picsum.photos/id/403/400/400', 'Qui mollitia repellat modi rem ipsa omnis dolorem laborum. Nostrum unde repellat sequi omnis quasi sed voluptas.'),
(341, 23, 'Durable Paper Bag', 14369, 'durable-paper-bag', 'https://picsum.photos/id/1057/400/400', 'Est quia voluptatem ducimus. Expedita sapiente non necessitatibus et. Unde quia doloribus quia et.'),
(342, 23, 'Heavy Duty Aluminum Bench', 10009, 'heavy-duty-aluminum-bench', 'https://picsum.photos/id/617/400/400', 'Voluptatem aut officiis assumenda modi laborum ut. Sunt ut sit dolor quis. Repellendus ipsum pariatur praesentium ea magnam doloribus. Consequatur ad eaque pariatur sint.'),
(343, 23, 'Fantastic Linen Knife', 6779, 'fantastic-linen-knife', 'https://picsum.photos/id/9/400/400', 'Non quis quo facere voluptas repellat aut. Necessitatibus perferendis odit facilis aliquam facilis et praesentium autem. Qui beatae libero ab odio recusandae unde soluta.'),
(344, 23, 'Enormous Rubber Keyboard', 9569, 'enormous-rubber-keyboard', 'https://picsum.photos/id/42/400/400', 'Facilis eum maiores accusantium qui quo voluptatem et. Consequatur est dolorem ut omnis. Nemo aut fugiat assumenda magnam ipsum accusamus. Sequi similique id nulla fuga. Error saepe vel non fuga esse minus enim.'),
(345, 23, 'Intelligent Marble Bottle', 10219, 'intelligent-marble-bottle', 'https://picsum.photos/id/957/400/400', 'Quas iusto et aut ipsam vitae perspiciatis eum. Eveniet qui rerum voluptatibus vel quidem eos velit. Voluptate doloremque perspiciatis sequi quas voluptatibus. Consequatur autem eaque eveniet aliquid atque in voluptas ullam.'),
(346, 23, 'Incredible Granite Car', 18549, 'incredible-granite-car', 'https://picsum.photos/id/326/400/400', 'Aut inventore a velit vel minima. Aut consequuntur ab minus. Itaque autem eos blanditiis dignissimos est ipsa.'),
(347, 23, 'Practical Plastic Hat', 15269, 'practical-plastic-hat', 'https://picsum.photos/id/883/400/400', 'Veniam libero sint aut expedita explicabo. Odit enim facere sit aut perspiciatis ipsa. Iusto voluptatem eveniet commodi et nesciunt ut. Accusantium odio ut consequatur modi aut laudantium dignissimos.'),
(348, 23, 'Practical Paper Car', 14179, 'practical-paper-car', 'https://picsum.photos/id/509/400/400', 'Harum maxime voluptatibus hic ad nesciunt est. Dolores est corrupti neque ratione maiores et. Vel ad molestias alias accusantium et voluptatibus delectus. Animi ut illo et nihil ab accusamus.'),
(349, 23, 'Fantastic Plastic Coat', 6539, 'fantastic-plastic-coat', 'https://picsum.photos/id/402/400/400', 'Voluptatem in quia aliquid consequatur ipsum error. Est laborum adipisci provident tenetur iusto voluptate commodi. Repellat iusto qui molestias ut odit. Nihil voluptates quae aut veritatis.'),
(350, 23, 'Practical Silk Computer', 11379, 'practical-silk-computer', 'https://picsum.photos/id/1079/400/400', 'Ad sit qui in culpa in explicabo. Ut distinctio vel nihil est. Voluptatem nulla similique fugit est.'),
(351, 23, 'Synergistic Leather Clock', 11529, 'synergistic-leather-clock', 'https://picsum.photos/id/134/400/400', 'Et et earum ullam dolor consectetur cum. Ratione officiis alias maiores iusto id. Ex ipsum error non. Et accusamus necessitatibus earum sunt fugit quia aut.'),
(352, 23, 'Lightweight Linen Gloves', 12649, 'lightweight-linen-gloves', 'https://picsum.photos/id/458/400/400', 'Nostrum non et nobis quia rerum aut. Perspiciatis quia veritatis vero. Repellat vero veniam non quos maxime vitae dolorum. Aut eaque minima eligendi labore consequatur laudantium in repudiandae. Libero tenetur at et necessitatibus quas.'),
(353, 23, 'Enormous Wooden Pants', 5689, 'enormous-wooden-pants', 'https://picsum.photos/id/1078/400/400', 'Eum animi eum nostrum fuga. Fuga dignissimos perspiciatis dolores nisi dignissimos. Qui rerum est beatae voluptas.'),
(354, 23, 'Lightweight Concrete Shoes', 7359, 'lightweight-concrete-shoes', 'https://picsum.photos/id/986/400/400', 'Eveniet deleniti consequatur dolores sapiente quasi repudiandae. Saepe molestiae vitae maxime accusamus. Possimus non et omnis ut quibusdam voluptatem.');

-- --------------------------------------------------------

--
-- Structure de la table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
CREATE TABLE IF NOT EXISTS `purchase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchased_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6117D13BA76ED395` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchase`
--

INSERT INTO `purchase` (`id`, `user_id`, `full_name`, `address`, `postal_code`, `city`, `total`, `status`, `purchased_at`) VALUES
(46, 35, 'Lisette Spencer IV', '3930 Lilyan Islands', '21596-1034', 'Port Lavon', 29967, 'PAID', '2021-06-22 20:48:45'),
(47, 35, 'Grover Wiza', '6725 Albina Common', '02986-3788', 'Denesikmouth', 50295, 'PAID', '2021-05-28 18:45:04'),
(48, 36, 'Melba McClure', '74731 Susie Avenue Suite 829', '01055-7350', 'East Jess', 71824, 'PAID', '2021-04-03 18:55:42'),
(49, 34, 'Ernestina Lehner', '428 Pollich Port Apt. 835', '41266', 'Cassandreburgh', 53285, 'PAID', '2021-06-20 12:19:12'),
(50, 33, 'Prof. Daniella Renner PhD', '3144 Zulauf Ridges Suite 563', '67131', 'East Kendall', 44166, 'PAID', '2021-06-05 22:18:45'),
(51, 35, 'Oren Bartoletti', '97269 Roma Lock Suite 861', '06093-8285', 'North Salma', 69623, 'PAID', '2021-03-29 22:50:20'),
(52, 36, 'Miss Name Steuber V', '99375 Nannie Corner Suite 183', '37475', 'East Hermina', 54874, 'PAID', '2021-05-01 16:53:21'),
(53, 36, 'Ona Weber', '1949 Mertz Mission Suite 776', '58231', 'New Claraville', 35507, 'PENDING', '2021-04-30 10:56:26'),
(54, 36, 'Rachael Bernhard', '931 Runolfsdottir Island', '39090-2569', 'West Stevie', 66433, 'PAID', '2021-04-03 17:10:28'),
(55, 34, 'Josiah Kozey', '7838 Christiansen Creek Suite 670', '05662', 'East Kailyn', 108838, 'PAID', '2021-05-26 04:08:16'),
(56, 36, 'Aubrey Lubowitz', '2700 Micah Rue', '64320', 'Walkerville', 59263, 'PAID', '2021-04-08 17:13:09'),
(57, 35, 'Osvaldo Goldner', '33384 Wilkinson Center', '05973', 'Quigleyton', 61144, 'PAID', '2021-06-09 16:33:40'),
(58, 32, 'Dr. Sydney Kunde DDS', '50183 Zechariah Overpass Suite 740', '75340-6092', 'East Isaiasville', 182177, 'PAID', '2021-05-01 09:55:05'),
(59, 33, 'Mrs. Maurine Treutel DDS', '1624 Florine Manors', '30791-8451', 'Hoppebury', 53565, 'PAID', '2021-05-31 03:40:39'),
(60, 34, 'Else McCullough', '56811 Floyd Haven Suite 442', '26513', 'Corabury', 100402, 'PAID', '2021-05-10 17:47:46'),
(61, 32, 'Claire Méry', '23 rue Paul Bert', '42000', 'Saint-Etienne', 39478, 'PENDING', '2021-06-30 22:01:44'),
(62, 32, 'Claire Méry', '23 rue Paul Bert', '42000', 'Saint-Etienne', 39478, 'PENDING', '2021-06-30 22:02:49'),
(63, 32, 'Claire Méry', '2 rue des magnifiques bouteilles concrètes', '19739', 'Tulle', 93505, 'PENDING', '2021-07-01 20:13:33'),
(64, 33, 'Claire Méry', 'rue de la chemise en laine', '19000', 'Tulle', 18139, 'PENDING', '2021-07-01 20:17:14'),
(65, 33, 'Claire Méry', '42 rue des énormes bouteilles en bois', '42000', 'Saint-Etienne', 48967, 'PENDING', '2021-07-01 20:21:12'),
(66, 33, 'Claire', '42 rue Douglas Adams', '42000', 'Saint-Etienne', 48967, 'PENDING', '2021-07-01 20:56:06'),
(67, 33, 'Claire Méry', '42 rue Douglas Adams', '42000', 'Saint Etienne', 33356, 'PENDING', '2021-07-01 21:07:13');

-- --------------------------------------------------------

--
-- Structure de la table `purchase_item`
--

DROP TABLE IF EXISTS `purchase_item`;
CREATE TABLE IF NOT EXISTS `purchase_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `purchase_id` int(11) NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6FA8ED7D4584665A` (`product_id`),
  KEY `IDX_6FA8ED7D558FBEB9` (`purchase_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchase_item`
--

INSERT INTO `purchase_item` (`id`, `product_id`, `purchase_id`, `product_name`, `product_price`, `quantity`, `total`) VALUES
(47, 345, 46, 'Intelligent Marble Bottle', 10219, 1, 10219),
(48, 344, 46, 'Enormous Rubber Keyboard', 9569, 1, 9569),
(49, 340, 46, 'Synergistic Iron Table', 10179, 1, 10179),
(50, 345, 47, 'Intelligent Marble Bottle', 10219, 1, 10219),
(51, 353, 47, 'Enormous Wooden Pants', 5689, 1, 5689),
(52, 342, 47, 'Heavy Duty Aluminum Bench', 10009, 2, 20018),
(53, 341, 47, 'Durable Paper Bag', 14369, 1, 14369),
(54, 346, 48, 'Incredible Granite Car', 18549, 1, 18549),
(55, 350, 48, 'Practical Silk Computer', 11379, 3, 34137),
(56, 344, 48, 'Enormous Rubber Keyboard', 9569, 2, 19138),
(57, 354, 49, 'Lightweight Concrete Shoes', 7359, 2, 14718),
(58, 342, 49, 'Heavy Duty Aluminum Bench', 10009, 2, 20018),
(59, 346, 49, 'Incredible Granite Car', 18549, 1, 18549),
(60, 354, 50, 'Lightweight Concrete Shoes', 7359, 2, 14718),
(61, 347, 50, 'Practical Plastic Hat', 15269, 1, 15269),
(62, 348, 50, 'Practical Paper Car', 14179, 1, 14179),
(63, 351, 51, 'Synergistic Leather Clock', 11529, 2, 23058),
(64, 340, 51, 'Synergistic Iron Table', 10179, 2, 20358),
(65, 352, 51, 'Lightweight Linen Gloves', 12649, 1, 12649),
(66, 343, 51, 'Fantastic Linen Knife', 6779, 2, 13558),
(67, 345, 52, 'Intelligent Marble Bottle', 10219, 2, 20438),
(68, 353, 52, 'Enormous Wooden Pants', 5689, 2, 11378),
(69, 351, 52, 'Synergistic Leather Clock', 11529, 2, 23058),
(70, 343, 53, 'Fantastic Linen Knife', 6779, 1, 6779),
(71, 340, 53, 'Synergistic Iron Table', 10179, 1, 10179),
(72, 346, 53, 'Incredible Granite Car', 18549, 1, 18549),
(73, 345, 54, 'Intelligent Marble Bottle', 10219, 1, 10219),
(74, 354, 54, 'Lightweight Concrete Shoes', 7359, 3, 22077),
(75, 350, 54, 'Practical Silk Computer', 11379, 3, 34137),
(76, 343, 55, 'Fantastic Linen Knife', 6779, 3, 20337),
(77, 349, 55, 'Fantastic Plastic Coat', 6539, 2, 13078),
(78, 345, 55, 'Intelligent Marble Bottle', 10219, 3, 30657),
(79, 340, 55, 'Synergistic Iron Table', 10179, 1, 10179),
(80, 351, 55, 'Synergistic Leather Clock', 11529, 3, 34587),
(81, 344, 56, 'Enormous Rubber Keyboard', 9569, 3, 28707),
(82, 343, 56, 'Fantastic Linen Knife', 6779, 3, 20337),
(83, 345, 56, 'Intelligent Marble Bottle', 10219, 1, 10219),
(84, 351, 57, 'Synergistic Leather Clock', 11529, 3, 34587),
(85, 342, 57, 'Heavy Duty Aluminum Bench', 10009, 2, 20018),
(86, 349, 57, 'Fantastic Plastic Coat', 6539, 1, 6539),
(87, 348, 58, 'Practical Paper Car', 14179, 3, 42537),
(88, 341, 58, 'Durable Paper Bag', 14369, 3, 43107),
(89, 352, 58, 'Lightweight Linen Gloves', 12649, 2, 25298),
(90, 346, 58, 'Incredible Granite Car', 18549, 2, 37098),
(91, 350, 58, 'Practical Silk Computer', 11379, 3, 34137),
(92, 345, 59, 'Intelligent Marble Bottle', 10219, 3, 30657),
(93, 350, 59, 'Practical Silk Computer', 11379, 1, 11379),
(94, 351, 59, 'Synergistic Leather Clock', 11529, 1, 11529),
(95, 347, 60, 'Practical Plastic Hat', 15269, 3, 45807),
(96, 354, 60, 'Lightweight Concrete Shoes', 7359, 1, 7359),
(97, 351, 60, 'Synergistic Leather Clock', 11529, 3, 34587),
(98, 352, 60, 'Lightweight Linen Gloves', 12649, 1, 12649),
(99, 307, 61, '19739', 19739, 2, 39478),
(100, 307, 62, '19739', 19739, 2, 39478),
(101, 307, 63, '19739', 19739, 2, 39478),
(102, 311, 63, '18009', 18009, 3, 54027),
(103, 305, 64, '18139', 18139, 1, 18139),
(104, 305, 65, 'Sleek Wool Shirt', 18139, 2, 36278),
(105, 306, 65, 'Enormous Wooden Bottle', 12689, 1, 12689),
(106, 305, 66, 'Sleek Wool Shirt', 18139, 2, 36278),
(107, 306, 66, 'Enormous Wooden Bottle', 12689, 1, 12689),
(108, 323, 67, 'Enormous Steel Gloves', 5539, 2, 11078),
(109, 324, 67, 'Gorgeous Concrete Watch', 11139, 2, 22278);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `full_name`) VALUES
(31, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$NDh1Y2IuLzFxNmo2ZlRvLw$d+yCOATnlQtsJ3lm9Q+ZkjHTWeq9k76tX4o8+wOD4kE', 'Admin'),
(32, 'user0@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Y3p6VWYuQUtHRUZiU3pZRg$yThTHWOWw2Ej2PYgolGQfG/+puzjIKh6xXabfJaQ35I', 'Jamison Herzog'),
(33, 'user1@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VkVpOU5jZ2FOdVAxZFQvOQ$Wsu9Zi9JBvQY6qW++4juDhXf3C7qTnYGuW7IyyY4wHA', 'Charley Ferry V'),
(34, 'user2@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$WFZzc3g0UXVyZTVWMHNUbg$Xel6IItPXIooRh9vrnofpQadO1ubLPJopP3aiiOv4b8', 'Mr. Junius Bradtke'),
(35, 'user3@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$N0dsZWZOMFpHVjRPb3N3ZQ$ckHkxbG1MkWGWE7TygGSX+YpBNsU6zUXOsmrvMlqNcg', 'Karianne Steuber'),
(36, 'user4@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$RlZ0aEJWdkxkUEFuZ0FJVg$ih7rwGcQ/UFPTrg+c3O0TXrmy58fdTspJ+9Nfpi+Npw', 'Miss Delta Schowalter MD');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `FK_64C19C17E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `FK_6117D13BA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `purchase_item`
--
ALTER TABLE `purchase_item`
  ADD CONSTRAINT `FK_6FA8ED7D4584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `FK_6FA8ED7D558FBEB9` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
