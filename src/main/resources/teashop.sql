/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.20 : Database - teashop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`teashop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `teashop`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `quantity` int DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `cart` */

insert  into `cart`(`id`,`product_id`,`user_id`,`quantity`) values 
(164,130,30,2);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values 
(1,'Tea'),
(2,'Dried Fruit');

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `date` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `message_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `message` */

insert  into `message`(`id`,`product_id`,`comment`,`date`,`user_id`) values 
(18,128,'Անշուշտ խորհուրդ եմ տալիս բոլորին, երբևէ ամենաբուրավետ և օրգանիկ թեյերը, և իհարկե, բարձրորակ սպասարկում ❤','11-10-2020 15:47:55',42),
(21,117,'Անմահական բույր և համ ունի ։Թեյասերների լավագույն ընտրությունը : Բալասանը ամենահրաշալի ընտրությունն է թեյերի շուկայում։ ','11-10-2020 15:54:01',30),
(22,82,'Հրաշալի համ և օգտակար հատկություններ մեկ տուփում? խորհուրդ եմ տալիս բոլորին անպայման փորձել։','11-10-2020 15:55:30',30),
(23,128,'Ամենահամեղ թեյերը փորձելու համար պարզապես պետք է ընտրեք Բալասանը ?','11-10-2020 15:56:55',46),
(24,144,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,','14-10-2020 18:22:58',42),
(25,110,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to mak','14-10-2020 20:06:02',42),
(26,110,'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to mak','14-10-2020 20:06:31',30),
(27,126,'jjjjjjjjj','14-10-2020 22:04:11',NULL),
(28,126,'kk','14-10-2020 22:05:45',NULL),
(29,128,'bbb','14-10-2020 22:07:41',NULL),
(30,128,'kk','14-10-2020 22:07:55',NULL),
(31,123,'kk','14-10-2020 22:14:39',30),
(32,123,'jj','14-10-2020 22:14:46',42);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `total` double DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `pr_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `orders` */

insert  into `orders`(`id`,`product_id`,`user_id`,`total`,`date`,`quantity`,`pic_url`,`pr_title`) values 
(6,129,42,500,'2020-10-07 16:51:40',1,'1601023768379_89871347_136510374566784_8395320419703324672_n.jpg','Apple,Cinnamon/Խնձոր,դարչին'),
(7,129,42,1500,'07-10-2020 17:09:01',3,'1601023768379_89871347_136510374566784_8395320419703324672_n.jpg','Apple,Cinnamon/Խնձոր,դարչին'),
(8,129,42,1500,'07-10-2020 17:10:51',3,'1601023768379_89871347_136510374566784_8395320419703324672_n.jpg','Apple,Cinnamon/Խնձոր,դարչին'),
(9,128,42,1200,'13-10-2020 21:19:04',2,'1601023532686_89532413_137250317826123_7991150858844766208_o.jpg','Ginger/Կոճապղպեղ'),
(10,150,42,1400,'13-10-2020 21:19:04',2,'1602529259292_image2 (1).jpeg','Dried Fruit/Չորամիրգ'),
(11,140,42,2100,'13-10-2020 21:37:33',3,'1602525560311_87033797_129181511966337_817898413247954944_o.jpg','Hypericum/Սրոհունդ'),
(12,144,42,1400,'14-10-2020 22:15:28',2,'1602527560761_121092655_207469134137574_3510756022187056753_n.jpg','Dried Fruit/Չորամիրգ'),
(13,128,42,1200,'14-10-2020 22:23:48',2,'1601023532686_89532413_137250317826123_7991150858844766208_o.jpg','Ginger/Կոճապղպեղ');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `date` varchar(255) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `price` double DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `active` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `product_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product` */

insert  into `product`(`id`,`title`,`description`,`date`,`count`,`price`,`user_id`,`category_id`,`active`) values 
(82,'Cephalaria/Ղանթափա','Ղանթափան գեղեցիկ ծաղիկներով և առողջարար բույս է: Ղանթափայի թեյի օգտագործումը ունի հետևյալ առավելությունները՝ 1. Բարձրացնում է դիմադրողականությունը: 2. Արդյունավետ է սրտանոթային և շնչառական օրգանների հիվանդությունների ժամանակ: 3. Հանդիսանում է որպես խորխաբեր ջերմիջեցնող, քրտնաբեր միջոց: 4. Իջեցնում է ջերմությունը:','2020-09-16 20:48:14',20,650,42,1,1),
(110,'Rosehip/Մասուր','Մասուրի կորիզների յուղը բարձր է գնահատվում մաշկի խնամքի միջոցներում, քանի որ մաշկը կարող է արագորեն եւ ամբողջվին կլանել այն: Իսկ գեղեցկության աշխարհում յուղը շատ սիրված է, քանի որ հակաօքսիդիչ բետա-կարոտինի բարձր քանակության շնորհիվ կանխում է վաղահաս ծերացման նշանները եւ պաշտպանում է մաշկը միջավայրի վնասակար ազդեցություններից:','2020-09-16 20:48:14',20,500,42,1,1),
(117,'Pomegranat peel/Նռան կեղև','Բարձրացնում է արյան մեջ հեմոգլոբինի մակարդակը: Դեռ հնուց նուռը հայտնի է՝ որպես սակավարյունության դեմ պայքարի հզոր միջոց: Սակավարյունությամբ տառապող մարդկանց համար բավական է ջրով բացած նռան հյութ խմել օրական 3 անգամ կես բաժակից՝ ուտելուց 30 րոպե առաջ, 2 ամսվա ընթացքում:','2020-09-16 20:48:14',20,500,42,1,1),
(123,'Chamomile/Երիցուկ','Երիցուկի բուժիչ հատկությունները շատերիս են հայտնի։ Այն օգտակար է՝ստամոքս-աղիքային տրակտի հիվանդությունների,լյարդի և լեղուղիների հիվանդությունների, ?ստամոքսի կծկումների (սպազմ), ?լնդերի, բերանի խոռոչի լորձաթաղանթի բորբոքումների, ?անգինաների դեպքում։','2020-09-16 20:48:14',20,700,42,1,1),
(126,'Thyme/Ուրց','Ուրցը ունի պարուրող, խորխաբեր, հանգստացնող հատկություն։ Ուրցը լավացնում է ախորժակը, ուժեղացնում ստամոքսահյութի արտադրությունը, նպաստում մարսողությանը, հանգստացնում որովայնի ցավերը։ Արտաքին օգտագործման դեպքում կարեւորվում է բույսի վարակամերժ եւ ցավազրկող ազդեցությունը։','2020-09-16 20:48:14',20,450,42,1,1),
(128,'Ginger/Կոճապղպեղ','կոճապղպեղի յուղը կիրառում եմ ինհալացիաների ժամանակ, օգտագործում են տաքացնող մերսումներ անելիս, այն նաև ուժեղ սթրեսի ժամանակ հանում է լարվածությունը։ Ամենաօգտակարը թարմ կոճապղպեղն է, օգտակարությամբ թարմին հաջորդում է դրա չոր համեմունքը։ Արմատապտուղը սառեցնելու և մարինացնելու դեպքում վիտամինները քայքայվում են, թեև ակտիվ նյութերը մասամբ պահպանվում են։','2020-09-16 20:48:14',18,600,30,1,1),
(130,'Apple,Cinnamon/Խնձոր,դարչին','Դարչինի յուրահատուկ բույրն արթնացնում է ջերմ աշնան կամ խնձորով թխվածքաբլիթի հիշողություններ: Սական քչերը գիտեն դրա հրաշալի առողջարար հատկությունների մասին: Օրինակ՝ մեկ թեյի գդալ դարչինի մեջ կա նույնքան հակաօքսիդանտ, որքան կես բաժակ թարմ հապալասի մեջ: ','07-10-2020 19:27:05',20,500,42,1,1),
(135,'Dried Fruit/Չորամիրգ','Չորամիրգը բնական վիտամինահանքային կոմպլեքս է, որն ամենահին «սննդային հավելումն է»: Առաջին չորամիրգը հայտնվել է արեւի շնորհիվ, երբ հասած մրգերը վերածվել են չրի` դառնալով իսկական մրգի շտեմարան:','12-10-2020 20:47:39',20,800,42,2,1),
(136,'Dried Fruit/Չորամիրգ','Չիրը բնական քաղցրավենիք է, որից երբեք չեն գիրանում: Այն շատ օգտակար է ճարպակալությամբ, երիկամային անբավարարությամբ տառապողներին եւ նույնիսկ` շաքարային դիաբետ ունեցողներին: Ընդհանրապես մրգերը չորանում են երեք եղանակով` արեւի տակ, ստվերի տակ եւ քիմիական եղանակով: Այն գեղեցիկ փաթեթավորված ու վառվռուն չրերը, որ մենք գնում ենք սուպերմարկետներից, մշակված են քիմիական եղանակով:','12-10-2020 20:59:14',18,700,42,2,1),
(138,'Orange Peel/Նարնջի կեղև','Նարնջի կեղևն ունի առնվազն 3 օգտակար հատկություններ. Կարգավորում է խոլեստերինի մակարդակն օրգանիզմում և հեռացնում է վնասակար նյութերը,\r\n\r\nՃնշում է աղիքային որդերի և պաթոգեն (ոչ օգտակար) միկրոօրգանիզմների կենսունակությունը,\r\nԿեղևում պարունակվող շաքարները (արտաքին շերտի տակ) խթանում են ուղեղի աշխատանքը և ամրացնում են հիշողությունը։\r\nԿեղևում պարունակվող մեծաքանակ ֆիտոնցիդները մաքրում են օդը մանրէներից։\r\n','12-10-2020 21:51:08',20,650,30,1,1),
(140,'Hypericum/Սրոհունդ','Այս հրաշք խոտաբույսը ունի արտահայտված բակտերիոսպան հատկություն, ինչի համար էլ այս բույսը թե՛ ժողովրդական, թե՛ ավանդական բժշկության մեջ օգտագործվում է որպես հակաբորբոքային և հակասեպտիկ միջոցներ, որոնք նպաստում են վերքերի շուտ ապաքինմանը:\r\nՍրոհունդը (եփուկ, թուրմ), օգտագործվում է աղե-ստամոքսային համակարգի բորբոքային հիվանդությունների դեպքում, բերանի խոռոչի և բկանցքի բորբոքումների դեպքում։','12-10-2020 21:59:20',19,700,46,1,1),
(144,'Dried Fruit/Չորամիրգ','Սեւ սալորի չիրն ունի շատ անուշ համ ու բույր: Վերջինիս բուժիչ հատկությունների մասին իմացել են դեռեւս Հռոմեական կայսրությունում: Սալորաչիրը պարունակում է A, B1, B2, PP, C վիտամիններ, կալիում, մագնեզիում, երկաթ, ցինկ, յոդ: Սալորը պարունակում է այնպիսի նյութեր, որոնք լավացնում են աղիների աշխատանքը, մաքրում են օրգանիզմը խոլեստերինի ավելցուկից եւ շատ լավ օգնում լեղաքարային հիվանդությունների դեպքում: ','12-10-2020 22:32:40',19,700,46,2,1),
(148,'Rose Hip/Մասուր','Մասուրը մեծ քանակությամբ վիտամին С է պարունակում, որն իր քանակությամբ գերազանցում է նույնիսկ կիտրոնին: Բացի այդ, մասուրը պարունակում է վիտամիններ В1, В2, К, Е, В6, կենսաֆլավոնոիդներ, շաքար, պեկտին, կենսական թթուներ, երկաթի բյուրեղներ, ֆոսֆոր, մագնեզիում, կալցիում: Մասուրն ունի նաև հզոր բակտերիասպան հատկանիշներ:','12-10-2020 22:52:22',20,900,30,1,1),
(150,'Dried Fruit/Չորամիրգ','Իսկ ահա տանձի ու խնձորի չրերը երկարակեցության խորհրդանիշ են հանդիսանում: Որպես չորամիրգ` սրանց մեջ լավ են պահպանվում A, PP, C, B2, B1 վիտամինները, գլյուկոզան, որն անհրաժեշտ է ուղեղի լավ աշխատանքի համար: Չորացրած խնձորը, որը պարունակում է պեկտիններ, ուղղակի անփոխարինելի է նիհարել ցանկացողների կերակրացանկում: ','12-10-2020 23:00:59',19,700,30,2,1),
(160,'Cinnamon/Դարչին','Հետազոտությունները ցույց են տվել, որ դարչինի բույրը կարճաժամկետ ակտիվացնում է ուղեղի աշխատանքը, իսկ այն սննդի մեջ կիրառելը նպաստում է ուղեղի ավելի արդյունավետ աշխատանքին: Ուսումնասիրություններից մեկում ուսանողների երեք խմբի հանձնարարել են նմանատիպ համակարգչային առաջադրանքներ, ընդ որում՝ մի խումբը ծամել է մաստակ, մյուս խումբը՝ ոչինչ, իսկ երրորդը՝ դարչինի, հասմիկի կամ անանուխի համով մաստակ:  Դարչինի համով մաստակ ծամած կամավորների մոտ գրանցվել են ամենաբարձր կոգնիտիվ ցուցանիշները:','12-10-2020 23:16:30',20,700,46,1,1);

/*Table structure for table `product_image` */

DROP TABLE IF EXISTS `product_image`;

CREATE TABLE `product_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `product_image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `product_image` */

insert  into `product_image`(`id`,`product_id`,`pic_url`) values 
(190,82,'1601013923942_86185718_127325252151963_1361887125439512576_n.jpg'),
(191,82,'1601013923944_Cephalaria_gigantea_2.jpg'),
(192,82,'1601013923944_cephalaria_gigantea_schoepkruid_gele_scabiosa_gele_reuzenscabiosa.jpg'),
(193,82,'1601013923945_download.jpg'),
(300,110,'1601017791186_masur.jpg'),
(301,110,'1601017791186_otvar_shipovnik-770x510.jpg'),
(302,110,'1601017791186_shipovnik_7-560x280.jpg'),
(315,117,'1601020575238_118938577_199087094975778_7295885916691674676_o.jpg'),
(316,117,'1601020575240_download.jpg'),
(317,117,'1601020575240_images (1).jpg'),
(318,117,'1601020575241_images.jpg'),
(330,123,'1601021754966_120068545_203050421246112_3155564662562624422_n.jpg'),
(331,123,'1601021754967_download.jpg'),
(332,123,'1601021754968_images.jpg'),
(339,126,'1601022247594_dsBuffer.bmp.png'),
(340,126,'1601022247595_images.jpg'),
(341,126,'1601022247595_unnamed.jpg'),
(345,128,'1601023532686_89532413_137250317826123_7991150858844766208_o.jpg'),
(346,128,'1601023532687_e9ef911fabb4acec5b366369_imbir-1.jpg'),
(347,128,'1601023532688_imbir.jpg'),
(348,128,'1601023532689_kak-zavarit-chaj-s-imbirem-768x511.jpg'),
(353,130,'1602084425854_89871347_136510374566784_8395320419703324672_n.jpg'),
(354,130,'1602084425855_download.jpg'),
(355,130,'1602084425856_image-1593412717965 (1).jpg'),
(359,135,'1602521259117_118833595_198263508391470_6435648707212121294_n.jpg'),
(360,135,'1602521259118_download.jpg'),
(361,135,'1602521259118_images.jpg'),
(362,136,'1602521954865_118852254_198263765058111_6890356331020390856_n.jpg'),
(363,136,'1602521954866_download.jpg'),
(365,138,'1602525068821_90234592_142688310615657_1134276561948639232_n.jpg'),
(366,138,'1602525068822_MandarineOrange.jpg'),
(367,138,'1602525068823_տեետըհջգջ.jpeg'),
(369,140,'1602525560311_87033797_129181511966337_817898413247954944_o.jpg'),
(370,140,'1602525560313_download.jpg'),
(371,140,'1602525560315_srohund.jpg'),
(375,144,'1602527560761_121092655_207469134137574_3510756022187056753_n.jpg'),
(376,144,'1602527560762_download.jpg'),
(377,144,'1602527560763_file_8209_5822336.jpg'),
(385,148,'1602528742724_image3 (1).jpeg'),
(386,148,'1602528742724_otvar_shipovnik-770x510.jpg'),
(387,148,'1602528742725_rosehip-tea-10.jpg'),
(391,150,'1602529259292_image2 (1).jpeg'),
(392,150,'1602529259293_images.jpg'),
(393,150,'1602529259294_myfitnesspal_dried_fruit_752x472.jpg'),
(421,160,'1602530190544_image2 (2).jpeg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(31) DEFAULT NULL,
  `type` enum('USER','ADMIN') DEFAULT 'USER',
  `verify` tinyint(1) DEFAULT '0',
  `token` varchar(255) DEFAULT NULL,
  `active` int DEFAULT '0',
  `pic_url` varchar(255) DEFAULT 'default.png',
  `gender` enum('MALE','FEMALE') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `code` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`surname`,`age`,`email`,`password`,`phone`,`type`,`verify`,`token`,`active`,`pic_url`,`gender`,`code`) values 
(30,'Emilia','Karapetyan',19,'emiliakarapetyan19@gmail.com','$2a$10$CgM2.aFCNw75Ea7BQ0zNIOFHYnzun6n4Choo.N8NrenTTZPOtRiCS','+37444091959','USER',1,NULL,0,'default.png','FEMALE',0),
(42,'Anna','Anyan',20,'emiliakarapetyan5@gmail.com','$2a$10$DcAmD7K.KXroTx.GWhLyA.Vf7ZfeacyaxqcCwSASTnfLrhJgKhZRi','+37477777777','USER',1,NULL,0,'1600442262491_Anna.jpg','FEMALE',0),
(46,'Ani','Ghazaryan',21,'emiliakarapetyan18@gmail.com','$2a$10$.Pd1ynKwzzimrrnMe.RdsuRlCo6rJIR7Le1X/fCvofGvngvVmJ91K','+37444091950','USER',1,NULL,0,'1602607892862_89871347_136510374566784_8395320419703324672_n.jpg','FEMALE',0),
(61,'Deren','Saakyan',21,'der@gmail.com','$2a$10$nNdUUBC1qOhbsUc1BXOHWux.FgicPOhcB9dpTyZjq82Q2VE8EComi','+37455555555','ADMIN',1,NULL,0,'default.png','MALE',0);

/*Table structure for table `wishlist` */

DROP TABLE IF EXISTS `wishlist`;

CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `wishlist` */

insert  into `wishlist`(`id`,`product_id`,`user_id`) values 
(94,82,30),
(216,148,42);

/* Procedure structure for procedure `addLike` */

/*!50003 DROP PROCEDURE IF EXISTS  `addLike` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addLike`(a INT(11) , s INT(11))
BEGIN
DECLARE X INT(11);
SET X=(SELECT COUNT(*) FROM `wishlist` WHERE user_id=a AND product_id=s);
IF X=0 THEN	
	INSERT INTO `wishlist`(user_id,product_id) VALUES (a,s);
ELSE
	DELETE FROM `wishlist` WHERE user_id = a AND product_id=s;
END IF;
END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
