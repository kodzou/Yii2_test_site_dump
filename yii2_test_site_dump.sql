-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 15 2021 г., 17:17
-- Версия сервера: 5.7.33
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yii2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) UNSIGNED NOT NULL,
  `parent_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `parent_id`, `name`, `keywords`, `description`) VALUES
(1, 0, 'Sportswear', NULL, NULL),
(2, 0, 'Mens', NULL, NULL),
(3, 0, 'Womens', NULL, NULL),
(4, 1, 'Nike', NULL, NULL),
(5, 1, 'Under Armour', NULL, NULL),
(6, 1, 'Adidas', NULL, NULL),
(7, 1, 'Puma', NULL, NULL),
(8, 1, 'Asics', NULL, NULL),
(9, 2, 'Fendi', NULL, NULL),
(10, 2, 'Guess', NULL, NULL),
(11, 2, 'Valentino', NULL, NULL),
(12, 2, 'Dior', NULL, NULL),
(13, 2, 'Versace', NULL, NULL),
(14, 2, 'Armani', NULL, NULL),
(15, 2, 'Prada', NULL, NULL),
(16, 2, 'Dolce and Gabbana', NULL, NULL),
(17, 2, 'Chanel', NULL, NULL),
(18, 2, 'Gucci', NULL, NULL),
(19, 3, 'Fendi', NULL, NULL),
(20, 3, 'Guess', NULL, NULL),
(21, 3, 'Valentino', NULL, NULL),
(22, 3, 'Dior', NULL, NULL),
(23, 3, 'Versace', NULL, NULL),
(24, 0, 'Kids', NULL, NULL),
(25, 0, 'Fashion', NULL, NULL),
(26, 0, 'Households', NULL, NULL),
(27, 0, 'Interiors', NULL, NULL),
(28, 0, 'Clothing', NULL, NULL),
(29, 0, 'Bags', NULL, NULL),
(30, 0, 'Shoes', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `filePath` varchar(400) NOT NULL,
  `itemId` int(11) DEFAULT NULL,
  `isMain` tinyint(1) DEFAULT NULL,
  `modelName` varchar(150) NOT NULL,
  `urlAlias` varchar(400) NOT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `image`
--

INSERT INTO `image` (`id`, `filePath`, `itemId`, `isMain`, `modelName`, `urlAlias`, `name`) VALUES
(1, 'Products/Product11/f80c28.jpg', 11, 1, 'Product', '24982c2a75-1', 'Чемодан'),
(2, 'Products/Product1/b454dc.jpg', 1, 1, 'Product', 'a5c4f47123-1', 'Синее поло с коротким рукавом'),
(3, 'Products/Product1/1b04b8.jpg', 1, NULL, 'Product', 'ac7ae13f2a-2', ''),
(4, 'Products/Product1/bb1338.jpg', 1, NULL, 'Product', 'ddf9ef373f-3', ''),
(5, 'Products/Product1/cace20.jpg', 1, NULL, 'Product', '5a94286ed0-4', ''),
(6, 'Products/Product1/c43c7e.jpg', 1, NULL, 'Product', 'f0ef266a2f-5', ''),
(7, 'Products/Product2/9463aa.jpg', 2, 0, 'Product', 'e7ffcf37f6-3', 'Джинсы синие'),
(8, 'Products/Product2/70ff5c.jpg', 2, 0, 'Product', 'e7ffcf37f6-4', ''),
(9, 'Products/Product2/e0f122.jpg', 2, 0, 'Product', '609507a0ee-5', ''),
(10, 'Products/Product2/9c30d4.jpg', 2, 0, 'Product', '28b6ba6a5b-6', ''),
(11, 'Products/Product2/9da1e9.jpg', 2, 0, 'Product', '575e1d3cd1-7', ''),
(12, 'Products/Product3/91e2fc.jpg', 3, 1, 'Product', '2832d9102f-1', 'Блуза Mango'),
(13, 'Products/Product3/f8feb4.jpg', 3, NULL, 'Product', 'c57efde2f8-2', ''),
(14, 'Products/Product3/363528.jpg', 3, NULL, 'Product', '53e8f797a4-3', ''),
(15, 'Products/Product3/2ceb54.jpg', 3, NULL, 'Product', '23e5e5558e-4', ''),
(16, 'Products/Product3/ea6d57.jpg', 3, NULL, 'Product', '7e6e9473ba-5', ''),
(17, 'Products/Product4/d4ea2b.jpg', 4, 1, 'Product', 'f5d145b212-1', 'Блуза Tom Tailor'),
(18, 'Products/Product4/6436a1.jpg', 4, NULL, 'Product', 'bcadc81a5c-2', ''),
(19, 'Products/Product4/7b5e8a.jpg', 4, NULL, 'Product', '9dd69a4599-3', ''),
(20, 'Products/Product4/2023e2.jpg', 4, NULL, 'Product', '4a06f925ee-4', ''),
(21, 'Products/Product4/3f25a6.jpg', 4, NULL, 'Product', 'e37c121280-5', ''),
(22, 'Products/Product5/a3eda4.jpg', 5, 1, 'Product', '201850984b-1', 'Блузка Kira Plastinina'),
(23, 'Products/Product5/37168d.jpg', 5, NULL, 'Product', '51066ee8d3-2', ''),
(24, 'Products/Product5/a544ec.jpg', 5, NULL, 'Product', 'b150ea7847-3', ''),
(25, 'Products/Product5/00af70.jpg', 5, NULL, 'Product', 'b9d99febf7-4', ''),
(26, 'Products/Product5/6cb371.jpg', 5, NULL, 'Product', '893742b4a5-5', ''),
(27, 'Products/Product6/148e43.jpg', 6, 1, 'Product', 'e3766e981d-1', 'Кардиган Levi\'s Icy Grey Heather'),
(28, 'Products/Product6/22374b.jpg', 6, NULL, 'Product', 'a26ad8b354-2', ''),
(29, 'Products/Product6/c6ab6d.jpg', 6, NULL, 'Product', '36ca10ccfb-3', ''),
(30, 'Products/Product6/0afd66.jpg', 6, NULL, 'Product', '02fb4640c8-4', ''),
(31, 'Products/Product6/0521ba.jpg', 6, NULL, 'Product', '29298674cf-5', ''),
(32, 'Products/Product7/87835b.jpg', 7, 1, 'Product', 'f0c4b06cc7-1', 'Кардиган ONLY ON'),
(33, 'Products/Product7/36283c.jpg', 7, NULL, 'Product', '1dabb7797a-2', ''),
(34, 'Products/Product7/67154e.jpg', 7, NULL, 'Product', '3ef385aab7-3', ''),
(35, 'Products/Product7/c8bc7e.jpg', 7, NULL, 'Product', '00f0d1081c-4', ''),
(36, 'Products/Product7/7429b7.jpg', 7, NULL, 'Product', 'd29d5ac527-5', ''),
(37, 'Products/Product8/6bd7d5.jpg', 8, 1, 'Product', '6e84cfd4c7-1', 'Брюки SK House'),
(38, 'Products/Product8/42b0fc.jpg', 8, NULL, 'Product', '431101a4f2-2', ''),
(39, 'Products/Product8/648eda.jpg', 8, NULL, 'Product', '7e4cc78934-3', ''),
(40, 'Products/Product8/8cd66b.jpg', 8, NULL, 'Product', 'e6224102e1-4', ''),
(41, 'Products/Product8/968ec9.jpg', 8, NULL, 'Product', 'ffe3e6f10d-5', ''),
(42, 'Products/Product9/b6b220.jpg', 9, 1, 'Product', '9128850b8f-1', 'Брюки Kira Plastinina'),
(43, 'Products/Product9/3cb711.jpg', 9, NULL, 'Product', '475c30f1c8-2', ''),
(44, 'Products/Product9/1a5c95.jpg', 9, NULL, 'Product', '2cdfa7df47-3', ''),
(45, 'Products/Product9/7de74a.jpg', 9, NULL, 'Product', 'e5446caa1e-4', ''),
(46, 'Products/Product9/59921e.jpg', 9, NULL, 'Product', 'cc846ae464-5', ''),
(47, 'Products/Product10/e63e8c.jpg', 10, 1, 'Product', 'ccc1b87edb-1', 'Сумка GUSSACI TUGUS'),
(48, 'Products/Product10/74f407.jpg', 10, NULL, 'Product', '9c48ba71ff-2', ''),
(49, 'Products/Product10/fa86ff.jpg', 10, NULL, 'Product', 'ec696f117f-3', ''),
(50, 'Products/Product10/77773a.jpg', 10, NULL, 'Product', '6549b18f71-4', ''),
(51, 'Products/Product10/ce647c.jpg', 10, NULL, 'Product', '896d47ab05-5', ''),
(52, 'Products/Product11/1c98e8.jpg', 11, NULL, 'Product', '6e8b1c07c1-2', ''),
(53, 'Products/Product11/ae3e3a.jpg', 11, NULL, 'Product', '5737c515d1-3', ''),
(54, 'Products/Product11/da1c56.jpg', 11, NULL, 'Product', '3fd64f5135-4', ''),
(55, 'Products/Product11/ae262f.jpg', 11, NULL, 'Product', '653c50d77e-5', ''),
(56, 'Products/Product2/8c51e0.jpg', 2, 0, 'Product', 'c165db81af-2', ''),
(57, 'Products/Product2/36ed97.jpg', 2, 1, 'Product', '88f077ebb0-1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1629237474),
('m140622_111540_create_image_table', 1631538728),
('m140622_111545_add_name_to_image_table', 1631538728),
('m210329_130037_add_order_table', 1630406326),
('m210329_145352_add_order_items_table', 1630406326),
('m210401_191036_create_user_table', 1630407121),
('m210817_205140_add_category_table', 1629237489),
('m210817_205209_add_product_table', 1629237489);

-- --------------------------------------------------------

--
-- Структура таблицы `order`
--

CREATE TABLE `order` (
  `id` int(11) UNSIGNED NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `sum` float DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order`
