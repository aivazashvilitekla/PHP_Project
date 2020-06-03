-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 05:03 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `price` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `price`, `published`, `created_at`) VALUES
(13, 13, 7, 'DELL XPS 13 (9380)', '1591194936_1590928026_img1.jpg', '&lt;p&gt;DELL XPS 13 (9380) Ultrabook &ndash; Intel Core i7-8565U 1.8~4.6GHz (4-Cores, 8-Threads, 8MB Cache), 8GB DDR3 1866MHz Memory, 256GB SSD NVMe (M.2 PCIe), 13.3&Prime; FHD IPS Anti-Glare Display with 1920 x 1080 Resolution, Intel UHD 620 Graphics; Wireless 802.11ac, Bluetooth 4.2; HD Webcam, Audio Combo Jack, Card Reader, Backlit Keyboard (US), 3 x USB-C 3.1 (Thunderbold 3, DisplayPort 1.2), 4-cell (52WHr) Li-Ion Battery, 45W 100-240V (50-60Hz) Power Adapter with American Power Cord, Weight: 1.27 kg, Windows 10 Home (English), 1 Year Warranty [p/n 594533258]&lt;/p&gt;', 1500, 1, '2020-05-28 10:49:35'),
(14, 13, 6, 'G4900/500GB/H310M/4GB', '1590928642_1590927661_1590926952_img2.jpg', '&lt;p&gt;Intel G4900 Tray 3.10 GHz | ASUS H310M-R R2.0 DDR4 1151 | Kingston KVR26N19S6/4 4GB DDR4 | Toshiba DT01ACA100 1TB 7200rpm | 420W | ITD CX-91T4 Mini-Tower&lt;/p&gt;', 2000, 1, '2020-05-28 10:51:22'),
(15, 13, 3, 'i3-9100/H310M/4GB/120GB', '1590927736_1590926986_img5.jpg', '&lt;p&gt;Intel i3-9100 Tray 3.60 GHz | ASUS H310M-R R2.0 DDR4 1151 | Team GX1 120GB SATA III | Team Elite 4GB DDR4 2400Mhz | Spire OEMJ1523B-500Z-E12 |&lt;/p&gt;', 900, 1, '2020-05-28 10:51:51'),
(16, 13, 7, 'Acer V196HQL 18.5″ TN Black', '1590927840_1590927059_img4.jpg', '&lt;p&gt;Acer | V196HQL | 18.5&Prime; | TN | 1366 x 768 at 60 Hz | 200 cd/m2 | 1 000 : 1 | 5 ms | 90:H/65:V | VGA | 2.72 kg (with stand) |&lt;/p&gt;', 800, 1, '2020-05-28 10:52:40'),
(17, 13, 7, 'Acer Aspire A315-56-50Z5', '1590928103_img6.jpg', '&lt;p&gt;Acer Aspire A315-56-50Z5 Black &ndash; i5-1035G1 1.0~3.6GHz, 8GB DDR4, 256GB SSD, No DVD, 15.6&Prime; FHD, Intel UHD, 36Wh, DOS, 1Y&lt;/p&gt;', 1200, 1, '2020-05-28 10:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(3, 'Gaming', '<p>testccc</p>'),
(4, 'Office', '<p>test</p>'),
(5, 'Workstation', '<p>test</p>'),
(6, 'Desktop computer', '<p>test</p>'),
(7, 'Laptop', '<p>test</p>'),
(8, 'Tablet', '<p>test</p>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created-at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created-at`) VALUES
(13, 1, 'Tekla', 'aivazashvili12@gmail.com', '$2y$10$18y7wYCUdmQIeLDxzQa2ROXoev7356jMJK6pe4XejeCH9kkgkdIZy', '2020-05-28 06:38:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
