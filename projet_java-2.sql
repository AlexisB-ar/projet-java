-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mar. 21 avr. 2026 à 13:31
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
-- Base de données : `projet_java`
--

-- --------------------------------------------------------

--
-- Structure de la table `jeu_societe`
--

CREATE TABLE `jeu_societe` (
  `id` int NOT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `jeu_video`
--

CREATE TABLE `jeu_video` (
  `id` int NOT NULL,
  `studio` varchar(255) DEFAULT NULL,
  `plateforme` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `jeu_video`
--

INSERT INTO `jeu_video` (`id`, `studio`, `plateforme`) VALUES
(11, 'Mojang', 'PC, PS, Xbox'),
(12, 'Rockstar Games', 'PC, PS, Xbox'),
(13, 'CD Projekt Red', 'PC, PS, Xbox'),
(14, 'ConcernedApe', 'PC, PS, Xbox'),
(15, 'Riot Games', 'PC'),
(16, 'Insomniac Games', 'PS5'),
(17, 'EA Sports', 'PC, PS, Xbox, Switch'),
(18, 'Rockstar Games', 'PC, PS4, Xbox One'),
(19, 'Nintendo', 'Nintendo 64'),
(20, 'Game Freak', 'Game Boy');

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

CREATE TABLE `livre` (
  `id` int NOT NULL,
  `auteur` varchar(255) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id`, `auteur`, `isbn`) VALUES
(1, 'J.R.R. Tolkien', '9780261102385'),
(2, 'George Orwell', '9780451524935'),
(3, 'J.K. Rowling', '9780747532699'),
(4, 'Frank Herbert', '9780441172719'),
(5, 'Antoine de Saint-Exupéry', '9780156013987'),
(6, 'Victor Hugo', '9782070409182'),
(7, 'Jules Verne', '9782070612759'),
(8, 'Jules Verne', '9782070612360'),
(9, 'Guy de Maupassant', '9782013228248'),
(10, 'Homère', '9782253006329');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `id` int NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text,
  `date_sortie` date DEFAULT NULL,
  `type` enum('livre','jeu_video','jeu_societe') NOT NULL,
  `duree_moyenne` varchar(50) DEFAULT NULL,
  `prix_achat` decimal(10,2) DEFAULT NULL,
  `prix_location` decimal(10,2) DEFAULT NULL,
  `age_min` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id`, `titre`, `description`, `date_sortie`, `type`, `duree_moyenne`, `prix_achat`, `prix_location`, `age_min`) VALUES
(1, 'Le Seigneur des Anneaux', 'Roman fantasy', '1954-07-29', 'livre', '20-40h', 30.00, 3.00, 12),
(2, '1984', 'Dystopie sur un régime totalitaire', '1949-06-08', 'livre', '6-10h', 10.00, 2.00, 14),
(3, 'Harry Potter à l’école des sorciers', 'Début de la saga du jeune sorcier', '1997-06-26', 'livre', '6-8h', 12.00, 2.00, 10),
(4, 'Dune', 'Conflits politiques et mystiques sur Arrakis', '1965-08-01', 'livre', '15-25h', 15.00, 2.00, 14),
(5, 'Le Petit Prince', 'Conte philosophique poétique', '1943-04-06', 'livre', '2-3h', 8.00, 1.00, 7),
(6, 'Les Misérables', 'Fresque sociale et historique', '1862-01-01', 'livre', '30-60h', 20.00, 3.00, 14),
(7, 'Vingt mille lieues sous les mers', 'Roman d’aventure scientifique avec le capitaine Nemo', '1870-01-01', 'livre', '10-20h', 12.00, 2.00, 10),
(8, 'Le Tour du monde en 80 jours', 'Aventure autour du monde menée par Phileas Fogg', '1873-01-01', 'livre', '6-10h', 10.00, 2.00, 10),
(9, 'La Parure', 'Nouvelle réaliste sur les conséquences d’un mensonge', '1884-01-01', 'livre', '1-2h', 5.00, 1.00, 12),
(10, 'L’Odyssée', 'Épopée mythologique racontant le voyage d’Ulysse', '0800-01-01', 'livre', '10-20h', 12.00, 2.00, 12),
(11, 'Minecraft', 'Jeu de construction et survie', '2011-11-18', 'jeu_video', '∞', 25.00, 4.00, 7),
(12, 'GTA V', 'Monde ouvert criminel', '2013-09-17', 'jeu_video', '∞', 30.00, 5.00, 18),
(13, 'Cyberpunk 2077', 'RPG futuriste', '2020-12-10', 'jeu_video', '40-100h', 30.00, 5.00, 18),
(14, 'Stardew Valley', 'Simulation agricole', '2016-02-26', 'jeu_video', '40-200h', 15.00, 3.00, 7),
(15, 'Valorant', 'FPS tactique compétitif en 5v5', '2020-06-02', 'jeu_video', '∞', 0.00, 0.00, 16),
(16, 'Marvel’s Spider-Man 2', 'Jeu d’action-aventure avec Peter Parker et Miles Morales', '2023-10-20', 'jeu_video', '20-30h', 70.00, 8.00, 16),
(17, 'EA Sports FC 26', 'Simulation de football réaliste', '2025-09-27', 'jeu_video', '∞', 70.00, 8.00, 3),
(18, 'Red Dead Redemption 2', 'Aventure western en monde ouvert', '2018-10-26', 'jeu_video', '50-150h', 60.00, 7.00, 18),
(19, 'Mario Kart 64', 'Jeu de course arcade multijoueur', '1996-12-14', 'jeu_video', '10-30h', 40.00, 5.00, 3),
(20, 'Pokémon Rouge', 'RPG d’aventure dans l’univers Pokémon', '1996-02-27', 'jeu_video', '20-40h', 30.00, 4.00, 7),
(21, 'Monopoly', 'Jeu de plateau classique d’achat et de gestion immobilière', '1935-01-01', 'jeu_societe', '60-120min', 25.00, 4.00, 8),
(23, 'Uno', 'Jeu de cartes simple et rapide', '1971-01-01', 'jeu_societe', '15-30min', 10.00, 2.00, 7),
(24, 'Skyjo', 'Jeu de cartes stratégique et accessible', '2015-01-01', 'jeu_societe', '20-30min', 15.00, 3.00, 8),
(25, 'Dixit', 'Jeu d’imagination où les joueurs interprètent des illustrations poétiques.', '2008-01-01', 'jeu_societe', '30min', 32.00, 4.00, 8),
(26, 'Cluedo', 'Jeu d’enquête où les joueurs doivent résoudre un meurtre en identifiant le coupable, l’arme et la pièce.', '1949-01-01', 'jeu_societe', '45', 28.00, 3.00, 8),
(27, 'La Bonne Paye', 'Jeu familial où les joueurs gèrent leurs dépenses et revenus au fil d’un mois pour finir avec le plus d’argent.', '1975-01-01', 'jeu_societe', '45', 25.00, 3.00, 8),
(28, 'Top Ten', 'Jeu coopératif où les joueurs doivent classer des réponses du plus calme au plus extrême et deviner l’ordre proposé par chacun.', '2020-01-01', 'jeu_societe', '30', 22.00, 3.00, 14),
(29, 'Puissance 4', 'Jeu d’alignement stratégique où deux joueurs s’affrontent pour aligner quatre jetons de leur couleur.', '1974-01-01', 'jeu_societe', '10', 20.00, 2.00, 6),
(30, 'Dobble', 'Jeu d’observation et de rapidité où les joueurs doivent repérer le symbole commun entre deux cartes.', '2009-01-01', 'jeu_societe', '15', 15.00, 2.00, 6),
(31, 'Codenames', 'Jeu d’association d’idées où deux équipes s’affrontent pour retrouver leurs agents à partir d’indices donnés par leur maître-espion.', '2015-01-01', 'jeu_societe', '30', 20.00, 3.00, 10);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateur` int NOT NULL,
  `identifiant` varchar(60) NOT NULL,
  `mot_de_passe` varchar(64) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateur`, `identifiant`, `mot_de_passe`, `role`) VALUES
(17, 'alexis', '9169bf3e501fea19614cacd6d646b50b63aa822bc2360a4db06aee4cd504cb4f', 'admin'),
(18, 'enzo', '8a798890fe93817163b10b5f7bd2ca4d25d84c52739a645a889c173eee7d9d3d', 'user'),
(19, 'louis', '3a3468fa89b2ab7cbfe5400858a8ec0066e9e8defa9a64c993b5f24210244df8', 'user'),
(20, 'ilan', 'bcee72e6df5d56319125920f6c69d8001e938e122cd14597e547d49cc9126e42', 'user'),
(21, 'lucas', '037aeaeaf4bbf26ddabe7256a8294dc52da48d575a1247b5c2598c47de7aebab', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `jeu_societe`
--
ALTER TABLE `jeu_societe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jeu_video`
--
ALTER TABLE `jeu_video`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `livre`
--
ALTER TABLE `livre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateur` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `jeu_societe`
--
ALTER TABLE `jeu_societe`
  ADD CONSTRAINT `jeu_societe_ibfk_1` FOREIGN KEY (`id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `jeu_video`
--
ALTER TABLE `jeu_video`
  ADD CONSTRAINT `jeu_video_ibfk_1` FOREIGN KEY (`id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `livre`
--
ALTER TABLE `livre`
  ADD CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`id`) REFERENCES `produit` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
