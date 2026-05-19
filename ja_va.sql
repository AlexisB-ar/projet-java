-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 18 mai 2026 à 20:43
-- Version du serveur : 8.0.40
-- Version de PHP : 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ja_va`
--

-- --------------------------------------------------------

--
-- Structure de la table `accueil`
--

CREATE TABLE `accueil` (
  `id_jeu_video` int NOT NULL,
  `id_plateforme` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `accueil`
--

INSERT INTO `accueil` (`id_jeu_video`, `id_plateforme`) VALUES
(1, 1),
(2, 1),
(5, 1),
(6, 1),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(2, 3),
(3, 3),
(4, 3),
(6, 3),
(3, 4),
(4, 4),
(2, 5),
(3, 5),
(4, 5),
(6, 5),
(3, 6),
(4, 6);

-- --------------------------------------------------------

--
-- Structure de la table `acheter`
--

CREATE TABLE `acheter` (
  `id_acheter` int NOT NULL,
  `id_exemplaire` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  `identifiant` varchar(100) DEFAULT NULL,
  `type_produit` varchar(100) DEFAULT NULL,
  `estacheter` tinyint(1) DEFAULT '1',
  `date_achat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `acheter`
--

INSERT INTO `acheter` (`id_acheter`, `id_exemplaire`, `id_utilisateur`, `identifiant`, `type_produit`, `estacheter`, `date_achat`) VALUES
(53, 74, 4, 'tom', 'Jeu société', 1, '2026-05-17');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `id_avis` int NOT NULL,
  `description` text,
  `id_utilisateur` int NOT NULL,
  `id_produit` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `developpe`
--

