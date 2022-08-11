-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.29 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for haivi
CREATE DATABASE IF NOT EXISTS `haivi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `haivi`;

-- Dumping structure for table haivi.brand
CREATE TABLE IF NOT EXISTS `brand` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `NAME_EN` varchar(250) DEFAULT NULL,
  `NAME_VI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.brand: ~2 rows (approximately)
INSERT IGNORE INTO `brand` (`ID`, `NAME_EN`, `NAME_VI`) VALUES
	(1, 'Hải vị Brand', 'Nhãn hiệu Hải vị'),
	(2, 'Cochi Brand', 'Nhãn hiệu Cochi');

-- Dumping structure for table haivi.category
CREATE TABLE IF NOT EXISTS `category` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `NAME_EN` varchar(250) DEFAULT NULL,
  `NAME_VI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.category: ~4 rows (approximately)
INSERT IGNORE INTO `category` (`ID`, `NAME_EN`, `NAME_VI`) VALUES
	(1, 'From ALIVE raw material', 'Sản phẩm từ nguyên liệu Tôm Oxy'),
	(2, 'From FRESH raw material', 'Sản phẩm từ nguyên liệu Tôm tươi'),
	(4, 'LOPSTER ALIVE raw meterial', 'Tôm hùm OXY'),
	(5, 'MIX ITEMS', 'Sản phẩm kết hợp'),
	(6, 'Pangasius', 'Cá Tra');

-- Dumping structure for table haivi.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint NOT NULL DEFAULT '0',
  `NUMBER` varchar(50) NOT NULL DEFAULT '0',
  `TOTAL` double NOT NULL DEFAULT '0',
  `CHECKOUT` int DEFAULT '0',
  `CHECK_PAYMENT` int DEFAULT '0',
  `ADDRESS_SHIP` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DAY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.orders: ~3 rows (approximately)
INSERT IGNORE INTO `orders` (`ID`, `USER_ID`, `NUMBER`, `TOTAL`, `CHECKOUT`, `CHECK_PAYMENT`, `ADDRESS_SHIP`, `DAY`) VALUES
	(1, 7, '72022-08-08', 33, 1, 1, 'Như nơi ở', '2022-08-08'),
	(2, 16, '162022-08-11', 154, 1, 1, 'Như nơi ở', '2022-08-11'),
	(3, 16, '162022-08-11', 120, 1, 1, 'Như nơi ở', '2022-08-11');

-- Dumping structure for table haivi.product
CREATE TABLE IF NOT EXISTS `product` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `CODE_EN` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CODE_VI` varchar(250) DEFAULT NULL,
  `NAME_EN` varchar(250) DEFAULT NULL,
  `NAME_VI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PACKING` varchar(250) DEFAULT NULL,
  `ELEMENT_EN` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `ELEMENT_VI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `USER_MANUAL_EN` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `USER_MANUAL_VI` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `EXPIRY` varchar(50) DEFAULT NULL,
  `DESCRIPTION_EN` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DESCRIPTION_VI` varchar(350) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `CATEGORY_ID` bigint DEFAULT NULL,
  `BRAND_ID` bigint DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `STATUS` int DEFAULT NULL,
  `IMAGE` varchar(50) DEFAULT NULL,
  `IMAGE_1` varchar(50) DEFAULT NULL,
  `IMAGE_2` varchar(50) DEFAULT NULL,
  `IMAGE_3` varchar(50) DEFAULT NULL,
  `IMAGE_4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.product: ~23 rows (approximately)
INSERT IGNORE INTO `product` (`ID`, `CODE_EN`, `CODE_VI`, `NAME_EN`, `NAME_VI`, `PACKING`, `ELEMENT_EN`, `ELEMENT_VI`, `USER_MANUAL_EN`, `USER_MANUAL_VI`, `EXPIRY`, `DESCRIPTION_EN`, `DESCRIPTION_VI`, `CATEGORY_ID`, `BRAND_ID`, `PRICE`, `STATUS`, `IMAGE`, `IMAGE_1`, `IMAGE_2`, `IMAGE_3`, `IMAGE_4`) VALUES
	(1, 'lopster-alive-raw-material', NULL, 'Lopster Alive Raw Material', 'Tôm hùm hấp ăn liền', '1 pcs/tray 300g', '<p>Lopster (>99%), salt (<1%)</p>', '<p>Tôm hùm(>99%), muối (<1%)</p>', 'Take it out and use it right away', 'Lấy ra dùng ngay', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 4, 1, 80, 1, '1660093129222Lopster.jpg', '1660093134779Lopster1.jpg', '1660093138314Lopster2.jpg', '1660093142425Lopster3.JPG', '1660093146063Lopster4.jpg'),
	(2, 'frozen-vannamei-raw-peeled-tail-on', NULL, 'Frozen Vannamei Raw Peeled Tail On', 'TÔM THỊT còn đuôi', '40-50 pcs/pag 500g', '<p>Shrimp (>99%), salt (<1%)</p>', '<p>Tôm thẻ (>99%), muối (<1%)</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 1, 30, 1, '1659424521786RawPTO.jpg', '1659424529901RawPTO1.jpg', '1659424533441RawPTO2.jpg', '1659424539320RawPTO3.jpg', '1659424543058RawPTO4.jpg'),
	(3, 'frozen-super-fresh-vannamei-cooked-peeled-tail-on-500g', NULL, 'Frozen Super Fresh Vannamei Cooked Peeled Tail On 500g', 'Tôm OXY hấp bóc vỏ còn đuôi ăn liền túi 500g', '40-50 pcs/pag 500g', '<p>Shrimp (>99%), salt (<1%)</p>', '<p>Tôm thẻ (>99%), muối (<1%)</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 1, 30, 1, '1660094036551CoPTO500g.jpg', '1660094036551CoPTO500g.jpg', '1660094048849CoPTO500g2.jpg', '1660094053022CoPTO500g3.jpg', '1660094057494CoPTO500g4.jpg'),
	(4, 'frozen-super-fresh-vannamei-sushi-with-head-meat-200g', NULL, 'Frozen Super Fresh Vannamei Sushi With Head Meat 200g', 'Tôm Thẻ hấp xẻ bướm đông lạnh 200g', '5 pcs/tray 200g', 'Vannamei shrimp (>99%), salt (<1%)', 'Tôm thẻ (>99%), muối (<1%)', '<p>Defrost (leave the bag of shrimp in water for about 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p> <p>Can prepare dishes such as: Rice rolls , mix salad,...,/p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p> <p>Có thể chế biến các món ăn như: Cơm cuộn, trộn gỏi,...,/p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 1, 20, 1, '1660039074878SushiHM.jpg', '1660039079862SushiHM1.jpg', '1660039085053SushiHM2.jpg', '1660039090619SushiHM3.jpg', '1660039095366SushiHM4.jpg'),
	(5, 'frozen-super-fresh-vannamei-sushi-with-head-meat-500g', NULL, 'Frozen Super Fresh Vannamei Sushi With Head Meat 500g', 'Tôm Thẻ hấp xẻ bướm đông lạnh 500g', '10 pcs/tray 500g', 'Vannamei shrimp (>99%), salt (<1%)', 'Tôm thẻ (>99%), muối (<1%)', '<p>Defrost (leave the bag of shrimp in water for about 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p> <p>Can prepare dishes such as: Rice rolls , mix salad,...,/p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p> <p>Có thể chế biến các món ăn như: Cơm cuộn, trộn gỏi,...,/p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 1, 40, 1, '1660045833533SushiHM500g.jpg', '1660045837726SushiHM500g1.jpg', '1660045842012SushiHM500g2.jpg', '1660046219670SushiHM500g3.jpg', '1660046219670SushiHM500g3.jpg'),
	(6, 'super-fresh-vannamei-blanched-sushi-700g', NULL, 'Super Fresh Vannamei Blanched Sushi 700g', 'Tôm Thẻ OXY trụng xẻ bướm 700g', '10 pcs/tray 700g', 'Vannamei shrimp (>99%), salt (<1%)', 'Tôm thẻ (>99%), muối (<1%)', '<p>Defrost (leave the bag of shrimp in water for about 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p> <p>Can prepare dishes such as: Rice rolls , mix salad,...,/p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p> <p>Có thể chế biến các món ăn như: Cơm cuộn, trộn gỏi,...,/p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 2, 90, 1, '1660050398271bsu.jpg', '1660050401818bsu1.jpg', '1660050405350bsu2.jpg', '1660050405350bsu2.jpg', '1660050405350bsu2.jpg'),
	(7, 'super-fresh-vannamei-blanched-sushi-ebi-600g', NULL, 'Super Fresh Vannamei Blanched Sushi Ebi 600g', 'Tôm Thẻ OXY trụng xẻ bướm 600g', '20 pcs/tray 600g', 'Vannamei shrimp (>99%), salt (<1%)', 'Tôm thẻ (>99%), muối (<1%)', '<p>Defrost (leave the bag of shrimp in water for about 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p> <p>Can prepare dishes such as: Rice rolls , mix salad,... Or eat immediately after defrosting, no need to cook again</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p> <p>Có thể chế biến các món ăn như: Cơm cuộn, trộn gỏi,... Hoặc ăn ngay sau khi rã đông, không cần náu lại</p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 2, 70, 1, '1660052115554bsuebi.jpg', '1660052118910bsuebi1.jpg', '1660052122473bsuebi2.jpg', '1660052127485bsuebi3.jpg', '1660052127485bsuebi3.jpg'),
	(8, 'frozen-super-fresh-vannamei-cooked-peeled-tail-on-200g', NULL, 'Frozen Super Fresh Vannamei Cooked Peeled Tail On 200g', 'Tôm OXY hấp bóc vỏ còn đuôi ăn liền khay 200g', '10 pcs/tray 200g', '<p>Shrimp (>99%), salt (<1%)</p>', '<p>Tôm thẻ (>99%), muối (<1%)</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 2, 60, 1, '1660096188390CoPTO200g.jpg', '1660096193052CoPTO200g1.jpg', '1660096209696CoPTO200g3.jpg', '1660096214531CoPTO200g4.jpg', '1660096209696CoPTO200g3.jpg'),
	(9, 'frozen-super-fresh-vannamei-whole-shrimp-250g', NULL, 'Frozen Super Fresh Vannamei Whole Shrimp 250g', 'Tôm OXY nguyên con đông lạnh 200g', '10 pcs/tray 250g', '<p>Shrimp 100%</p>', '<p>Tôm thẻ 100%</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 2, 40, 1, '1660097179584AliveHoso.jpg', '1660097183760AliveHoso1.jpg', '1660097187990AliveHoso2.jpg', '1660097192808AliveHoso3.jpg', '1660097196630AliveHoso4.jpg'),
	(10, 'frozen-vannamei-raw-peeled-tail-off', NULL, 'Frozen Vannamei Raw Peeled Tail Off', 'Tôm Thẻ bóc vỏ bỏ đuôi đông lạnh', '30-40 pcs/pag 500g', '<p>Shrimp (>97%), salt, trehalose, acidity regulator (E331(ii)), stabilizer (E332(ii)).</p>', '<p>Tôm thẻ (>97%), muối, đường trehalose, chất điều chỉnh độ axit (E331(ii)), chất ổn định (E332(ii)).</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '18 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 1, 30, 1, '1660098585487FreshRawPD.jpg', '1660098592054FreshRawPD1.jpg', '1660098596202FreshRawPD2.jpg', '1660098603959FreshRawPD3.jpg', '1660098610515FreshRawPD4.jpg'),
	(11, 'vannamei-nobashi-ebi-500g', NULL, 'Vannamei Nobashi Ebi 500g', 'Tôm Thẻ bóc vỏ còn đuôi duỗi đông lạnh 500g', '20 pcs/tray 500g', '<p>Shrimp (>97%), salt, trehalose, acidity regulator (E331(ii)), stabilizer (E332(ii)).</p>', '<p>Tôm thẻ (>97%), muối, đường trehalose, chất điều chỉnh độ axit (E331(ii)), chất ổn định (E332(ii)).</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 20, 1, '1660102339475FreshNobashiEbi.jpg', '1660102343064FreshNobashiEbi1.jpg', '1660102347624FreshNobashiEbi2.jpg', '1660102347624FreshNobashiEbi2.jpg', '1660102347624FreshNobashiEbi2.jpg'),
	(12, 'vannamei-nobashi-ebi-300g', NULL, 'Vannamei Nobashi Ebi 300g', 'Tôm Thẻ bóc vỏ còn đuôi duỗi đông lạnh 300g', '10 pcs/tray 300g', '<p>Shrimp (>97%), salt, trehalose, acidity regulator (E331(ii)), stabilizer (E332(ii)).</p>', '<p>Tôm thẻ (>97%), muối, đường trehalose, chất điều chỉnh độ axit (E331(ii)), chất ổn định (E332(ii)).</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 20, 1, '1660102867675FreshNobashiEbi300g.jpg', '1660102871600FreshNobashiEbi300g1.jpg', '1660102875529FreshNobashiEbi300g2.jpg', '1660102879572FreshNobashiEbi300g3.jpg', '1660102879572FreshNobashiEbi300g3.jpg'),
	(13, 'vannamei-raw-breaded-shrimp-ebifry-360g', NULL, 'Vannamei Raw Breaded Shrimp Ebifry 360g', 'Tôm thẻ tẩm bột xù 360g', '10 pcs/tray 360g', '<p>Shrimp (48%), modified starch, egg white powder, calcium, flour, amino acids (INS 621), glucose, baking powder, shortening, yeast, bread additives, stabilizers ( E332(ii)).</p>', '<p>Tôm thẻ (48%), tinh bột biến tính, bột lòng trắng trứng, canxi, bột mì, amino axit (INS 621), glucose, bột nổi, shortening, men, phụ gia bánh mì, chất ổn định (E332(ii)).</p>', '<p>- Step 1: prepare frying oil: The oil level has just submerged the shrimp, adjust the heat to medium for about 5 minutes, the oil boils at a temperature of 170 to 180 degrees C.</p><p>- Step 2: Fry the shrimp: Do not defrost, fry shrimp until golden (4-5 minutes).</p>', '<p>- Bước 1: chuẩn bị dầu chiên: Mức dầu vừa ngập tôm, chỉnh lửa vừa khoảng 5 phút, dầu sôi ở nhiệt độ 170 đến 180 độ C.</p><p>- Bước 2: Chiên tôm: Không rã đông, cho tôm vào chiên đến khi vàng đều (4-5 phút).</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 20, 1, '1660104278038FreshRawEbi360g.jpg', '1660104284662FreshRawEbi360g1.jpg', '1660104288183FreshRawEbi360g2.jpg', '1660104288183FreshRawEbi360g2.jpg', '1660104288183FreshRawEbi360g2.jpg'),
	(14, 'vannamei-raw-breaded-shrimp-ebifry-900g', NULL, 'Vannamei Raw Breaded Shrimp Ebifry 900g', 'Tôm thẻ tẩm bột xù 900g', '20 pcs/pack 900g', '<p>Shrimp (48%), modified starch, egg white powder, calcium, flour, amino acids (INS 621), glucose, baking powder, shortening, yeast, bread additives, stabilizers ( E332(ii)).</p>', '<p>Tôm thẻ (48%), tinh bột biến tính, bột lòng trắng trứng, canxi, bột mì, amino axit (INS 621), glucose, bột nổi, shortening, men, phụ gia bánh mì, chất ổn định (E332(ii)).</p>', '<p>- Step 1: prepare frying oil: The oil level has just submerged the shrimp, adjust the heat to medium for about 5 minutes, the oil boils at a temperature of 170 to 180 degrees C.</p><p>- Step 2: Fry the shrimp: Do not defrost, fry shrimp until golden (4-5 minutes).</p>', '<p>- Bước 1: chuẩn bị dầu chiên: Mức dầu vừa ngập tôm, chỉnh lửa vừa khoảng 5 phút, dầu sôi ở nhiệt độ 170 đến 180 độ C.</p><p>- Bước 2: Chiên tôm: Không rã đông, cho tôm vào chiên đến khi vàng đều (4-5 phút).</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 40, 1, '1660104785013FreshRawEbi900g.jpg', '1660104789274FreshRawEbi900g1.jpg', '1660104793186FreshRawEbi900g2.jpg', '1660104796706FreshRawEbi900g3.jpg', '1660104793186FreshRawEbi900g2.jpg'),
	(15, 'vannamei-breaded-shrimp-ebifry-450g', NULL, 'Vannamei Breaded Shrimp Ebifry 450g', 'Tôm thẻ thượng hạng tẩm bột xù 450g', '10pcs/tray 450g', '<p>Shrimp (48%), modified starch, egg white powder, calcium, flour, amino acids (INS 621), glucose, baking powder, shortening, yeast, bread additives, stabilizers ( E332(ii)).</p>', '<p>Tôm thẻ (48%), tinh bột biến tính, bột lòng trắng trứng, canxi, bột mì, amino axit (INS 621), glucose, bột nổi, shortening, men, phụ gia bánh mì, chất ổn định (E332(ii)).</p>', '<p>- Step 1: prepare frying oil: The oil level has just submerged the shrimp, adjust the heat to medium for about 5 minutes, the oil boils at a temperature of 170 to 180 degrees C.</p><p>- Step 2: Fry the shrimp: Do not defrost, fry shrimp until golden (4-5 minutes).</p>', '<p>- Bước 1: chuẩn bị dầu chiên: Mức dầu vừa ngập tôm, chỉnh lửa vừa khoảng 5 phút, dầu sôi ở nhiệt độ 170 đến 180 độ C.</p><p>- Bước 2: Chiên tôm: Không rã đông, cho tôm vào chiên đến khi vàng đều (4-5 phút).</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 30, 1, '1660105505375FreshEbi450g.jpg', '1660105508489FreshEbi450g1.jpg', '1660105512538FreshEbi450g2.jpg', '1660105516216FreshEbi450g3.jpg', '1660105520325FreshEbi450g4.jpg'),
	(16, 'vannamei-breaded-shrimp-ebifry-1kg', NULL, 'Vannamei Breaded Shrimp Ebifry 1kg', 'Tôm thẻ thượng hạng tẩm bột xù 1kg', '20pcs/pack 1kg', '<p>Shrimp (48%), modified starch, egg white powder, calcium, flour, amino acids (INS 621), glucose, baking powder, shortening, yeast, bread additives, stabilizers ( E332(ii)).</p>', '<p>Tôm thẻ (48%), tinh bột biến tính, bột lòng trắng trứng, canxi, bột mì, amino axit (INS 621), glucose, bột nổi, shortening, men, phụ gia bánh mì, chất ổn định (E332(ii)).</p>', '<p>- Step 1: prepare frying oil: The oil level has just submerged the shrimp, adjust the heat to medium for about 5 minutes, the oil boils at a temperature of 170 to 180 degrees C.</p><p>- Step 2: Fry the shrimp: Do not defrost, fry shrimp until golden (4-5 minutes).</p>', '<p>- Bước 1: chuẩn bị dầu chiên: Mức dầu vừa ngập tôm, chỉnh lửa vừa khoảng 5 phút, dầu sôi ở nhiệt độ 170 đến 180 độ C.</p><p>- Bước 2: Chiên tôm: Không rã đông, cho tôm vào chiên đến khi vàng đều (4-5 phút).</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 30, 1, '1660105875460FreshEbi1kg.jpg', '1660105879394FreshEbi1kg1.jpg', '1660105884716FreshEbi1kg2.jpg', '1660105889641FreshEbi1kg3.JPG', '1660105884716FreshEbi1kg2.jpg'),
	(17, 'vannamei-breaded-shrimp-tartar', NULL, 'Vannamei Breaded Shrimp Tartar', 'Tôm thẻ thượng hạng tẩm bột xù sốt tartar', '8pcs/tray 160g', '<p>Shrimp (48%), modified starch, egg white powder, calcium, flour, amino acids (INS 621), glucose, baking powder, shortening, yeast, bread additives, stabilizers ( E332(ii)).</p>', '<p>Tôm thẻ (48%), tinh bột biến tính, bột lòng trắng trứng, canxi, bột mì, amino axit (INS 621), glucose, bột nổi, shortening, men, phụ gia bánh mì, chất ổn định (E332(ii)).</p>', '<p>- Step 1: prepare frying oil: The oil level has just submerged the shrimp, adjust the heat to medium for about 5 minutes, the oil boils at a temperature of 170 to 180 degrees C.</p><p>- Step 2: Fry the shrimp: Do not defrost, fry shrimp until golden (4-5 minutes).</p>', '<p>- Bước 1: chuẩn bị dầu chiên: Mức dầu vừa ngập tôm, chỉnh lửa vừa khoảng 5 phút, dầu sôi ở nhiệt độ 170 đến 180 độ C.</p><p>- Bước 2: Chiên tôm: Không rã đông, cho tôm vào chiên đến khi vàng đều (4-5 phút).</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 40, 1, '1660106423985FreshTartar.jpg', '1660106427184FreshTartar1.jpg', '1660106482622FreshTartar2.jpg', '1660106486704FreshTartar3.jpg', '1660106451223FreshTartar4.jpg'),
	(18, 'vannamei-breaded-shrimp-softshell', NULL, 'Vannamei Breaded Shrimp Softshell', 'Tôm thẻ thượng hạng tẩm bột xù Softshell', '5pcs/tray 160g', '<p>Shrimp (48%), modified starch, egg white powder, calcium, flour, amino acids (INS 621), glucose, baking powder, shortening, yeast, bread additives, stabilizers ( E332(ii)).</p>', '<p>Tôm thẻ (48%), tinh bột biến tính, bột lòng trắng trứng, canxi, bột mì, amino axit (INS 621), glucose, bột nổi, shortening, men, phụ gia bánh mì, chất ổn định (E332(ii)).</p>', '<p>- Step 1: prepare frying oil: The oil level has just submerged the shrimp, adjust the heat to medium for about 5 minutes, the oil boils at a temperature of 170 to 180 degrees C.</p><p>- Step 2: Fry the shrimp: Do not defrost, fry shrimp until golden (4-5 minutes).</p>', '<p>- Bước 1: chuẩn bị dầu chiên: Mức dầu vừa ngập tôm, chỉnh lửa vừa khoảng 5 phút, dầu sôi ở nhiệt độ 170 đến 180 độ C.</p><p>- Bước 2: Chiên tôm: Không rã đông, cho tôm vào chiên đến khi vàng đều (4-5 phút).</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 2, 30, 1, '1660108071425FreshSoftshell.jpg', '1660108074696FreshSoftshell1.jpg', '1660108079162FreshSoftshell2.jpg', '1660108082735FreshSoftshell3.jpg', '1660108088042FreshSoftshell4.jpg'),
	(19, 'super-fresh-vannamei-cooked-ho-center-peeled', NULL, 'Super Fresh Vannamei Cooked HO Center Peeled', 'Tôm Thẻ OXY hấp bóc vỏ còn đầu còn đuôi', '10pcs/tray 200g', '<p>Shrimp 100%</p>', '<p>Tôm thẻ 100%</p>', 'Take it out and use it right away', 'Dùng ngay sau khi rã đông', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 2, 50, 1, '1660114665706AliveCookBikini.jpg', '1660114669367AliveCookBikini1.jpg', '1660114672565AliveCookBikini2.jpg', '1660114675773AliveCookBikini3.jpg', '1660114675773AliveCookBikini3.jpg'),
	(20, 'super-fresh-vannamei-cooked-pto-cocktail-shrimp-ring', NULL, 'Super Fresh Vannamei Cooked PTO Cocktail Shrimp Ring', 'Tôm Thẻ OXY hấp bóc vỏ còn đuôi', '20pcs/tray 500g', '<p>Shrimp (>99%), salt (<1%)</p>', '<p>Tôm thẻ (>99%), muối (<1%)</p>', 'Take it out and use it right away', 'Dùng ngay sau khi rã đông', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 1, 2, 60, 1, '1660115326577AilveCocktail.jpg', '1660115329783AilveCocktail1.jpg', '1660115332778AilveCocktail2.jpg', '1660115335647AilveCocktail3.jpg', '1660115332778AilveCocktail2.jpg'),
	(21, 'super-fresh-vannamei-dried-shrimp', NULL, 'Super Fresh Vannamei Dried Shrimp', 'Tôm khô', '80-100pcs/pag 100g', '<p>Shrimp (>99%), salt (<1%)</p>', '<p>Tôm thẻ (>99%), muối (<1%)</p>', 'Take it out and use it right away', 'Dùng ngay sau khi rã đông', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 1, 20, 1, '1660116632826FreshDriedShrimp.jpg', '1660116636289FreshDriedShrimp1.jpg', '1660116640347FreshDriedShrimp2.jpg', '1660116644213FreshDriedShrimp3.jpg', '1660116647835FreshDriedShrimp4.png'),
	(22, 'super-fresh-vannamei-dice-cut', NULL, 'Super Fresh Vannamei Dice Cut', 'Tôm thẻ hấp cắt nhỏ đông lạnh', 'pag 1kg', '<p>Shrimp (>99%), salt (<1%)</p>', '<p>Tôm thẻ (>99%), muối (<1%)</p>', '<p>Defrost (leave the bag of shrimp in water for 10-30 minutes) or refrigerate for 4-6 hours and then cook.</p><p>Can process dishes such as fried noodles, shrimp cakes,...</p>', '<p>Rã đông (để nguyên túi tôm trong nước khoản 10-30 phút) hoặc ngăn mát tủ lạnh từ 4-6 giờ rồi nấu chín.</p><p>Có thể chế biến các món ăn như mì xào, bánh tôm,...</p>', '24 Month', '<p>Store refrigerated at minus 18 degrees Celsius or freezer.</p><p>Do not use expired or damaged products.</p>', '<p>Bảo quản động lạnh ở nhiệt độ âm 18 độ C hoặc ngăn đá tủ lạnh.</p><p>Không sử dụng sản phẩm quá hạn dùng hoặc hư hỏng.</p>', 2, 1, 20, 1, '1660117333054FreshDCut.jpg', '1660117336378FreshDCut1.jpg', '1660117339551FreshDCut2.jpg', '1660117342649FreshDCut3.jpg', '1660117347486FreshDCut4.jpg'),
	(23, 'frozen-pangasius-fillet', NULL, 'Frozen Pangasius Fillet', 'Cá Tra Fillet đông lạnh', 'pag 1kg', 'Pangasius 100%', 'Cá Tra 100%', 'Cooked before eating', 'Nấu chín trước khi ăn', '36 Month', 'White Meat, Skinless, Boneless, Belly off, Fat off, Red Meat off', 'Thịt trắng, Không da, Không xương, Bụng mỡ, Bỏ mỡ, Thịt đỏ', 6, 2, 20, 1, '1660119490209Pangasiusfillet1.jpg', '1660119494031Pangasiusfillet2.jpg', '1660119498053Pangasiusfillet3.jpg', '1660119503515Pangasiusfillet4.jpg', '1660119503515Pangasiusfillet4.jpg'),
	(24, 'frozen-pangasius-fillet-block', NULL, 'Frozen Pangasius Fillet Block', 'Cá Tra Fillet đông Block', 'pag 7.5kg', 'Pangasius 100%', 'Cá Tra 100%', 'Cooked before eating', 'Nấu chín trước khi ăn', '36 Month', 'White Meat, Skinless, Boneless, Belly off, Fat off, Red Meat off', 'Thịt trắng, Không da, Không xương, Bụng mỡ, Bỏ mỡ, Thịt đỏ', 6, 2, 110, 1, '1660119962948PangasiusfilletBlock.jpg', '1660119962948PangasiusfilletBlock.jpg', '1660119972409PangasiusfilletBlock2.jpg', '1660119968755PangasiusfilletBlock1.jpg', '1660119972409PangasiusfilletBlock2.jpg'),
	(25, 'frozen-pangasius-cut-into-pieces', NULL, 'Frozen Pangasius cut into pieces', 'Cá Tra cắt khúc', 'pag 1.5kg', 'Pangasius 100%', 'Cá Tra 100%', 'Cooked before eating', 'Nấu chín trước khi ăn', '36 Month', 'White Meat, Skinless, Boneless, Belly off, Fat off, Red Meat off', 'Thịt trắng, Không da, Không xương, Bụng mỡ, Bỏ mỡ, Thịt đỏ', 6, 2, 10, 1, '1660120431889PangasiusCut.jpg', '1660120451873PangasiusCut4.jpg', '1660120443787PangasiusCut2.jpg', '1660120447524PangasiusCut3.jpg', '1660120451873PangasiusCut4.jpg'),
	(26, 'frozen-pangasius-roll-rose', NULL, 'Frozen Pangasius Roll Rose', 'Cá Tra cuộn hoa hồng', 'pag 500g', 'Pangasius 100%', 'Cá Tra 100%', 'Cooked before eating', 'Nấu chín trước khi ăn', '36 Month', 'White Meat, Skinless, Boneless, Belly off, Fat off, Red Meat off', 'Thịt trắng, Không da, Không xương, Bụng mỡ, Bỏ mỡ, Thịt đỏ', 6, 2, 10, 1, '1660120883199PangasiusRolls.jpg', '1660120887760PangasiusRolls1.jpg', '1660120891736PangasiusRolls2.jpg', '1660120895760PangasiusRolls3.jpg', '1660120900778PangasiusRolls4.jpg');

-- Dumping structure for table haivi.product_cart
CREATE TABLE IF NOT EXISTS `product_cart` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint NOT NULL DEFAULT '0',
  `PRODUCT_ID` bigint NOT NULL DEFAULT '0',
  `ORDER_ID` bigint DEFAULT NULL,
  `NUMBER` int NOT NULL DEFAULT '0',
  `STATUS` int DEFAULT '0',
  `DAY` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FKhpnrxdy3jhujameyod08ilvvw` (`PRODUCT_ID`),
  CONSTRAINT `FKhpnrxdy3jhujameyod08ilvvw` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.product_cart: ~8 rows (approximately)
