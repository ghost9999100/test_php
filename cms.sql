-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2016 at 12:31 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'javascript'),
(18, 'php'),
(19, 'java'),
(24, 'C++'),
(28, 'PYTHON');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(3) NOT NULL,
  `comment_post_id` int(3) NOT NULL,
  `comment_author` varchar(256) NOT NULL,
  `comment_email` varchar(256) NOT NULL,
  `comment_content` varchar(256) NOT NULL,
  `comment_status` varchar(256) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(15, 16, 'mohamed', 'mo@gmail.com', 'I am ', 'unapproved', '2016-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(16, 2, 'som3a ', 'ssd ', '2016-10-01', '2016-07-25_23.12.22.jpg', '<p>aus ein</p>', 'chec1 ', 1, 'published', 0),
(17, 24, 'trial', 'ahmed', '2016-10-02', 'm.jpg', '<p>I am well</p>', 'alls', 0, 'published', 2),
(18, 2, 'som3a ', 'ssd ', '2016-10-05', '2016-07-25_23.12.22.jpg', '<p>aus ein</p>', 'chec1 ', 0, 'published', 0),
(19, 24, 'trial', 'ahmed', '2016-10-05', 'm.jpg', '<p>I am well</p>', 'alls', 0, 'published', 0),
(22, 24, 'trial', 'ahmed', '2016-10-06', 'm.jpg', '<p>I am well</p>', 'alls', 0, 'published', 0),
(23, 2, 'som3a ', 'ssd ', '2016-10-06', '2016-07-25_23.12.22.jpg', '<p>aus ein</p>', 'chec1 ', 0, 'published', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'Mohamed123456', '123', 'hamada', 'reyad', 'moh_ahmed84@hotmail.com', '', 'subscriber', ''),
(3, 'imo', '123', 'mohamed', 'saomwa', 'imo@hotmail.com', '', 'subscriber', ''),
(5, 'moha', '123', 'sameh', 'Mohamed', 'moha@gmail.com', '', 'admin', ''),
(6, 'yyx', '123', 'yy', 'yy', 'yx@gmail.com', '', 'subscriber', ''),
(7, 'mohamed', '123', 'essooo', 'mohamed', 'esso@gmail.com', '', 'admin', ''),
(8, 'ddd', '123', 'ssdd', 'dss', 'ms@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(9, 'shimo', '123', '', '', 'shimoo@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(10, 'sherif', '$1$mz2.1N5.$AFrvnFr5PD28pGuxLQUxJ0', '', '', 'shio@gmail.com', '', 'subscriber', '$2y$10$iusesomecrazystring22'),
(11, 'demo', '$1$xH1.mL3.$OGL1Gqi45kNhbKRLx1HLW0', '', '', 'demo@gmail.com', '', 'admin', '$2y$10$iusesomecrazystring22'),
(12, 'semsem', '123', 'semsem', 'hamadas', 'semsem@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(13, 'Mohamed', '$1$JA/.eM1.$A47Jum49LTofzEETptqIp0', '', '', 'ahmed@hotmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22'),
(14, 'ismail', '$1$CU..j64.$cN8.tY/Oyc01gTbbpShV./', '', '', 'ism@gmail.com', '', 'admin', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
