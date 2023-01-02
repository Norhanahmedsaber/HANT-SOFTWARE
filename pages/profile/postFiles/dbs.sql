-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 181.215.242.74:18939
-- Generation Time: Dec 25, 2022 at 02:16 PM
-- Server version: 8.0.26
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `customeritem`
--

CREATE TABLE `customeritem` (
  `customerId` varchar(36) NOT NULL,
  `itemId` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customeritem`
--

INSERT INTO `customeritem` (`customerId`, `itemId`) VALUES
('04c638e6-daa2-47d1-91ef-81441ad2fb67', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '1303708a-6930-4489-9de0-b10fabc1d3ac'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '1431c6f2-977a-47c4-ac88-48547e14132a'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '3c05ebce-0066-4781-8252-29b116d1d444'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '49533bb4-987f-4339-92ac-459d5d6d5200'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '8f9c01e2-33f7-417a-871a-da0c1679b412'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', '99fae995-4201-46fb-b285-906a6d06295e'),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', 'a9363c64-1ac8-4486-addf-eb25cdb71679'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '1121b492-5961-4f10-b4c1-5281a49b2b4e'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '1303708a-6930-4489-9de0-b10fabc1d3ac'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '3c05ebce-0066-4781-8252-29b116d1d444'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '49533bb4-987f-4339-92ac-459d5d6d5200'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', '49533bb4-987f-4339-92ac-459d5d6d5200'),
('35a59897-d8b7-4157-a6e1-576b73cf081d', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('42674136-b97f-4829-bc64-7132f507db89', '1121b492-5961-4f10-b4c1-5281a49b2b4e'),
('42674136-b97f-4829-bc64-7132f507db89', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('42674136-b97f-4829-bc64-7132f507db89', '49533bb4-987f-4339-92ac-459d5d6d5200'),
('42674136-b97f-4829-bc64-7132f507db89', '49533bb4-987f-4339-92ac-459d5d6d5200'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', '1121b492-5961-4f10-b4c1-5281a49b2b4e'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', '49533bb4-987f-4339-92ac-459d5d6d5200'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', '49533bb4-987f-4339-92ac-459d5d6d5200'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', '8f9c01e2-33f7-417a-871a-da0c1679b412'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', '99fae995-4201-46fb-b285-906a6d06295e'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', 'a9363c64-1ac8-4486-addf-eb25cdb71679'),
('743ce3b6-d094-423d-8f16-9608b1a875f0', 'b60efb54-24a7-48be-ad68-fe64b973c4ab'),
('7dd91bcf-ad54-4a4d-bedd-2e04b8e60444', '1271d1e8-bb0f-4cc6-abda-2a9945b8281c'),
('7dd91bcf-ad54-4a4d-bedd-2e04b8e60444', '1271d1e8-bb0f-4cc6-abda-2a9945b8281c'),
('7dd91bcf-ad54-4a4d-bedd-2e04b8e60444', '1271d1e8-bb0f-4cc6-abda-2a9945b8281c'),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', '1303708a-6930-4489-9de0-b10fabc1d3ac'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', '30b0d5dc-cd41-4f94-a53b-0efcc1b67b56'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', 'b60efb54-24a7-48be-ad68-fe64b973c4ab'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', 'cce9a0fa-148a-48c9-b16b-8c301631708d'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', 'fb6daaea-a8ad-40c8-8670-fc75dc09ea1b'),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', 'fb6daaea-a8ad-40c8-8670-fc75dc09ea1b'),
('a6aaff75-ca28-48d9-86ac-d09359fa9aa3', '1303708a-6930-4489-9de0-b10fabc1d3ac'),
('a6aaff75-ca28-48d9-86ac-d09359fa9aa3', '3c05ebce-0066-4781-8252-29b116d1d444'),
('ca43be0e-00ba-411b-b0a1-30ba3ae756f7', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('ca43be0e-00ba-411b-b0a1-30ba3ae756f7', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('ca43be0e-00ba-411b-b0a1-30ba3ae756f7', 'a8702a0e-c189-4370-b2a8-ef414483ef35'),
('ca43be0e-00ba-411b-b0a1-30ba3ae756f7', 'b60efb54-24a7-48be-ad68-fe64b973c4ab'),
('d1fc0047-585b-4a2b-9139-ec0a33744dbe', '08ca49ba-1189-4d91-ad04-81f937a1ff5f'),
('d1fc0047-585b-4a2b-9139-ec0a33744dbe', '1121b492-5961-4f10-b4c1-5281a49b2b4e'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('d701283a-11e7-4ae0-b688-209f07cc8d56', '1525f99f-6c2d-4610-9ea2-59d7f0380f43'),
('fbd3fbb7-63a3-4ad4-a252-a41e4f2f00de', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('fbd3fbb7-63a3-4ad4-a252-a41e4f2f00de', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('fbd3fbb7-63a3-4ad4-a252-a41e4f2f00de', 'a059714f-25b1-4718-9ae4-22942eff86e5'),
('fbd3fbb7-63a3-4ad4-a252-a41e4f2f00de', 'a059714f-25b1-4718-9ae4-22942eff86e5');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `nationalId` varchar(50) NOT NULL,
  `phoneNumber` varchar(50) NOT NULL,
  `city` varchar(100) NOT NULL,
  `purchaseDate` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `income` int DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `gender` varchar(15) NOT NULL,
  `age` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `nationalId`, `phoneNumber`, `city`, `purchaseDate`, `email`, `income`, `job`, `gender`, `age`) VALUES
('04c638e6-daa2-47d1-91ef-81441ad2fb67', 'toooo', '12345678901111', '01140219810', 'ccc', '2022-12-19', 'tokaabdelgawa@80.com', 46789, 'tttt', 'Male', 565),
('13ff2814-7faf-41b8-8563-0111f03e707f', 'norhan', '11111111111111', '01119554367', 'bjbn', '2022-12-19', 'norhan@gmail.com', 345, 'bn', 'Female', 345),
('1b1537dd-8bb2-4d2b-9dd8-efa0936b1435', 'Mahmoud Shalaby', '54789123456712', '01333333333', '5th Settlement', '2022-11-25', 'Shalaby@mail.com', 5000000, 'Dentist', 'Male', 21),
('35a59897-d8b7-4157-a6e1-576b73cf081d', 'Hosam Hesham', '30102549210521', '01125360691', 'aswan', '2022-12-09', 'hosam@mail.com', 3000, 'mechanic', 'Male', 20),
('42674136-b97f-4829-bc64-7132f507db89', 'ashraf', '12345678945612', '01212121211', 'mayo', '2022-12-24', 'a@mail.com', 123123, 'hand writer', 'Male', 20),
('4504ab59-482c-4dc7-bebf-4d5dceece2c6', 'tota', '11111111111111', '01140219810', 'rrr', '2022-12-19', 'toka@90.com', 56, 'ttt', 'Female', 66),
('6c8fc967-9f04-438e-9c5a-2634fba58b54', 'ahmed osama', '11111111111111', '01111111111', 'Zayed', '2022-12-22', 'anas@mail.com', 30000, 'arbgy database', 'Male', 21),
('743ce3b6-d094-423d-8f16-9608b1a875f0', 'Hosam', '74392108372831', '01125360691', 'aswan', '2022-12-23', 'Boyka@mail.com', 15000, 'student', 'Male', 20),
('7dd91bcf-ad54-4a4d-bedd-2e04b8e60444', 'omar hesham', '54236894512312', '01183633175', '6th October', '2022-12-24', 'omar@mail.com', 12000, 'dentist', 'Male', 23),
('89e113da-f931-4165-ba3d-1cb16a8a542a', 'challenger adhoum', '12345678912345', '01001590870', 'el haram', '2022-12-22', 'adham@mail.com', 3500, 'embedded software developer', 'Female', 21),
('8e4fc30a-4b34-4ce8-bea6-da2c52cf15b2', 'gamal', '54126987541235', '01235489214', 'nasr-city', '2022-11-01', 'shetoos@gmail.com', 5000, 'rat', 'Male', 22),
('a0a4570a-cd31-4a3c-ae74-c26942b2a3fd', 'test', '12312312312312', '01002736245', 'cairo', '2022-12-25', 'test@mail.com', 1200, 'fafa', 'Male', 19),
('a224ed0c-63a4-46e5-9cfa-c2b634296a38', 'menna', '46578936571123', '01144444444', 'Badr', '2022-11-09', 'menna@gmail.com', 6000, 'doctor', 'Female', 26),
('a6aaff75-ca28-48d9-86ac-d09359fa9aa3', 'ahmed samy', '31245671239456', '01123456789', 'El Mokattam', '2022-11-22', 'ahmedsamy@gmail.com', 35000, '3atel', 'Male', 21),
('c4b1f671-495b-47b1-ac27-e3a5ba5e75b6', 'zyad abd el nasser', '23423423423423', '01127502010', 'mokattam', '2022-12-22', 'zizozoom07@gmail.com', 1400, 'Reasearch Engineer', 'Male', 21),
('ca43be0e-00ba-411b-b0a1-30ba3ae756f7', 'Yomna Ehab', '12345975213214', '01222222222', 'El 3boor', '2022-12-22', 'Yomna@gmail.com', 1001, '3atla', 'Female', 25),
('d1fc0047-585b-4a2b-9139-ec0a33744dbe', 'toka', '00000000000000', '01140106552', 'cairo', '2022-12-19', 'toka@gamil.com', 5000, 'aer', 'Female', 323),
('d2f5b580-20d4-4ff4-b0c0-0c0ff553185b', 'maryam', '12312312312312', '01111111111', 'nasr city', '2022-12-23', 'maryam@mail.com', 200, 'no job', 'Female', 21),
('d701283a-11e7-4ae0-b688-209f07cc8d56', 'norhan', '54123687451264', '01254897453', 'cairo', '2022-12-25', 'norhan@mail.com', 4800, 'softwate archticet', 'Female', 21),
('fbd3fbb7-63a3-4ad4-a252-a41e4f2f00de', 'Osama Khaled', '25462135478954', '01002736245', 'el mokttam', '2022-12-25', 'OSOS@mail.com', 1200, 'baller', 'Male', 21);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `price` int NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `createdAt` date NOT NULL,
  `updatedAt` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `description`, `price`, `category`, `createdAt`, `updatedAt`) VALUES
('08ca49ba-1189-4d91-ad04-81f937a1ff5f', 'Tornado Electric Oven', '55 Liter, 2200 Watt, Black', 3539, 'Oven', '2022-12-16', NULL),
('1121b492-5961-4f10-b4c1-5281a49b2b4e', 'Dell Vostro laptop', 'Intel Core I7, 1TB HDD + 256GB SSD', 22666, 'laptop', '2022-12-23', NULL),
('1271d1e8-bb0f-4cc6-abda-2a9945b8281c', 'L&rsquo Laptop Backpack', '15.6 Inch, Black', 629, 'Backpack', '2022-12-23', NULL),
('1303708a-6930-4489-9de0-b10fabc1d3ac', 'Dell G15-5511 Laptop', 'Intel i7, 15.6 inch, 512GB SSD', 37999, 'laptop', '2022-12-23', NULL),
('1431c6f2-977a-47c4-ac88-48547e14132a', 'Philips Air Fryer', '1400 Watt, 4.1 Liters, black', 3799, 'Air Fryer', '2022-12-23', NULL),
('1525f99f-6c2d-4610-9ea2-59d7f0380f43', 'Sharp Digital Refrigerator', 'Plasmacluster, 450 Litre, Black', 11255, 'Refrigerator', '2022-12-23', NULL),
('2c9cd809-f38e-4e56-8578-197b2dab02cd', 'hhhhh', 'hhhh', 5555, 'gfdgh', '2022-12-25', NULL),
('30b0d5dc-cd41-4f94-a53b-0efcc1b67b56', 'Decker Air Fryer', '1500 Watt, 4 Liters, Black', 4299, 'Air Fryer', '2022-12-23', NULL),
('3ad330da-62b1-4094-8a45-75bba33257cf', 'Samsung 65 Inch Smart LED TV', 'Built-In Receiver, 4K UHD', 16499, 'TV', '2022-12-23', NULL),
('3c05ebce-0066-4781-8252-29b116d1d444', 'ICONZ London Backpack', '15.6 Inch, Dark Grey', 585, 'Backpack', '2022-12-23', NULL),
('49533bb4-987f-4339-92ac-459d5d6d5200', 'Sonai Plus Oven', '45 Liters, 2000 Watt, Black', 2399, 'Oven', '2022-12-23', NULL),
('6b52d573-295d-4fc9-91d4-f4c7022fb0d1', 'gggg', 'gggg', 222, 'hhhh', '2022-12-25', NULL),
('8f9c01e2-33f7-417a-871a-da0c1679b412', 'HP Probook 450 G8 Laptop', 'Intel i5, 15.6 Inch, 500GB SSD', 23466, 'laptop', '2022-12-23', NULL),
('99fae995-4201-46fb-b285-906a6d06295e', 'Samsung Galaxy A23', '128GB, 6GB RAM, Blue', 6849, 'Phone', '2022-12-23', NULL),
('a059714f-25b1-4718-9ae4-22942eff86e5', 'ASUS ROG G14 Laptop', 'AMD Ryzen 9,14 Inch, 1TB HDD', 47906, 'laptop', '2022-12-23', NULL),
('a8702a0e-c189-4370-b2a8-ef414483ef35', 'LG 65 Inch Smart TV', 'Built-in Receiver, 4K UHD', 13499, 'TV', '2022-12-23', NULL),
('a9363c64-1ac8-4486-addf-eb25cdb71679', 'Xiaomi Redmi 10C', 'Dual SIM,128GB,4GB RAM Grey', 6379, 'Phone', '2022-12-23', NULL),
('b60efb54-24a7-48be-ad68-fe64b973c4ab', 'Tornado Chopper', '400 Watt, 1.5 Liter, Blue', 610, 'Chopper', '2022-12-23', NULL),
('cb8b1b32-8fa7-404c-9b60-a068434eac34', 'test', 'test', 123123, 'TEST', '2022-12-25', NULL),
('cce9a0fa-148a-48c9-b16b-8c301631708d', 'Kumtel Electric Oven', '36 Liters, 1420 watt, Black', 1264, 'Oven', '2022-12-18', NULL),
('dafba723-3d4b-48bd-bef6-e377489b4f68', 'Lenovo Ideapad 3 Laptop', 'Intel i7, 15.6 Inch, 1TB HDD', 39099, 'laptop', '2022-12-23', NULL),
('fb6daaea-a8ad-40c8-8670-fc75dc09ea1b', 'LG 43 Inch Smart LED TV', 'Built-In Receiver 43LM6370PVA', 7999, 'TV', '2022-12-23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` varchar(36) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `userRole` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `actedOn` varchar(50) NOT NULL,
  `actedOnName` varchar(50) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `userName`, `userRole`, `action`, `actedOn`, `actedOnName`, `date`) VALUES
