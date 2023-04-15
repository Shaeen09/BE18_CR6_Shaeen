-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 05:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be18_cr6_eventsshaeen`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230414230656', '2023-04-15 01:07:22', 41);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `capacity` decimal(5,2) NOT NULL,
  `contact_email` varchar(25) NOT NULL,
  `contact_phone_number` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `address` varchar(255) NOT NULL,
  `events_url` varchar(255) NOT NULL,
  `events_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `image`, `capacity`, `contact_email`, `contact_phone_number`, `date_time`, `address`, `events_url`, `events_type`) VALUES
(1, 'Women Run', 'On the 5 km or 10 km course, women and girls.', 'https://events.wien.info/media/full/frauenlauf_1.jpg', 999.99, 'womenrun@mail.com', 123456789, '2023-04-19 07:00:00', ' Prater Hauptallee, height Pierre-de-Coubertin-Platz', 'https://events.wien.info/en/10ho/austrian-womens-run-2023/', 'sports'),
(2, 'Vienna Boys Choir', 'They thrill the concert-going public around.', 'https://events.wien.info/media/full/41178.jpg', 400.00, 'boyschoi@mail.com', 2314567, '2023-05-02 01:14:22', 'Am Augartenspitz 1\r\n1020 Vienna', 'https://www.wien.info/en/music-stage-shows/opera-operetta/boys-choir-341678', 'Music'),
(3, 'Zoom Childrens Museum', 'Vienna boasts about 100 museums and collections – ', 'https://www.wien.info/resource/image/318270/1x1/350/350/f2a245c8cb922c1f9820dfcd376c94eb/D18D5E04EF5859AB11E26FFCEA71D73F/zoom-kindermuseum.webp', 150.00, 'info@kindermuseum.at', 15246789, '2023-04-15 11:00:00', 'MuseumsQuartier, Museumsplatz 1\r\n1070 Vienna', 'https://www.wien.info/en/see-do/families/museums/the-best-museums-for-children-413202#map', 'Entertainment'),
(4, 'Glitz and Glamour. 200 Years of Lobmeyr', 'On the occasion of its 200th anniversary, the MAK,', 'https://events.wien.info/media/full/Lobmeyer_Luster.jpeg', 300.00, 'wieninfo@mail.com', 1234567, '2023-05-10 09:00:00', 'MAK-Ausstellungshalle\r\nStubenring 5\r\n1010 Wien', 'https://events.wien.info/en/1626/glitz-and-glamour-200-years-of-lobmeyr/', 'Art'),
(5, 'The most famous cake in the world', 'The Viennese coffee house tradition is inextricabl', 'https://cdn.pixabay.com/photo/2018/09/18/12/17/sacher-3686034__340.jpg', 250.00, 'viennacake@mail.com', 123456, '2023-04-15 12:37:10', 'Karntner Ring 16\r\n1015 Vienna', 'https://www.wien.info/de/essen-trinken/wiener-kueche/hotel-torten-348244', 'Entertainment'),
(6, 'house of music', 'Discover the world of music in Vienna\'s interactiv', 'https://cdn.pixabay.com/photo/2015/11/28/17/26/unesco-1067619__340.jpg', 300.00, 'music@mail.com', 1342156, '2023-04-27 09:00:00', 'Seilerstätte 30\r\n1010 Vienna', 'https://www.wien.info/de/musik-buehne/musikstadt-wien/haus-der-musik-347584', 'music'),
(7, 'Discover Hofburg', 'A place full of enormous museums, monuments and ga', 'https://www.wien.info/resource/image/290992/Landscape%20%7C%20Banner/1100/367/dc190ed24c40f06a7764d34bd8317a8e/8B41A75C1C98AF071C5E986FA9A0AB17/41025-heldenplatz-hofburg.webp', 400.00, 'hofburg@mail.com', 1233215, '2023-04-15 13:07:31', 'Albertinaplatz/Maysedergasse\r\n1010 Vienna', 'https://www.wien.info/de/empfehlungen/hofburg-entdecken', 'Entertaiment'),
(9, 'Tours  & events in the Prater', 'Take a look behind the scenes of sensational attra', 'https://www.wien.info/resource/image/291686/Hero-Header/2457/910/d18fab28e4fd2572ee7333fc3fc8d4c8/F505A104D35FBC1FD6C916FE950C6415/50613-prater-vergnuegungspark.webp', 800.00, 'prater@mail.com', 123456, '2023-04-15 15:18:25', 'Prater Park\r\n1020,Wien', 'https://www.wien.info/de/sightseeing/prater/adventure-338392', 'Sight-seeing'),
(10, 'Free tours through Vienna', 'Those who only want to decide how much the tour wa', 'https://www.wien.info/resource/image/290654/Hero-Header/2457/910/72dfed443bcf6c418c76ae6c5af89c4/BDED39E595DE616F2BDCDF352BD0D5D6/40513-stephansdom-wien-von-oben-panorama.webp', 750.00, 'freetour@mail.com', 1234567, '2023-04-15 00:00:00', 'Albertinaplatz/Maysedergasse\r\n1010 Wien', 'https://www.wien.info/de/sehen-erleben/wien-entdecken/touren-guides/gratis-touren-347240', 'Entertainment'),
(11, '300 years Belvedere', 'A large special exhibition shows the moving histor', 'https://www.wien.info/resource/image/291792/3x2/550/366/5ee94c7beb3682a23c5fcad171f5b3e5/0EBE623A5B22CF33F1D64B3FDCAE5011/50696-oberes-belvedere-belvedere-schlosspark.webp', 340.00, 'belverde@mail.com', 1234235, '2023-04-21 10:15:00', 'Rennweg 6 1030 Vienna', 'https://www.wien.info/de/sightseeing/museen-ausstellungen/300-jahre-belvedere-438124', 'Sightseeing');

-- --------------------------------------------------------

--
-- Table structure for table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