--

INSERT INTO `order` (`id`, `created_at`, `updated_at`, `qty`, `sum`, `status`, `name`, `email`, `phone`, `address`) VALUES
(1, '2021-09-01 16:19:41', '2021-09-01 16:19:41', 4, 67, 0, 'ИмяЧеловека', 'e@mail.ru', '9998887766', 'Город, Улица, фонарь'),
(4, '2021-09-02 15:36:30', '2021-09-02 15:36:30', 6, 101, 0, 'ИванИванович', 'ee@mail.ru', '111-22-333', 'Улица, Фонарь, Аптека'),
(5, '2021-09-02 15:55:45', '2021-09-02 15:55:45', 5, 84, 0, 'ТестерТестович', 'post@mail.ru', '1-2-3-4-5', 'Город, Улица, Дом'),
(7, '2021-09-02 17:13:28', '2021-09-02 17:13:28', 5, 100, 0, 'ТестерТестович', 'testUser@mail.ru', '1-2-3-4-5', 'Город, Улица, Дом'),
(9, '2021-09-02 19:28:35', '2021-09-02 19:28:35', 3, 52, 0, 'ТестерТестович', 'testUser@mail.ru', '111-22-333', 'Улица, Фонарь, Аптека'),
(10, '2021-09-02 19:35:19', '2021-09-02 19:35:19', 4, 53, 0, 'ТестерТестович', 'testUser@mail.ru', '1-2-3-4-5', 'Город, Улица, Дом');