CREATE TABLE `developpe` (
  `id_jeu_video` int NOT NULL,
  `id_studio` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `developpe`
--

INSERT INTO `developpe` (`id_jeu_video`, `id_studio`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

CREATE TABLE `exemplaire` (
  `id_exemplaire` int NOT NULL,
  `id_produit` int NOT NULL,
  `estAchete` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `exemplaire`
--

INSERT INTO `exemplaire` (`id_exemplaire`, `id_produit`, `estAchete`) VALUES
(1, 1, 0),
(2, 2, 0),
(3, 3, 0),
(4, 4, 0),
(5, 5, 0),
(6, 6, 0),
(7, 7, 0),
(8, 8, 0),
(9, 9, 0),
(10, 10, 0),
(11, 11, 0),
(12, 12, 0),
(13, 13, 0),
(14, 14, 0),
(15, 15, 0),
(16, 16, 0),
(17, 17, 0),
(18, 18, 0),
(74, 14, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jeu_societe`
--

CREATE TABLE `jeu_societe` (
  `id_jeu_societe` int NOT NULL,
  `id_produit` int NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `editeur` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `description` text,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `jeu_societe`
--

INSERT INTO `jeu_societe` (`id_jeu_societe`, `id_produit`, `titre`, `editeur`, `age`, `description`, `type`) VALUES
(1, 13, 'Catan', 'Kosmos', 10, 'Jeu de stratégie et de gestion', 'Stratégie'),
(2, 14, 'Uno', 'Mattel', 7, 'Jeu de cartes rapide et familial', 'Cartes'),
(3, 15, 'Risk', 'Hasbro', 10, 'Conquête du monde et stratégie', 'Stratégie'),
(4, 16, 'Dobble', 'Asmodee', 6, 'Jeu d\'observation et de rapidité', 'Famille'),
(5, 17, 'Monopoly', 'Hasbro', 8, 'Jeu de gestion et d\'argent', 'Famille'),
(6, 18, '7 Wonders', 'Repos Production', 10, 'Jeu de civilisation et développement', 'Stratégie');

-- --------------------------------------------------------

--
-- Structure de la table `jeu_video`
--

CREATE TABLE `jeu_video` (
  `id_jeu_video` int NOT NULL,
  `id_produit` int NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `description` text,
  `type` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `jeu_video`
--

INSERT INTO `jeu_video` (`id_jeu_video`, `id_produit`, `titre`, `description`, `type`, `age`) VALUES
(1, 7, 'The Legend of Zelda: Breath of the Wild', 'Aventure en monde ouvert', 'Aventure', 12),
(2, 8, 'Minecraft', 'Construction, survie et créativité', 'Sandbox', 7),
(3, 9, 'FIFA 24', 'Simulation de football réaliste', 'Sport', 3),
(4, 10, 'Elden Ring', 'Action RPG dans un monde ouvert', 'RPG', 16),
(5, 11, 'Mario Kart 8 Deluxe', 'Course multijoueur fun', 'Course', 3),
(6, 12, 'Stardew Valley', 'Simulation de ferme et RPG', 'Simulation', 7);

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id_livre` int NOT NULL,
  `id_produit` int NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `isbn` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_livre`, `id_produit`, `titre`, `description`, `age`, `auteur`, `isbn`) VALUES
(1, 1, '1984', '2', 12, 'George Orwell', '9780451524935'),
(2, 2, 'Harry Potter à l\'école des sorciers', '', 12, 'J.K. Rowling', '9782070643028'),
(3, 3, 'Le Petit Prince', NULL, NULL, 'Antoine de Saint-Exupéry', '9780156013987'),
(4, 4, 'Le Hobbit', '', 15, 'J.R.R. Tolkien', '9780547928227'),
(5, 5, 'Dune', NULL, NULL, 'Frank Herbert', '9780441172719'),
(6, 6, 'L\'Étranger', NULL, NULL, 'Albert Camus', '9782070360024');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE `location` (
  `id_location` int NOT NULL,
  `id_utilisateur` int NOT NULL,
  `id_exemplaire` int NOT NULL,
  `date_debut` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `prix_location` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `location`
--

INSERT INTO `location` (`id_location`, `id_utilisateur`, `id_exemplaire`, `date_debut`, `date_fin`, `prix_location`) VALUES
(18, 3, 1, '2026-05-17', '2026-05-24', 1.99);

-- --------------------------------------------------------

--
-- Structure de la table `plateforme`
--

CREATE TABLE `plateforme` (
  `id_plateforme` int NOT NULL,
  `nom` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `plateforme`
--

INSERT INTO `plateforme` (`id_plateforme`, `nom`) VALUES
(1, 'Nintendo Switch'),
(2, 'PC'),
(3, 'PlayStation 4'),
(4, 'PlayStation 5'),
(5, 'Xbox One'),
(6, 'Xbox Series X/S');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id_produit` int NOT NULL,
  `prix_achat` decimal(10,2) DEFAULT NULL,
  `prix_location` decimal(10,2) DEFAULT NULL,
  `duree_moyenne` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `stock` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `prix_achat`, `prix_location`, `duree_moyenne`, `date`, `stock`) VALUES
(1, 14.99, 1.99, 7, '2024-01-10', 3),
(2, 19.99, 2.49, 10, '2024-01-15', 8),
(3, 9.99, 1.49, 5, '2024-01-20', 20),
(4, 24.99, 2.99, 12, '2024-02-01', 6),
(5, 29.99, 3.49, 15, '2024-02-10', 10),
(6, 12.99, 1.99, 6, '2024-02-15', 15),
(7, 59.99, 4.99, 20, '2024-03-01', 10),
(8, 49.99, 3.99, 18, '2024-03-05', 7),
(9, 39.99, 3.49, 15, '2024-03-10', 12),
(10, 69.99, 5.49, 25, '2024-03-15', 5),
(11, 29.99, 2.99, 12, '2024-03-20', 9),
(12, 19.99, 1.99, 10, '2024-03-25', 14),
(13, 34.95, 3.49, 15, '2024-04-01', 10),
(14, 24.99, 2.99, 12, '2024-04-05', 7),
(15, 44.99, 3.99, 20, '2024-04-10', 6),
(16, 19.99, 1.99, 8, '2024-04-15', 15),
(17, 29.99, 2.49, 10, '2024-04-20', 12),
(18, 39.99, 3.49, 18, '2024-04-25', 7);

-- --------------------------------------------------------

--
-- Structure de la table `studio`
--

CREATE TABLE `studio` (
  `id_studio` int NOT NULL,
  `nom` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `studio`
--

INSERT INTO `studio` (`id_studio`, `nom`) VALUES
(1, 'Nintendo EPD'),
(2, 'Mojang Studios'),
(3, 'EA Sports Vancouver'),
(4, 'FromSoftware'),
(5, 'Nintendo EPD - Mario Kart Team'),
(6, 'ConcernedApe');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int NOT NULL,
  `identifiant` varchar(100) NOT NULL,
  `mot_de_passe` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `argent` decimal(10,2) DEFAULT '50.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `identifiant`, `mot_de_passe`, `role`, `argent`) VALUES
(3, 'alexis', '9169bf3e501fea19614cacd6d646b50b63aa822bc2360a4db06aee4cd504cb4f', 'admin', 48.01),
(4, 'tom', '3a3468fa89b2ab7cbfe5400858a8ec0066e9e8defa9a64c993b5f24210244df8', 'user', 25.01);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accueil`
--
ALTER TABLE `accueil`
  ADD PRIMARY KEY (`id_jeu_video`,`id_plateforme`),
  ADD KEY `id_plateforme` (`id_plateforme`);

--
-- Index pour la table `acheter`
--
ALTER TABLE `acheter`
  ADD PRIMARY KEY (`id_acheter`),
  ADD KEY `id_exemplaire` (`id_exemplaire`),
  ADD KEY `id_utilisateur` (`id_utilisateur`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`id_avis`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `developpe`
--
ALTER TABLE `developpe`
  ADD PRIMARY KEY (`id_jeu_video`,`id_studio`),
  ADD KEY `id_studio` (`id_studio`);

--
-- Index pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD PRIMARY KEY (`id_exemplaire`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `jeu_societe`
--
ALTER TABLE `jeu_societe`
  ADD PRIMARY KEY (`id_jeu_societe`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `jeu_video`
--
ALTER TABLE `jeu_video`
  ADD PRIMARY KEY (`id_jeu_video`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id_livre`),
  ADD KEY `id_produit` (`id_produit`);

--
-- Index pour la table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id_location`),
  ADD KEY `id_utilisateur` (`id_utilisateur`),
  ADD KEY `id_exemplaire` (`id_exemplaire`);

--
-- Index pour la table `plateforme`
--
ALTER TABLE `plateforme`
  ADD PRIMARY KEY (`id_plateforme`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id_produit`);

--
-- Index pour la table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id_studio`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD UNIQUE KEY `identifiant` (`identifiant`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acheter`
--
ALTER TABLE `acheter`
  MODIFY `id_acheter` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `id_avis` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  MODIFY `id_exemplaire` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT pour la table `jeu_societe`
--
ALTER TABLE `jeu_societe`
  MODIFY `id_jeu_societe` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `jeu_video`
--
ALTER TABLE `jeu_video`
  MODIFY `id_jeu_video` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `livre`
--
ALTER TABLE `livre`
  MODIFY `id_livre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `location`
--
ALTER TABLE `location`
  MODIFY `id_location` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `plateforme`
--
ALTER TABLE `plateforme`
  MODIFY `id_plateforme` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id_produit` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `studio`
--
ALTER TABLE `studio`
  MODIFY `id_studio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accueil`
--
ALTER TABLE `accueil`
  ADD CONSTRAINT `accueil_ibfk_1` FOREIGN KEY (`id_jeu_video`) REFERENCES `jeu_video` (`id_jeu_video`),
  ADD CONSTRAINT `accueil_ibfk_2` FOREIGN KEY (`id_plateforme`) REFERENCES `plateforme` (`id_plateforme`);

--
-- Contraintes pour la table `acheter`
--
ALTER TABLE `acheter`
  ADD CONSTRAINT `acheter_ibfk_1` FOREIGN KEY (`id_exemplaire`) REFERENCES `exemplaire` (`id_exemplaire`),
  ADD CONSTRAINT `acheter_ibfk_2` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `avis`
--
ALTER TABLE `avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `developpe`
--
ALTER TABLE `developpe`
  ADD CONSTRAINT `developpe_ibfk_1` FOREIGN KEY (`id_jeu_video`) REFERENCES `jeu_video` (`id_jeu_video`),
  ADD CONSTRAINT `developpe_ibfk_2` FOREIGN KEY (`id_studio`) REFERENCES `studio` (`id_studio`);

--
-- Contraintes pour la table `exemplaire`
--
ALTER TABLE `exemplaire`
  ADD CONSTRAINT `exemplaire_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `jeu_societe`
--
ALTER TABLE `jeu_societe`
  ADD CONSTRAINT `jeu_societe_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `jeu_video`
--
ALTER TABLE `jeu_video`
  ADD CONSTRAINT `jeu_video_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `location`
--
ALTER TABLE `location`
  ADD CONSTRAINT `location_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `location_ibfk_2` FOREIGN KEY (`id_exemplaire`) REFERENCES `exemplaire` (`id_exemplaire`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
