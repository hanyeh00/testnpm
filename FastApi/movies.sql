-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2023 at 04:10 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastapitest`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `Id` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Year` text NOT NULL,
  `StoryLine` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`Id`, `Title`, `Year`, `StoryLine`) VALUES
(1, 'The Last of Us', '2023', 'این سریال داستان جوئل و الی را روایت می کند، جوئل ماموریت دارد تا الی را سرتاسر آمریکا اسکورت کند و آن را به غرب آمریکا ببرد، آن ها در این سفر با چالش های زیادی به رو به می شوند'),
(2, 'Servant', '2020', 'سریال داستان شان و دوروتی ترنر را به نمایش می گذارد که بعد از فوت بچه تازه به دنیا آمده شان یک عروسک کاملا شبیه انسان را جایگزین بچه خود میکنند و…'),
(3, '\r\nWednesday', '2022', 'Follows Wednesday Addams\' years as a student, when she attempts to master her emerging psychic ability, thwart and solve the mystery that embroiled her parents.'),
(4, 'Ant-Man and the Wasp: Quantumania', '2023', 'Phase 5 of the Marvel Cinematic Universe kicks off in February, and fans are ready for another Marvel \"event\" film. Quantomania looks to be just that, with a stacked cast led by Paul Rudd, Evangeline Lilly, Kathryn Newton, and Jonathan Majors as the new major MCU villain, Kang the Conqueror. Along with the rest of the Ant-Man regulars, Bill Murray and William Jackson Harper have joined the cast in undisclosed roles, and Marvel villain M.O.D.O.K. is expected to appear on screen.'),
(5, '\r\n John Wick: Chapter 4 ', '2023', 'Keanu Reeves is back for Round 4 as embattled assassin John Wick in what could be the most action-packed installment of the franchise to date. The latest film adds some exciting names to the franchise — including Hiroyuki Sanada, Bill Skarsgård, Clancy Brown, and martial arts master/bad-ass Donnie Yen — as Wick seeks out the underworld\'s most powerful players in his battle against the High Table.'),
(6, '\r\n Indiana Jones and the Dial of Destiny ', '2023', 'When the Indiana Jones and the Dial of Destiny trailer dropped in early December, fans rejoiced as Indy (Harrison Ford, de-aged by CGI, but not in a creepy way) reunited with Sallah (John Rhys-Davies) for a Cold War scenario that somehow involves Nazis, Soviets, a villainous Mads Mikkelsen, and Phoebe Waller-Bridge as Helena, Indy\'s goddaughter and a 1930s-inspired femme fatale. We\'re not yet sure what the Dial of Destiny actually does, but fans of the franchise have faith that director James Mangold is going to do for Indy what he did for Wolverine with Logan.'),
(7, '\r\nBurning Questions', '2021', 'Magazine Dreams stars Jonathan Majors, Taylour Paige, and Haley Bennett reveal their secret obsessions');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