-- --------------------------------------------------------

--
-- Структура таблицы `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED DEFAULT NULL,
  `product_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `qty_item` int(11) DEFAULT NULL,
  `sum_item` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `name`, `price`, `qty_item`, `sum_item`) VALUES
(1, 4, 2, 'Джинсы синие', 26, 1, 26),
(2, 4, 3, 'Блуза Mango', 12, 2, 24),
(3, 4, 6, 'Кардиган Levi\'s Icy Grey Heather', 17, 3, 51),
(4, 5, 12, 'Сумка Michael Kors Selma', 32, 1, 32),
(5, 5, 5, 'Блузка Kira Plastinina', 11, 1, 11),
(6, 5, 9, 'Брюки Kira Plastinina', 19, 1, 19),
(7, 5, 3, 'Блуза Mango', 12, 1, 12),
(8, 5, 1, 'Синее поло с коротким рукавом', 10, 1, 10),
(12, 7, 7, 'Кардиган ONLY ON', 18, 2, 36),
(13, 7, 3, 'Блуза Mango', 12, 1, 12),
(14, 7, 2, 'Джинсы синие', 26, 2, 52),
(18, 9, 2, 'Джинсы синие', 26, 1, 26),
(19, 9, 3, 'Блуза Mango', 12, 1, 12),
(20, 9, 4, 'Блуза Tom Tailor', 14, 1, 14),
(21, 10, 7, 'Кардиган ONLY ON', 18, 1, 18),
(22, 10, 3, 'Блуза Mango', 12, 2, 24),
(23, 10, 5, 'Блузка Kira Plastinina', 11, 1, 11);

-- --------------------------------------------------------

