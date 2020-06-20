-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2020 at 05:17 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myfriends`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `fid` int(6) UNSIGNED NOT NULL,
  `fname` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `preview_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_create` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `fl_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`fid`, `fname`, `preview_text`, `date_create`, `fl_id`) VALUES
(5, 'Nguyễn Văn Tèo', 'Bạn thân vẫn chia sẽ , trò chuyện trước...', '2020-06-20 03:08:31.112781', 1),
(6, 'Trần Diệu Thảo', 'Tôi và thằng bạn thân vẫn chia sẽ , trò chuyện ...', '2020-06-20 03:08:31.112781', 1),
(7, 'Trần Việt Anh', 'Tôi và bạn thân vẫn chia sẽ , trò chuyện trước...', '2020-06-20 03:08:31.112781', 2),
(8, 'Nguyễn Xuân Thành', 'Bạn thân vẫn chia sẽ và vui vẻ trò chuyện trước...', '2020-06-20 03:08:31.112781', 4),
(9, 'Trần Mỹ Hạ', 'Bạn thân vẫn chia sẽ , trò chuyện trước...', '2020-06-20 03:08:31.112781', 3);

-- --------------------------------------------------------

--
-- Table structure for table `friend_list`
--

CREATE TABLE `friend_list` (
  `fl_id` int(6) UNSIGNED NOT NULL,
  `flname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `friend_list`
--

INSERT INTO `friend_list` (`fl_id`, `flname`) VALUES
(1, 'Bạn quen thời phổ thông'),
(2, 'Bạn quen thời đại học'),
(3, 'Bạn tâm giao'),
(4, 'Bạn Tri Kỷ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `friend_list`
--
ALTER TABLE `friend_list`
  ADD PRIMARY KEY (`fl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `fid` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `friend_list`
--
ALTER TABLE `friend_list`
  MODIFY `fl_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
