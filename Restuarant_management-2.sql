-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 16, 2023 at 03:43 PM
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
-- Database: `Restuarant_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `BILL`
--

CREATE TABLE `BILL` (
  `BID` int(11) NOT NULL,
  `DATE` datetime DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `PAID` int(11) DEFAULT NULL,
  `BAL` int(11) DEFAULT NULL,
  `OID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `BILL`
--

INSERT INTO `BILL` (`BID`, `DATE`, `TOTAL`, `PAID`, `BAL`, `OID`) VALUES
(1, '2023-05-15 13:31:57', 2320, 2520, 200, 1),
(4, '2023-05-15 13:32:35', 300, 300, 0, 2),
(5, '2023-05-15 15:10:28', 6440, 7000, 560, 3),
(6, '2023-05-15 15:12:39', 1200, 1000, -200, 4),
(7, '2023-05-16 09:13:38', 0, 0, 0, 5),
(8, '2023-05-16 09:17:50', 60, 100, 40, 6),
(9, '2023-05-16 09:23:23', 0, 0, 0, 7),
(10, '2023-05-16 09:28:20', 30, 30, 0, 8),
(11, '2023-05-16 09:33:41', 240, 250, 10, 9),
(12, '2023-05-16 09:48:18', 330, 350, 20, 10),
(13, '2023-05-16 09:52:21', 80, 100, 20, 11),
(14, '2023-05-16 09:56:34', 120, 140, 20, 12),
(15, '2023-05-16 10:06:59', 60, 100, 40, 13),
(16, '2023-05-16 10:08:43', 120, 120, 0, 14),
(17, '2023-05-16 10:12:39', 1680, 1700, 20, 15),
(18, '2023-05-16 10:13:51', 600, 700, 100, 16),
(19, '2023-05-16 15:18:06', 0, 0, 0, 17),
(20, '2023-05-16 16:23:27', 100, 100, 0, 18),
(21, '2023-05-16 17:27:06', 0, 0, 0, 19),
(22, '2023-05-16 17:57:58', 960, 1000, 40, 20),
(23, '2023-05-16 18:05:53', 3600, 3600, 0, 21),
(24, '2023-05-16 18:07:12', 0, 0, 0, 22);

-- --------------------------------------------------------

--
-- Table structure for table `CATEGORY`
--