--
-- Структура таблицы `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `content` text,
  `price` float NOT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT 'no-image.png',
  `hit` enum('1','0') NOT NULL DEFAULT '0',
  `new` enum('1','0') NOT NULL DEFAULT '0',
  `sale` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `content`, `price`, `keywords`, `description`, `img`, `hit`, `new`, `sale`) VALUES
(1, 4, 'Синее поло с коротким рукавом', '<p>Отличное поло (хлопок, пике, при стирке не вытягивается). Идет размер в размер, полнота средняя</p>\r\n', 10, '', '', 'product1.jpg', '0', '0', '0'),
(2, 4, 'Джинсы синие', '<p>Отличные джинсы, ткань плотная, практически не тянется, цвет очень красивый, смотрится дорого. Объём бёдер 98 см размер 29/L32 подошёл идеально, на рост 176 см видна щиколотка.</p>\r\n', 26, 'джинсы ключевые слова', 'джинсы описание', 'product2.jpg', '1', '0', '0'),
(3, 9, 'Блуза Mango', '<p>Легкая летняя блузочка. Веселая расцветка. Идет в размер. Хорошо и с брюками, и с джинсами</p>\r\n', 12, '', '', 'product3.jpg', '1', '1', '0'),
(4, 21, 'Блуза Tom Tailor', '', 14, '', '', 'product4.jpg', '1', '0', '1'),
(5, 25, 'Блузка Kira Plastinina', '', 11, '', '', 'product5.jpg', '1', '0', '0'),
(6, 28, 'Кардиган Levi\'s Icy Grey Heather', '', 17, '', '', 'product6.jpg', '1', '0', '0'),
(7, 28, 'Кардиган ONLY ON', '<p><span style=\"color:rgb(0, 0, 0); font-family:arial,helvetica,tahoma,verdana,sans-serif; font-size:12px\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas feugiat consequat diam. Maecenas metus. Vivamus diam purus, cursus a, commodo non, facilisis vitae, nulla. Aenean dictum lacinia tortor. Nunc iaculis, nibh non iaculis aliquam, orci felis euismod neque, sed ornare massa mauris sed velit. Nulla pretium mi et risus. Fusce mi pede, tempor id, cursus ac, ullamcorper nec, enim. Sed tortor. Curabitur molestie. Duis velit augue, condimentum at, ultrices a, luctus ut, orci. Donec pellentesque egestas eros. Integer cursus, augue in cursus faucibus, eros pede bibendum sem, in tempus tellus justo quis ligula. Etiam eget tortor. Vestibulum rutrum, est ut placerat elementum, lectus nisl aliquam velit, tempor aliquam eros nunc nonummy metus. In eros metus, gravida a, gravida sed, lobortis id, turpis. Ut ultrices, ipsum at venenatis fringilla, sem nulla lacinia tellus, eget aliquet turpis mauris non enim. Nam turpis. Suspendisse lacinia. Curabitur ac tortor ut ipsum egestas elementum. Nunc imperdiet gravida mauris.</span></p>\r\n', 18, '', '', 'product7.jpg', '1', '1', '0'),
(8, 26, 'Брюки SK House', '', 20, '', '', 'product8.jpg', '0', '0', '1'),
(9, 26, 'Брюки Kira Plastinina', '', 19, '', '', 'product9.jpg', '0', '0', '0'),
(10, 29, 'Сумка GUSSACI TUGUS', '<p>Простота, тра-та-та, описание сумки</p>\r\n', 28, 'сумка ключевые слова', 'сумка описание', 'product10.jpg', '0', '1', '0'),
(11, 29, 'Сумка Michael Kors Jet Set Travel', '', 31, '', '', 'product11.jpg', '0', '0', '1'),
(12, 29, 'Сумка Michael Kors Selma', NULL, 32, NULL, NULL, 'product12.jpg', '0', '0', '0'),
(13, 29, 'Сумка Michael Kors Bedford', NULL, 33, NULL, NULL, 'no-image.png', '0', '0', '0'),
(14, 29, 'Сумка Michael Kors JS Travel', '', 34, '', '', 'no-image.png', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`) VALUES
(1, 'admin', '$2y$13$QG4z2s6yggshdJIop7GIWOv0XF/1gdpqEUWDLEd4Fxmy3ZdETs1RO', 'pGu1qJrnoFsixlMblNPW3T92lhShB9G5');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT для таблицы `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk-order_items-order` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk-order_items-product` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