INSERT IGNORE INTO `product_cart` (`ID`, `USER_ID`, `PRODUCT_ID`, `ORDER_ID`, `NUMBER`, `STATUS`, `DAY`) VALUES
	(1, 1, 2, 1, 5, 1, NULL),
	(2, 7, 2, 0, 10, 0, NULL),
	(3, 16, 3, 2, 4, 1, '2022-08-11'),
	(4, 16, 4, 2, 5, 1, '2022-08-11'),
	(5, 16, 5, 2, 4, 1, '2022-08-11'),
	(6, 16, 12, 2, 4, 1, '2022-08-11'),
	(7, 16, 26, 2, 5, 1, '2022-08-11'),
	(8, 16, 11, 2, 2, 1, '2022-08-11'),
	(9, 16, 24, 3, 4, 1, NULL);

-- Dumping structure for table haivi.review
CREATE TABLE IF NOT EXISTS `review` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` bigint NOT NULL,
  `USER_ID` bigint NOT NULL,
  `MARK` int NOT NULL DEFAULT '1',
  `CONTENT` varchar(550) DEFAULT NULL,
  `DATE` varchar(50) DEFAULT NULL,
  `STATUS` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FKiyof1sindb9qiqr9o8npj8klt` (`PRODUCT_ID`),
  CONSTRAINT `FKiyof1sindb9qiqr9o8npj8klt` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `product` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.review: ~17 rows (approximately)
