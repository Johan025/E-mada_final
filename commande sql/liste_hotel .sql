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
-- Structure de la table `liste_hotel`
--

CREATE TABLE `liste_hotel` (
  `id` int(11) NOT NULL,
  `nom` varchar(52) NOT NULL,
  `localisation` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `liste_hotel`
--

INSERT INTO `liste_hotel` (`id`, `nom`, `localisation`) VALUES
(1, 'Le louvre', 'Antananarivo'),
(2, 'Hotel Colbert', 'Antananarivo'),
(3, 'Hotel Sakamanga', 'Antananarivo'),
(4, 'Ibis Hotel', 'Antananarivo'),
(5, 'Radisson Blu Hotel', 'Antananarivo'),
(6, 'CARLTON Hotel', 'Antananarivo'),
(7, 'le Relais des Plateaux', 'Antananarivo'),
(8, 'lE GRAND Mellis', 'Antananarivo'),
(9, 'le Centell Hotel & Spa', 'Antananarivo'),
(11, 'Hasina hotel', 'Antsirabé'),
(12, 'Arotel', 'Antsirabé'),
(13, 'Antsirabé Hotel', 'Antsirabé'),
(14, 'Hotel H1 Antsirabé', 'Antsirabé'),
(15, 'Hotel Menabe\"L', 'Antsirabé'),
(16, 'Hotel Plumeria', 'Antsirabé'),
(17, 'Hotel des Thermes', 'Antsirabé'),
(18, 'Hotel Royal Palace', 'Antsirabé'),
(19, 'Hotel Vohintsoa', 'Antsirabé'),
(20, 'Hotel Cristal', 'Antsirabé'),
(21, 'Hotel H1 Manakara', 'Manakara'),
(22, 'Hotel Antemoro', 'Manakara'),
(23, 'Hotel Parthenay Club', 'Manakara'),
(24, 'Hotel Magneva', 'Manakara'),
(25, 'Hotel Leong', 'Manakara'),
(26, 'Hotel Sidi', 'Manakara'),
(27, 'La résidence Manakara', 'Manakara'),
(28, 'Le Lac Vert', 'Manakara'),
(29, 'Chez Zizou', 'Manakara'),
(30, 'Hotel Thermal ', 'Ranomafana'),
(31, 'Hotel AU DOMNTUR', 'Ranomafana'),
(32, 'Le grenat Hotel', 'Ranomafana'),
(33, 'Le grenat Hotel', 'Ranomafana'),
(34, 'KariBotel', 'Ranomafana'),
(35, 'Hotel Centrest', 'Ranomafana'),
(36, 'Soa Lodge', 'Ranomafana'),
(37, 'Setam Lodge', 'Ranomafana'),
(38, 'Crysto Lodge', 'Ranomafana'),
(39, 'Hotel Chez Alain', 'Tuléar'),
(40, 'Hotel Serena', 'Tuléar'),
(41, 'Hotel Amazone', 'Tuléar'),
(42, 'Hotel HYPPOCAMPO', 'Tuléar'),
(43, 'Hotel Le Palutivier', 'Tuléar'),
(44, 'Hotel Moringa', 'Tuléar'),
(45, 'Hotel Bakuba', 'Tuléar'),
(46, 'Hotel Saifee', 'Tuléar'),
(47, 'Hotel Escapade', 'Tuléar'),
(48, 'Hotel Auberge ', 'Tuléar'),
(49, 'Cyperus Hotel ', 'Andasibé'),
(50, 'Mantadia Hotel ', 'Andasibé'),
(51, 'Hotel Feony Ala', 'Andasibé'),
(52, 'Andasibé Lemur Lodge', 'Andasibé'),
(53, 'Analamazaotra Hotel', 'Andasibé'),
(54, 'Mikalo Hotel', 'Andasibé'),
(55, 'Goyavier Hotel', 'Andasibé'),
(56, 'Vakona Forest Hotel', 'Andasibé'),
(57, 'Indri Lodge', 'Andasibé'),
(87, 'Hotel le Lagon', 'Foulpointe'),
(88, 'Hotel la Cigale', 'Foulpointe'),
(89, 'Hotel MandaBeach', 'Foulpointe'),
(90, 'Hotel Samura', 'Foulpointe'),
(91, 'Au gentil Pécheur', 'Foulpointe'),
(92, 'Hotel Silhouette de l\" EST', 'Foulpointe'),
(93, 'Sanctuary Lodge', 'Foulpointe'),
(94, 'Hotel Saint-Pierre', 'Sainte-Marie'),
(95, 'Hotel Taxi-brousses', 'Sainte-Marie'),
(96, 'Hotel Villa-Miriette', 'Sainte-Marie'),
(97, 'Bamboo Lodge', 'Sainte-Marie'),
(98, 'Atmosphere Hotel', 'Sainte-Marie'),
(100, 'Hotel Trecicogne', 'Morondava'),
(101, 'Hotel SELECT', 'Morondava'),
(102, 'Hotel Havana', 'Morondava'),
(103, 'Hotel Le Vazo Beach', 'Morondava'),
(104, 'HotelSun Beach', 'Morondava'),
(105, 'Hotel Laguna Beach', 'Morondava'),
(106, 'Hotel Menabe', 'Morondava'),
(107, 'Hotel La Fortille', 'Morondava'),
(108, 'Hotel Les 3 cocotiers', 'Morondava'),
(109, 'Hotel Kimony Ressolt Hotel', 'Morondava'),
(110, 'La Case Sakalava Hotel', 'Nosy-Be'),
(111, 'Villa Mena', 'Nosy-Be'),
(112, 'Nosy-Be Hotel', 'Nosy-Be'),
(113, 'Tropical Päradise', 'Nosy-Be'),
(114, 'Hotel Ambatoloaka', 'Nosy-Be'),
(115, 'Royal Beach && spa', 'Nosy-Be'),
(116, 'Corail noir Hotel ', 'Nosy-Be'),
(117, 'L fourmi Hotel ', 'Nosy-Be'),
(118, 'Andilana Beach Hotel ', 'Nosy-Be'),
(119, 'Palm Beach Hotel ', 'Nosy-Be');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `liste_hotel`
--
ALTER TABLE `liste_hotel`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `liste_hotel`
--
ALTER TABLE `liste_hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
