-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 16 sep. 2021 à 18:10
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `owner_id`) VALUES
(33, 'Games, Computers & Tools', 'games-computers-and-tools', NULL),
(34, 'Books & Electronics', 'books-and-electronics', NULL),
(35, 'Jewelry', 'jewelry', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `price`, `slug`, `main_picture`, `short_description`) VALUES
(499, 33, 'Enormous Paper Keyboard', 18819, 'enormous-paper-keyboard', 'https://picsum.photos/id/634/400/400', 'Ipsam et minus alias rerum. Itaque autem exercitationem eos voluptatibus aut. Et sit quia cumque commodi et nihil eum consequatur. Harum odio pariatur qui qui minus magni facere.'),
(500, 33, 'Mediocre Plastic Car', 12949, 'mediocre-plastic-car', 'https://picsum.photos/id/42/400/400', 'Impedit repellat tempore a. Aspernatur nobis quae ut ducimus.'),
(501, 33, 'Synergistic Marble Bench', 13639, 'synergistic-marble-bench', 'https://picsum.photos/id/906/400/400', 'Ipsa tenetur sint omnis dignissimos deleniti aut sunt eum. Sint soluta consequatur sunt sapiente sit et. Ut dolores ducimus doloremque qui distinctio quia omnis. Est autem odio voluptatem quo quo.'),
(502, 33, 'Mediocre Aluminum Chair', 17609, 'mediocre-aluminum-chair', 'https://picsum.photos/id/369/400/400', 'Eaque maxime quasi et unde officia. Minus qui voluptates eum. Rerum numquam incidunt ducimus deserunt dolores. Quia id molestiae dolorum beatae modi.'),
(503, 33, 'Fantastic Concrete Shoes', 5519, 'fantastic-concrete-shoes', 'https://picsum.photos/id/901/400/400', 'Libero optio et libero quos laborum dolorem. Consectetur corrupti dicta ipsum officia. Beatae et dolores nesciunt in unde atque neque distinctio. Omnis ex similique quo quis libero voluptas.'),
(504, 33, 'Gorgeous Silk Plate', 9849, 'gorgeous-silk-plate', 'https://picsum.photos/id/930/400/400', 'Quam atque consequatur saepe ipsam. Id dolorum reprehenderit omnis et amet aspernatur. Facilis ab doloremque est beatae.'),
(505, 33, 'Incredible Linen Hat', 17729, 'incredible-linen-hat', 'https://picsum.photos/id/219/400/400', 'Nostrum hic enim sit sequi quaerat soluta. Numquam nisi vero voluptatum.'),
(506, 33, 'Enormous Wooden Computer', 9189, 'enormous-wooden-computer', 'https://picsum.photos/id/878/400/400', 'In ab ex quas quibusdam. Odit eaque quia dolores saepe neque. Architecto incidunt tempora dolorem ut non commodi. Ut nostrum tempora ea consequuntur.'),
(507, 33, 'Rustic Paper Chair', 16919, 'rustic-paper-chair', 'https://picsum.photos/id/42/400/400', 'Vel accusantium placeat in ipsam. Necessitatibus cum harum ullam atque voluptates nisi. Et rerum quibusdam facilis aut commodi qui. Optio fugiat voluptatum distinctio delectus cum nulla.'),
(508, 33, 'Enormous Concrete Shoes', 6499, 'enormous-concrete-shoes', 'https://picsum.photos/id/808/400/400', 'Cupiditate ut et voluptates non. Enim repellendus explicabo quisquam quia sit iusto esse. Vel animi nemo ut laborum nam est. Molestiae ullam molestiae sed enim voluptatem dolor.'),
(509, 33, 'Synergistic Silk Keyboard', 18549, 'synergistic-silk-keyboard', 'https://picsum.photos/id/175/400/400', 'Ipsum aut non qui ut. Temporibus laborum ea et et nisi quo vel labore. Eos at aperiam consequatur. Ipsa ut sed nostrum ut quis hic.'),
(510, 33, 'Rustic Wooden Chair', 11989, 'rustic-wooden-chair', 'https://picsum.photos/id/63/400/400', 'Similique et sunt expedita mollitia laborum. Voluptatem qui facere voluptates excepturi et vitae velit. Maxime nulla esse aperiam alias dolor a molestias voluptas.'),
(511, 33, 'Heavy Duty Copper Watch', 10389, 'heavy-duty-copper-watch', 'https://picsum.photos/id/580/400/400', 'Cupiditate sed magni tempore voluptas omnis repudiandae. Voluptatibus est rerum nemo amet. Esse quo sapiente itaque et et reiciendis nihil.'),
(512, 33, 'Durable Aluminum Gloves', 17539, 'durable-aluminum-gloves', 'https://picsum.photos/id/667/400/400', 'Voluptatum et aut voluptate eos ullam qui. Quis ipsam quia reiciendis dicta doloribus. Eum reprehenderit sint molestias eveniet sequi accusantium eius. Voluptas laboriosam culpa est enim deserunt.'),
(513, 33, 'Ergonomic Wool Computer', 7439, 'ergonomic-wool-computer', 'https://picsum.photos/id/727/400/400', 'Distinctio nam doloribus in quisquam veniam reprehenderit est voluptatem. Nihil magnam voluptas rerum exercitationem quam ad. Aliquam et ipsum consequuntur dignissimos eius sunt.'),
(514, 33, 'Durable Leather Watch', 10769, 'durable-leather-watch', 'https://picsum.photos/id/926/400/400', 'Nihil modi autem repellendus ab sed et. Unde beatae sed nobis nihil ad.'),
(515, 34, 'Mediocre Wooden Lamp', 14239, 'mediocre-wooden-lamp', 'https://picsum.photos/id/588/400/400', 'Doloribus fugiat odio vero veniam doloribus tempore aliquam. Ab aut minus dolorem voluptas aut. Qui qui delectus consectetur eos. Voluptas nisi atque beatae reprehenderit quia est.'),
(516, 34, 'Intelligent Wooden Keyboard', 8969, 'intelligent-wooden-keyboard', 'https://picsum.photos/id/377/400/400', 'Similique qui nulla rerum quaerat tenetur eum. Nulla possimus enim voluptatem eaque aliquid reiciendis. Commodi sunt non eum.'),
(517, 34, 'Gorgeous Bronze Gloves', 16469, 'gorgeous-bronze-gloves', 'https://picsum.photos/id/50/400/400', 'Nam perspiciatis quia aut voluptatum harum facere voluptas. Quaerat ullam nam et deleniti libero omnis. Voluptas est iure amet autem voluptatem.'),
(518, 34, 'Incredible Paper Gloves', 15999, 'incredible-paper-gloves', 'https://picsum.photos/id/255/400/400', 'Laborum ea nam soluta commodi dolorum. Et aut recusandae accusantium cupiditate et error consequatur voluptates. Repellat impedit soluta deserunt aut quia.'),
(519, 34, 'Aerodynamic Plastic Keyboard', 4459, 'aerodynamic-plastic-keyboard', 'https://picsum.photos/id/192/400/400', 'Alias beatae soluta autem. Et quos amet quibusdam earum itaque ab nisi. Et enim laboriosam aut ut aut maiores architecto. Reiciendis vero voluptas soluta.'),
(520, 34, 'Gorgeous Leather Coat', 4009, 'gorgeous-leather-coat', 'https://picsum.photos/id/1/400/400', 'Nam repellendus omnis deserunt at eum. Nostrum harum laborum sint ab totam id. Enim non rem totam aliquid ab quidem.'),
(521, 34, 'Awesome Concrete Keyboard', 15699, 'awesome-concrete-keyboard', 'https://picsum.photos/id/795/400/400', 'Officiis officiis velit tempora vel. Eius vitae quia repellat. Ipsa nemo magnam nulla velit. Temporibus aliquid est voluptatum sit.'),
(522, 34, 'Gorgeous Granite Computer', 8649, 'gorgeous-granite-computer', 'https://picsum.photos/id/703/400/400', 'Omnis optio ducimus aperiam est. Magnam possimus sed iusto non aut fuga. Corporis iure in dolor.'),
(523, 34, 'Heavy Duty Silk Lamp', 14219, 'heavy-duty-silk-lamp', 'https://picsum.photos/id/68/400/400', 'Beatae sed qui enim nesciunt. Eligendi quod culpa tenetur et in. In reiciendis at molestias sequi repellat quae omnis.'),
(524, 34, 'Durable Steel Hat', 16779, 'durable-steel-hat', 'https://picsum.photos/id/238/400/400', 'Nemo dolorem neque eius facere beatae consequatur eos. Explicabo cumque rerum sequi nihil. Iure dolore quae maxime nulla nihil. Voluptatem ea a error dicta ea aliquam. Sit debitis aut praesentium laboriosam illum.'),
(525, 34, 'Incredible Granite Bench', 7209, 'incredible-granite-bench', 'https://picsum.photos/id/678/400/400', 'Et cupiditate natus iusto velit. Autem voluptas reiciendis et voluptas dolorum eveniet ex voluptate. Et nemo dolorem accusantium non.'),
(526, 34, 'Mediocre Plastic Coat', 11649, 'mediocre-plastic-coat', 'https://picsum.photos/id/874/400/400', 'Ut quidem neque est id nobis et. Eligendi totam sapiente aut quibusdam aperiam inventore repudiandae quis. Soluta incidunt perspiciatis ut quod. Voluptatum quibusdam perspiciatis aut rerum. Tempore consequatur qui vero reiciendis in quia quaerat magnam.'),
(527, 34, 'Fantastic Wool Shoes', 13869, 'fantastic-wool-shoes', 'https://picsum.photos/id/652/400/400', 'Tempora non vitae aut a consectetur. Facilis provident velit dolorem numquam dicta.'),
(528, 34, 'Synergistic Iron Computer', 15929, 'synergistic-iron-computer', 'https://picsum.photos/id/71/400/400', 'Consectetur et numquam cupiditate saepe quo est. Eum est cupiditate qui atque. Ut quo voluptatem sunt sed vel molestiae vel. Illo fugiat commodi sed et occaecati asperiores ducimus.'),
(529, 34, 'Lightweight Granite Keyboard', 13259, 'lightweight-granite-keyboard', 'https://picsum.photos/id/649/400/400', 'Nostrum qui voluptas id labore. Perferendis sunt nihil voluptas aut consequatur pariatur. In voluptatibus ut voluptatum. Maiores nisi voluptatem qui dolor aut fugit.'),
(530, 34, 'Rustic Steel Shoes', 19209, 'rustic-steel-shoes', 'https://picsum.photos/id/671/400/400', 'Minus officia porro vel itaque tempore temporibus ut. Dolorem expedita sint nesciunt ducimus quo ratione aut. Ad officiis quia magni dolores necessitatibus et ea. Itaque ut minima ut et eum autem ea vero. Assumenda voluptas minus doloremque officia ab quod odit.'),
(531, 34, 'Ergonomic Granite Keyboard', 10529, 'ergonomic-granite-keyboard', 'https://picsum.photos/id/700/400/400', 'Laborum ut et ipsa et repellat ut. Delectus quam dolorem cum doloremque. Cum voluptatem rerum aut officia. Ex temporibus commodi id et facere qui sed.'),
(532, 34, 'Mediocre Plastic Bag', 4209, 'mediocre-plastic-bag', 'https://picsum.photos/id/165/400/400', 'Nemo ut aut doloribus natus deleniti sed. Deleniti omnis dolores quisquam quia quos ipsam. Velit voluptatem molestiae facilis et. Qui perspiciatis quam iusto.'),
(533, 35, 'Durable Wooden Knife', 19579, 'durable-wooden-knife', 'https://picsum.photos/id/743/400/400', 'Saepe aut sint error debitis accusantium. Velit quod alias provident molestias dolores. Minima alias iure labore saepe.'),
(534, 35, 'Fantastic Wool Shoes', 17079, 'fantastic-wool-shoes', 'https://picsum.photos/id/1023/400/400', 'Iusto modi iure consectetur. Nam est molestiae molestiae similique. Provident voluptatem et et. Dolore rerum autem alias quos sit.'),
(535, 35, 'Rustic Silk Keyboard', 9399, 'rustic-silk-keyboard', 'https://picsum.photos/id/546/400/400', 'Similique quisquam maiores ad qui. Illo quis et possimus iure nisi et dolor. Reiciendis beatae sit ea id quod dolor. Hic quod doloremque ea nisi qui veniam.'),
(536, 35, 'Synergistic Bronze Hat', 6979, 'synergistic-bronze-hat', 'https://picsum.photos/id/283/400/400', 'Ipsa minus quod quam ut illum minima nulla. Occaecati expedita eum saepe sit nesciunt voluptatem. Assumenda eum non aut necessitatibus.'),
(537, 35, 'Enormous Wool Coat', 10999, 'enormous-wool-coat', 'https://picsum.photos/id/371/400/400', 'Delectus nihil aut corporis quia cum. Eos beatae quos quas beatae. Voluptatem nulla eaque aut at dolor.'),
(538, 35, 'Sleek Silk Keyboard', 15469, 'sleek-silk-keyboard', 'https://picsum.photos/id/1048/400/400', 'Exercitationem aut nesciunt repellat provident molestiae. Ratione rerum fugit quod suscipit nobis et itaque harum. Aliquam omnis laboriosam illum vel. Cupiditate voluptatem ab quod.'),
(539, 35, 'Gorgeous Steel Knife', 14889, 'gorgeous-steel-knife', 'https://picsum.photos/id/483/400/400', 'Velit aut deserunt optio sapiente. Id numquam sunt quia architecto inventore consequatur. Consequuntur quaerat aspernatur voluptatem ut. Quam eaque dolor aut perspiciatis.'),
(540, 35, 'Sleek Marble Pants', 8649, 'sleek-marble-pants', 'https://picsum.photos/id/8/400/400', 'Id saepe quos est quisquam autem nam iste. Sint ipsam quia accusamus adipisci consequatur placeat. Magnam modi quibusdam voluptatem quibusdam est non accusamus.'),
(541, 35, 'Aerodynamic Linen Bag', 9569, 'aerodynamic-linen-bag', 'https://picsum.photos/id/40/400/400', 'Aliquid autem molestiae inventore error laborum id sapiente. Facere sed et aut. Doloremque quia rerum enim sunt accusamus sapiente.'),
(542, 35, 'Rustic Leather Chair', 19889, 'rustic-leather-chair', 'https://picsum.photos/id/273/400/400', 'Nam expedita necessitatibus nulla commodi deleniti aut. Qui reprehenderit voluptas unde deleniti quis ea. Dolor explicabo maiores consequatur ratione.'),
(543, 35, 'Synergistic Iron Wallet', 15019, 'synergistic-iron-wallet', 'https://picsum.photos/id/863/400/400', 'Corporis illum ullam est et dignissimos beatae. Odit incidunt nulla dolorum accusamus quia voluptatum et. Perferendis officiis et dolorem rerum similique. Suscipit nemo molestiae et quis.'),
(544, 35, 'Aerodynamic Marble Knife', 7999, 'aerodynamic-marble-knife', 'https://picsum.photos/id/728/400/400', 'Debitis ut ut velit facere rerum molestiae. Magnam vitae assumenda ad est sit alias ex repellendus. Velit doloremque et aut ab tempora ut saepe.'),
(545, 35, 'Fantastic Bronze Bag', 8569, 'fantastic-bronze-bag', 'https://picsum.photos/id/343/400/400', 'Magni aut laborum et quos voluptas enim dolores. Aut aut aspernatur doloremque aut rerum. Sint aliquam a hic ullam excepturi id aut. Reprehenderit rerum id enim laboriosam.'),
(546, 35, 'Practical Wool Keyboard', 19679, 'practical-wool-keyboard', 'https://picsum.photos/id/457/400/400', 'Cumque ut inventore corrupti earum eveniet. Magnam minus repellendus aperiam itaque. Sit natus nisi sint sequi est. Libero officiis et voluptas quam aspernatur. Dolor molestiae suscipit dolores sequi veritatis delectus.'),
(547, 35, 'Awesome Wool Shoes', 8109, 'awesome-wool-shoes', 'https://picsum.photos/id/582/400/400', 'Qui laudantium possimus expedita voluptatum ad eligendi. Voluptatibus voluptatem suscipit aut. Quis dolorem qui praesentium dicta aut. Sapiente dignissimos ipsa et optio.'),
(548, 35, 'Synergistic Marble Knife', 10369, 'synergistic-marble-knife', 'https://picsum.photos/id/942/400/400', 'Impedit est sed quas similique. Libero quis aspernatur nobis totam et voluptatem eius.'),
(549, 35, 'Sleek Granite Pants', 17439, 'sleek-granite-pants', 'https://picsum.photos/id/1059/400/400', 'Aspernatur aut et perspiciatis in aut fuga quam. Quia nam quos sed maiores qui aut. Tempora animi officia totam. Aliquid dolorum libero veritatis numquam.'),
(550, 35, 'Durable Leather Computer', 10679, 'durable-leather-computer', 'https://picsum.photos/id/30/400/400', 'Voluptatem voluptas enim repellat omnis est. Tenetur excepturi nesciunt officia totam quis dolore. Accusamus sed voluptas voluptatum ut atque.');

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
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchase`
--

INSERT INTO `purchase` (`id`, `user_id`, `full_name`, `address`, `postal_code`, `city`, `total`, `status`, `purchased_at`) VALUES
(123, 56, 'Prof. Donald Runolfsdottir', '2441 Ivah Prairie Apt. 827', '42044', 'Ryderhaven', 80744, 'PAID', '2021-09-02 03:34:17'),
(124, 60, 'Mable Kirlin', '295 Howell Shore Suite 673', '51831-2782', 'Luciushaven', 161058, 'PENDING', '2021-08-04 17:51:34'),
(125, 59, 'Ms. Avis Abshire', '770 Raphaelle Loop', '61175', 'Rohanton', 122661, 'PAID', '2021-08-17 17:21:40'),
(126, 59, 'Brando Hamill', '5910 Wunsch Islands', '09872', 'Kuvalismouth', 124912, 'PAID', '2021-06-14 15:21:39'),
(127, 58, 'Mr. Nick Altenwerth III', '18268 Rodolfo Drive', '54024-5270', 'Port Eleanora', 143999, 'PAID', '2021-08-07 02:07:12'),
(128, 60, 'Laurel Predovic', '957 Giovanny Summit', '77215', 'Rogerschester', 62685, 'PAID', '2021-08-21 06:52:06'),
(129, 59, 'Miss Dorothy Heathcote II', '949 Zemlak Crossroad', '55236-5446', 'South Magdalenafort', 69973, 'PAID', '2021-07-21 09:51:11'),
(130, 57, 'Mrs. Lori Corwin', '955 Aufderhar Tunnel', '64338-3605', 'Ariannaside', 79454, 'PAID', '2021-08-12 19:23:17'),
(131, 56, 'Sheila Spinka', '9641 Nader Fall Suite 924', '33920-8134', 'Leifmouth', 141939, 'PAID', '2021-08-09 17:50:44'),
(132, 56, 'Karson Mann', '727 Becker Greens Suite 289', '04465', 'Dianaborough', 74055, 'PAID', '2021-07-15 20:43:01'),
(133, 56, 'Leora Tromp', '4940 Thiel Viaduct Suite 724', '78196-3222', 'Parkerhaven', 89331, 'PAID', '2021-09-06 03:05:56'),
(134, 58, 'Declan Muller', '71917 Auer Meadow', '07621', 'Port Tremaynebury', 46015, 'PAID', '2021-08-20 19:11:49'),
(135, 56, 'Lexie Auer', '9084 Ward Court Apt. 461', '79585-0140', 'Lemkefort', 71062, 'PAID', '2021-08-15 08:57:13'),
(136, 59, 'Ms. Pauline Borer', '75908 Abernathy Manors', '52229-2162', 'Fabianbury', 131092, 'PAID', '2021-09-02 05:21:57'),
(137, 57, 'Rose Aufderhar', '2319 Rolfson Viaduct Suite 558', '54147', 'New Deanna', 110632, 'PAID', '2021-09-09 10:12:12'),
(138, 56, 'Ms. Liliana Wisozk II', '73250 Jerde Stream', '92447-4111', 'Fritschfurt', 112871, 'PAID', '2021-08-27 22:53:16'),
(139, 60, 'Jordyn Gleichner', '886 Unique Club Suite 948', '58807-8797', 'New Elinorburgh', 118803, 'PAID', '2021-07-09 19:26:46'),
(140, 58, 'Fred', 'Vargas', '42000', 'Saint-Etienne', 12949, 'PAID', '2021-09-11 13:26:31'),
(141, 58, 'Fred Vargas', 'rue des polars', '42000', 'Saint-Etienne', 39158, 'PAID', '2021-09-11 13:30:18'),
(142, 58, 'Fred Vargas', 'rue des polars', '42000', 'Saint Etienne', 17729, 'PAID', '2021-09-11 13:37:08');

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
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `purchase_item`
--

INSERT INTO `purchase_item` (`id`, `product_id`, `purchase_id`, `product_name`, `product_price`, `quantity`, `total`) VALUES
(305, 534, 123, 'Fantastic Wool Shoes', 17079, 3, 51237),
(306, 548, 123, 'Synergistic Marble Knife', 10369, 1, 10369),
(307, 541, 123, 'Aerodynamic Linen Bag', 9569, 2, 19138),
(308, 544, 124, 'Aerodynamic Marble Knife', 7999, 2, 15998),
(309, 545, 124, 'Fantastic Bronze Bag', 8569, 2, 17138),
(310, 538, 124, 'Sleek Silk Keyboard', 15469, 2, 30938),
(311, 549, 124, 'Sleek Granite Pants', 17439, 3, 52317),
(312, 539, 124, 'Gorgeous Steel Knife', 14889, 3, 44667),
(313, 550, 125, 'Durable Leather Computer', 10679, 2, 21358),
(314, 535, 125, 'Rustic Silk Keyboard', 9399, 2, 18798),
(315, 546, 125, 'Practical Wool Keyboard', 19679, 3, 59037),
(316, 538, 125, 'Sleek Silk Keyboard', 15469, 1, 15469),
(317, 544, 125, 'Aerodynamic Marble Knife', 7999, 1, 7999),
(318, 534, 126, 'Fantastic Wool Shoes', 17079, 3, 51237),
(319, 549, 126, 'Sleek Granite Pants', 17439, 3, 52317),
(320, 550, 126, 'Durable Leather Computer', 10679, 2, 21358),
(321, 536, 127, 'Synergistic Bronze Hat', 6979, 3, 20937),
(322, 540, 127, 'Sleek Marble Pants', 8649, 2, 17298),
(323, 542, 127, 'Rustic Leather Chair', 19889, 2, 39778),
(324, 538, 127, 'Sleek Silk Keyboard', 15469, 3, 46407),
(325, 533, 127, 'Durable Wooden Knife', 19579, 1, 19579),
(326, 533, 128, 'Durable Wooden Knife', 19579, 2, 39158),
(327, 536, 128, 'Synergistic Bronze Hat', 6979, 2, 13958),
(328, 541, 128, 'Aerodynamic Linen Bag', 9569, 1, 9569),
(329, 540, 129, 'Sleek Marble Pants', 8649, 3, 25947),
(330, 547, 129, 'Awesome Wool Shoes', 8109, 2, 16218),
(331, 549, 129, 'Sleek Granite Pants', 17439, 1, 17439),
(332, 548, 129, 'Synergistic Marble Knife', 10369, 1, 10369),
(333, 534, 130, 'Fantastic Wool Shoes', 17079, 2, 34158),
(334, 540, 130, 'Sleek Marble Pants', 8649, 2, 17298),
(335, 547, 130, 'Awesome Wool Shoes', 8109, 1, 8109),
(336, 542, 130, 'Rustic Leather Chair', 19889, 1, 19889),
(337, 547, 131, 'Awesome Wool Shoes', 8109, 3, 24327),
(338, 550, 131, 'Durable Leather Computer', 10679, 1, 10679),
(339, 542, 131, 'Rustic Leather Chair', 19889, 2, 39778),
(340, 534, 131, 'Fantastic Wool Shoes', 17079, 2, 34158),
(341, 537, 131, 'Enormous Wool Coat', 10999, 3, 32997),
(342, 539, 132, 'Gorgeous Steel Knife', 14889, 2, 29778),
(343, 535, 132, 'Rustic Silk Keyboard', 9399, 1, 9399),
(344, 549, 132, 'Sleek Granite Pants', 17439, 2, 34878),
(345, 544, 133, 'Aerodynamic Marble Knife', 7999, 3, 23997),
(346, 550, 133, 'Durable Leather Computer', 10679, 3, 32037),
(347, 534, 133, 'Fantastic Wool Shoes', 17079, 1, 17079),
(348, 547, 133, 'Awesome Wool Shoes', 8109, 2, 16218),
(349, 535, 134, 'Rustic Silk Keyboard', 9399, 2, 18798),
(350, 537, 134, 'Enormous Wool Coat', 10999, 1, 10999),
(351, 547, 134, 'Awesome Wool Shoes', 8109, 2, 16218),
(352, 544, 135, 'Aerodynamic Marble Knife', 7999, 3, 23997),
(353, 545, 135, 'Fantastic Bronze Bag', 8569, 3, 25707),
(354, 550, 135, 'Durable Leather Computer', 10679, 2, 21358),
(355, 533, 136, 'Durable Wooden Knife', 19579, 3, 58737),
(356, 546, 136, 'Practical Wool Keyboard', 19679, 2, 39358),
(357, 537, 136, 'Enormous Wool Coat', 10999, 3, 32997),
(358, 534, 137, 'Fantastic Wool Shoes', 17079, 1, 17079),
(359, 540, 137, 'Sleek Marble Pants', 8649, 3, 25947),
(360, 546, 137, 'Practical Wool Keyboard', 19679, 3, 59037),
(361, 545, 137, 'Fantastic Bronze Bag', 8569, 1, 8569),
(362, 533, 138, 'Durable Wooden Knife', 19579, 2, 39158),
(363, 536, 138, 'Synergistic Bronze Hat', 6979, 3, 20937),
(364, 547, 138, 'Awesome Wool Shoes', 8109, 1, 8109),
(365, 539, 138, 'Gorgeous Steel Knife', 14889, 3, 44667),
(366, 547, 139, 'Awesome Wool Shoes', 8109, 1, 8109),
(367, 534, 139, 'Fantastic Wool Shoes', 17079, 1, 17079),
(368, 549, 139, 'Sleek Granite Pants', 17439, 2, 34878),
(369, 533, 139, 'Durable Wooden Knife', 19579, 3, 58737),
(370, 500, 140, 'Mediocre Plastic Car', 12949, 1, 12949),
(371, 533, 141, 'Durable Wooden Knife', 19579, 2, 39158),
(372, 505, 142, 'Incredible Linen Hat', 17729, 1, 17729);

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `full_name`) VALUES
(55, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$Zlh3b1V6M256MzU0TUU1ag$3kRGs1ZNOLwk/jvSL1WCAm2d3atj9V5xH/MDuZrsDfM', 'Admin'),
(56, 'user0@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$QWpFS2lVbXdNUVlQakprcQ$gU96WV4kr/HSrM2suJzwJX5DtLlLuSqu5fPzWMA5bOU', 'Stacy Green'),
(57, 'user1@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$UXJLR2sxenJoV3RvcGVrdQ$uBDBk6dckGLe5/GHZv1Kog1ffz/F7z2gsZcM6H/WuPk', 'Stacey Hodkiewicz'),
(58, 'user2@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Y2ouZS5HUDNwLzRuQlk3Yg$8R90GsFW7Dqlkd3sjKqfJmQmY3hvo2O5BAbOMCOdbvg', 'David Anderson'),
(59, 'user3@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$WXZrWlFDUkFuOWUxQW9qcg$Q/+pzkelaZIyANmg6vgBmtWxIDtKZ9TTKT1lhBUoRfI', 'Kellie Quitzon'),
(60, 'user4@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Y1ovcWRqN0paaHl6OXhuYg$rCNpwmQtogI1qJ+KGzx2Q4LxIrCwS4DqJiWieapXNTU', 'Delaney Champlin DDS');

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
