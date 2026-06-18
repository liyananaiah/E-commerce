

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE DATABASE IF NOT EXISTS `amaclone` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `amaclone`;


CREATE TABLE `brands` (
  `brand_id` int(10) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(5, 'LG'),
(6, 'Biba'),
(7, 'Flying Machine'),
(8, 'Nike'),
(9, 'Adidas'),
(10, 'Kidzee'),
(11, 'Ikea'),
(12, 'Philips');


CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `total_amount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Electronics'),
(2, 'Ladies Wear'),
(3, 'Mens Wear'),
(4, 'Kids Wear'),
(5, 'Home Appliances'),
(6, 'Sports');



CREATE TABLE `customer_order` (
  `id` int(100) NOT NULL,
  `uid` int(10) NOT NULL,
  `pid` int(100) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_price` int(100) NOT NULL,
  `p_qty` int(100) NOT NULL,
  `p_status` varchar(100) NOT NULL,
  `tr_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `customer_order` (`id`, `uid`, `pid`, `p_name`, `p_price`, `p_qty`, `p_status`, `tr_id`) VALUES
(30, 2, 6, 'LG Aqua 2', 15000, 1, 'CONFIRMED', '15179'),
(31, 2, 15, 'Football Shoes', 2500, 2, 'CONFIRMED', '15179'),
(32, 2, 16, 'Football', 600, 4, 'CONFIRMED', '15179');



CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(10) NOT NULL,
  `product_title` varchar(50) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, '1', 2, 'Samsung Duos 2', 5000, 'Samsung Duos 2 mobile phone', 'samsungduos.JPG', 'samsung mobile electronics'),
(2, '1', 3, 'iPhone 5s', 25000, 'iPhone mobile ', 'iphonemobile.JPG', 'apple iphone mobile electronics'),
(3, '1', 3, 'iPad', 30000, 'iPad tablet for use', 'iPad.jpg', 'apple ipad tablet'),
(4, '1', 2, 'Samsung Tab', 10000, 'samsung tablet for home use', 'samsungtab.JPG', 'samsung tablet electronics'),
(5, '1', 4, 'Sony Vaio Laptop', 25000, 'Vaio Laptop', 'vaio.JPG', 'sony laptop vaio'),
(6, '1', 5, 'LG Aqua 2', 15000, 'LG aqua mobile phone all featured', 'lgaqua.JPG', 'lg mobile phone aqua'),
(7, '2', 6, 'Draped Lehenga', 1500, 'Matching Lehenga', 'lehenga.JPG', 'lehenga biba'),
(8, '2', 6, 'SIlk Saree', 1000, 'Pure Silk Saree', 'saree.JPG', 'biba saree'),
(9, '3', 7, 'T-Shirt', 700, 'T-Shirt for summer', 'tshirt.JPG', 'flying machine tshirt'),
(10, '3', 7, 'FM Jeans', 1800, 'Jeans for the ones who do', 'jeans.JPG', 'flying machine jeans'),
(11, '4', 10, 'Baby Shirt', 500, 'Shirt for the babies', 'babyshirt.JPG', 'kids shirt kidzee'),
(12, '4', 10, 'Kids Jeans', 800, 'Jeans for kids', 'kidsjeans.JPG', 'kids jeans kidzee'),
(13, '5', 11, 'Computer Table', 2000, 'Table for computer', 'computertable.JPG', 'computer table ikea '),
(14, '5', 12, 'Trimmer', 1500, 'Trimmer by Philips', 'philipstrimmer.JPG', 'philips trimmer'),
(15, '6', 8 ,'Football Shoes', 2500, 'Shoes to play football by Nike', 'nikeshoes.JPG', 'nike shoes football'),
(16, '6', 9, 'Football', 600, 'Football by Adidas', 'adidasfootball.JPG', 'football adidas');





CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Satyam', 'Raj', 'satyammast@gmail.com', '3814d460c26c2dbab2d80294d2cc9882', '8235639917', 'Prem Electronics Block Road Ratu', 'Prem Electronics Block Road Ratu'),
(2, 'Abhijeet', 'Kumar', 'abhinav@krotos.com', '6cebe3b43c4495fdf87fcaa43b485236', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(3, 'Krotos', 'Kumar', 'kroto@star.com', 'e3daab6a6b16a140aaf0f1df98d3be24', '7631649503', 'West Lohanipur, Kadamkuan, MNS Lane', 'Patna'),
(4, 'Pranav', 'Prem', 'pranav.prem@gmail.com', '929847725b8d48b47ecba736b0d04520', '8235639917', 'Prem Electronics Block Road Ratu', 'sdsd'),
(5, 'Shubham', 'Raj', 'shubham@gmail.com', '5568fda880263b9be0b72104354fa3dc', '8235639917', 'Prem Electronics Block Road Ratu', 'bangalore');


ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);


ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);


ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);



ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

ALTER TABLE `cart`
ADD CONSTRAINT `fk_cart_products`
FOREIGN KEY (`p_id`)
REFERENCES `products` (`product_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE `cart`
ADD CONSTRAINT `fk_cart_products`
FOREIGN KEY (`p_id`)
REFERENCES `products` (`product_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE `customer_order`
ADD CONSTRAINT `fk_cart_products`
FOREIGN KEY (`p_id`)
REFERENCES `products` (`product_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE `customer_order`
ADD CONSTRAINT `fk_customer_order_products`
FOREIGN KEY (`pid`)
REFERENCES `products` (`product_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE `customer_order`
ADD CONSTRAINT `fk_customer_order_user_info`
FOREIGN KEY (`uid`)
REFERENCES `user_info` (`user_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;


ALTER TABLE `products`
ADD CONSTRAINT `fk_products_categories`
FOREIGN KEY (`cat_id`)
REFERENCES `categories` (`cat_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;

ALTER TABLE `products`
ADD CONSTRAINT `fk_products_brands`
FOREIGN KEY (`brand_id`)
REFERENCES `brands` (`brand_id`)
ON UPDATE CASCADE
ON DELETE CASCADE;


ALTER TABLE `brands`
  MODIFY `brand_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `customer_order`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;


ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;



