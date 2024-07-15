-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 20 juin 2024 à 16:59
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
-- Base de données : `chartrmedic`
--

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE `medicament` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `quantité` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `medicament`
--

INSERT INTO `medicament` (`id`, `nom`, `quantité`, `description`) VALUES
(1, 'Doliprane', 50, 'Analgésique et antipyrétique utilisé pour soulager la douleur légère à modérée et réduire la fièvre.'),
(2, 'Efferalgan', 100, 'Marque commerciale du paracétamol, avec les mêmes indications que le Doliprane.'),
(3, 'Aspirine', 200, 'Analgésique, antipyrétique et anti-inflammatoire utilisé pour soulager la douleur, abaisser la fièvre et traiter l\'inflammation.'),
(4, 'Ibuprofene', 150, 'Anti-inflammatoire non stéroïdien (AINS) utilisé pour soulager la douleur, l\'inflammation et la fièvre, souvent utilisé pour les maux de tête, les douleurs musculaires et articulaires.'),
(5, 'Paracetamol', 250, 'Analgésique et antipyrétique utilisé pour soulager la douleur et réduire la fièvre.'),
(6, 'Amoxicilline', 50, 'Antibiotique de la famille des pénicillines, utilisé pour traiter les infections bactériennes comme les infections des voies respiratoires, des oreilles, et des voies urinaires.'),
(7, 'Ciprofloxacine', 100, 'Antibiotique de la famille des fluoroquinolones, utilisé pour traiter diverses infections bactériennes, y compris les infections urinaires, respiratoires, et cutanées.'),
(8, 'Azithromycine', 200, 'Antibiotique de la famille des macrolides, utilisé pour traiter les infections bactériennes des voies respiratoires, de la peau, et d\'autres systèmes.'),
(9, 'Clarithromycine', 150, 'Antibiotique de la famille des macrolides, utilisé pour traiter les infections telles que la pneumonie, les infections des sinus, et les infections à Helicobacter pylori.'),
(10, 'Doxycycline', 250, 'Antibiotique de la famille des tétracyclines, utilisé pour traiter une variété d\'infections bactériennes, y compris l\'acné, les infections respiratoires et les infections transmises par les tiques comme la maladie de Lyme.'),
(11, 'Erythromycine', 50, 'Antibiotique de la famille des macrolides, utilisé pour traiter les infections bactériennes des voies respiratoires, de la peau et d\'autres organes.'),
(12, 'Levofloxacine', 100, 'Antibiotique de la famille des fluoroquinolones, utilisé pour traiter les infections des voies respiratoires, des sinus, et les infections de la peau.'),
(13, 'Metronidazole', 200, 'Antibiotique et antiparasitaire utilisé pour traiter les infections causées par des bactéries anaérobies et certains parasites protozoaires, comme la vaginose bactérienne et la giardiase.'),
(14, 'Spiramycine', 150, 'Antibiotique de la famille des macrolides, utilisé principalement pour traiter la toxoplasmose et parfois d\'autres infections bactériennes.'),
(15, 'Trimethoprime', 250, 'Antibiotique utilisé en combinaison avec le sulfaméthoxazole pour traiter diverses infections bactériennes, y compris les infections urinaires, respiratoires et intestinales.');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `medicament`
--
ALTER TABLE `medicament`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
