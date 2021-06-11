-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 11 juin 2021 à 14:04
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `owner_id`) VALUES
(8, 'Garden, Books & Home', 'garden-books-and-home', 7),
(9, 'Clothing & Home', 'clothing-and-home', 8),
(10, 'Baby', 'baby', 8);

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
('DoctrineMigrations\\Version20210610180850', '2021-06-10 20:55:01', 204);

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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `price`, `slug`, `main_picture`, `short_description`) VALUES
(104, 8, 'Fantastic Silk Clock', 9489, 'fantastic-silk-clock', 'https://picsum.photos/id/100/400/400', 'Assumenda quidem vero quis rerum ad quis. Commodi voluptatem omnis eligendi occaecati. Ipsam maiores omnis et nobis.'),
(105, 8, 'Awesome Plastic Computer', 15189, 'awesome-plastic-computer', 'https://picsum.photos/id/873/400/400', 'Consequuntur ipsa quia qui accusamus nobis incidunt vel. Provident hic et in in ab repellat iure. Corporis neque id quis ratione mollitia.'),
(106, 8, 'Ergonomic Paper Computer', 18539, 'ergonomic-paper-computer', 'https://picsum.photos/id/553/400/400', 'Rerum ipsa perferendis incidunt reiciendis necessitatibus. Earum quia ea vel aut nihil. Velit quae quidem sit eos eveniet laborum.'),
(107, 8, 'Mediocre Marble Bottle', 8279, 'mediocre-marble-bottle', 'https://picsum.photos/id/828/400/400', 'In autem quis autem est dolores. Voluptas nesciunt dolores molestiae debitis quas. Ratione dolores consequatur rem numquam.'),
(108, 8, 'Gorgeous Paper Wallet', 5019, 'gorgeous-paper-wallet', 'https://picsum.photos/id/197/400/400', 'Est unde perspiciatis cupiditate vel consequatur. Rem excepturi sunt omnis omnis aspernatur.'),
(109, 8, 'Durable Wooden Car', 8779, 'durable-wooden-car', 'https://picsum.photos/id/982/400/400', 'Deserunt dicta molestiae qui modi. Aliquam molestiae sit quo et suscipit corrupti. Quae facere quaerat voluptate rerum voluptate consequuntur molestias. Et laudantium id laudantium eius vel eaque.'),
(110, 8, 'Enormous Linen Coat', 19309, 'enormous-linen-coat', 'https://picsum.photos/id/153/400/400', 'Quia omnis vitae debitis. Est sunt nostrum provident eaque labore fuga. Neque repellendus et aut distinctio.'),
(111, 8, 'Synergistic Iron Wallet', 8109, 'synergistic-iron-wallet', 'https://picsum.photos/id/42/400/400', 'Porro id quo atque amet. Reiciendis similique doloribus est quibusdam. Eum est voluptas consequuntur consectetur.'),
(112, 8, 'Awesome Marble Computer', 7359, 'awesome-marble-computer', 'https://picsum.photos/id/122/400/400', 'Veniam ut hic voluptatem et vel quas aut. Dolores voluptate est quod aliquam. Est assumenda dolor qui provident fuga. Omnis dolor nihil non a sed accusamus natus.'),
(113, 8, 'Sleek Wooden Clock', 15769, 'sleek-wooden-clock', 'https://picsum.photos/id/339/400/400', 'Suscipit quae accusantium sunt. Ipsum fugit occaecati consequatur molestias. Quibusdam consequuntur sunt ipsam quo. Ea cum ipsum molestiae voluptatibus consequatur asperiores. Quia libero vero labore alias quibusdam sit vitae quis.'),
(114, 8, 'Awesome Bronze Hat', 12719, 'awesome-bronze-hat', 'https://picsum.photos/id/364/400/400', 'Fugit sed sit velit et perferendis magni. Autem deserunt delectus molestias. Et vel et voluptas facere corrupti voluptate. Nobis in dicta enim illo asperiores eos.'),
(115, 8, 'Synergistic Wool Gloves', 7689, 'synergistic-wool-gloves', 'https://picsum.photos/id/981/400/400', 'Ipsam illo numquam vitae placeat aut. Qui quis sed accusamus ullam a et omnis velit. Quia minus facere quasi porro eius. Consequuntur debitis et pariatur deleniti voluptatibus nobis.'),
(116, 8, 'Enormous Iron Shoes', 15279, 'enormous-iron-shoes', 'https://picsum.photos/id/785/400/400', 'Odit possimus atque qui maxime repellat est. Dolores officiis explicabo perferendis et recusandae a.'),
(117, 8, 'Synergistic Rubber Bench', 4239, 'synergistic-rubber-bench', 'https://picsum.photos/id/1045/400/400', 'Consequatur sint laboriosam natus eos libero quas. Omnis minima autem voluptas corrupti minima. Ullam est qui nihil non modi. Ut qui dolor rerum enim voluptas id.'),
(118, 8, 'Aerodynamic Wool Chair', 19679, 'aerodynamic-wool-chair', 'https://picsum.photos/id/468/400/400', 'Ab facere maiores quam et aut eos. Voluptatem cum sit commodi quo inventore. Consequatur rerum harum suscipit sed quia labore voluptatum. Consequatur sunt vel provident iusto rerum rerum. Officiis ab quos adipisci eligendi modi debitis.'),
(119, 8, 'Sleek Granite Pants', 9849, 'sleek-granite-pants', 'https://picsum.photos/id/755/400/400', 'Itaque temporibus neque sunt vero officia. Quasi aut et amet.'),
(120, 8, 'Small Rubber Bag', 4679, 'small-rubber-bag', 'https://picsum.photos/id/454/400/400', 'Non ad corrupti odit. Et labore dolorem aut eligendi. Ipsam impedit aspernatur placeat cum ab aspernatur vero.'),
(121, 8, 'Small Steel Watch', 19299, 'small-steel-watch', 'https://picsum.photos/id/382/400/400', 'Eveniet voluptates illo saepe delectus labore ducimus. Vero similique ut beatae esse enim officiis quo corrupti. Asperiores et est consequatur voluptas optio quos quis.'),
(122, 9, 'Aerodynamic Silk Shirt', 9749, 'aerodynamic-silk-shirt', 'https://picsum.photos/id/315/400/400', 'Blanditiis porro explicabo sint beatae dicta. Est et molestiae velit laboriosam fuga recusandae. Similique praesentium unde sint accusantium fugiat. Illum dignissimos nisi et quas possimus. Accusamus ut rerum adipisci necessitatibus alias sit ea.'),
(123, 9, 'Enormous Iron Lamp', 18049, 'enormous-iron-lamp', 'https://picsum.photos/id/419/400/400', 'Suscipit qui molestiae iure. Tempore vero similique esse qui facilis quis explicabo nam. Ea tempore perferendis dolores vel minus voluptate.'),
(124, 9, 'Incredible Bronze Plate', 19909, 'incredible-bronze-plate', 'https://picsum.photos/id/400/400/400', 'Rem quia vel possimus ad inventore. Molestias iure tempore deleniti pariatur deleniti provident. Libero deserunt totam architecto dicta exercitationem laudantium nam occaecati. Accusamus saepe quaerat voluptas ut excepturi nobis corrupti.'),
(125, 9, 'Awesome Granite Shoes', 13139, 'awesome-granite-shoes', 'https://picsum.photos/id/953/400/400', 'Dicta dolor dicta aliquam nobis deserunt. Optio sunt nam sunt non. Eligendi rerum pariatur voluptatem dolor corporis qui.'),
(126, 9, 'Synergistic Steel Plate', 19569, 'synergistic-steel-plate', 'https://picsum.photos/id/158/400/400', 'Adipisci sequi aspernatur minima officiis nihil et dolorem. Distinctio aut deserunt vel omnis.'),
(127, 9, 'Lightweight Plastic Bench', 6649, 'lightweight-plastic-bench', 'https://picsum.photos/id/677/400/400', 'Officia consequatur ab et. Hic et praesentium pariatur explicabo earum laboriosam. Quasi ea explicabo et ipsa dolores. Autem dicta molestiae quisquam. Aspernatur rerum rem labore dolorem deleniti consequuntur ipsa.'),
(128, 9, 'Incredible Cotton Bag', 17309, 'incredible-cotton-bag', 'https://picsum.photos/id/652/400/400', 'Laudantium vel culpa atque dolor nisi a. Eveniet illo quae recusandae.'),
(129, 9, 'Awesome Bronze Chair', 4189, 'awesome-bronze-chair', 'https://picsum.photos/id/550/400/400', 'Itaque vitae tempore nostrum amet totam assumenda est. Illo eum sunt ipsum voluptatum aut doloremque. Accusantium deserunt fugiat libero.'),
(130, 9, 'Sleek Iron Gloves', 12169, 'sleek-iron-gloves', 'https://picsum.photos/id/352/400/400', 'Qui eaque omnis rerum nostrum temporibus. Architecto quia ducimus numquam rem modi repudiandae est. Laboriosam sunt voluptas quia voluptatem. Deserunt maiores porro aut sit beatae.'),
(131, 9, 'Awesome Aluminum Bottle', 9899, 'awesome-aluminum-bottle', 'https://picsum.photos/id/788/400/400', 'Quia iure amet quidem exercitationem totam in perspiciatis corporis. Rerum voluptatem velit dolorem quis praesentium et aut voluptatem. Officiis assumenda id quia. Sit quia asperiores odio qui.'),
(132, 9, 'Sleek Marble Hat', 8169, 'sleek-marble-hat', 'https://picsum.photos/id/291/400/400', 'Quo qui fugit autem porro eius. Harum cumque ratione dolor laborum voluptas mollitia omnis enim. Modi quas cumque id eaque enim.'),
(133, 9, 'Fantastic Leather Clock', 4219, 'fantastic-leather-clock', 'https://picsum.photos/id/280/400/400', 'Dicta laborum odio quo vel. Excepturi dolor officia qui cupiditate.'),
(134, 9, 'Mediocre Silk Wallet', 8829, 'mediocre-silk-wallet', 'https://picsum.photos/id/116/400/400', 'Magnam quas inventore qui ut. Recusandae rerum eius fugiat rerum eos. Hic voluptatibus rerum est dolor molestiae magni error. Dolore eum ullam dicta sit ut ab nemo.'),
(135, 9, 'Enormous Rubber Table', 17899, 'enormous-rubber-table', 'https://picsum.photos/id/292/400/400', 'Velit voluptatem repellendus eveniet quia consequatur sed. Ut ratione eius est magni vel et perferendis. Eos at minus aut itaque sed consequatur deleniti.'),
(136, 9, 'Intelligent Copper Wallet', 10619, 'intelligent-copper-wallet', 'https://picsum.photos/id/473/400/400', 'Qui repellendus ea aspernatur atque temporibus sit nemo. Quo rerum eum esse ducimus minus. Doloribus autem eum deserunt porro quae.'),
(137, 9, 'Enormous Wooden Table', 18729, 'enormous-wooden-table', 'https://picsum.photos/id/556/400/400', 'Consequatur occaecati facere quibusdam. A possimus voluptatem voluptatem eum et sed sequi. Voluptatum tempora id aut praesentium. Magnam aut sint quia sint.'),
(138, 9, 'Practical Aluminum Chair', 9779, 'practical-aluminum-chair', 'https://picsum.photos/id/81/400/400', 'Cum consequuntur quia unde eligendi. Sunt non autem odit dignissimos. In qui ipsam mollitia et non. Ipsa voluptatem qui aut.'),
(139, 10, 'Small Silk Table', 12139, 'small-silk-table', 'https://picsum.photos/id/638/400/400', 'Illum dolor alias nam non quo officia. Quis libero molestias quia voluptatem voluptatem assumenda eligendi. Ut ut assumenda rerum qui fugit.'),
(140, 10, 'Durable Paper Computer', 8569, 'durable-paper-computer', 'https://picsum.photos/id/251/400/400', 'Laboriosam est fugit explicabo a sed. Et ipsum quo ut dolores rerum corporis aliquid corrupti. Id ducimus temporibus non aut illum quas odit.'),
(141, 10, 'Rustic Paper Shoes', 5739, 'rustic-paper-shoes', 'https://picsum.photos/id/916/400/400', 'Dolorum sint rerum doloribus quia nam corporis libero. Quia architecto perspiciatis neque voluptas architecto nesciunt. Consectetur sed sed amet qui eaque quasi.'),
(142, 10, 'Rustic Concrete Keyboard', 19409, 'rustic-concrete-keyboard', 'https://picsum.photos/id/301/400/400', 'Provident assumenda unde et eos voluptatem et molestiae velit. Doloribus commodi aut culpa vel ut suscipit. Aut sint debitis dicta illum. Minima iste qui incidunt eum odio praesentium.'),
(143, 10, 'Gorgeous Concrete Watch', 4599, 'gorgeous-concrete-watch', 'https://picsum.photos/id/579/400/400', 'Et molestiae et aut rem dicta. Amet voluptatibus dolor porro voluptates natus est omnis. Et cupiditate natus ipsa sint dolores non praesentium. Dignissimos sed natus reiciendis sit autem nemo dolor.'),
(144, 10, 'Mediocre Rubber Watch', 11009, 'mediocre-rubber-watch', 'https://picsum.photos/id/721/400/400', 'Optio quam dignissimos nam suscipit. Veritatis enim cumque praesentium nesciunt eum. Sunt nemo qui maxime dolorem vitae et.'),
(145, 10, 'Sleek Rubber Knife', 14529, 'sleek-rubber-knife', 'https://picsum.photos/id/471/400/400', 'Pariatur sed assumenda blanditiis qui numquam. Odio illum culpa quia reprehenderit quia et dolorem. Molestiae sint omnis quae veritatis et.'),
(146, 10, 'Durable Linen Table', 14609, 'durable-linen-table', 'https://picsum.photos/id/830/400/400', 'Qui natus temporibus porro nam ut non. Rerum saepe itaque dolorum dolore ipsam modi error veritatis. Quaerat error aperiam voluptatum.'),
(147, 10, 'Rustic Steel Shirt', 19179, 'rustic-steel-shirt', 'https://picsum.photos/id/290/400/400', 'Minima voluptatibus voluptatem sed consequuntur dolor. Expedita quibusdam quasi ratione quae nihil et. Ipsam et in voluptas expedita eos libero. Omnis alias incidunt excepturi dolores eum.'),
(148, 10, 'Lightweight Cotton Lamp', 13149, 'lightweight-cotton-lamp', 'https://picsum.photos/id/997/400/400', 'Voluptates voluptas exercitationem vel libero ut atque occaecati qui. Voluptatem ut aliquam sunt esse. Qui aut rerum sed officia illum consectetur delectus. Id quas magnam enim et praesentium odit distinctio.'),
(149, 10, 'Practical Bronze Watch', 18839, 'practical-bronze-watch', 'https://picsum.photos/id/345/400/400', 'Animi dolores laborum tempore quas cumque nesciunt rerum ipsa. Non voluptas id architecto. Illo sunt assumenda harum laboriosam vero impedit. Quos natus voluptatem qui et et aut.'),
(150, 10, 'Heavy Duty Linen Knife', 8669, 'heavy-duty-linen-knife', 'https://picsum.photos/id/1033/400/400', 'Praesentium neque cum sunt ut quidem libero. Voluptatibus maiores provident quaerat ea quia iusto. Qui eos voluptatem iure perspiciatis quis doloremque et. Minima est unde sapiente voluptates unde.'),
(151, 10, 'Mediocre Leather Car', 9589, 'mediocre-leather-car', 'https://picsum.photos/id/512/400/400', 'Doloribus dolor fugit repellendus quod perferendis optio rem. Voluptas asperiores natus iure doloremque. Unde et voluptatum corrupti quam voluptates nulla.'),
(152, 10, 'Synergistic Wooden Gloves', 8179, 'synergistic-wooden-gloves', 'https://picsum.photos/id/452/400/400', 'Autem adipisci enim fugiat autem cum assumenda. Sint iusto aspernatur ipsa in. Voluptate ad in voluptatem magni in.'),
(153, 10, 'Rustic Marble Clock', 6969, 'rustic-marble-clock', 'https://picsum.photos/id/907/400/400', 'Non nisi mollitia nobis quisquam suscipit consequatur. Beatae ut rerum velit commodi. Inventore beatae exercitationem beatae voluptas eum. Ducimus omnis consequuntur ipsa nisi et.'),
(154, 10, 'Ergonomic Bronze Hat', 17699, 'ergonomic-bronze-hat', 'https://picsum.photos/id/544/400/400', 'Sapiente voluptatem porro dolor aut ea in ad. Eius reprehenderit voluptas totam sunt quisquam. Velit autem sint quod eveniet fugit laboriosam. Tempora aut voluptatem molestias sequi ab.');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `full_name`) VALUES
(7, 'admin@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$UE5JTDFNUkM1L09QWG9iSA$XeYFuB3BCvKE29sm3SAfOSwOAwYlLYFWSZB5Vmhphtk', 'Admin'),
(8, 'user0@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$akd2RUhpM09taUtDWGNVNg$XoDksyMM2q8AQ9CdfBj3G8ufLlhRGxu8r/q0bgxXCsU', 'Dr. Lavonne O\'Reilly'),
(9, 'user1@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aXM3dnI0cExnSDZ5NklUeQ$WJh4ndDDryFkvEm6Ysed7i1DsbZys2+YH4akpKNMOos', 'Karianne Nienow DDS'),
(10, 'user2@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dUR6dUpaRzV6OUtGTGFXSw$48saAGRF671c0qXj4wQvfh/bOUwGndYYYpt+FQd5tIk', 'Prof. Johnpaul Kovacek'),
(11, 'user3@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NVI1U28zVGE4WTZrWFpCVA$4WnIRduf/NZDYvSuN3fP1uQ+0Ic6bk3nKDYgnGftCtg', 'Violet Rohan'),
(12, 'user4@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VHJKLjZZNDN1YWp2OXQvaw$/wDEpBAl2L3rWmgaQ17ZUWC/fO2273BrdREXeqrl+8g', 'Brycen Kirlin');

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
