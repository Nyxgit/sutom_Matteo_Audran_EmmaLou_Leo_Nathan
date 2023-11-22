-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db
-- Généré le : mer. 22 nov. 2023 à 14:51
-- Version du serveur : 8.1.0
-- Version de PHP : 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sf-starter`
--

-- --------------------------------------------------------

--
-- Structure de la table `daily_word`
--

CREATE TABLE `daily_word` (
  `id` int NOT NULL,
  `mot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `daily_word`
--

INSERT INTO `daily_word` (`id`, `mot`, `date`) VALUES
(12, 'campagne', '2023-11-01'),
(18, 'richesse', '2023-11-02'),
(19, 'plaintif', '2023-11-03'),
(20, 'vouloir', '2023-11-04'),
(21, 'grossir', '2023-11-05'),
(22, 'excellent', '2023-11-06'),
(23, 'ravin', '2023-11-07'),
(24, 'sucre', '2023-11-08'),
(25, 'remarque', '2023-11-09'),
(26, 'embarrasser', '2023-11-10'),
(27, 'cinquante', '2023-11-11'),
(28, 'lanterne', '2023-11-12'),
(29, 'viser', '2023-11-13'),
(30, 'achat', '2023-11-14'),
(31, 'froid', '2023-11-15'),
(32, 'culotte', '2023-11-16'),
(33, 'direct', '2023-11-17'),
(34, 'situer', '2023-11-18'),
(35, 'quelconque', '2023-11-19'),
(36, 'terrasse', '2023-11-20'),
(37, 'facile', '2023-11-21'),
(38, 'dominer', '2023-11-22');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231109082729', '2023-11-09 08:28:01', 1655),
('DoctrineMigrations\\Version20231114134436', '2023-11-14 13:44:48', 843),
('DoctrineMigrations\\Version20231114135334', '2023-11-14 13:53:41', 1453),
('DoctrineMigrations\\Version20231118162240', '2023-11-18 16:22:48', 1163);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(19, 'test', '$2y$13$bIN7c42fsq6DHHBIl4S2leINmDxkp6FuMsvREx4LGWatZoGUtMC76'),
(23, 'azerty', '$2y$13$Upj.CzdkFx4KzNjFR2eV6.tlsa5vc7bC3IZ9S5yZumeUTNdDArMcG'),
(24, 'user', '$2y$13$Izk0wLCfOm.CbeJEfP6ZA.DsLDRtSNN7SJ5CYXY7afDR/2nek98g6');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `daily_word`
--
ALTER TABLE `daily_word`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `daily_word`
--
ALTER TABLE `daily_word`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
