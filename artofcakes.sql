-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2022 at 08:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `artofcakes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_admin_registrations`
--

CREATE TABLE `cake_shop_admin_registrations` (
  `admin_id` int(11) NOT NULL,
  `admin_username` varchar(100) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake_shop_admin_registrations`
--

INSERT INTO `cake_shop_admin_registrations` (`admin_id`, `admin_username`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'ad@cake.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_category`
--

CREATE TABLE `cake_shop_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake_shop_category`
--

INSERT INTO `cake_shop_category` (`category_id`, `category_name`, `category_image`) VALUES
(1, 'Cakes', '200731042405.jpg'),
(2, 'Pastries', '200731042031.jpeg'),
(3, 'Desserts', '200731042306.jpg'),
(4, 'Cookies', '200731042457.jpg'),
(5, 'cupcake', '220827104032.png');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_orders`
--

CREATE TABLE `cake_shop_orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `delivery_date` varchar(100) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `total_amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake_shop_orders`
--

INSERT INTO `cake_shop_orders` (`orders_id`, `users_id`, `delivery_date`, `payment_method`, `total_amount`) VALUES
(43, 5, '2022-09-02', '', '1970'),
(44, 5, '2022-09-03', 'Cash', '990');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_orders_detail`
--

CREATE TABLE `cake_shop_orders_detail` (
  `orders_detail_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake_shop_orders_detail`
--

INSERT INTO `cake_shop_orders_detail` (`orders_detail_id`, `orders_id`, `product_name`, `quantity`) VALUES
(58, 36, 'Strawberry', 1),
(59, 36, 'Choco chips', 1),
(60, 37, 'Black forest', 1),
(61, 37, 'Choco chips', 1),
(62, 38, 'Chocolate', 1),
(63, 38, 'Oreo', 1),
(64, 39, 'Black forest', 9),
(65, 40, 'Vanilla', 1),
(66, 40, 'Chocolate', 1),
(67, 0, 'choco', 1),
(68, 0, 'choco', 1),
(69, 43, 'Chocolate Truffle', 1),
(70, 43, 'Oreo', 1),
(71, 44, 'Oreo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_product`
--

CREATE TABLE `cake_shop_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_status` tinyint(4) NOT NULL,
  `product_trend` tinyint(4) NOT NULL,
  `product_description` varchar(300) NOT NULL,
  `product_image` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake_shop_product`
--

INSERT INTO `cake_shop_product` (`product_id`, `product_name`, `product_category`, `product_type`, `product_price`, `product_status`, `product_trend`, `product_description`, `product_image`) VALUES
(1, 'Chocolate Truffle', 1, 'Veg', '980', 0, 1, 'This is cake made of chocolate & Butter and 1/2kg of this cake is Rs.500', '2007310437280.jpg, 2007310437281.jpg, 2007310437282.jpg'),
(2, 'Red velvet', 1, 'Veg', '950', 1, 0, 'This cake is inspired by red velvet and 1/2kg of this cake is Rs.490', '2007310439020.jpg, 2007310439021.jpg, 2007310439022.jpg'),
(3, 'Black forest', 1, 'Non-Veg', '800', 0, 1, 'It is a chocolate sponge cake and 1/2kg of this cake is Rs.430', '2208270742500.png'),
(4, 'Oreo', 1, 'Veg', '990', 0, 1, 'Made out of Oreo biscuits and chocolate cream, 1/2kg of this cake is Rs.460', '2007310441020.jpg, 2007310441021.jpg, 2007310441022.jpg'),
(5, 'Black Choco', 2, 'Veg', '110', 0, 1, 'This is a black chocolate.', '2208270757330.jpg'),
(6, 'Strawberry', 2, 'Veg', '120', 0, 0, 'This is a strawberry.', '2007310443190.jpg'),
(7, 'Butterscotch', 2, 'Non-Veg', '110', 0, 0, 'This is a butterscotch.', '2007310444030.jpg'),
(8, 'Choco chips', 4, 'Veg', '40', 0, 1, 'This a chocolate chip cookie.', '2007310445280.jpg'),
(9, 'Chocolate', 3, 'Veg', '78', 0, 0, 'Chocolate flavoured dessert.', '2007310446340.jpg'),
(10, 'Vanilla', 3, 'Veg', '40', 0, 0, 'Vanilla flavoured dessert.', '2007310448270.jpg'),
(12, 'Satiny Chocolate', 1, 'Non-Veg', '800', 0, 1, 'Made out of drizzle and 1/2 kg of this cake is Rs. 400', '2208270754000.png'),
(15, 'Butterscotch', 4, 'Veg', '60', 0, 0, 'This is a Butterscotch Cookie', '2208270800200.png'),
(16, 'Gem Cookie', 4, 'Veg', '50', 1, 0, 'Made out of Chocolates and Gems', '2208270802080.png'),
(17, 'Dark Chocolate ', 4, 'Veg', '90', 0, 0, 'This is a pure Dark Choco based cookie.', '2208270803370.png'),
(19, 'choco', 5, 'Non-Veg', '200', 0, 1, 'cupcake', '2208271050270.png');

-- --------------------------------------------------------

--
-- Table structure for table `cake_shop_users_registrations`
--

CREATE TABLE `cake_shop_users_registrations` (
  `users_id` int(11) NOT NULL,
  `users_username` varchar(100) NOT NULL,
  `users_email` varchar(150) NOT NULL,
  `users_password` varchar(100) NOT NULL,
  `users_mobile` varchar(50) NOT NULL,
  `users_address` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cake_shop_users_registrations`
--

INSERT INTO `cake_shop_users_registrations` (`users_id`, `users_username`, `users_email`, `users_password`, `users_mobile`, `users_address`) VALUES
(5, 'kavz', 'kavanapateel31@gmail.com', '1234', '8431395996', 'kulai'),
(7, 'vignesh', 'vigneshdevadiga012@gmail.com', '1234', '8197674709', 'Kulshekara'),
(13, 'varna', 'skavana31@gmail.com', '1234', '8976765450', 'Mangalore');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `phone` int(11) NOT NULL,
  `feedback` text NOT NULL,
  `suggestions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`id`, `name`, `email`, `phone`, `feedback`, `suggestions`) VALUES
(22, 'H Vignesh ', 'vigneshdevadiga012@gmail.com', 2147483647, 'excellent', 'it was nice experience '),
(23, 'H Vignesh ', 'vigneshdevadiga012@gmail.com', 2147483647, 'excellent', 'njbjbj'),
(24, 'varnaa', 'kavanapateel31@gmail.com', 2147483647, 'excellent', 'delicious food'),
(25, 'kavana', 'skavana31@gmail.com', 2147483647, 'good', 'good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cake_shop_admin_registrations`
--
ALTER TABLE `cake_shop_admin_registrations`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cake_shop_category`
--
ALTER TABLE `cake_shop_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `cake_shop_orders`
--
ALTER TABLE `cake_shop_orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `cake_shop_orders_detail`
--
ALTER TABLE `cake_shop_orders_detail`
  ADD PRIMARY KEY (`orders_detail_id`);

--
-- Indexes for table `cake_shop_product`
--
ALTER TABLE `cake_shop_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_category` (`product_category`);

--
-- Indexes for table `cake_shop_users_registrations`
--
ALTER TABLE `cake_shop_users_registrations`
  ADD PRIMARY KEY (`users_id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cake_shop_admin_registrations`
--
ALTER TABLE `cake_shop_admin_registrations`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cake_shop_category`
--
ALTER TABLE `cake_shop_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cake_shop_orders`
--
ALTER TABLE `cake_shop_orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `cake_shop_orders_detail`
--
ALTER TABLE `cake_shop_orders_detail`
  MODIFY `orders_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `cake_shop_product`
--
ALTER TABLE `cake_shop_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `cake_shop_users_registrations`
--
ALTER TABLE `cake_shop_users_registrations`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cake_shop_orders`
--
ALTER TABLE `cake_shop_orders`
  ADD CONSTRAINT `cake_shop_orders_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `cake_shop_users_registrations` (`users_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cake_shop_product`
--
ALTER TABLE `cake_shop_product`
  ADD CONSTRAINT `cake_shop_product_ibfk_1` FOREIGN KEY (`product_category`) REFERENCES `cake_shop_category` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
