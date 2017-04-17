-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.17-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 bwg 的数据库结构
CREATE DATABASE IF NOT EXISTS `bwg` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `bwg`;

-- 导出  表 bwg.category 结构
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `largeClass` varchar(50) NOT NULL DEFAULT '0',
  `smallClass` varchar(50) NOT NULL DEFAULT '0',
  `endClass` varchar(50) NOT NULL DEFAULT '0',
  `categoryId` varchar(50) NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- 正在导出表  bwg.category 的数据：~17 rows (大约)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `largeClass`, `smallClass`, `endClass`, `categoryId`) VALUES
	(2, '矿物', '单质及其类似物', '碳化物', '101011'),
	(3, '矿物', '单质及其类似物', '硅化物', '101012'),
	(4, '矿物', '单质及其类似物', '氮化物', '101013'),
	(5, '矿物', '单质及其类似物', '磷化物', '101014'),
	(6, '矿物', '硫化物及其类似物', '砷化物', '101110'),
	(1, '矿物', '单质及其类似物', '单质', '101010'),
	(7, '矿物', '硫化物及其类似物', '锑化物', '101111'),
	(8, '矿物', '硫化物及其类似物', '铋化物', '101112'),
	(9, '矿物', '硫化物及其类似物', '碲化物', '101113'),
	(10, '矿物', '硫化物及其类似物', '硫化物', '101114'),
	(12, '矿物', '氧化物和氢氧化物', '氧化物', '101210'),
	(14, '矿物', '含氧盐', '硅酸盐', '101310'),
	(11, '矿物', '硫化物及其类似物', '硒化物', '101115'),
	(15, '矿物', '含氧盐', '硼酸盐', '101311'),
	(13, '矿物', '氧化物和氢氧化物', '氢氧化物', '101211'),
	(16, '矿物', '卤化物', '氯化物', '101410'),
	(17, '矿物', '卤化物', '溴化物', '101411');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- 导出  表 bwg.sample 结构
CREATE TABLE IF NOT EXISTS `sample` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `resourceID` varchar(50) DEFAULT NULL COMMENT '平台资源号',
  `sampleID` varchar(50) DEFAULT NULL COMMENT '标本资源编号',
  `sampleName` varchar(100) DEFAULT NULL COMMENT '标本资源名称',
  `foreignName` varchar(100) DEFAULT NULL COMMENT '外文名称',
  `origin` varchar(100) DEFAULT NULL COMMENT '产地',
  `province` varchar(50) DEFAULT NULL COMMENT '省',
  `country` varchar(50) DEFAULT NULL COMMENT '国家',
  `sampleClassID` varchar(100) DEFAULT NULL COMMENT '标本归类编码',
  `sampleClass` varchar(100) DEFAULT NULL COMMENT '标本类别',
  `mainUse` varchar(150) DEFAULT NULL COMMENT '主要用途',
  `geologyPosition` varchar(150) DEFAULT NULL COMMENT '地质产状或层位',
  `briefDescription` varchar(255) DEFAULT NULL COMMENT '简要特征描述',
  `specificUse` varchar(255) DEFAULT NULL COMMENT '具体用途',
  `sampleProvider` varchar(100) DEFAULT NULL COMMENT '标本资源提供者',
  `sampleProvideTime` varchar(50) DEFAULT NULL COMMENT '标本资源提供时间',
  `saveLocation` varchar(100) DEFAULT NULL COMMENT '存放地点',
  `sampleNumber` varchar(100) DEFAULT NULL COMMENT '样本编号',
  `locationNumber` varchar(100) DEFAULT NULL COMMENT '样本位置编号',
  `collectionNumber` varchar(100) DEFAULT NULL COMMENT '样本收集编号',
  `collectionCount` varchar(100) DEFAULT NULL COMMENT '样本收藏数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- 正在导出表  bwg.sample 的数据：~8 rows (大约)