('01096d6b-45d7-43c9-b2c2-3eeea4b41c2a', 'anas', 'Admin', 'Updated', 'Role', 'haha', '2022-12-19'),
('01772681-4213-4a06-a460-cf204ac42555', 'anas', 'Admin', 'Deleted', 'Item', 'uuuuuu', '2022-12-23'),
('02184d7a-1781-4b6c-96b1-b329fd59297c', 'anas', 'Admin', 'Updated', 'User', 'anas', '2022-12-23'),
('0234187e-f408-484d-8672-e825d846f78b', 'anas', 'Admin', 'Created', 'Item', 'Fresh Chopper', '2022-12-23'),
('02f64d12-8f24-4260-9194-25bb076c7774', 'besho', 'cashier', 'Updated', 'User', 'bichoy', '2022-12-22'),
('033c662a-0aba-4987-be69-51079c8441bf', 'anas', 'Admin', 'Updated', 'User', 'Toka Abdel Gawad', '2022-12-24'),
('044e1f26-4a54-44b1-96b1-1350701c51d8', 'anas', 'Admin', 'Deleted', 'Item', 'anas', '2022-12-16'),
('05490a27-8edd-4e57-ba4a-116b6041f40c', 'toka', 'user', 'Created', 'Customer', 'Hosam', '2022-12-23'),
('06d532a0-f11a-491e-b5f3-fa83a3a835a4', 'anas', 'Admin', 'Updated', 'Customer', 'ghj', '2022-12-19'),
('0947057c-9b1d-4e99-a742-dc92507e2e70', 'anas', 'Admin', 'Updated', 'Customer', 'tota', '2022-12-23'),
('0b760cc9-4175-4919-9bb9-2a05bf5eacdd', 'anas', 'Admin', 'Updated', 'User', 'nono', '2022-12-19'),
('0e17c221-78a8-4305-9fcc-913e1c2687b7', 'anas', 'Admin', 'Deleted', 'Item', 'tgsj', '2022-12-23'),
('0f9d1832-f0b2-4a5b-a8c9-bc6be6a13218', 'anas', 'Admin', 'Deleted', 'Customer', 'anas', '2022-12-23'),
('119fe666-1a73-48ab-affd-d7863b0314a7', 'anas', 'Admin', 'Created', 'Customer', 'norhan', '2022-12-19'),
('11b50724-8c16-4e8e-bc99-02b4e8502226', 'anas', 'Admin', 'Created', 'Item', 'Lenovo Ideapad 3 Laptop', '2022-12-23'),
('12d4ce3d-f085-4941-92de-3226c7b03728', 'anasasd', 'Admin', 'Deleted', 'Customer', 'anas', '2022-12-16'),
('14423e5c-a5dc-4030-a82c-9b34b9a59ae5', 'anas', 'Admin', 'Updated', 'Role', 'Admin', '2022-12-19'),
('16c328e9-b625-4061-9e80-86f2e1bef7ba', 'anas', 'Admin', 'Created', 'Item', 'test', '2022-12-23'),
('170a2651-c52a-440c-bf33-ebde32696e0c', 'anas', 'Admin', 'Deleted', 'Customer', '', '2022-12-23'),
('175bd89e-02fd-4382-a1bc-59aef75d664b', 'toka', 'user', 'Deleted', 'Item', 'rezk', '2022-12-23'),
('1820c65b-7a8e-4707-b290-b46f7dfbf50a', 'anas', 'Admin', 'Updated', 'Item', 'Xiaomi Redmi 10C', '2022-12-23'),
('1a9b7881-1335-4cf6-827c-3ebe7c9917c2', 'anas', 'Admin', 'Updated', 'Role', 'fofo', '2022-12-19'),
('206eb679-9241-42e7-86d8-3c771bc856c8', 'anas', 'Admin', 'Created', 'User', 'hashim', '2022-12-25'),
('20a02b1b-66d8-41a9-b607-1f1b44e4e224', 'anas', 'Admin', 'Updated', 'Item', 'Samsung 65 Inch Smart LED TV', '2022-12-23'),
('21493502-3117-4a61-9f23-e8290e82091b', 'anas', 'Admin', 'Updated', 'Customer', 'anas', '2022-12-19'),
('2153ee6c-40d7-41ea-bdbc-b7a3142dfad1', 'anas', 'Admin', 'Deleted', 'Customer', '', '2022-12-23'),
('21d8c731-b49a-4bb7-bd85-9458e5b9339d', 'besho', 'Admin', 'Added', 'User', 'mohamed sayed', '2022-12-22'),
('236856c9-1bd9-4289-9bbd-a6c877b1fe6f', 'besho', 'cashier', 'Created', 'Item', 'FIAT', '2022-12-22'),
('24e9bc3c-7651-463e-87ee-6fac6ea10ce5', 'toka', 'user', 'Created', 'Customer', 'Mahmoud Shalaby', '2022-12-23'),
('27b612c3-068d-4ccc-986b-0f1ae09c9438', 'anas', 'Admin', 'Created', 'Item', 'test', '2022-12-23'),
('27c35331-5497-4087-bbc6-6f60df701018', 'anas', 'Admin', 'Deleted', 'Item', 'toka', '2022-12-18'),
('28f3c9da-d6d5-4110-a690-90e54338b4c3', 'anas', 'Admin', 'Updated', 'Customer', 'anas', '2022-12-19'),
('2cc470a2-c613-4931-957d-1d91ab4f8da9', 'anas', 'Admin', 'Updated', 'Item', 'test', '2022-12-23'),
('2e9ff238-3daa-4034-95f3-bd45666c0ea8', 'anas', 'Admin', 'Created', 'Role', 'Accountant ', '2022-12-24'),
('2f24a6b3-105e-4705-a348-130170fd2c35', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('308e3f5c-8b4d-42c0-91a8-82b55631c75b', 'anas', 'Admin', 'Deleted', 'User', 'asd', '2022-12-19'),
('33f51c8d-eebb-4d44-b8a5-e10d36b983ac', 'anas', 'Admin', 'Created', 'Customer', 'sdfg', '2022-12-19'),
('3461e1f7-7f33-408e-a010-7adacc98dbe5', 'anas', 'Admin', 'Updated', 'Customer', 'ghj', '2022-12-19'),
('35bbba96-71db-41cf-af8f-f2003b51d4da', 'anas', 'Admin', 'Created', 'Item', 'tokkk', '2022-12-19'),
('35d9ac6a-e3b6-4406-bc51-38776584350d', 'anas', 'Admin', 'Created', 'Customer', 'ssfdghhh', '2022-12-19'),
('36903871-e9c4-402c-8409-7eccb3f79bed', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('3744e703-fdf4-4362-863d-6c476ce9095e', 'anas', 'Admin', 'Updated', 'Role', 'fofo', '2022-12-19'),
('37d92201-23a8-4fa7-8fb5-5dc3d77467dd', 'anas', 'Admin', 'Created', 'Customer', 'fsdf', '2022-12-19'),
('393cfd11-e1ff-42a4-968c-a936a494b807', 'anas', 'Admin', 'Created', 'Item', 'Dell G15-5511 Laptop', '2022-12-23'),
('39b861e9-2133-4356-9964-74cbe464f39e', 'anas', 'Admin', 'Created', 'User', 'Hussien Mostafa', '2022-12-24'),
('3b238442-98aa-4b76-8c5d-dcc297acce50', 'anas', 'Admin', 'Deleted', 'Customer', 'dfgk', '2022-12-23'),
('3f1cf68b-15f4-49a9-9f9d-d59fe667fc90', 'anas', 'Admin', 'Deleted', 'Customer', 'fsdf', '2022-12-23'),
('3f42ef66-21c2-4448-bdb1-ddcfef96b85f', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('419dbc20-c96d-4728-af58-7802a9755881', 'anas', 'Admin', 'Created', 'Item', 'Sonai Plus Oven', '2022-12-23'),
('431df006-0c4e-4eee-b494-6d4fb09a68c7', 'anasasd', 'Admin', 'Deleted', 'Customer', 'anas', '2022-12-16'),
('433f92cb-4c32-43e4-93a8-d37b7a51f143', 'anas', 'Admin', 'Updated', 'Item', 'Sharp Digital Refrigerator', '2022-12-23'),
('447405d1-910e-4e7e-bdd7-7bd6284be2e9', 'anas', 'Admin', 'Updated', 'Item', 'Decker Air Fryer', '2022-12-23'),
('46bf539f-c757-45b6-80be-078a1209bd6e', 'anas', 'Admin', 'Created', 'Item', 'Oven', '2022-12-18'),
('47783419-3229-4348-b0d0-bbb85a6656c2', 'anas', 'Admin', 'Updated', 'Item', 'HP Probook 450 G8 Laptop', '2022-12-23'),
('4827ce4b-fca6-44b6-ad1f-de78e975b007', 'anas', 'Admin', 'Updated', 'Customer', 'toka', '2022-12-19'),
('4c38b4d4-97fa-416f-ae2b-89dd4302175e', 'toka', 'user', 'Created', 'Customer', 'gamal', '2022-12-24'),
('4e387d96-21fb-4a68-9ac8-798a0ef27758', 'anas', 'Admin', 'Updated', 'Role', 'toto', '2022-12-19'),
('4e3c065a-b876-4730-9f4a-d0a65e620cfe', 'anasasd', 'Admin', 'Created', 'Customer', 'anas', '2022-12-16'),
('4f3eaf5a-18dc-4f28-b0ce-20f9f1fb2837', 'anas', 'Admin', 'Created', 'Customer', 'ttttt', '2022-12-19'),
('501f0134-8ddb-4324-bec2-e629fa381c01', 'besho', 'cashier', 'Updated', 'Item', 'rezk', '2022-12-22'),
('505ad695-c523-4ce2-89e9-901f685b4f11', 'anas', 'Admin', 'Created', 'Item', 'HP Probook 450 G8 Laptop', '2022-12-23'),
('5107678e-0eea-41b9-adb8-415ce5c88603', 'anas', 'Admin', 'Updated', 'Item', 'Dell G15-5511 Laptop', '2022-12-23'),
('510e434a-55c1-4732-afdc-b2788dcbc82e', 'anas', 'Admin', 'Created', 'Customer', 'tota', '2022-12-19'),
('5158de13-530e-4c81-8882-93d1cb8f32b9', 'toka', 'user', 'Created', 'Item', 'Samsung 65 Inch Smart LED TV', '2022-12-23'),
('51662bdd-3bcc-48e6-ba8f-2d18f62f3250', 'toka', 'user', 'Deleted', 'Item', 'FIAT', '2022-12-23'),
('5196adc5-6aaf-4a21-b18d-bbeea1f9f4b1', 'anas', 'Admin', 'Created', 'Customer', 'zyad abd el nasser', '2022-12-16'),
('5397a9da-8626-4d2b-89c3-46bd7acb15bf', 'anas', 'Admin', 'Created', 'Role', 'fofo', '2022-12-19'),
('54d39347-d3ee-4ea5-843c-154d0c5b2b35', 'anas', 'Admin', 'Updated', 'Role', 'tech', '2022-12-16'),
('5549aea2-5195-4b3f-924c-a31d6d7a9318', 'anas', 'Admin', 'Updated', 'User', 'Ali Yasser', '2022-12-25'),
('5840f0fd-0e50-46a5-9732-cec67849ddf4', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('5900bb82-3dea-46e4-a3fc-8b2aae8939d0', 'anas', 'Admin', 'Updated', 'Role', 'haha', '2022-12-19'),
('5bb7a742-3cdf-4354-8526-9242b89a227d', 'anas', 'Admin', 'Created', 'Customer', '', '2022-12-19'),
('5e1fc925-be6a-4b21-b3e8-3153ee4d2838', 'anas', 'Admin', 'Updated', 'Customer', 'tota', '2022-12-19'),
('5eaa508d-195d-4973-802a-1c39c91704b7', 'anas', 'Admin', 'Deleted', 'Customer', 'b', '2022-12-23'),
('5ec3dd47-93e4-4585-9915-a47483686759', 'anas', 'Admin', 'Updated', 'Customer', 'ghj', '2022-12-19'),
('610fe3ab-f3ec-4276-9777-a1f501ea13c0', 'anas', 'Admin', 'Updated', 'Item', 'Sonai Plus Oven', '2022-12-23'),
('617fb0b0-4d84-47d6-b85e-b98e19da0ae7', 'nora', 'Admin', 'Created', 'Role', 'ahmed', '2022-12-18'),
('61a8143a-9bb5-4731-82b0-75ef4027636d', 'anas', 'Admin', 'Updated', 'Item', 'ehgj', '2022-12-19'),
('645a83a4-db3f-4d31-858d-24836d89f783', 'anas', 'Admin', 'Created', 'Item', 'e', '2022-12-18'),
('67956bb8-6096-4bcb-a139-11fed5a10561', 's7s', 'user', 'Created', 'Item', 'gggg', '2022-12-25'),
('67db3765-0975-45ce-9525-3feb7da622af', 'anas', 'Admin', 'Created', 'Role', '', '2022-12-19'),
('68b78eca-8c26-4faf-b1df-efeb2bea9c66', 'anas', 'Admin', 'Updated', 'User', 'anas', '2022-12-16'),
('69a3a610-c7a4-4212-844d-a830db7eee46', 'anas', 'Admin', 'Updated', 'Item', 'Tornado Electric Oven', '2022-12-23'),
('6a031b2a-c8c7-472e-b782-c2d25d1d8946', 'anas', 'Admin', 'Created', 'Item', 'Decker Air Fryer', '2022-12-23'),
('6a725b57-faea-4599-826c-7a50ca991370', 'besho', 'cashier', 'Deleted', 'Item', 'gggg', '2022-12-22'),
('6b857a37-aac1-4f45-8e36-3c71917d0159', 'anas', 'Admin', 'Created', 'Item', 'Samsung Galaxy A23', '2022-12-23'),
('6e40361e-ac25-4379-998d-d72e1d1a4d20', 'anas', 'Admin', 'Deleted', 'Item', 'tu', '2022-12-23'),
('7266f525-a0c3-4a8b-a0cc-903010cd8453', 's7s', 'user', 'Created', 'Item', 'hhhhh', '2022-12-25'),
('73da3b67-35aa-4cb2-8e27-b0044af2c297', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('75a8d60d-0ecc-4525-a8c5-03ec5168ac56', 'anas', 'Admin', 'Created', 'Item', 'test', '2022-12-23'),
('761a78ee-9b4a-4efd-82a2-a0165cf1cc37', 'zeka', 'cashier', 'Created', 'Customer', 'challenger adhoum', '2022-12-22'),
('766f95bc-fa01-43ed-9e2c-b875d57cc339', 'anasasd', 'Admin', 'Created', 'Customer', 'anas', '2022-12-16'),
('76ca9aca-0749-4ca8-9792-a5723e3a4103', 'anas', 'Admin', 'Deleted', 'Customer', '', '2022-12-23'),
('77eb9816-d08d-457b-b938-de1f5ba2fb34', 'anas', 'Admin', 'Created', 'Item', 'toka', '2022-12-19'),
('78a53dc4-f9d1-4dd8-ba8c-333db77ea69e', 'anas', 'Admin', 'Deleted', 'Item', 'toqa', '2022-12-16'),
('79c1da9b-38fe-4d1e-b701-d0d6d45d89bc', 'anas', 'Admin', 'Updated', 'Item', 'eh', '2022-12-19'),
('7a4af320-8fa7-413c-a574-3efe4a519137', 'anas', 'Admin', 'Deleted', 'Item', 'ttt', '2022-12-23'),
('7ac72992-0e47-4359-a04a-1e3b57030c21', 'anas', 'Admin', 'Updated', 'Item', 'Kumtel Electric Oven', '2022-12-23'),
('7b1c56fd-42b3-4444-8124-d3ec2ee27434', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('7b36c7a1-619c-4507-aec4-a7aa1e59d08d', 'nora', 'Admin', 'Added', 'User', 'habiba', '2022-12-18'),
('7bb0a7bd-7341-49e4-9d05-1fa4f2cd504d', 'anas', 'Admin', 'Deleted', 'Customer', 'ghj', '2022-12-23'),
('7c899640-b316-4058-b274-7608c29b0b76', 'anas', 'Admin', 'Added', 'User', 'nono', '2022-12-19'),
('7d448bd0-94b9-4cc5-ac41-1fe47c9fa1bd', 'anas', 'Admin', 'Updated', 'Item', 'Philips Air Fryer', '2022-12-23'),
('7d8b8eb2-d88d-4972-8747-a146cff0b793', 'nora', 'Admin', 'Created', 'Customer', 'test', '2022-12-25'),
('7e1f5a1d-63b9-49c0-a0ed-d075a74d56a7', 'anas', 'Admin', 'Updated', 'Customer', '', '2022-12-23'),
('7e1fab33-79f4-424b-bbb1-d6f519300026', 'anas', 'Admin', 'Updated', 'Item', 'Tornado Chopper', '2022-12-23'),
('809648ee-c18c-4e97-82c7-8fe2c2a341f8', 'anas', 'Admin', 'Updated', 'Item', 'ICONZ London Backpack', '2022-12-23'),
('819c73f9-c146-47d3-ab77-27f2a2482db8', 'anas', 'Admin', 'Created', 'User', 'Ali Yasser', '2022-12-23'),
('81a0b8e4-3297-4c7e-94b4-d62ed30da5b1', 'anas', 'Admin', 'Created', 'Customer', '6riw', '2022-12-19'),
('82d9fe70-dcda-4d5c-a63e-54d4450a5483', 'anas', 'Admin', 'Deleted', 'Customer', '6riw', '2022-12-19'),
('836d428c-7abd-44c4-9b04-fb11dcf74da5', 'anas', 'Admin', 'Updated', 'Role', 'fofo', '2022-12-19'),
('83e10679-7ae6-4b2f-901d-3b05e7aae2ee', 'anas', 'Admin', 'Deleted', 'Customer', '', '2022-12-23'),
('87d905d7-7a3b-45e6-abe5-efe1e9c69034', 'anas', 'Admin', 'Created', 'Role', 'roza', '2022-12-17'),
('89db2e87-d46b-4f06-af50-385d377fb03c', 'anas', 'Admin', 'Created', 'Item', 'test', '2022-12-23'),
('8a8c0f84-95b7-40b3-95fe-70c01a8bc17c', 'anas', 'Admin', 'Updated', 'Item', 'ggnora', '2022-12-19'),
('8aa04168-b0a8-4c58-be31-f02ad75c9764', 'toka', 'user', 'Deleted', 'Item', 'oven', '2022-12-23'),
('8af0d455-22a5-4eb3-8d5d-43240d048486', 'anas', 'Admin', 'Created', 'Customer', 'huss', '2022-12-16'),
('8b22d01b-d4cd-406f-a4aa-cbb385c16caa', 'toka', 'user', 'Created', 'Item', 'LG 65 Inch Smart TV', '2022-12-23'),
('8b51fe4f-b6f8-4a77-af1a-83c4498552a3', 'anas', 'Admin', 'Updated', 'User', 'mohamed sayed', '2022-12-22'),
('8b714578-6a9d-47a6-a086-c19a3c62a2a4', 'anas', 'Admin', 'Created', 'Item', 'Xiaomi Redmi 10C', '2022-12-23'),
('8c1bc096-918d-474b-90b7-322acf9febe8', 'anas', 'Admin', 'Created', 'Item', 'fdg', '2022-12-23'),
('8e8d0efb-5877-40cf-b6e4-eead4739d8fd', 'anas', 'Admin', 'Updated', 'Item', 'Samsung Galaxy A23', '2022-12-23'),
('9078a0f3-38ae-45dc-9e79-4a01525250d0', 'anasasd', 'Admin', 'Deleted', 'Customer', 'anas', '2022-12-16'),
('907ec261-613c-48ff-ba41-b8c508eb413a', 'anas', 'Admin', 'Updated', 'Role', 'roza', '2022-12-18'),
('912877c3-c13d-479d-b0e6-01b1e47b7628', 'toka', 'user', 'Deleted', 'Item', 'anas', '2022-12-16'),
('92851c04-f329-4ee6-b3b6-308d5063fea1', 'anas', 'Admin', 'Updated', 'Customer', 'toto', '2022-12-23'),
('92b278e3-844c-4510-918c-97cdec4e2f80', 'anasasd', 'Admin', 'Created', 'Customer', 'anas', '2022-12-16'),
('931a55b6-a94a-4f2b-947a-8b033bbbe62d', 'anas', 'Admin', 'Updated', 'Item', 'test', '2022-12-23'),
('935c434b-71b8-423a-aadf-817527aebb16', 'anas', 'Admin', 'Updated', 'Item', 'tokkkfdhjetj', '2022-12-19'),
('94d05fd7-a4c7-4900-b645-d3c2e778a134', 'anas', 'Admin', 'Updated', 'Item', 'Kumtel Electric Oven', '2022-12-23'),
('9564e482-fe2c-44ff-9720-006abf83ac95', 'anas', 'Admin', 'Created', 'Item', 'test', '2022-12-23'),
('997f01a8-71e7-482e-a27f-b78d2d03990c', 'anas', 'Admin', 'Deleted', 'Item', 'hussien', '2022-12-23'),
('99c6b4ab-1a84-4995-803b-6a0dea4a43c0', 'anasasd', 'Admin', 'Added', 'User', 'anas', '2022-12-16'),
('9a047912-2e3f-492d-9a92-ca92a845cc57', 'anas', 'Admin', 'Updated', 'Item', 'L&rsquo Laptop Backpack', '2022-12-23'),
('9b5586b6-22ab-40ae-aacb-1f072af67421', 'besho', 'cashier', 'Created', 'Customer', 'ahmed osama', '2022-12-22'),
('9cee60c5-59c0-4d04-90b1-4c59f2964583', 'toka', 'user', 'Created', 'Item', 'ICONZ London Backpack', '2022-12-23'),
('9d85b331-bfab-4ec5-9a2c-5e6c8934a80b', 'anas', 'Admin', 'Updated', 'Customer', '', '2022-12-23'),
('9e8adaf2-c78c-4a5e-987f-59d514a385b0', 'anas', 'Admin', 'Updated', 'User', 'anas', '2022-12-23'),
('9e967101-96dd-42f9-b5f3-50740752182b', 'anas', 'Admin', 'Updated', 'User', 'nora', '2022-12-18'),
('9ed102a9-a550-4f7d-b204-d4abe0be418f', 'anas', 'Admin', 'Created', 'Customer', 'ghj', '2022-12-19'),
('9ed7e542-d6da-4eb0-b4ed-6a5d2370097d', 'anas', 'Admin', 'Deleted', 'User', 'hashim', '2022-12-25'),
('a0279047-42ad-412c-8e79-c30ac49743df', 'anas', 'Admin', 'Created', 'Item', 'hhhhh', '2022-12-19'),
('a5d09337-edce-40cf-a239-561b427a0abc', 'anas', 'Admin', 'Updated', 'Item', 'tokkkfdhj', '2022-12-19'),
('a74db783-5b30-4151-8377-f3296651642f', 'anas', 'Admin', 'Created', 'Customer', 'omar hesham', '2022-12-24'),
('a7df379f-555a-4602-b5d8-f560a9d8fc04', 'anas', 'Admin', 'Created', 'Customer', 'Osama Khaled', '2022-12-24'),
('a8209814-802b-4061-9844-b04e3aef59a7', 'anas', 'Admin', 'Updated', 'Item', 'ASUS ROG G14 Laptop', '2022-12-23'),
('a9245711-fac8-48a5-bbc2-0a4436e6dfa5', 'anas', 'Admin', 'Updated', 'Item', 'ehgjhh', '2022-12-19'),
('a9b56330-d918-4eba-a414-043df529bcdd', 'anas', 'Admin', 'Created', 'Item', 'tgsj', '2022-12-19'),
('a9cea892-a38e-4d87-ab39-54cdc9fc384c', 'anas', 'Admin', 'Updated', 'User', 'Norhan Ahmed', '2022-12-24'),
('aaa74b4f-5c9e-4970-8c45-46b5b924fb5f', 'nora', 'Admin', 'Deleted', 'User', 'Ali Yasser', '2022-12-25'),
('adb7a3e7-3fa6-4ddf-b01f-3e0d3c2b6ece', 'anas', 'Admin', 'Deleted', 'Item', 'hhhhh', '2022-12-23'),
('adc6c868-1402-4013-ac5c-b3638b576e7c', 'anas', 'Admin', 'Deleted', 'Item', 'fdg', '2022-12-23'),
('ae37615d-8d24-4a42-80fa-cd3629f4573e', 'anas', 'Admin', 'Created', 'Customer', 'b', '2022-12-19'),
('ae8fa9c4-e41e-4dd5-9c0b-eccf99af02fd', 'anas', 'Admin', 'Created', 'Item', 'gggg', '2022-12-19'),
('b2bcab37-c84b-43d2-b008-ed90cecea84d', 'anas', 'Admin', 'Updated', 'Role', 'fofo', '2022-12-19'),
('b3e54534-b95d-43e6-a23f-053ee226f1da', 'anas', 'Admin', 'Created', 'Item', 'Dell Vostro laptop', '2022-12-23'),
('b49e1ea1-a9fa-4b63-82ed-082ea289add2', 'anas', 'Admin', 'Updated', 'Role', 'toto', '2022-12-19'),
('b4c22e26-f858-456a-b6af-d82ea79953ba', 'anas', 'Admin', 'Created', 'Customer', 'toooo', '2022-12-19'),
('b70df130-3611-410a-8ec2-2f40cc830f5d', 'anas', 'Admin', 'Created', 'Role', 'toto', '2022-12-19'),
('b7beb8a0-237d-4d51-ab13-daf7dcb026d9', 'anas', 'Admin', 'Created', 'Customer', 'maryam', '2022-12-23'),
('b80dd9fa-7f0e-404b-921e-f1aff78e686a', 'anas', 'Admin', 'Created', 'Role', 'uuyuyuu', '2022-12-19'),
('b893ec51-c316-4d53-957b-e0ed951ad53b', 'anas', 'Admin', 'Updated', 'Item', 'Tornado Electric Oven', '2022-12-23'),
('b8c07d36-9e96-4782-9510-23105b525626', 'anasasd', 'Admin', 'Deleted', 'Customer', 'anas', '2022-12-16'),
('ba33954e-6f23-4172-b342-718a968f9b0a', 'anas', 'Admin', 'Deleted', 'Customer', 'sdfg', '2022-12-23'),
('ba3f7f70-a2d8-4697-8aad-38f8a4cfa388', 'anas', 'Admin', 'Updated', 'Item', 'anas', '2022-12-16'),
('ba9a1e1a-784b-4eea-9f62-58485d16b8e1', 'anas', 'Admin', 'Deleted', 'Customer', 'huss', '2022-12-23'),
('bb3d74dd-1971-401e-ad0f-23c90edd3415', 'anas', 'Admin', 'Updated', 'Item', 'Tornado Electric Oven', '2022-12-23'),
('bbaf4d4e-34bb-4f63-9359-601e8b21ff59', 'anas', 'Admin', 'Updated', 'Item', 'toto', '2022-12-19'),
('bcc5d90d-2054-4a15-83c6-da95f8a1c4ed', 'anas', 'Admin', 'Created', 'Customer', 'ahmed samy', '2022-12-23'),
('bd6180ad-7658-4aad-b417-720a81712c11', 'anas', 'Admin', 'Added', 'User', 'asd', '2022-12-16'),
('bf5860e4-24cf-4390-997c-9ac5eec67699', 'anas', 'Admin', 'Created', 'Role', '', '2022-12-17'),
('c0e2eacc-be55-4ebe-88e3-29f62b46243e', 'anas', 'Admin', 'Created', 'Item', 'uuuuuu', '2022-12-19'),
('c2ba8722-099d-4a38-8db8-3e1e9a665073', 'anas', 'Admin', 'Updated', 'Role', 'haha', '2022-12-19'),
('c588f68b-8406-4fad-8746-3f85888ea42c', 'anas', 'Admin', 'Created', 'Customer', 'y', '2022-12-18'),
('c5a64129-86c2-4b3d-8080-cd5b6963a3b2', 'toka', 'user', 'Created', 'Item', 'L&rsquo Laptop Backpack', '2022-12-23'),
('c61449fb-3893-498e-aa5f-4378b53e978d', 'anas', 'Admin', 'Added', 'User', 'bichoy', '2022-12-22'),
('c6339a7d-dfa2-46f6-8b33-7529459d8a65', 'anas', 'Admin', 'Updated', 'Role', 'toto', '2022-12-19'),
('c66b4a39-5faf-410f-85e7-107c1f683b67', 'toka', 'user', 'Created', 'Item', 'test', '2022-12-25'),
('c6d31b40-5deb-47a5-917c-689b7aa1738d', 'anas', 'Admin', 'Deleted', 'Item', 'ehgjhh', '2022-12-19'),
('c7fd5f77-4d1f-4f74-9893-4d1c9255e97c', 'anas', 'Admin', 'Deleted', 'Customer', 'anas', '2022-12-23'),
('c97085de-f1d1-42b9-a1d1-5509d7907b2c', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('ca93a7a9-29e8-4d37-a421-95dac6b29f84', 'anas', 'Admin', 'Deleted', 'Item', 'MicroWave', '2022-12-23'),
('cbb2f81a-097d-46c2-9bf6-b44614dc6d6b', 'anas', 'Admin', 'Updated', 'Customer', 'zyad abd el nasser', '2022-12-23'),
('cd9fd9f1-632c-46c5-a642-833538d48311', 'anas', 'Admin', 'Updated', 'User', 'Anas Hesham', '2022-12-24'),
('cebfd88d-a8d0-4939-9aba-a9a0773b4c88', 'anas', 'Admin', 'Deleted', 'User', 'ttt', '2022-12-23'),
('d0591118-df93-40ae-bf6e-7190137329e8', 'toka', 'user', 'Created', 'Item', 'LG 43 Inch Smart LED TV', '2022-12-23'),
('d11780e2-02f3-40f6-bbb2-9cb2645f51f8', 'anas', 'Admin', 'Updated', 'Customer', 'zyad abd el nasser', '2022-12-23'),
('d1819218-c7b8-4eb7-9cbf-ec5f8ad6bce3', 'anas', 'Admin', 'Updated', 'Item', 'LG 65 Inch Smart TV', '2022-12-23'),
('d3276400-7f8c-4738-bf83-50a86d6a8c6f', 'besho', 'Admin', 'Updated', 'Role', 'anas', '2022-12-22'),
('d55be0e2-e18c-42cf-8e9d-3a4b4b16c31f', 'anas', 'Admin', 'Created', 'Item', 'tu', '2022-12-19'),
('d5a260af-4d28-4498-8f7e-b57d1494e2a7', 'roza', 'roza', 'Created', 'Customer', 'anazz', '2022-12-17'),
('d6a905cb-1d8c-46a7-9a46-92cd3f8ef2d0', 'anas', 'Admin', 'Created', 'Item', 'oven', '2022-12-19'),
('d6c509c3-2a6d-4400-8e38-8819b2fc4b28', 'anas', 'Admin', 'Updated', 'Item', 'Dell Vostro laptop', '2022-12-23'),
('d770ccb8-2a07-4fd1-b9c6-273e2097d76a', 'anas', 'Admin', 'Deleted', 'Item', 'sss', '2022-12-23'),
('d8eb467b-3d5b-45a2-a064-36204cb532f3', 'anas', 'Admin', 'Created', 'Role', 'jrjr', '2022-12-19'),
('d92da792-a360-4372-a02a-842a4c3cb092', 'anas', 'Admin', 'Created', 'Item', 'Sharp Digital Refrigerator', '2022-12-23'),
('d92ef3a0-0130-408e-be3f-a8cac2e22243', 'anas', 'Admin', 'Added', 'User', 'ttt', '2022-12-19'),
('db991f85-3285-4414-bac8-9f98d02a72df', 'anas', 'Admin', 'Updated', 'Role', 'haha', '2022-12-19'),
('de78fac2-39b6-4244-8786-355a2339bb93', 'anas', 'Admin', 'Updated', 'Item', 'LG 43 Inch Smart LED TV', '2022-12-23'),
('df056d1c-924a-4488-a315-59ee64711fba', 'anas', 'Admin', 'Created', 'Customer', 'dfgk', '2022-12-19'),
('df72b952-6ba1-4f3b-987d-110775b0f784', 'anas', 'Admin', 'Created', 'Customer', 'Hosam Hesham', '2022-12-24'),
('dfe70a55-834d-444d-95d2-a7158c6ddf91', 'anas', 'Admin', 'Updated', 'Role', 'Admin', '2022-12-16'),
('dffad7fd-c810-4dd4-84cc-74d4eba33ebf', 'anas', 'Admin', 'Created', 'Item', 'ttt', '2022-12-19'),
('e020a8e5-2c04-41df-9e93-e9308ba3f2dd', 'anas', 'Admin', 'Created', 'Customer', 'ashraf', '2022-12-24'),
('e0815233-f8d0-4c9d-8453-8ea5a3691e3a', 'anas', 'Admin', 'Deleted', 'Customer', 'y', '2022-12-23'),
('e192a569-aff2-4f0c-a11b-62d4acadf72b', 'anas', 'Admin', 'Deleted', 'Item', 'toto', '2022-12-23'),
('e1b8f8b9-89a1-456f-ac7c-0371f26dfc8e', 'anas', 'Admin', 'Updated', 'Item', 'test', '2022-12-23'),
('e2c34c4f-455e-4f92-bb21-a922e4973923', 'anas', 'Admin', 'Deleted', 'Customer', 'anazz', '2022-12-19'),
('e2ded6ef-8161-4700-9729-3350ace211b3', 'anas', 'Admin', 'Created', 'Item', 'ASUS ROG G14 Laptop', '2022-12-23'),
('e2e6732a-4374-40e2-a57b-6ad30d465920', 'anas', 'Admin', 'Deleted', 'Item', 'test', '2022-12-23'),
('e3303e43-d4ba-4c0c-b715-c4ec8aaa68e5', 'anas', 'Admin', 'Updated', 'Customer', 'tota', '2022-12-19'),
('e372cde7-a943-44b9-938d-75e6cdabb3c8', 'anas', 'Admin', 'Deleted', 'Customer', 'ssfdghhh', '2022-12-23'),
('e47ef2ee-0ed7-4745-8fa0-7dd2bd9b050e', 'anas', 'Admin', 'Created', 'Role', 'haha', '2022-12-19'),
('e5eaa941-7301-4d82-b310-5521ba99a5d8', 'anas', 'Admin', 'Updated', 'Item', 'Lenovo Ideapad 3 Laptop', '2022-12-23'),
('e6bed2e5-6041-4d6e-8d9a-28ccc3f41659', 'anas', 'Admin', 'Created', 'Item', 'test', '2022-12-23'),
('e871abb7-4b7b-4056-8929-faae8873ff4f', 'toka', 'user', 'Created', 'Customer', 'anas', '2022-12-16'),
('e88119d3-dd6c-4b23-999b-e9f07e77f64d', 'toka', 'user', 'Created', 'Customer', 'norhan', '2022-12-25'),
('e9ad978d-4e67-4549-b56c-24e828f53cf1', 'anas', 'Admin', 'Updated', 'Item', 'Philips Air Fryer', '2022-12-23'),
('ea35ff85-9fea-46cc-bbfd-cc02c217fee9', 'anas', 'Admin', 'Deleted', 'Item', 'toka', '2022-12-23'),
('ec8909ba-5edb-4736-beb3-6a1d58ff728a', 'anas', 'Admin', 'Created', 'Customer', 'Yomna Ehab', '2022-12-23'),
('ed6fb489-7f84-4d96-88d1-ea2ee1c60e28', 'anas', 'Admin', 'Deleted', 'Item', 'tokkkfdhjetj', '2022-12-19'),
('ef998c19-1b74-473c-8fae-302b03e431ca', 'anas', 'Admin', 'Updated', 'Role', 'cashier', '2022-12-22'),
('f2bd8afa-57e4-4890-8698-bdf9f8cdee5e', 'anas', 'Admin', 'Created', 'Customer', 'toka', '2022-12-19'),
('f2d3f0be-e105-469f-a5c8-3cd2608b49bd', 'anas', 'Admin', 'Deleted', 'Customer', 'ttttt', '2022-12-19'),
('f73a95a5-b6f6-4040-ac6b-34b946d606e8', 'anas', 'Admin', 'Created', 'Item', 'Philips Air Fryer', '2022-12-23'),
('f7e46552-f9db-4cdb-9831-e0dba63c6ad5', 'anas', 'Admin', 'Created', 'Customer', '', '2022-12-19'),
('f84a7bd2-4adc-4204-a90c-7f4aa3a00ebc', 'anas', 'Admin', 'Updated', 'Role', 'ahmed', '2022-12-19'),
('f8bcce38-a84c-4f20-b31e-a857ec9aec94', 'anas', 'Admin', 'Created', 'Customer', 'menna', '2022-12-24'),
('f8ed1838-764e-4de9-a787-ad8a80bc3fc3', 'anas', 'Admin', 'Updated', 'Item', 'Kumtel Electric Oven', '2022-12-23'),
('fa58c152-fbb2-46e2-b41b-98ee381dcd36', 'anas', 'Admin', 'Deleted', 'User', 'anas', '2022-12-23'),
('fbe9a343-419f-4d34-a599-a8e297fe0242', 'anas', 'Admin', 'Created', 'Item', 'test', '2022-12-23'),
('fbfd1d44-a5af-4905-a399-4f898a3fb92e', 'anas', 'Admin', 'Created', 'Role', 'cashier', '2022-12-22'),
('fc69bbf3-3f7c-4876-b543-963c879288a0', 'anas', 'Admin', 'Updated', 'Item', 'Sonai Plus Oven', '2022-12-23'),
('fccc7f3d-a9ae-4608-a189-72a99044ea88', 'anas', 'Admin', 'Added', 'User', 'ahmed rezk', '2022-12-17'),
('ffcb53e9-4efa-4f45-a435-dc45a596c293', 'anas', 'Admin', 'Updated', 'Customer', 'Mahmoud Shalaby', '2022-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `canCreateCustomer` tinyint(1) DEFAULT '1',
  `canViewCustomers` tinyint(1) DEFAULT '0',
  `canDeleteCustomer` tinyint(1) DEFAULT '0',
  `canUpdateCustomer` tinyint(1) DEFAULT '0',
  `canCreateItem` tinyint(1) DEFAULT '0',
  `canViewItems` tinyint(1) DEFAULT '0',
  `canDeleteItem` tinyint(1) DEFAULT '0',
  `canUpdateItem` tinyint(1) DEFAULT '0',
  `canViewUsers` tinyint(1) DEFAULT '0',
  `canCreateUser` tinyint(1) DEFAULT '0',
  `canViewLogs` tinyint(1) DEFAULT '0',
  `canCreateLog` tinyint(1) DEFAULT '0',
  `canDeleteLog` tinyint(1) DEFAULT '0',
  `canCreateRole` tinyint(1) DEFAULT '0',
  `canDeleteRole` tinyint(1) DEFAULT '0',
  `canUpdateRole` tinyint(1) DEFAULT '0',
  `canViewRoles` tinyint(1) DEFAULT '0',
  `canDeleteUser` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `canCreateCustomer`, `canViewCustomers`, `canDeleteCustomer`, `canUpdateCustomer`, `canCreateItem`, `canViewItems`, `canDeleteItem`, `canUpdateItem`, `canViewUsers`, `canCreateUser`, `canViewLogs`, `canCreateLog`, `canDeleteLog`, `canCreateRole`, `canDeleteRole`, `canUpdateRole`, `canViewRoles`, `canDeleteUser`) VALUES
('00e99cd1-9ae9-4264-8567-2dc379e2c8bb', 'Accountant ', 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('0550526b-119f-4330-b47c-d7665c8e690c', 'Admin', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1),
('d1507a50-932d-430c-a72e-a68b503a1e10', 'user', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('d6980fcb-ea83-4b04-82bc-a6013883489b', 'cashier', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `name` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `roleName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `userName`, `password`, `roleName`) VALUES
('0b881dbc-add2-4ba3-96f2-3a91d9d9f420', 'Hussien Mostafa', 's7s', '00000000', 'user'),
('7b186972-a39c-43a9-b74d-9645d69025ed', 'Norhan Ahmed', 'nora', '88888888', 'Admin'),
('d6a119d3-1a98-41c3-9186-8d157c2ba1d8', 'Toka Abdel Gawad', 'toka', '00000000', 'user'),
('f00cb8f7-4d20-4112-941f-9b7b08fdac53', 'Anas Hesham', 'anas', '00000000', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customeritem`
--
ALTER TABLE `customeritem`
  ADD KEY `customerId` (`customerId`,`itemId`) USING BTREE,
  ADD KEY `itemId` (`itemId`) USING BTREE;

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_ibfk_2` (`roleName`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customeritem`
--
ALTER TABLE `customeritem`
  ADD CONSTRAINT `customeritem_ibfk_1` FOREIGN KEY (`customerId`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `customeritem_ibfk_2` FOREIGN KEY (`itemId`) REFERENCES `items` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleName`) REFERENCES `roles` (`name`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`roleName`) REFERENCES `roles` (`name`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
