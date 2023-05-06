-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 06 2023 г., 12:28
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `five_lb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `number` int(11) NOT NULL,
  `code` int(11) DEFAULT NULL,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `edition_id` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `format` varchar(255) DEFAULT NULL,
  `dateee` date DEFAULT NULL,
  `circulation` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`number`, `code`, `new`, `title`, `price`, `edition_id`, `pages`, `format`, `dateee`, `circulation`, `topic_id`, `category_id`) VALUES
(1, 5110, 0, 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 1),
(2, 4985, 0, 'Засвой самостійно модернізацію та ремонт ПК за 24 години, 2-ге вид.', 18.9, 2, 288, '70х100/16', '2000-07-07', 5000, 1, 1),
(3, 5141, 0, 'Структури даних та алгоритми', 37.8, 2, 384, '70х100/16', '2000-09-29', 5000, 1, 1),
(4, 5127, 0, 'Автоматизація інженерно-графічних робіт', 11.58, 1, 256, '70х100/16', '2000-06-15', 5000, 1, 1),
(5, 5110, 0, 'Апаратні засоби мультимедіа. Відеосистема РС', 15.51, 1, 400, '70х100/16', '2000-07-24', 5000, 1, 2),
(6, 5199, 0, 'Залізо IBM 2001', 30.07, 3, 368, '70х100/16', '2000-12-02', 5000, 1, 2),
(7, 3851, 0, 'Захист інформації та безпека комп\'ютерних систем', 26, 4, 480, '84х108/16', NULL, 5000, 1, 3),
(8, 3932, 0, 'Як перетворити персональний комп\'ютер на вимірювальний комплекс', 7.65, 5, 144, '60х88/16', '1999-06-09', 5000, 1, 4),
(9, 4713, 0, 'Plug-ins. Додаткові програми для музичних програм', 11.41, 5, 144, '70х100/16', '2000-02-22', 5000, 1, 4),
(10, 5217, 0, 'Windows МЕ. Найновіші версії програм', 16.57, 6, 320, '70х100/16', '2000-08-25', 5000, 2, 5),
(11, 4829, 0, 'Windows 2000 Professional крок за кроком з CD', 27.25, 7, 320, '70х100/16', '2000-04-28', 5000, 2, 5),
(12, 5170, 0, 'Linux версії', 24.43, 5, 346, '70х100/16', '2000-09-29', 5000, 2, 6),
(13, 860, 0, 'Операційна система UNIX', 3.5, 1, 395, '84х100\\16', '1997-05-05', 5000, 2, 7),
(14, 44, 0, 'Відповіді на актуальні запитання щодо OS/2 Warp', 5, 4, 352, '60х84/16', '1996-03-20', 5000, 2, 8),
(15, 5176, 0, 'Windows Ме. Супутник користувача', 12.79, 1, 306, '', '2000-10-10', 5000, 2, 8),
(16, 5462, 0, 'Мова програмування С++. Лекції та вправи', 29, 4, 656, '84х108/16', '2000-12-12', 5000, 3, 9),
(17, 4982, 0, 'Мова програмування С. Лекції та вправи', 29, 4, 432, '84х108/16', '2000-07-12', 5000, 3, 9),
(18, 4687, 0, 'Ефективне використання C++ .50 рекомендацій щодо покращення ваших програм та проектів', 17.6, 5, 240, '70х100/16', '2000-02-03', 5000, 3, 9),
(19, 235, 0, 'Інформаційні системи і структури даних', 0, 8, 288, '60х90/16', NULL, 400, 1, 4),
(20, 2154, 0, 'Сервер на основі операційної системи FreeBSD 6.1', 0, 9, 216, '60х84/16', '2015-03-11', 500, 3, 8),
(21, 2662, 0, 'Організація баз даних та знань', 0, 10, 208, '60х90/16', '2001-10-10', 1000, 3, 9),
(22, 5641, 0, 'Організація баз даних та знань', 0, 1, 384, '70х100/16', '0000-00-00', 5000, 3, 9),
(23, 8746, 0, 'Бази даних в інформаційних системах', 14.5, 9, 418, '60х84/16', '0000-00-00', 100, 3, 9);

-- --------------------------------------------------------

--
-- Структура таблицы `book_category`
--

CREATE TABLE `book_category` (
  `id` int(11) NOT NULL,
  `category` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `book_category`
--

INSERT INTO `book_category` (`id`, `category`) VALUES
(1, 'Підручники'),
(2, 'Апаратні засоби ПК'),
(3, 'Захист і безпека ПК'),
(4, 'Інші кн	иги'),
(5, 'Windows 2000'),
(6, 'Unix'),
(7, 'Інші операційні системи'),
(8, 'C&C++'),
(9, 'SQL');

-- --------------------------------------------------------

--
-- Структура таблицы `book_edition`
--

CREATE TABLE `book_edition` (
  `id` int(11) NOT NULL,
  `edition` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `book_edition`
--

INSERT INTO `book_edition` (`id`, `edition`) VALUES
(1, 'Видавнича група BHV'),
(2, 'Вільямс'),
(3, 'МикроАрт'),
(4, 'DiaSoft'),
(5, 'ДМК'),
(6, 'Триумф'),
(7, 'Эком'),
(8, 'Києво-Могилянська академія'),
(9, 'Університет \"Україна\"'),
(10, 'Вінниця: ВДТУ');

-- --------------------------------------------------------

--
-- Структура таблицы `book_topic`
--

CREATE TABLE `book_topic` (
  `id` int(11) NOT NULL,
  `topic` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `book_topic`
--

INSERT INTO `book_topic` (`id`, `topic`) VALUES
(1, 'Використання ПК в цілому'),
(2, 'Операційні системи'),
(3, 'Програмування');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`number`);

--
-- Индексы таблицы `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book_edition`
--
ALTER TABLE `book_edition`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `book_topic`
--
ALTER TABLE `book_topic`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `book`
--
ALTER TABLE `book`
  MODIFY `number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT для таблицы `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `book_edition`
--
ALTER TABLE `book_edition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `book_topic`
--
ALTER TABLE `book_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `book_category` (`id`),
  ADD CONSTRAINT `book_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `book_topic` (`id`),
  ADD CONSTRAINT `book_ibfk_3` FOREIGN KEY (`edition_id`) REFERENCES `book_edition` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
