-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 03 sep. 2020 à 13:26
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecomm`
--

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(2, 9, 21, 1),
(3, 9, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) DEFAULT NULL,
  `image` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`, `image`) VALUES
(1, 'Parfums', 'Parfums', 'perfume.jpg'),
(2, 'Maquillage', 'Maquillage', 'visage.jpg'),
(3, 'Soins', 'Vetements', 'soin.jpg'),
(4, 'Chaussure', '', 'chaussure.webp'),
(5, 'Bijoux', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Structure de la table `favorie`
--

DROP TABLE IF EXISTS `favorie`;
CREATE TABLE IF NOT EXISTS `favorie` (
  `id` int(11) NOT NULL,
  `count` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`count`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `favorie`
--

INSERT INTO `favorie` (`id`, `count`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(12, 6),
(12, 7),
(12, 8),
(12, 9),
(20, 10),
(14, 11),
(16, 12),
(16, 13);

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 1, 'Chanel Coco Mademoiselle', '<p>Parfum chanel coco 50ml.</p>\r\n', 'Chanel', 500, 'chanel.jpg', '2020-01-10', 8),
(2, 1, 'Dior', '<p>EAU DE TOILETTE SPRAY</p>\r\n\r\n<p> </p>\r\n\r\n\r\n', 'DIOR ADDICT', 400, 'dior.jpg', '2020-01-10', 14),
(3, 1, 'Versace', '<p>La puissance irresistible d\'une femme habillee d’une essence radieuse et sensuelle. Une eau de parfum fraiche, florale et sensuelle à porter en toute saison<p>\r\n\r\n', 'Eros Eau De Toilette', 280, 'versace.jpg', '2019-12-31', 1),
(4, 1, 'La Vie Est Belle', '<p> Découvrez une nouvelle déclaration olfactive lumineuse et sensuelle, véritable ode à une féminité épanouie.\r\n\r\nBouquet floral éclatant, mêlant des notes fraîches et pétillantes de bergamote et de mandarine à des notes florales d\'Iris Pallida, de Jasmin Sambac et de Freesia pétalé, magnifiées par de l\'Absolu de Fleur d\'Oranger. </p>\r\n\r\n', 'La Vie Est Belle L\'Eclat De Parfum', 208, 'lavie.jpg', '2018-05-10', 3),
(6, 1, 'Myrrhe Impériale Eau De Parfum', '<p>Mythique offrande des rois mages, la myrrhe exhale un captivant parfum d’encens qui évoque l’atmosphère des palais orientaux. Séduit par ce rare trésor de la nature, Giorgio Armani a créé Myrrhe Impériale pour capturer dans un parfum majestueux toute l’opulence de l’Orient. Vaporisée sur les points de pulsation, Myrrhe Impériale Eau de Parfum Intense inspire un rituel empreint de sensualité. La myrrhe et le benjoin, deux précieux ingrédients naturels extraits d’arbres originaires du Laos, de Perse et d’Afrique orientale, enveloppent la peau de leurs notes caractéristiques. La myrrhe est réputée pour ses notes musquées, chaudes et fumées, le benjoin pour son accord vanille lactée incroyablement équilibré et velouté. Précédé d’un duo épicé de poivre rose et d’une note chaleureuse de safran, le coeur caractéristique de myrrhe est à la fois séduisant et insaisissable. L’inoubliable et délicat benjoin fusionne avec les bois ambrés dans un fond persistant: une invitation à un fascinant voyage dans les secrets de l’Orient..</p>\r\n', 'dell-inspiron-15-5000-15', 767, 'armani.jpg', '2019-12-31', 4),
(7, 3, 'LA ROCHE-POSAY KERIUM', '<p>LA ROCHE-POSAY KERIUM DS Crème Soin Visage Apaisant Pro-Desquamant est une association unique d\'actifs</p>\r\n\r\n\r\n', '\r\nPhotos non contractuelles\r\n\r\nVous aimez ce produit ? Laissez un commentaire...\r\nLA ROCHE-POSAY KERIUM DS Crème Soin Visage Apaisant Pro-Desquamant. Tube 40 ml', 619, 'roche.jpg', '2019-12-30', 1),
(8, 1, 'Pacco Rabane', '<p>Un floral très provocant composé de fleurs d\'ylang magnétiques et de pop corne très addictif. Une véritable explosion charnelle! </p>\r\n', 'Pure XS For Her', 340, 'paco.gif', '2019-12-27', 2),
(9, 2, 'COFFRET GLOSS À LÈVRES', '<p>Offrez-vous la plus incroyable des brillances grâce à ce coffret collector d\'enlumineurs à lèvres ....</p>\r\n', 'Fenty beauty', 100, 'fenty.jpg', '2019-12-31', 4),
(10, 2, 'PALETTE YEUX', '', 'MOTHERSHIP V BRONZE SEDUCTION', 350, 'palette.jpg', '2020-01-10', 2),
(11, 2, 'ROUGE À LÈVRES', '<p>Offrez-vous la plus incroyable des brillances grâce à ce coffret collector d\'enlumineurs à lèvres ....</p>\r\n', 'DIOR\r\nROUGE DIOR', 120, 'rouge.jpg', '2018-02-12', 2),
(12, 2, 'COFFRET ROUGE À LÈVRES SANS TRANSFERT', '<p>Sublimez vos lèvres de teintes glamour et féminines grâce à ce kit de 6 Rouge velouté sans transfert, du nude intemporel au bordeaux intense en passant par un pêche pétillant et l\'irremplaçable rouge, tout pour un maquillage réussi !.</p>\r\n', 'CREAM LIP STAIN COLLECTION', 121.5, 'rou.jpg', '2019-12-30', 6),
(13, 2, 'ROUGE À LÈVRES LIQUIDE LONGUE TENUE', '<p> La vie est pleine de risques, mais porter un rouge à lèvres liquide ne devrait pas en être un. Découvrez les rouges à lèvres Stunna Lip Paint : le fruit de la rencontre entre des couleurs éclatantes et une longue tenue dans des teintes enivrantes qui feront parler d\'elles. Chaque teinte, choisie par Rihanna a été longuement testée pour s\'assurer qu\'elles vont à tout le monde..</p>\r\n', 'STUNNA LIP PAINT', 73.6, 'rihanna.jpg', '2019-12-27', 2),
(14, 2, 'COFFRET MAQUILLAGE YEUX', '<p>-Notre iconique sac Sephora s\'est transformé en véritable vanity de maquillage branchée !\r\n\r\nCette palette contient :\r\n- 36 ombres à paupières\r\n- 12 gloss\r\n- 6 blushs\r\n\r\nPour quel type de maquillage ?\r\nC\'est un incontournable pour créer toute une palette de looks qui vous ressemble..</p>\r\n', 'PALETTE DE MAQUILLAGE SAC', 85, 'cofret.jpg', '2019-12-31', 3),
(15, 2, 'ROUGE À LÈVRES LONGUE TENUE FINI MAT', '<p>- \r\nYves Saint Laurent Beauté présente Rouge Pur Couture The Slim, la première gamme lèvres pensée par Tom Pecheux, Directeur International de la Beauté YSL..</p>\r\n', 'Yves saint laurent-ROUGE PUR COUTURE THE SLIM.', 150, 'yvesr.jpg', '2019-12-27', 4),
(16, 2, 'COFFRET MAQUILLAGE', '<p>TOO-FACED LET IT SNOW GIRL</p><p>Ce coffret contient :\r\n- Une palette dissociable grand format contenant 19 ombres à paupières multi-finish\r\n- Une palette dissociable format intermédiaire contenant 4 produits pour le visage\r\n- Une palette dissociable petit format contenant 2 produits pour le visage\r\n- Un Mascara Better Than Sex en version deluxe dans un emballage sucre d\'orge en édition limitée</p>\r\n', 'TOO-FACED LET IT SNOW GIRL', 130, 'faced.jpg', '2020-01-10', 1),
(18, 3, 'Sébo Végétal', '<p>Sébo Végétal est la nouvelle gamme de soins pour peaux grasses d\'Yves Rocher. .</p>\r\n', 'Sébo Végétal, la nouvelle gamme pour peaux grasses d’Yves Rocher', 79.99, 'yves.jpg', '2019-12-31', 2),
(20, 3, 'Gel Nettoyant Fraîcheur Hydra Végétal ', '<p>Gel nettoyant en tube de 125ml. Élimine les impuretés et les traces de maquillage. Effet frais. Convient aux peaux normales à mixtes.</p>\r\n\r\n\r\n', 'Gel Nettoyant Fraîcheur Hydra Végétal de YVES ROCHER', 33, 'nett.jpg', '2019-12-30', 4),
(21, 4, 'CHAUSSURES LOUBOUTIN TALON', '<p>Talon Louboutin;</p>\r\n\r\n\r\n\r\n\r\n\r\n', 'Talon', 829, 'loub.jpg', '2020-01-10', 3),
(22, 4, 'Escarpin Chanel', '<h2>Escarpin Chanel avec perles, taille 39. Hauteur de talon 85 mm. Neufs dans la boîte d\'origine avec dustbag;</h2>\r\n\r\n\r\n\r\n\r\n', 'Escarpin chanel', 889.99, 'escarpin.jpg', '2018-07-09', 3),
(23, 1, 'Yves Saint Laurent', '<p>Manifesto L\'Elixir ou l\'esprit d\'une fragrance irrésistiblement fascinante : l\'alliance sensuelle et lumineuse de l\'absolu de tubéreuse et du jasmin se mêle aux accents orientaux de la vanille gousse et vibrants du cashméran.</p>\r\n', 'Manifesto Elixir', 357, 'Yves.gif', '2019-12-27', 1),
(24, 5, 'Collier', '<p>Collier en or</p>\r\n', 'collier', 1000, 'collier.jpg', NULL, NULL),
(25, 5, 'Collier or', '<p>Collier en or</p>\r\n', 'collier-or', 12000, 'collier-or.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'adminet@adminet.com', '1234', 1, 'Girls', 'Power', '', '', 'lips.jpg', 1, '', '', '2018-05-01'),
(9, 'lim.wiem@gmail.com', '0000', 0, 'wiem', 'lim', 'Mahdia Tunisie', '52062063', 'ww.jpg', 1, 'k8FBpynQfqsv', 'wzPGkX5IODlTYHg', '2018-05-09'),
(12, 'hanedi@yahoo.fr', '1111', 0, 'Hanedi', 'becker', 'Tunis', '7542214500', 'hh.jpg', 1, '', '', '2018-07-09');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
