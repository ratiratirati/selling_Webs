-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 03:24 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `logindatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrators`
--

CREATE TABLE `administrators` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrators`
--

INSERT INTO `administrators` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE `checkout` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ittem-name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `count` varchar(100) NOT NULL,
  `firstlast` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'მუშავდება'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `user_id`, `ittem-name`, `price`, `img`, `count`, `firstlast`, `location`, `phone`, `status`) VALUES
(21, 4, 'ჭკვიანი სახლის სვიჩი', 100, 'https://cdn-dmleo.nitrocdn.com/ddrIVWvUBpcFWcgORRfooSkrmkpKdlBw/assets/images/optimized/rev-e8e4720/wp-content/uploads/2020/12/0018_Vector-Smart-Object9.png', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება'),
(22, 4, 'ჭკვიანი სახლის სვიჩი', 20, 'https://e7.pngegg.com/pngimages/850/841/png-clipart-wireless-light-switch-home-automation-kits-electrical-switches-wi-fi-smartphone-electronics-mobile-phones.png', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება'),
(23, 5, 'ჭკვიანი სახლის სვიჩი', 100, 'https://cdn-dmleo.nitrocdn.com/ddrIVWvUBpcFWcgORRfooSkrmkpKdlBw/assets/images/optimized/rev-e8e4720/wp-content/uploads/2020/12/0018_Vector-Smart-Object9.png', '1', 'rati rati', 'თბილისი ვარკეთილი 5 მრ ბ10', '568-22-55-44', 'დადასტურებულია'),
(24, 5, 'მაუსი', 100, 'https://www.pngarts.com/files/4/PC-Mouse-PNG-Image-Transparent.png', '1', 'rati rati', 'თბილისი ვარკეთილი 5 მრ ბ10', '568-22-55-44', 'მუშავდება'),
(25, 5, 'GTX 1070 ', 1500, 'https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/news/geforce-gtx-1070/geforce-gtx-1070-front-640px.png', '1', 'rati rati', 'თბილისი ვარკეთილი 5 მრ ბ10', '568-22-55-44', 'მუშავდება'),
(26, 5, 'GTX 1070 ', 1500, 'https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/news/geforce-gtx-1070/geforce-gtx-1070-front-640px.png', '1', 'rati rati', 'თბილისი ვარკეთილი 5 მრ ბ10', '568-22-55-44', 'მუშავდება'),
(27, 3, 'ჭკვიანი სახლის სვიჩი', 100, 'https://cdn-dmleo.nitrocdn.com/ddrIVWvUBpcFWcgORRfooSkrmkpKdlBw/assets/images/optimized/rev-e8e4720/wp-content/uploads/2020/12/0018_Vector-Smart-Object9.png', '1', 'test test', 'თბილისი', '568-55-55-55', 'მუშავდება'),
(28, 3, 'GTX 1070 ', 1500, 'https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/news/geforce-gtx-1070/geforce-gtx-1070-front-640px.png', '1', 'test test', 'თბილისი', '568-55-55-55', 'მუშავდება'),
(29, 3, 'ჭკვიანი სახლის სვიჩი', 100, 'https://cdn-dmleo.nitrocdn.com/ddrIVWvUBpcFWcgORRfooSkrmkpKdlBw/assets/images/optimized/rev-e8e4720/wp-content/uploads/2020/12/0018_Vector-Smart-Object9.png', '1', 'test test', 'თბილისი', '568-55-55-55', 'მუშავდება'),
(30, 3, 'GTX 1070 ', 1500, 'https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/news/geforce-gtx-1070/geforce-gtx-1070-front-640px.png', '1', 'test test', 'თბილისი', '568-55-55-55', 'მუშავდება'),
(31, 4, 'აიფონის ქეისი', 50, 'https://images.dailyobjects.com/marche/product-images/1101/slick-phone-case-cover-for-iphone-13-images/Nimbus-Phone-Case-Cover-For-iPhone-13.png?tr=cm-pad_resize,v-2', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება'),
(32, 4, 'მაუსი', 100, 'https://www.pngarts.com/files/4/PC-Mouse-PNG-Image-Transparent.png', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება'),
(33, 4, 'ჭკვიანი სახლის სვიჩი', 20, 'https://e7.pngegg.com/pngimages/850/841/png-clipart-wireless-light-switch-home-automation-kits-electrical-switches-wi-fi-smartphone-electronics-mobile-phones.png', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება'),
(34, 4, 'მაუსი', 100, 'https://www.pngarts.com/files/4/PC-Mouse-PNG-Image-Transparent.png', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება'),
(35, 4, 'აიფონის ქეისი', 50, 'https://images.dailyobjects.com/marche/product-images/1101/slick-phone-case-cover-for-iphone-13-images/Nimbus-Phone-Case-Cover-For-iPhone-13.png?tr=cm-pad_resize,v-2', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება'),
(36, 4, 'ჭკვიანი სახლის სვიჩი', 20, 'https://e7.pngegg.com/pngimages/850/841/png-clipart-wireless-light-switch-home-automation-kits-electrical-switches-wi-fi-smartphone-electronics-mobile-phones.png', '1', 'test test', 'ზუგდიდი', '568-55-11-11', 'მუშავდება');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `ittem-name` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `img` varchar(1000) NOT NULL,
  `count` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `category`, `ittem-name`, `price`, `description`, `img`, `count`) VALUES
(1, 'cat1', 'მონიტორი', '400', 'Full HD 1080x1920', 'https://www.pngmart.com/files/6/Monitor-Background-PNG.png', '0'),
(2, 'cat1', 'პროცესორი', '1000', 'პროცესორი i7 8400 არის 6 ბირთვიანი ძალიან მძლავრი პროცესორი', 'https://www.pngall.com/wp-content/uploads/11/CPU-PNG-Images.png', '0'),
(3, 'cat1', 'მაუსი', '100', 'აქვს ძალიან კარგი DPI', 'https://www.pngarts.com/files/4/PC-Mouse-PNG-Image-Transparent.png', '0'),
(4, 'cat2', 'ჭკვიანი სახლის სვიჩი', '20', 'ჭკვიანი სვიჩის საშვალებით შეგიძლიათ WIFI სთან დაკავშირებით ჩააქროთ და აანთოთ შუქი მობილურით', 'https://e7.pngegg.com/pngimages/850/841/png-clipart-wireless-light-switch-home-automation-kits-electrical-switches-wi-fi-smartphone-electronics-mobile-phones.png', '0'),
(6, 'cat3', 'აიფონის ქეისი', '50', 'აიფონის საუკეთესო ხარისხის ქეისი', 'https://images.dailyobjects.com/marche/product-images/1101/slick-phone-case-cover-for-iphone-13-images/Nimbus-Phone-Case-Cover-For-iPhone-13.png?tr=cm-pad_resize,v-2', '0'),
(7, 'cat3', 'S10 PLUS ეკრანის დამცავი ', '40', 'უმაღლესი ხარისხის ეკრანის დამცავი', 'https://images.dailyobjects.com/marche/product-images/1803/samsung-galaxy-s22-plus-9d-tempered-glass-screen-protector-images/Samsung-Galaxy-S22-9D-Tempered-Glass-Screen-Protector.png?tr=cm-pad_resize,v-2', '0'),
(8, 'cat1', 'GTX 1070 ', '1500', 'უძლიერესი ვიდეო ბარათი GTX 1070 ', 'https://www.nvidia.com/content/dam/en-zz/Solutions/geforce/news/geforce-gtx-1070/geforce-gtx-1070-front-640px.png', '0'),
(9, 'cat2', 'ჭკვიანი სახლის სვიჩი', '100', 'ჭკვიანი სახლის სვიჩი მისი საშვალებით შეგიძლიათ სინათლის ანთება და ჩაქრობა WIFI კავშირით', 'https://cdn-dmleo.nitrocdn.com/ddrIVWvUBpcFWcgORRfooSkrmkpKdlBw/assets/images/optimized/rev-e8e4720/wp-content/uploads/2020/12/0018_Vector-Smart-Object9.png', '6');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstlast` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `phone` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `firstlast`, `location`, `phone`) VALUES
(3, 'test', 'test', 'test test', 'თბილისი', '568-55-55-55'),
(4, 'test123', 'test', 'test test', 'ზუგდიდი', '568-55-11-11'),
(5, 'rati', 'rati', 'rati rati', 'თბილისი ვარკეთილი 5 მრ ბ10', '568-22-55-44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `checkout`
--
ALTER TABLE `checkout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `list`
--
ALTER TABLE `list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
