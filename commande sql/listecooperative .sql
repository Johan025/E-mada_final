-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 27 juil. 2023 à 19:30
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `connexion`
--

-- --------------------------------------------------------

--
-- Structure de la table `listecooperative`
--

CREATE TABLE `listecooperative` (
  `id` int(11) NOT NULL,
  `nom_cooperative` varchar(52) NOT NULL,
  `depart` varchar(70) NOT NULL,
  `arrivee` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `listecooperative`
--

INSERT INTO `listecooperative` (`id`, `nom_cooperative`, `depart`, `arrivee`) VALUES
(1, 'Cotisse', 'Antananarivo', 'Tamatave'),
(2, 'Besady Plus', 'Antananarivo', 'Tamatave'),
(3, 'Soatrans Plus', 'Antananarivo', 'Tamatave'),
(4, 'Kofmad', 'Antananarivo', 'Tamatave'),
(5, 'Kofimanga Plus', 'Antananarivo', 'Tamatave'),
(6, 'Cotisse', 'Tamatave', 'Antananarivo'),
(7, 'Anjara Trans Plus', 'Antananarivo', 'Tamatave'),
(8, 'Besady', 'Tamatave', 'Antananarivo'),
(9, 'Soatrans Plus\r\n                                     ', 'Tamatave', 'Antananarivo'),
(10, 'Kofmad', 'Tamatave', 'Antananarivo'),
(11, 'Kofimanga', 'Tamatave', 'Antananarivo'),
(12, 'Anjara Trans Plus', 'Tamatave', 'Antananarivo'),
(13, 'Soatrans Plus', 'Antananarivo', 'Antsirabé'),
(14, 'Cotram Plus', 'Antananarivo', 'Antsirabé'),
(15, 'Cotisse', 'Antananarivo', 'Antsirabé'),
(16, 'Besady Plus', 'Antananarivo', 'Antsirabé'),
(18, 'Soatrans Plus', 'Antsirabé', 'Antananarivo'),
(19, 'Cotram Plus', 'Antsirabé', 'Antananarivo'),
(20, 'Cotisse', 'Antsirabé', 'Antananarivo'),
(21, 'Besady PLus', 'Antsirabé', 'Antananarivo'),
(22, 'Anjara Trans Plus', 'Antsirabé', 'Antananarivo'),
(23, 'Anjara Trans Plus', 'Antananarivo', 'Antsirabé'),
(24, 'Soatrans Plus', 'Antananarivo', 'Ambositra'),
(25, 'Anjara Trans Plus', 'Antananarivo', 'Ambositra'),
(26, 'Soatrans Plus', 'Ambositra', 'Antananarivo'),
(27, 'Anjara Trans Plus', 'Ambositra', 'Antananarivo'),
(29, 'Soatrans Plus', 'Antananarivo', 'Manakara'),
(30, 'Soatrans Plus', 'Manakara', 'Antananarivo'),
(31, 'Ville introuvable ', 'Antananarivo', 'Tuléar'),
(32, 'Kofito', 'Antananarivo', 'Foulpointe'),
(33, 'Kofimad', 'Antananarivo', 'Foulpointe'),
(34, 'Kofimanga plus', 'Antananarivo', 'Foulpointe'),
(35, 'Kofito', 'Foulpointe', 'Antananarivo'),
(36, 'Kofimad', 'Foulpointe', 'Antananarivo'),
(37, 'Kofimanga plus', 'Foulpointe', 'Antananarivo'),
(38, 'Ville introuvée', 'Antananarivo', 'Sainte-Marie'),
(39, 'Ville introuvée', 'Sainte-Marie', 'Antananarivo'),
(40, 'Soatrans PLus', 'Antananarivo', 'Morondava'),
(41, 'Soatrans PLus', 'Morondava', 'Antananarivo'),
(42, 'Cotisse', 'Antananarivo', 'Nosy-Be'),
(43, 'Besady PLus', 'Antananarivo', 'Nosy-Be'),
(44, 'Cotisse', 'Nosy-Be', 'Antananarivo'),
(45, 'Besady Plus', 'Nosy-Be', 'Antananarivo');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `listecooperative`
--
ALTER TABLE `listecooperative`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `listecooperative`
--
ALTER TABLE `listecooperative`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
