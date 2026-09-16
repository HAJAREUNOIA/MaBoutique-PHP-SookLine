-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 13 mai 2025 à 01:39
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `maboutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin1', 'pwd1', 'admin1@example.com'),
(2, 'admin2', 'pwd2', 'admin2@example.com'),
(3, 'admin3', 'pwd3', 'admin3@example.com');

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `adresse` text DEFAULT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`id`, `nom`, `prenom`, `email`, `adresse`, `password`) VALUES
(2, 'Diallo', 'Oumar', 'oumar.diallo@senegal.com', '45 Avenue Cheikh Anta Diop, Dakar', 'password2'),
(3, 'Dubois', 'Julien', 'julien.dubois@france.fr', '78 Boulevard Haussmann, Paris', 'password3'),
(4, 'Schmidt', 'Anna', 'anna.schmidt@germany.de', '22 Hauptstrasse, Berlin', 'password4'),
(5, 'Kobayashi', 'Hiroshi', 'hiroshi.k@japan.jp', '5-3-2 Shibuya, Tokyo', 'password5'),
(6, 'Chen', 'Li', 'li.chen@china.cn', '88 Nanjing Road, Shanghai', 'password6'),
(7, 'Smith', 'Emily', 'emily.smith@usa.com', '910 Elm Street, Chicago', 'password7'),
(8, 'Lopez', 'Carlos', 'carlos.lopez@mexico.mx', '23 Calle Reforma, Mexico City', 'password8'),
(9, 'Almeida', 'Rafaela', 'rafaela.almeida@brasil.br', '17 Rua das Flores, São Paulo', 'password9'),
(10, 'Nguyen', 'Thuy', 'thuy.nguyen@vietnam.vn', '64 Nguyen Trai, Hanoi', 'password10');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

CREATE TABLE `commandes` (
  `id` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `statut` varchar(50) DEFAULT 'En attente',
  `total` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `panier`
--

CREATE TABLE `panier` (
  `id_panier` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `quantite` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `panier`
--

INSERT INTO `panier` (`id_panier`, `id_client`, `id_produit`, `quantite`) VALUES
(3, 2, 3, 1),
(4, 2, 7, 1),
(5, 3, 6, 3),
(6, 3, 12, 1),
(7, 4, 2, 1),
(8, 4, 8, 2),
(9, 5, 4, 1),
(10, 5, 14, 1),
(11, 6, 9, 2),
(12, 6, 11, 1),
(13, 7, 10, 1),
(14, 7, 13, 1),
(15, 8, 15, 1),
(16, 8, 16, 2),
(17, 9, 17, 1),
(18, 9, 18, 1),
(19, 10, 1, 2),
(20, 10, 6, 1);

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `categorie` varchar(100) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `prix` decimal(10,2) NOT NULL,
  `avis` float DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `categorie`, `img`, `prix`, `avis`) VALUES
(1, 'blue tshirt', 'blue tshirt', 'Vêtements', 'poloblue.jpg', 50.00, 4.2),
(2, 'light blue blouse', 'light blue blouse', 'Vêtements', 'RALPH LAUREN.jpg', 30.00, 4.8),
(3, 'brown cuire jacket', 'brown cuire jacket', 'Vêtements', 'cuivrebrown.jpg', 120.00, 3.9),
(4, 'blue grey jacket', 'blue grey jacket for kids', 'Vêtements', 'jacket.jpg', 40.00, 4.5),
(5, 'socks', 'white socks', 'Vêtements', 'soks.jpg', 20.00, 6),
(6, 'beige shorts', 'beige shorts for kids', 'Vêtements ', 'beigeshorts.jpg', 70.00, 3.2),
(7, ' keybord', 'black keybord', 'Electronique ', 'White Keyboard.jpg', 80.00, 4),
(8, 'card', 'storage card', 'Electronique', 'CARD.jpg', 230.00, 4.1),
(9, 'mouse', 'white mouse', 'Electronique', 'MOUSE.jpg', 60.00, 3.8),
(10, 'mind over xhatter', 'mind over chatter', 'Livres', 'MIND.jpg', 25.00, 4.3),
(11, 'true wealtch', 'true wealtch', 'Livres', 'WEALTH.jpg', 25.00, 4.6),
(12, 'power', 'power', 'Livres', 'images (2).jpg', 45.00, 2.9),
(13, 'towel', 'light pink towel', 'Maison', 'TOWEL.jpg', 60.00, 3.7),
(14, 'teapot', 'white teapot', 'Maison', 'TEAPOT.jpg', 50.00, 3.5),
(15, 'clock', 'white clock', 'Maison', 'CLOCK.jpg', 75.00, 4.7),
(16, 'ring', 'immerged ring', 'Accessoires', 'cartier.jpg', 200.00, 4.4),
(17, 'bracelet', 'gold navy bracelet', 'Accessoires', 'bracelet.jpg', 350.00, 3),
(18, 'papillon', 'papillon blanche', 'Accessoires', 'bow.jpg', 55.00, 5),
(19, 'dress', 'milky dress', 'Vêtements', 'DRESS.jpg', 250.00, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_client` (`id_client`);

--
-- Index pour la table `panier`
--
ALTER TABLE `panier`
  ADD PRIMARY KEY (`id_panier`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `commandes`
--
ALTER TABLE `commandes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `panier`
--
ALTER TABLE `panier`
  MODIFY `id_panier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `panier`
--
ALTER TABLE `panier`
  ADD CONSTRAINT `panier_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `panier_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produits` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
