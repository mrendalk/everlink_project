-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 08:53 AM
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
-- Database: `blog_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(3) NOT NULL,
  `cat_id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` text NOT NULL,
  `admin` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `rate` tinyint(2) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `cat_id`, `title`, `content`, `tag`, `admin`, `status`, `rate`, `image`, `date`) VALUES
(53, 24, '🏀 Soaring High: The Spirit of Somalian Basketball! 🇸🇴🏀', 'Beyond the horizons of sandy dunes and coastal beauty, another captivating sport unites the hearts of Somalians – basketball.🏀 Courageous Players: From local neighborhood courts to international arenas, Somalian basketball players display their skills and dedication. Their journey embodies the resilience of a nation that faces challenges head-on.', '🏀 Soaring High: The Spirit of Somalian Basketball! 🇸🇴🏀', 'admin', 1, 0, '629844.jpg', '2023-08-09 10:41:04'),
(54, 23, '⚽Somalian Soccer: Passion on the Pitch! 🥅⚽', 'Somalia, a nation known for its resilient spirit, also boasts a fervent passion for soccer that unites communities and transcends challenges. From bustling cities to remote villages, the love for the beautiful game runs deep.⚽ Emerging Talents: Despite facing various obstacles, young Somalian players showcase remarkable talent and dedication. Local clubs and academies nurture these talents, emphasizing skills, teamwork, and discipline.', '⚽Somalian Soccer: Passion on the Pitch! 🥅⚽', 'admin', 1, 0, '552543.jpg', '2023-08-09 10:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(2) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` tinyint(2) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin_name` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `status`, `create_time`, `admin_name`) VALUES
(23, 'SOCCER', 1, '2023-08-09 10:36:55', 'admin'),
(24, 'BASKETBALL', 1, '2023-08-09 10:37:25', 'admin'),
(25, 'Other ', 1, '2023-08-09 10:43:40', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(5) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(3) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `email`, `subject`, `phone`, `message`, `status`, `date`) VALUES
(3, 'ee', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'm vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 13:48:27'),
(4, 'ee', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'm vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 13:49:15'),
(7, 'Anisur Rahman Shahin', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'al blog for handcrafted, cameramade photography content, fashion styles from ind', 0, '2020-08-13 13:57:26'),
(8, 'Anisur Rahman Shahin', 's@gmail.com', 'How we help?', '+8801754100439', 'te urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 13:59:53'),
(9, 'Anisur Rahman Shahin', 's@gmail.com', 'How we help?', '+8801754100439', 'te urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 14:00:00'),
(11, 'coder shahin', 'arshahin625@gmail.com', 'Pre-Sale Question', '01994439594', 'Etiam vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 0, '2020-08-13 14:03:12'),
(12, 'Asikur Rahman Shawon', 'k@gmail.com', 'Who we are', '01754100439', 'How we help?\r\n\r\nEtiam vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs. ', 0, '2020-08-13 14:36:59'),
(14, 'shahin', 'k@gmail.com', 'Tech Blog is a technology blog', '+8801754100439', 'Fusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.Fusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.Fusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.<h1>hfhfhf</h1>\"rrrrr][\"', 0, '2020-08-14 03:11:18'),
(15, 'AR Shahin', 'mdshahinmije@yahoo.com', 'How we help?', '01994439594', 'ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.   \r\n                        \r\n                              \r\n                        ', 2, '2020-08-14 03:50:58'),
(16, 'AR Shahin', 'mdshahinmije@yahoo.com', 'How we help?', '01994439594', 'ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.ech Blog is a personal blog for handcrafted, cameramade photography content, fashion styles from independent creatives around the world.   \r\n                        \r\n                              \r\n                        ', 2, '2020-08-14 03:52:18'),
(17, 'coder shahin', 'mdshahinmije@yahoo.com', 'dd', '01994439594', 'm ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 2, '2020-08-14 03:58:33'),
(18, 'coder shahin', 'mdshahinmije@yahoo.com', 'dd', '01994439594', 'm ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 0, '2020-08-14 03:59:11'),
(19, 'coder shahin', 'mdshahinmije@yahoo.com', 'dd', '01994439594', 'm ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 0, '2020-08-14 03:59:28'),
(20, 'Anisur Rahman Shahin', 'mdshahinmije96@gmail.com', 'How we help?', '+8801754100439', 'lp?\r\n\r\nEtiam vulputate urna id libero auctor maximus. Nulla dignissim ligula diam, in sollicitudin ligula congue quis turpis dui urna nibhs.', 2, '2020-08-14 05:36:10'),
(21, 'Asik Newaz Sabbir', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'Pre-Sale Question\r\n\r\nFusce dapibus nunc quis quam tempor vestibulum sit amet consequat enim. Pellentesque blandit hendrerit placerat. Integertis non.', 2, '2020-08-15 11:34:34'),
(22, 'Anisur Rahman Shahin', 'arshahin@gmail.com', 'demo', '+8801754100439', 'this is demo mail', 2, '2020-08-15 14:45:38'),
(23, 'Anisur Rahman Shahin', 'arshahin@gmail.com', 'How we help?', '+8801754100439', 'gg', 0, '2020-08-15 14:47:04'),
(24, 'Anisur Rahman Shahin', 'arshahin@gmail.com', 'dd', 'cd', 'dd', 0, '2020-08-15 14:58:30'),
(26, 'utrax elliot', 'sisaysorsa@gmail.com', 'Best Sport teams', '0996781121', 'I really liked your sport teams', 0, '2023-08-09 23:23:36'),
(27, 'utrax elliots', 'gd@gmail.com', 'Sport teams', '0996781121', 'Love Sport', 2, '2023-08-09 23:35:43');

-- --------------------------------------------------------

--
-- Table structure for table `p_users`
--

CREATE TABLE `p_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p_users`
--

INSERT INTO `p_users` (`id`, `full_name`, `address`, `city`, `state`, `zip_code`, `phone_number`, `email`) VALUES
(21, 'Abdifita Surur', 'Addis Ababa', 'Addis Ababa', 'Hargessa', '1000', '0996782071', 'abdifita@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(2) NOT NULL,
  `email_id` int(2) NOT NULL,
  `user` varchar(50) NOT NULL,
  `reply` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `email_id`, `user`, `reply`, `date`) VALUES
(1, 17, 'admin', 'ffff', '2020-08-14 05:22:05'),
(2, 17, 'admin', 'ccc', '2020-08-14 05:25:39'),
(3, 17, 'admin', 'dddaaa', '2020-08-14 05:26:34'),
(4, 16, 'admin', 'ok done', '2020-08-14 05:28:35'),
(5, 15, 'admin', 'g', '2020-08-14 05:32:46'),
(6, 20, 'admin', 'ok done', '2020-08-14 05:36:26'),
(7, 20, 'admin', 'ok done', '2020-08-14 14:13:51'),
(8, 21, 'asik', 'ok ', '2020-08-15 14:26:53'),
(9, 25, 'admin', 'this id demo reply', '2020-08-15 15:05:28'),
(10, 27, 'admin', 'sis', '2023-08-09 23:36:36');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(2) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `postdisplay` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `logo`, `title`, `footer`, `postdisplay`) VALUES
(1, 'logo.png', 'Wiilwaal sport', '2020 © Developed by :  Abdifita Surur', 3);

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(2) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `footerlink` varchar(255) NOT NULL,
  `footertxt` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `facebook`, `twitter`, `instagram`, `linkedin`, `github`, `footerlink`, `footertxt`) VALUES
(1, 'https://www.linkedin.com/in/abdifita-surur', 'https://www.linkedin.com/in/abdifita-surur', 'https://www.linkedin.com/in/abdifita-surur', 'https://www.linkedin.com/in/abdifita-surur', 'https://www.linkedin.com/in/abdifita-surur', 'https://www.linkedin.com/in/abdifita-surur', 'Abdifita Surur');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `role` tinyint(5) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `username`, `email`, `password`, `image`, `bio`, `role`, `date`) VALUES
(6, 'Abdifatah ', 'Surur', 'admin', 'abdifatah0335@gmail.com', '123456', '/admin/img/profile.png', 'Hello.I\'m Abdifatah Surur.I\'m a tech enthusiast guy. Personally I’m Optimistic and always in hurry kinda person.I\'m a freelance web devoloper. I study HiLCoE School of Computer Science and Technology.', 1, '2020-08-14 14:36:53'),
(10, '', '', 'utrax', 'utrax@gmail.com', 'letmein', '', '', 2, '2023-08-09 10:52:36'),
(11, '', '', 'ut', 'ut@gmail.com', 'let', '', '', 2, '2023-08-14 01:36:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p_users`
--
ALTER TABLE `p_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `p_users`
--
ALTER TABLE `p_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
