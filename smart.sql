-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 01 2020 г., 08:56
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `smart`
--

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `category_id`) VALUES
(1, '3D Печать', 1),
(2, 'Виртуальная реальность', 2),
(5, 'Смешанная реальность', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_3d`
--

CREATE TABLE `orders_3d` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `service` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `address` longtext NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Новый',
  `model` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `size_model` varchar(255) NOT NULL,
  `scale` varchar(255) NOT NULL,
  `accuracy` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `platform` varchar(255) NOT NULL,
  `packaging` varchar(255) NOT NULL,
  `file_modeles` varchar(255) NOT NULL,
  `file_document` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_3d`
--

INSERT INTO `orders_3d` (`id`, `user_id`, `service`, `create_at`, `address`, `user_name`, `status`, `model`, `description`, `size_model`, `scale`, `accuracy`, `material`, `platform`, `packaging`, `file_modeles`, `file_document`, `category_id`) VALUES
(32, 1, '', '2020-09-28 19:04:58', 'г. Харьков', '', 'Новый', 'Протез левой ноги', 'Взамен советского ГОСТ 203-653', '30х15см', '1:1', 'высокая', 'титан', '', 'картон', 'files/5f7209aa6bb5b.png', 'files/5f7209aa6c59b.jpg', 1),
(33, 1, '', '2020-09-28 19:04:58', 'г. Харьков', '', 'Новый', 'Протез правой ноги', 'Взамен советского ГОСТ 203-653', '30х15см', '1:1', 'высокая', 'титан', '', 'картон', 'files/5f7209aa6bb5b.png', 'files/5f7209aa6c59b.jpg', 1),
(34, 1, '', '2020-09-28 19:04:58', 'г. Киев', '', 'Новый', 'Стикер для тачпанели', 'Цвет №fff', '10х15см', '1:1', 'высокая', 'плавтик', 'нет', 'нет', 'files/5f7209aa6bb5b.png', 'files/5f7209aa6c59b.jpg', 1),
(35, 1, '', '2020-09-28 19:04:58', 'г. Харьков', '', 'Новый', 'Танк', 'Дуло красное', '40х55см', '1:1', 'высокая', 'пластик', 'нет', 'нет', 'files/5f7209aa6bb5b.png', 'files/5f7209aa6c59b.jpg', 1),
(36, 1, '', '2020-09-28 19:04:58', 'г. Воронеж', '', 'Новый', 'Котик', 'Розовый и очень милый', '40х55см', '1:1', 'высокая', 'пластик', 'нет', 'картон', 'files/5f7209aa6bb5b.png', 'files/5f7209aa6c59b.jpg', 1),
(37, 1, '', '2020-09-28 21:48:10', 'г.Киев', '', 'Новый', 'Протез пальца', 'Цвет розовый', '10х5', '1:1', 'высокая', 'пластик', '', '', 'files/5f722fead7bd5.png', 'files/5f722fead9411.png', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_vr`
--

CREATE TABLE `orders_vr` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `equi` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `use_type` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT '0',
  `balls` varchar(255) NOT NULL DEFAULT '0',
  `clothes` varchar(255) NOT NULL DEFAULT '0',
  `eat` varchar(255) NOT NULL DEFAULT '0',
  `quest` varchar(255) NOT NULL DEFAULT '0',
  `status` varchar(255) NOT NULL DEFAULT 'Новый',
  `category_id` int(11) NOT NULL,
  `data_create` datetime NOT NULL DEFAULT current_timestamp(),
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders_vr`
--

INSERT INTO `orders_vr` (`id`, `user_id`, `equi`, `description`, `use_type`, `quantity`, `place`, `photo`, `balls`, `clothes`, `eat`, `quest`, `status`, `category_id`, `data_create`, `address`) VALUES
(32, 1, 'HTC Vive', 'Хочу такое на праздник', 'Игры', '4', 'Ваша локация', '1', '1', '1', '1', '1', 'Отправлен клиенту', 3, '2020-09-27 00:11:16', ''),
(45, 1, 'Epson Moverio BT-300', 'У нас день рождения', 'Игры', '1', '', '1', '1', '1', '1', '1', 'Новый', 3, '2020-09-28 19:12:31', 'г. Житомер'),
(46, 1, 'Epson Moverio BT-300', 'Корпоратив', 'Игры', '1', '', '1', '', '1', '1', '1', 'Новый', 2, '2020-09-28 19:13:12', 'г. Москва'),
(47, 1, 'Hololens 2', 'Совещания Заказчика и подрядчика', 'Контроль строительтсва', '1', '', '', '', '', '1', '', 'Новый', 3, '2020-09-28 19:14:28', 'г. Владимир'),
(48, 1, 'Lenovo Explorer', 'Проектная организация', 'Контроль проектирования', '1', '', '', '', '', '1', '', 'Новый', 3, '2020-09-28 19:15:03', 'г. Санкт-Петербург'),
(49, 1, 'HTC Vive', '', 'Игры', '1', '', '1', '1', '1', '1', '1', 'Отправлен клиенту', 3, '2020-09-28 21:50:05', '');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `url_video` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `bg_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `title`, `url_video`, `description`, `bg_img`) VALUES
(1, '1', '', '1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirm_mail` varchar(255) NOT NULL,
  `verified` int(11) NOT NULL DEFAULT 0,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(255) NOT NULL,
  `admin_param` varchar(255) NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `phone`, `email`, `password`, `confirm_mail`, `verified`, `first_name`, `second_name`, `admin_param`) VALUES
(1, 'qwerty', '556', 'q@werty.ru', 'd8578edf8458ce06fbc5bb76a58c5ca4', 'LuuW8I5tDqRJ6223eZim', 1, 'Анатолий', 'Дмитриев', 'Admin'),
(9, 'hukpan', '', 'hukpan@hukpan.hukpan', '8e6d3ee44e98a7c11c28941a0df14f16', '26LeWn4zcTbrzglLvMiS', 1, 'hukpan', 'hukpan', 'User');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_3d`
--
ALTER TABLE `orders_3d`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_vr`
--
ALTER TABLE `orders_vr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `orders_3d`
--
ALTER TABLE `orders_3d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `orders_vr`
--
ALTER TABLE `orders_vr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