INSERT IGNORE INTO `review` (`ID`, `PRODUCT_ID`, `USER_ID`, `MARK`, `CONTENT`, `DATE`, `STATUS`) VALUES
	(1, 2, 7, 1, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(2, 2, 1, 5, 'Sản phẩm tuyệt vời. Chấm 5 sao.', '2022-08-09', 1),
	(3, 2, 6, 4, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(4, 2, 2, 4, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(5, 7, 6, 2, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(6, 19, 6, 4, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(7, 20, 6, 4, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(8, 20, 9, 2, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(9, 20, 8, 3, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(10, 21, 10, 4, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(11, 17, 10, 3, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(12, 13, 10, 2, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(13, 14, 12, 3, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(14, 18, 18, 4, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(15, 25, 20, 3, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(16, 23, 20, 3, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(17, 24, 19, 5, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(18, 26, 18, 3, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(19, 9, 18, 1, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1),
	(20, 9, 15, 3, 'Sản phẩm chất lượng, nhân viên nhiệt tình, đóng gói cẩn thận', '2022-08-09', 1);

-- Dumping structure for table haivi.role
CREATE TABLE IF NOT EXISTS `role` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `ROLE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DESCRIPTION_VI` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `DESCRIPTION_EN` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.role: ~4 rows (approximately)
INSERT IGNORE INTO `role` (`ID`, `ROLE`, `DESCRIPTION_VI`, `DESCRIPTION_EN`) VALUES
	(1, 'ADMIN', 'Toàn quyền', 'All permisstion'),
	(2, 'EDITOR', 'Duyệt cart, duyệt quyền người dùng', 'Cart manager, user manager'),
	(3, 'CREATER', 'Quản lý sản phẩm', 'Product manager'),
	(4, 'CUSTOMER', 'Khách hàng', 'Customer manager');

-- Dumping structure for table haivi.user
CREATE TABLE IF NOT EXISTS `user` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `FULL_NAME` varchar(250) DEFAULT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `PASSWORD` varchar(250) NOT NULL,
  `ADDRESS` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `PHONE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `STATUS` int DEFAULT '0' COMMENT '0: disable, 1: enable',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.user: ~20 rows (approximately)
INSERT IGNORE INTO `user` (`ID`, `FULL_NAME`, `EMAIL`, `PASSWORD`, `ADDRESS`, `PHONE`, `STATUS`) VALUES
	(1, 'Admin', 'admin@gmail.com', '$2a$10$6wu0v6rjVn5TbwEDVt9uTu2xWgSOlkiF3FU/h/1ok9OaN.vnItsA.', 'Số 1, Võ Văn Tầng, Q1, TPHCM', '+84 29230877020', 1),
	(2, 'Editor', 'editor@gmail.com', '$2a$10$6wu0v6rjVn5TbwEDVt9uTu2xWgSOlkiF3FU/h/1ok9OaN.vnItsA.', 'Số 12, Võ Văn Tầng, Q1, TPHCM', '+84 29230877013', 1),
	(3, 'Creater', 'creater@gmail.com', '$2a$10$6wu0v6rjVn5TbwEDVt9uTu2xWgSOlkiF3FU/h/1ok9OaN.vnItsA.', 'Số 2, Võ Văn Tầng, Q1, TPHCM', '+84 939631205', 1),
	(4, 'Customer', 'customer@gmail.com', '$2a$10$6wu0v6rjVn5TbwEDVt9uTu2xWgSOlkiF3FU/h/1ok9OaN.vnItsA.', 'Số 5, Võ Văn Tầng, Q1, TPHCM', '+84 939631209', 1),
	(5, 'huu tam', 'viewunifi@gmail.com', '$2a$10$Mduv4lEggrhnAEtiGBHp7u.OY4icdVSd/CZXVhnKHSJYA77vauXlW', 'Số 2, Trần Hưng Đạo, Q. Ninh Kiều, TPCT', '+84 939631203', 1),
	(6, 'Nguyễn Đức Thịnh', 'pro@gmai.com', '$2a$10$Mduv4lEggrhnAEtiGBHp7u.OY4icdVSd/CZXVhnKHSJYA77vauXlW', 'Số 20, Trần Hưng Đạo, Q. Ninh Kiều, TPCT', '+84 939631212', 1),
	(7, 'Nguyễn Văn Ân', 'a@gmail.com', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Số 2/13, Trần Hưng Đạo, Q. Ninh Kiều, TPCT', '+84 29230877024', 1),
	(8, 'Nguyễn Thị An', 'an@gmail.com', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Số 12, Trần Hưng Đạo, Q. Ninh Kiều, TPCT', '+84 29230877024', 1),
	(9, 'Nguyễn Thị Vân Anh', 'anh@gmail.com', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Số 24/5, Trần Hưng Đạo, Q. Ninh Kiều, TPCT', '+84 29230877024', 1),
	(10, 'Nguyễn Thị Cẩm Xuyến', 'xuyen@gmail.com', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'số 22 Nguyễn Chí Thanh, Ba Đình, Hà Nội', '+84 29230877024', 1),
	(11, 'Trần Anh Vũ', 'vu@vf.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'số 12 Nguyễn Chí Thanh, Ba Đình, Hà Nội', '+84 29230877024', 1),
	(12, 'Trần Trung Kiên', 'kien@vf.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'số 12 Trần Duy Hưng, Ba Đình, Hà Nội', '+84 29230877024', 1),
	(13, 'Trần Trung Nhạn', 'nhan@vf.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'số 71 Nguyễn Chí Thanh, Ba Đình, Hà Nội', '+84 29230877024', 1),
	(14, 'Hà Anh Tuấn', 'tuan@cochi.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Số 1, Võ Văn Tầng, Tp Vĩnh Long', '+84 29230877024', 1),
	(15, 'Võ Văn Tưởng', 'tuong@cochi.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Số 1, Võ Nguyên Giáp, Tp Vĩnh Long', '+84 29230877024', 1),
	(16, 'Cao Trung Sơn', 'son@cochi.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', '33 Ba Tháng Hai, Phường 5, Vị Thanh, Hậu Giang', '+84 29230877024', 1),
	(17, 'Cao Tuấn Kiệt', 'kiet@cochi.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Số 185A Trần Ngọc Quế, Vị Thanh, Hậu Giang.', '+84 29230877024', 1),
	(18, 'Cao Thái Sơn', 'son@vf.com.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Số 25 Nguyễn Công Trứ, Vị Thanh, Hậu Giang.', '+84 29230877024', 1),
	(19, 'Lý Thu Thủy', 'thuy@gmail.com', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', 'Lô A1,2,3 đường 2 tháng 9, Hòa Thuận Đông, Hải Châu, Đà Nẵng', '+84 29230877024', 1),
	(20, 'Phạm Huỳnh Anh', 'anh@cochi.vn', '$2a$10$QcvXgrgq6tZ0Ce5n8oMMwO.wG7m7ghZBzMKZG2m5H7OnB22csOQva', '187 Trần Phú, Phước Ninh, Hải Châu, Đà Nẵng', '+84 29230877024', 1);

-- Dumping structure for table haivi.user_role
CREATE TABLE IF NOT EXISTS `user_role` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint DEFAULT NULL,
  `ROLE_ID` bigint DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`USER_ID`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`ROLE_ID`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`USER_ID`) REFERENCES `user` (`ID`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`ROLE_ID`) REFERENCES `role` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.user_role: ~23 rows (approximately)
INSERT IGNORE INTO `user_role` (`ID`, `USER_ID`, `ROLE_ID`) VALUES
	(2, 2, 2),
	(3, 3, 3),
	(8, 4, 4),
	(20, 1, 1),
	(21, 1, 3),
	(22, 1, 2),
	(24, 5, 3),
	(26, 7, 4),
	(27, 6, 4),
	(28, 7, 4),
	(29, 8, 4),
	(30, 9, 4),
	(31, 10, 4),
	(32, 11, 4),
	(33, 12, 4),
	(34, 13, 4),
	(35, 14, 4),
	(36, 15, 4),
	(37, 16, 4),
	(38, 17, 4),
	(39, 18, 4),
	(40, 19, 4),
	(41, 20, 4);

-- Dumping structure for table haivi.user_token
CREATE TABLE IF NOT EXISTS `user_token` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `USER_ID` bigint NOT NULL DEFAULT '0',
  `TOKEN` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TOKEN` (`TOKEN`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table haivi.user_token: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
