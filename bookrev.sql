-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 08:21 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookrev`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `ph_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `ph_num`, `msg`, `date`, `email`) VALUES
(1, 'First post', '1234567889', 'First post', '2021-01-19 11:26:54', 'First@gmail.com'),
(2, 'this_name', '1234567890', 'test', NULL, 'this@email.com'),
(3, 'this_name', '1234567890', 'test', NULL, 'this@email.com'),
(4, 'this_name', '1234567890', 'test again', '2021-01-19 11:59:01', 'this@email.com'),
(5, 'Shreya', '1234567890', 'hi m shreya', '2021-01-19 16:10:39', 'shrei@gmail.com'),
(6, 'this_name', '1234567890', 'bla bla', '2021-01-20 16:32:11', 'this@email.com'),
(7, 'this_name', '1234567890', 'bla bla bla again', '2021-01-20 16:35:28', 'this@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `author` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `author`, `date`) VALUES
(1, 'Learning about stocks (its fun)', 'First', 'first-post', 'The stocks, pillory, and pranger each consist of large wooden boards with hinges; however, the stocks are distinguished by restraining one\'s feet.\r\n\r\nThe stocks consist of placing boards around the ankles and wrists, whereas, with the pillory, the boards are fixed to a pole and placed around the arms and neck, forcing the punished to stand.\r\n\r\nSome[who?] consider the stocks an example of torture and cruel and unusual punishment.[citation needed] Victims may be insulted, kicked, tickled, spat on, or subjected to other inhumane acts. In the Bible, the treatment of Paul and Silas, disciples of Jesus, was detailed in the Acts of the Apostles: \"Having received such a charge, he put them into the inner prison and fastened their feet in the stocks.\"[1][original research?] The Old Testament\'s book of Job also describes the stocks, referring to God:\r\n\r\nHe puts my feet in the stocks, he watches all my paths.[2][original research?]\r\nThe stocks were employed by civil and military authorities from medieval to early modern times including Colonial America. Public punishment in the stocks was a common occurrence from around 1500 until at least 1748.[3] The stocks were especially popular among the early American Puritans, who frequently employed the stocks for punishing the \"lower class\".[4]\r\n\r\nIn the American colonies, the stocks were also used, not only for punishment, but as a means of restraining individuals awaiting trial.[5]', 'post-bg.jpg', 'baby3', '2021-01-21 21:37:30'),
(2, ' Programming language and its evolution', 'Coolest post ever', 'second-post', 'A programming language is a formal language comprising a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.\r\n\r\nMost programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s, programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[1] The programs for these machines (such as a player piano\'s scrolls) did not produce different behavior in response to different inputs or conditions.\r\n\r\nThousands of different programming languages have been created, and more are being created every year. Many programming languages are written in an imperative form (i.e., as a sequence of operations to perform) while other languages use the declarative form (i.e. the desired result is specified, not how to achieve it).', 'about-bg.jpg', 'Baby Chivana', '2021-01-20 19:43:55'),
(4, 'Gone Girl', 'A book review', 'gone-girl', 'Gone Girl is a 2014 American psychological thriller film directed by David Fincher and with a screenplay by Gillian Flynn based on her 2012 novel of the same title. The film stars Ben Affleck, Rosamund Pike, Neil Patrick Harris, Tyler Perry, Carrie Coon, and Kim Dickens. Set in Missouri, the story is a postmodern mystery[4][5] that follows the events surrounding Nick Dunne (Affleck), who becomes the prime suspect in the sudden disappearance of his wife Amy (Pike).\r\n\r\nThe film had its world premiere on opening night of the 52nd New York Film Festival on September 26, 2014, before a nationwide theatrical release on October 3. The film was a critical and commercial success, grossing $369 million on a budget of $61 million, becoming Fincher\'s highest-grossing film.\r\n\r\nPike\'s performance was widely acclaimed by critics, and she received nominations for an Academy Award, BAFTA Award, Golden Globe Award, and Screen Actors Guild Award for Best Actress. Additional nominations included a Golden Globe Award for Best Director for Fincher and Golden Globe Award, BAFTA, and Critics\' Choice Award nominations for Flynn\'s adapted screenplay, which won the Critics\' Choice.[6]', '', 'Shreya', '2021-01-21 21:45:06'),
(5, 'NEW post alert', 'new post tagline', 'new-post1', 'Sherlock Holmes is an awesome book written by Sir Arthur Conan Doyle', 'img-png', 'Shreya', '2021-01-22 09:48:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
