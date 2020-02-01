-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 31, 2019 at 04:02 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bird`
--

-- --------------------------------------------------------

--
-- Table structure for table `species`
--

CREATE TABLE `species` (
  `s.no` mediumint(20) NOT NULL,
  `species_name` varchar(50) NOT NULL,
  `species_desc` varchar(1500) NOT NULL,
  `no_of_birds` tinyint(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `species`
--

INSERT INTO `species` (`s.no`, `species_name`, `species_desc`, `no_of_birds`) VALUES
(1, 'asian paradise flycatcher', 'The Indian paradise flycatcher (Terpsiphone paradisi) is a medium-sized passerine bird native to Asia that is widely distributed. As the global population is considered stable, it has been listed as Least Concern on the IUCN Red List since 2004. It is native to the Indian subcontinent, Central Asia and Myanmar.Males have elongated central tail feathers, and a black and rufous plumage in some populations, while others have white plumage. Females are short-tailed with rufous wings and a black head. Indian paradise flycatchers feed on insects, which they capture in the air often below a densely canopied tree. ', 3),
(2, 'corvus', 'The name is derived from the Latin corvus meaning \"raven\". The type species is the common raven (Corvus corax); others named in the same work include the carrion crow (C. corone), the hooded crow (C. cornix), the rook (C. frugilegus), and the jackdaw (C. monedula)\r\nGenus: Corvus Linnaeus, 1758\r\nFamily: Corvidae\r\nOrder: Passeriformes', 120),
(3, 'fire tailed myzornis', 'The fire-tailed myzornis (Myzornis pyrrhoura) is a bird species formerly placed in the Old World babbler family (Timaliidae). Its genus Myzornis is monotypic, and has recently been placed in the (much reduced) Old World warbler family Sylviidae.', 8),
(4, 'himalayan monal', 'Himalayan monal. The Himalayan monal (Lophophorus impejanus), also known as the Impeyan monal and Impeyan pheasant, is a bird in the pheasant family, Phasianidae. It is the national bird of Nepal, where it is known as the danphe, and state bird of Uttarakhand, India, where it is known as the monal.\r\nSpecies: L. impejanus\r\nGenus: Lophophorus\r\nFamily: Phasianidae', 120),
(5, 'Indian Pitta', 'The Indian pitta is a small stubby-tailed bird that is mostly seen on the floor of forests or under dense undergrowth, foraging on insects in leaf litter. It has long, strong legs, a very short tail and stout bill, with a buff coloured crown stripe, black coronal stripes, a thick black eye stripe and white throat and neck\r\nKingdom: 	Animalia\r\nPhylum: 	Chordata\r\nClass: 	Aves\r\nOrder: 	Passeriformes\r\nFamily: 	Pittidae\r\nGenus: 	Pitta', 110),
(6, 'mrs gold s sunbird', 'The Mrs. Gould\'s sunbird (Aethopyga gouldiae) is a species of bird in the Nectariniidae family. \r\nKingdom: 	Animalia\r\nPhylum: 	Chordata\r\nClass: 	Aves\r\nOrder: 	Passeriformes\r\nFamily: 	Nectariniidae\r\nGenus: 	Aethopyga', 115),
(7, 'oriental dwarf kingfisher', 'The Oriental dwarf kingfisher (Ceyx erithaca), also known as the black-backed kingfisher or three-toed kingfisher, is a species of bird in the family Alcedinidae\r\nKingdom: 	Animalia\r\nPhylum: 	Chordata\r\nClass: 	Aves\r\nOrder: 	Coraciiformes\r\nFamily: 	Alcedinidae\r\nSubfamily: 	Alcedininae\r\nGenus: 	Ceyx', 100),
(8, 'passerine', 'A passerine is a perching bird in the formal scientific order Passeriformes. These are the most familiar, typical birds and the term can be applied to more than half the world\'s unique bird species, including all the classic songbirds, sparrows, and finches.\r\nKingdom: 	Animalia\r\nPhylum: 	Chordata\r\nClass: 	Aves\r\nClade: 	Psittacopasserae', 127),
(9, 'pigeon and dove', 'Pigeon and Dove (kabutar and ghughu) plump and rounded-bodied birds of the family Columbidae, order Columbiformes\r\n', 120),
(10, 'tragopan', 'Tragopan is a bird genus in the Phasianidae family, which is commonly called \"horned pheasant\" because males have two brightly colored, fleshy horns on their head that can be erected during courtship displays.The habit of tragopans nesting in trees is unique among phasianids.The scientific name refers to the horn, being a composite of tragos (billy goat) and the ribald half-goat deity Pan (and in the case of the satyr tragopan, adding Pan\'s companions for even more emphasis).The scientific name refers to the horn, being a composite of tragos (billy goat) and the ribald half-goat deity Pan (and in the case of the satyr tragopan, adding Pan\'s companions for even more emphasis).', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `species`
--
ALTER TABLE `species`
  ADD PRIMARY KEY (`s.no`),
  ADD UNIQUE KEY `species_name` (`species_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `species`
--
ALTER TABLE `species`
  MODIFY `s.no` mediumint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