CREATE TABLE `CATEGORY` (
  `CATID` int(11) NOT NULL,
  `NAME` char(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CATEGORY`
--

INSERT INTO `CATEGORY` (`CATID`, `NAME`) VALUES
(1, 'Bakery Items'),
(2, 'Mains'),
(3, 'Desserts'),
(4, 'Beverages');

-- --------------------------------------------------------

--
-- Table structure for table `CUSTOMER`
--

CREATE TABLE `CUSTOMER` (
  `CID` int(11) NOT NULL,
  `NAME` char(30) NOT NULL,
  `TELNO` char(10) DEFAULT NULL,
  `EMAIL` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `CUSTOMER`
--

INSERT INTO `CUSTOMER` (`CID`, `NAME`, `TELNO`, `EMAIL`) VALUES
(1, 'wimukthi', '0716310764', 'asaswd@gmail.com'),
(2, 'rusaik', '0726319364', 'asdfbj8@gmail.com'),
(3, 'bimindu', '0788970765', 'knjghfd@gmail.com'),
(4, 'aadil', '0788970665', 'ejbvdjfhd@gmail.com'),
(5, 'achila', '0772074341', 'achila877@gmail.com'),
(6, 'pravil', '0779304341', NULL),
(7, 'manujaya', '0763193321', 'pravilwijesinghe@gmail.com'),
(8, 'kavindu', '0772075321', 'ach32@dsdfsv.com');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(11) NOT NULL,
  `empname` varchar(30) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `telno` varchar(10) DEFAULT NULL,
  `role` varchar(15) DEFAULT NULL,
  `username` varchar(15) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `address`, `telno`, `role`, `username`, `password`) VALUES
(1, 'achila', '124-peradniya', '0772074341', 'admin', 'achila', 'achila123'),
(2, 'shehan', 'rathnapura', '0773465865', 'kitchen', 'shehan', '12345'),
(3, 'upeak', 'panadura', '0783785865', 'cashier', 'upeak', '12345'),
(4, 'zafry', 'mathale', '0763459861', 'admin', 'zafry', 'zafry123');

-- --------------------------------------------------------

--
-- Table structure for table `ITEM`
--

CREATE TABLE `ITEM` (
  `IID` int(11) NOT NULL,
  `NAME` char(30) NOT NULL,
  `DESCRIPTION` char(150) DEFAULT NULL,
  `PRICE` int(11) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `CATID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ITEM`
--

INSERT INTO `ITEM` (`IID`, `NAME`, `DESCRIPTION`, `PRICE`, `QTY`, `CATID`) VALUES
(1, 'Chicken Fried Rice', 'Chicken fried rice, Vegetable Chopsuey,Devilled Egg, Chili Paste', 900, NULL, 2),
(2, 'Egg Fried Rice', 'Egg and vegetable fried rice, Vegetable Chopsuey, Hot butter Mushroom, Devilled Egg, Chili Paste', 750, NULL, 2),
(3, 'Vegetable Fried Rice', 'Vegetable fried rice, Vegetable Chopsuey, Hot butter Mushroom, Chili Paste', 550, NULL, 2),
(4, 'Biriyani', 'Sereved with Biriyani Rice, Masala Chicken Leg, Boiled Fried Egg, Fried Onion Sambol, Cucumber Raita', 1100, NULL, 2),
(5, 'Fish Rice & Curry', 'Serves white rice with piece of fish and 4 vegetable curries', 400, NULL, 2),
(6, 'Chicken Kottu', 'Finely cut roti wok fried with vegetables and masala curry sauce served with a chicken leg', 1000, NULL, 2),
(7, 'Cheesy Seafood Kottu', 'Fried prawns, fish, cuttlefish tossed in a creamy cheese base and mixed in with vegetables', 1300, NULL, 2),
(8, 'Mixed Mongolian Rice', 'A mix of prawns, chicken and cuttlefish mixed with vegetables and basmati and signature sauces', 1400, NULL, 2),
(9, 'Egg Roll', 'Crispy roll filled with a vegetable and tuna filling and half of a boiled egg', 140, 2, 1),
(10, 'Fish Roll', 'Crispy roll filled with a vegetable and tuna filling', 120, 24, 1),
(11, 'Sausage Bun', 'Light, fluffy yeast dough that surrounds a sausage', 90, 13, 1),
(12, 'Fish Bun', 'A soft fluffy bun filled with a spicy potato and mackerel filling', 50, 15, 1),
(13, 'Fish Cutlet', 'Crumb-coated, deep-fried fish balls', 30, 13, 1),
(14, 'Cheese Sandwitch', 'Sandwich made with cheese on bread', 60, 7, 1),
(15, 'Chicken Patty', ' Flaky buttery patty and are filled with a savory chicken-potato filling', 40, 16, 1),
(16, 'Vegetable Pastry', 'Flaky buttery pastry and are filled with a savory potato filling', 100, 7, 1),
(17, 'Strawberry Cake', 'Strawberry Flavourd Cake', 1300, 2, 3),
(18, 'Chocolate Cake', 'Chocolate cream with a moist chocolate Cake base', 1200, 3, 3),
(19, 'Chocolate Gateau', 'Fresh Cream Gateau with a Dark Chocolate Ganache Layered in a rich chocolate sponge', 1700, 3, 3),
(20, 'Coffee Cake', 'Coffee cream coated on a moist coffee flavored cake base', 1500, 1, 3),
(21, 'Ribbon Nougat', 'The delicious cake is covered with a vanilla butter icing and served with nougat', 1800, 1, 3),
(22, 'Chocolate Doughnut', 'Doughnut coated with dark chocolate', 180, 8, 3),
(23, 'Blueberry Cheesecake', 'Velvety baked premium cheesecake, topped with blueberry compote', 2400, 2, 3),
(24, 'Passion Fruit Cheesecake', 'Velvety baked premium cheesecake, topped with Passion fruit compote', 2200, 1, 3),
(25, 'Sprite 400ml', NULL, 150, 12, 4),
(26, 'Soda 500ml', NULL, 100, 7, 4),
(27, 'Lion Ginger Beer 400ml', NULL, 150, 5, 4),
(28, 'Coca Cola Zero Pet 400ml', NULL, 150, 15, 4),
(29, 'Pepsi 500ml Pet', NULL, 150, 11, 4),
(30, 'Cream Soda 500ml', NULL, 150, 13, 4),
(31, 'Fanta Orange 400ml', NULL, 150, 11, 4),
(32, 'Mountain Dew 500ml', NULL, 150, 8, 4),
(33, 'Necto 500ml', NULL, 150, 9, 4),
(34, 'Lemonade 500ml', NULL, 150, 4, 4),
(35, '7 Up 500ml', NULL, 150, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ITEM_ORDER`
--

CREATE TABLE `ITEM_ORDER` (
  `OID` int(11) NOT NULL,
  `IID` int(11) NOT NULL,
  `QTY` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ITEM_ORDER`
--

INSERT INTO `ITEM_ORDER` (`OID`, `IID`, `QTY`) VALUES
(1, 3, 4),
(1, 13, 2),
(2, 29, 2),
(3, 3, 3),
(3, 20, 2),
(4, 16, 12),
(5, 4, 2),
(5, 12, 2),
(6, 14, 1),
(7, 6, 1),
(7, 18, 2),
(8, 13, 1),
(9, 10, 2),
(10, 11, 1),
(10, 15, 3),
(11, 15, 2),
(12, 14, 2),
(13, 13, 2),
(14, 14, 2),
(15, 9, 12),
(16, 12, 12),
(17, 3, 2),
(17, 12, 2),
(18, 12, 2),
(19, 6, 1),
(20, 5, 2),
(20, 15, 2),
(21, 8, 1),
(22, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ORDER`
--

CREATE TABLE `ORDER` (
  `OID` int(11) NOT NULL,
  `STATUS` char(10) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL,
  `empid` int(11) DEFAULT NULL,
  `CID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ORDER`
--

INSERT INTO `ORDER` (`OID`, `STATUS`, `DATE`, `empid`, `CID`) VALUES
(1, 'Done', '2023-05-15 13:31:57', 3, 5),
(2, 'Done', '2023-05-15 13:32:35', 3, NULL),
(3, 'Ordered', '2023-05-15 15:10:28', 3, NULL),
(4, 'Done', '2023-05-15 15:12:39', 3, NULL),
(5, 'Canceled', '2023-05-16 09:13:38', 3, NULL),
(6, 'Done', '2023-05-16 09:17:50', 3, NULL),
(7, 'Canceled', '2023-05-16 09:23:23', 3, NULL),
(8, 'Done', '2023-05-16 09:28:20', 3, NULL),
(9, 'Done', '2023-05-16 09:33:41', 3, NULL),
(10, 'Done', '2023-05-16 09:48:18', 3, NULL),
(11, 'Done', '2023-05-16 09:52:21', 3, NULL),
(12, 'Done', '2023-05-16 09:56:34', 3, NULL),
(13, 'Done', '2023-05-16 10:06:59', 3, NULL),
(14, 'Done', '2023-05-16 10:08:43', 3, NULL),
(15, 'Done', '2023-05-16 10:12:39', 3, NULL),
(16, 'Done', '2023-05-16 10:13:51', 3, NULL),
(17, 'Canceled', '2023-05-16 15:18:06', 3, NULL),
(18, 'Done', '2023-05-16 16:23:27', 3, NULL),
(19, 'Canceled', '2023-05-16 17:27:06', 3, NULL),
(20, 'Done', '2023-05-16 17:57:58', 3, NULL),
(21, 'Preparing', '2023-05-16 18:05:53', 3, 5),
(22, 'Canceled', '2023-05-16 18:07:12', 3, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `BILL`
--
ALTER TABLE `BILL`
  ADD PRIMARY KEY (`BID`),
  ADD KEY `OID` (`OID`);

--
-- Indexes for table `CATEGORY`
--
ALTER TABLE `CATEGORY`
  ADD PRIMARY KEY (`CATID`);

--
-- Indexes for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `ITEM`
--
ALTER TABLE `ITEM`
  ADD PRIMARY KEY (`IID`),
  ADD KEY `CATID` (`CATID`);

--
-- Indexes for table `ITEM_ORDER`
--
ALTER TABLE `ITEM_ORDER`
  ADD PRIMARY KEY (`OID`,`IID`),
  ADD KEY `IID` (`IID`);

--
-- Indexes for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD PRIMARY KEY (`OID`),
  ADD KEY `empid` (`empid`),
  ADD KEY `CID` (`CID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `BILL`
--
ALTER TABLE `BILL`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `CATEGORY`
--
ALTER TABLE `CATEGORY`
  MODIFY `CATID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `CUSTOMER`
--
ALTER TABLE `CUSTOMER`
  MODIFY `CID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ITEM`
--
ALTER TABLE `ITEM`
  MODIFY `IID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `ORDER`
--
ALTER TABLE `ORDER`
  MODIFY `OID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `BILL`
--
ALTER TABLE `BILL`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`OID`) REFERENCES `ORDER` (`OID`);

--
-- Constraints for table `ITEM`
--
ALTER TABLE `ITEM`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`CATID`) REFERENCES `CATEGORY` (`CATID`);

--
-- Constraints for table `ITEM_ORDER`
--
ALTER TABLE `ITEM_ORDER`
  ADD CONSTRAINT `item_order_ibfk_1` FOREIGN KEY (`OID`) REFERENCES `ORDER` (`OID`),
  ADD CONSTRAINT `item_order_ibfk_2` FOREIGN KEY (`IID`) REFERENCES `ITEM` (`IID`);

--
-- Constraints for table `ORDER`
--
ALTER TABLE `ORDER`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`empid`) REFERENCES `EMPLOYEE` (`empid`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`CID`) REFERENCES `CUSTOMER` (`CID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
