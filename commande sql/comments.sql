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
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `nom` varchar(52) NOT NULL,
  `coms` varchar(800) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `nom`, `coms`) VALUES
(6, 'loick', '\"Tel un voyageur intrépide, j\'ai parcouru les contrées enchanteresses de Madagascar. Ses terres verdoyantes, berceau d\'une biodiversité unique, ont émerveillé mon âme d\'auteur. Les doux murmures des lémuriens dans les arbres, les vagues caressant les côtes de sable fin, et les danses envoûtantes des Malgaches ont éveillé en moi une symphonie d\'émotions. À travers mes mots, je souhaite capturer l\'essence de cette île fascinante, révéler ses secrets et honorer la grandeur de sa nature exubérante. Madagascar, telle une toile vierge, j\'ai l\'intention de peindre ton histoire avec la plume de mon cœur'),
(7, 'johan', '\"Tel un voyageur intrépide, j\'ai parcouru les contrées enchanteresses de Madagascar. Ses terres verdoyantes, berceau d\'une biodiversité unique, ont émerveillé mon âme d\'auteur. Les doux murmures des lémuriens dans les arbres, les vagues caressant les côtes de sable fin, et les danses envoûtantes des Malgaches ont éveillé en moi une symphonie d\'émotions. À travers mes mots, je souhaite capturer l\'essence de cette île fascinante, révéler ses secrets et honorer la grandeur de sa nature exubérante. Madagascar, telle une toile vierge, j\'ai l\'intention de peindre ton histoire avec la plume de mon cœur'),
(17, 'reagan', '\"Tel un voyageur intrépide, j\'ai parcouru les contrées enchanteresses de Madagascar. Ses terres verdoyantes, berceau d\'une biodiversité unique, ont émerveillé mon âme d\'auteur. Les doux murmures des lémuriens dans les arbres, les vagues caressant les côtes de sable fin, et les danses envoûtantes des Malgaches ont éveillé en moi une symphonie d\'émotions. À travers mes mots, je souhaite capturer l\'essence de cette île fascinante, révéler ses secrets et honorer la grandeur de sa nature exubérante. Madagascar, telle une toile vierge, j\'ai l\'intention de peindre ton histoire avec la plume de mon cœur'),
(18, 'reagan', '\"Tel un voyageur intrépide, j\'ai parcouru les contrées enchanteresses de Madagascar. Ses terres verdoyantes, berceau d\'une biodiversité unique, ont émerveillé mon âme d\'auteur. Les doux murmures des lémuriens dans les arbres, les vagues caressant les côtes de sable fin, et les danses envoûtantes des Malgaches ont éveillé en moi une symphonie d\'émotions. À travers mes mots, je souhaite capturer l\'essence de cette île fascinante, révéler ses secrets et honorer la grandeur de sa nature exubérante. Madagascar, telle une toile vierge, j\'ai l\'intention de peindre ton histoire avec la plume de mon cœur'),
(19, 'reagan', '\"Tel un voyageur intrépide, j\'ai parcouru les contrées enchanteresses de Madagascar. Ses terres verdoyantes, berceau d\'une biodiversité unique, ont émerveillé mon âme d\'auteur. Les doux murmures des lémuriens dans les arbres, les vagues caressant les côtes de sable fin, et les danses envoûtantes des Malgaches ont éveillé en moi une symphonie d\'émotions. À travers mes mots, je souhaite capturer l\'essence de cette île fascinante, révéler ses secrets et honorer la grandeur de sa nature exubérante. Madagascar, telle une toile vierge, j\'ai l\'intention de peindre ton histoire avec la plume de mon cœur'),
(20, 'reagan', '\"Tel un voyageur intrépide, j\'ai parcouru les contrées enchanteresses de Madagascar. Ses terres verdoyantes, berceau d\'une biodiversité unique, ont émerveillé mon âme d\'auteur. Les doux murmures des lémuriens dans les arbres, les vagues caressant les côtes de sable fin, et les danses envoûtantes des Malgaches ont éveillé en moi une symphonie d\'émotions. À travers mes mots, je souhaite capturer l\'essence de cette île fascinante, révéler ses secrets et honorer la grandeur de sa nature exubérante. Madagascar, telle une toile vierge, j\'ai l\'intention de peindre ton histoire avec la plume de mon cœur');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