DELETE FROM `sample`;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` (`id`, `resourceID`, `sampleID`, `sampleName`, `foreignName`, `origin`, `province`, `country`, `sampleClassID`, `sampleClass`, `mainUse`, `geologyPosition`, `briefDescription`, `specificUse`, `sampleProvider`, `sampleProvideTime`, `saveLocation`, `sampleNumber`, `locationNumber`, `collectionNumber`, `collectionCount`) VALUES
	(1, '2311C0001000000004', 'F001000004', '薄壁泉头粉', 'Quantonepollenites tenus gen. et sp. nov.', '松原市扶余县', '', '', '', '矿物标本', '', '', '', '', '', '', '', '', '', '', ''),
	(13, '2311C0001400000003', 'M001000003', '方解石（大理石微晶）', 'Calcite(marble)', '不详', '平安南道', '朝鲜(North Korea)', ' 23111737000 碳酸盐', '矿物标本', '科学研究；观赏', '', '白色，条痕白色，透明，油脂光泽，解理面闪光，硬度2.5-3，相对密度：2.5-2.8。', '', '', '', '国家岩矿化石标本资源共享平台2', '', '', '', ''),
	(14, '2311C0001400000004', 'M001000004', '石英', 'Quartz', '不详', '平安北道', '朝鲜(North Korea)', '23111511000 氧化物', '矿物标本', '科学研究；观赏', '', '白色，玻璃光泽，透明，硬度7，相对密度：2.65。', '', '', '', '', '', '', '', ''),
	(15, '2311C0001400000005', 'M001000005', '长石', 'Feldspar', '', '', '', '23111711000 硅酸盐', '矿物标本', '', '', '白色，玻璃光泽，透明，硬度4，解理较完全', '长石是陶瓷和玻璃工业的原料,有美丽的变彩或晕色者可被用作宝石的材料等。', '', '', '', '', '', '', ''),
	(16, '2311C0001400000006', 'M001000006', '云母', 'Mica', '', '', '', '', '岩石标本', '', '', '浅黄色，玻璃光泽，透明，解理极完全，解理面具珍珠光泽。', '广泛的应用于建材行业、消防行业、灭火剂、电焊条、塑料、电绝缘、造纸、沥青纸、橡胶、珠光颜料等化工工业等。', '', '', '', '', '', '', ''),
	(17, '2311C0001400000007', 'M001000007', '滑石', 'Talc', '', '', '', '', '化石标本', '', '', '白色微带浅黄，玻璃光泽，硬度1，解理极完全，解理面具珍珠光泽，有滑腻感，相对密度：2.58-2.83。', '用作耐火材料、农药吸收剂、皮革涂料、化妆材料及雕刻用料等，具有药用功效。', '', '', '', '', '', '', ''),
	(22, '2311C0001400000018', 'M001000018', '含金银铅铜矿石', 'Copper ore', '青岛市黄岛区理务关镇', '山东省', '', '', '矿石标本', '', '', '灰色，粒状结构，块状构造，主要矿物：方铅矿、黄铜矿、金、银。', '', '', '', '', ', ', '', '', ''),
	(25, '2311C0001400000002', 'M001000002', '方解石（大理石巨晶）', 'Calcite(marble)', '不详', '咸镜北道', '韩国(Korea)', '23111737000 碳酸盐', '矿物标本', '科学研究；观赏', '', '淡红色，条痕白色，透明，油脂光泽，解理面闪光，硬度2.5-3，相对密度：2.5-2.9。', '用于冶金工业做熔剂，用于生产水泥、石灰、添加剂，也用于建筑行业。', '王濮', '20030701', '国家岩矿化石标本资源共享平台', 'North Korea-12', '1-19-04-10', 'North Korea-12', '2'),
	(27, '2311C0001200000001', 'R001000001', '中细粒二云二长片麻岩', 'Medium fine grained two-mica Monzonitic Gneiss', '青岛市黄岛区理务关镇', '山东省', '中国（China）', '23131511113 片麻岩', '岩石标本', '科学研究；观赏', '太古代(Ar)', '黄褐色，柱粒状变晶结构，块状构造，主要矿物：角闪石10%、透辉石20%、紫苏辉石25%、斜长石45%，在紫苏花岗岩中呈透镜状分布。', '可用作建筑石材。', '苏尚国', '19900701', ' 国家岩矿化石标本资源共享平台', 'P13-13b1', '1-20-02-03', 'P13-13b1', '1'),
	(28, '2311C0001000000014', 'F001000014', '嫩江巴尔姆孢（新种）', 'Balmeisporites nenjiangensis sp. nov.', '松原市前郭尔罗斯蒙古族自治县', '吉林省', '中国（China）', '23171533101 孢子', '化石标本', '科学研究', '上白垩统嫩江组', '孢子体轮廓圆形。外壁厚2.3微米,两层,内层稍厚于外层,至近极处外壁加厚,最大直径达7微米。周壁为网状纹饰,网孔大,5~6边形,最大直径为17微米,网脊宽3~5微米,在网孔的角部,网脊汇聚抬高隆起突出体外约18.4~23微米,远极处,突出体外的网脊呈放射状排列,网脊间由弧形的薄膜相连,大网中还具粗颗粒纹饰,超过近极三射线伸出顶膜,其上饰以颗粒状纹饰。', '科学研究', '余静贤,郭正英,茅绍智', '19830605', '国家岩矿化石标本资源共享平台', '吉15-2-32（20）', 'Ⅰ-01-02-05', '', '1');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;

-- 导出  表 bwg.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `userPassword` varchar(100) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  bwg.user 的数据：~2 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `userName`, `userPassword`, `userEmail`) VALUES
	(4, 'wanghao', '111111', '344144643@qq.com'),
	(6, 'admin', '123456', '344144643@qq.com');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
