-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 09:28 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking-system`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `account_status`
--

CREATE TABLE `account_status` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`) VALUES
(1, 'Abdullahpur', 1),
(2, 'Uttara', 1),
(3, 'Banani', 1),
(4, 'Gulshan', 1),
(5, 'Banasree', 1),
(6, 'Khilgaon', 1),
(7, 'Motijheel', 1),
(8, 'Paltan', 1),
(9, 'Badda', 1),
(10, 'Tejgaon', 1),
(11, 'Mohakhali', 1),
(12, 'Mirpur', 1),
(13, 'Dhanmondi', 1),
(14, 'Mohammadpur', 1),
(15, 'Lalbagh', 1),
(16, 'Shahbagh', 1),
(17, 'New Market', 1),
(18, 'Azimpur', 1),
(19, 'Kotwali', 1),
(20, 'Ramna', 1),
(21, 'Kamrangirchar', 1),
(22, 'Keraniganj', 1),
(23, 'Sutrapur', 1),
(24, 'Demra', 1),
(25, 'Kadamtali', 1),
(26, 'Shyampur', 1),
(27, 'Jatrabari', 1),
(28, 'Bimanbandar', 1),
(29, 'Cantonment', 1),
(30, 'Dhamrai', 1),
(31, 'Dohar', 1),
(32, 'Keraniganj', 1),
(33, 'Nawabganj', 1),
(34, 'Savar', 1),
(35, 'Gazipur Sadar', 1),
(36, 'Kaliakair', 1),
(37, 'Kaliganj', 1),
(38, 'Kapasia', 1),
(39, 'Sreepur', 1),
(40, 'Tongi', 1),
(41, 'Bhairab', 1),
(42, 'Bajitpur', 1),
(43, 'Hossainpur', 1),
(44, 'Itna', 1),
(45, 'Karimganj', 1),
(46, 'Katiadi', 1),
(47, 'Kishoreganj Sadar', 1),
(48, 'Kuliarchar', 1),
(49, 'Mithamain', 1),
(50, 'Nikli', 1),
(51, 'Pakundia', 1),
(52, 'Tarail', 1),
(53, 'Bajitpur', 1),
(54, 'Anwara', 2),
(55, 'Banshkhali', 2),
(56, 'Hathazari', 2),
(57, 'Lohagara', 2),
(58, 'Rangunia', 2),
(59, 'Sandwip', 2),
(60, 'Satkania', 2),
(61, 'Sitakunda', 2),
(62, 'Karnaphuli', 2),
(63, 'Godagari', 3),
(64, 'Charghat', 3),
(65, 'Tanore', 3),
(66, 'Durgapur', 3),
(67, 'Paba', 3),
(68, 'Puthia', 3),
(69, 'Baghmara', 3),
(70, 'Bagha', 3),
(71, 'Mohanpur', 3),
(72, 'Sylhet', 4),
(73, 'Sunamganj', 4),
(74, 'Moulvibazar', 4),
(75, 'Habiganj', 4),
(76, 'Mymensingh Sadar', 5),
(77, 'Muktagachha', 5),
(78, 'Valuka ', 5),
(79, 'Haluaghat ', 5),
(80, 'Gouripur ', 5),
(81, 'Fulbaria  ', 5),
(82, 'Gafargaon ', 5),
(83, 'Trishal ', 5),
(84, 'Fulpur ', 5),
(85, 'Nandail ', 5),
(86, 'Ishwarganj ', 5),
(87, 'Barguna', 6),
(88, 'Barishal', 6),
(89, 'Bhola', 6),
(90, 'Jhalokathi', 6),
(91, 'Patuakhali', 6),
(92, 'Pirojpur', 6),
(93, 'Dinajpur', 7),
(94, 'Gaibandha', 7),
(95, 'Kurigram', 7),
(96, 'Lalmonirhat', 7),
(97, 'Nilphamari', 7),
(98, 'Panchagarh', 7),
(99, 'Rangpur', 7),
(100, 'Thakurgaon', 7),
(101, 'Bagherhat', 8),
(102, 'Chuadanga', 8),
(103, 'Jessore', 8),
(104, 'Jinaidaha', 8),
(105, 'Khulna', 8),
(106, 'Magura', 8),
(107, 'Meherpur', 8),
(108, 'Narail', 8),
(109, 'Satkhira', 8);



-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `phonecode`) VALUES
(1, 'BD', 'Bangladesh', +880);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `ssn_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_status`
--

CREATE TABLE `customer_status` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ssn_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`) VALUES
(1, 'Dhaka', 1),
(2, 'Chittagong', 1),
(3, 'Rajshahi', 1),
(4, 'Sylhet', 1),
(5, 'Mymensingh', 1),
(6, 'Barisal', 1),
(7, 'Rangpur', 1),
(8, 'Khulna', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions_control`
--

CREATE TABLE `transactions_control` (
  `id` int(11) NOT NULL,
  `transaction_id` varchar(255) NOT NULL,
  `account_id` int(11) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_registrations`
--

CREATE TABLE `user_registrations` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `account_status`
--
ALTER TABLE `account_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_status`
--
ALTER TABLE `customer_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `transactions_control`
--
ALTER TABLE `transactions_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_registrations`
--
ALTER TABLE `user_registrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900000007;
--
-- AUTO_INCREMENT for table `account_status`
--
ALTER TABLE `account_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5742;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900000005;
--
-- AUTO_INCREMENT for table `customer_status`
--
ALTER TABLE `customer_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `transactions_control`
--
ALTER TABLE `transactions_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_registrations`
--
ALTER TABLE `user_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=900000005;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
