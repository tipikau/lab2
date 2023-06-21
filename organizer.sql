-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 21 2023 г., 03:39
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `organizer`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `company`, `adress`) VALUES
(1, 'Иван Иванов', 'ivanov@mail.ru', '8-800-555-35-35', 'ООО \"Рога и копыта', 'г. Москва, ул. Ленина, д. 10'),
(2, 'Петр Петров', 'petrov@mail.ru', '8-800-555-25-25', 'ЗАО \"Алмаз\"', 'г. Санкт-Петербург, ул. Пушкина, д. 5'),
(3, 'Анна Сидорова', 'sidorova@mail.ru', '8-800-555-15-15', 'ИП Иванов', 'г. Новосибирск, ул. Гагарина, д. 20');

-- --------------------------------------------------------

--
-- Структура таблицы `events`
--

CREATE TABLE `events` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `start_date`, `start_time`, `end_time`, `location`) VALUES
(1, 'Встреча с партнёром', 'Обсудить возможность сотрудничества', '2023-04-22', '16:10:00', '16:10:00', 'Офис партнёра'),
(2, 'Тренинг по управлению временем', 'Узнать новые методы организации рабочего времени', '2023-04-23', '12:00:00', '13:00:00', 'Онлайн'),
(3, 'fewfewfewfe', 'fefef', '2322-12-12', '12:23:00', '13:11:00', 'Томск');

-- --------------------------------------------------------

--
-- Структура таблицы `notes`
--

CREATE TABLE `notes` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `notes`
--

INSERT INTO `notes` (`id`, `title`, `description`, `created_at`) VALUES
(1, 'Покупки', '-Пиво\r\n-Сигареты\r\n-Водка\r\n-Пельмени', '2023-06-20'),
(2, 'Полкило', 'Список идей для нового проекта', '2023-04-27'),
(3, 't33t3trtr', 'trtrtrtrt', '2023-02-20'),
(4, 'авалщкплшуклпшекпщшекпп', 'екректиектектектекткетектект', '2023-06-19'),
(5, 'gthrtjhthjtrhujtruihtrjhtrhtrhtrht', 'htrhthththtgtgtgtgtgtgttgtgtgtg', '2023-06-15'),
(6, 'rr4gt34gt3t', '43t34t43t34t34t34', '2222-02-21'),
(7, 'акпкупкупукпукпку', 'пкупкупукпукпукпкупкуп', '2023-02-12'),
(8, 'gregregreger', 'gregregregregre', '2023-12-12'),
(9, 'aaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaasfwefewfew', '2023-12-12'),
(10, 'вавававававава', 'вавававававававава', '2012-12-12');

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `priority` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `title`, `description`, `start_time`, `end_time`, `priority`) VALUES
(1, 'Отчёт', 'Принять отчет от работяг', '10:27:15', '18:00:00', 1),
(2, 'Созвониться с клиентом', '\'Обсудить детали проекта с клиентом', '15:00:00', '15:30:00', 2),
(3, 'Провести совещание', 'Обсудить текущие задачи с командой', '16:00:00', '16:30:00', 3),
(4, 'Название задачи1', 'задача1', '15:50:00', '00:00:00', 1),
(5, 'r3r3r3r3r', 'r3r3r3r3', '00:00:00', '00:00:00', 1),
(6, 'Заметка не знаю какая', 'описание заметки не знаю какая', '00:00:00', '00:00:00', 0),
(7, 'dsadasdasdasdasd', 'sadasdsadsadas', '12:12:00', '13:13:00', 2),
(8, 'grggrr', 'grgrg', '15:11:00', '13:22:00', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `login` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `name`) VALUES
(1, 'admin', 'admin', 'Никита Авдеенко'),
(2, 'nikita', '4b93d730260d25ae439ff8d819225c1d', 'Никита'),
(3, 'admin', 'aef00d217db0774bb218be1c6e903f1e', 'Никита'),
(4, 'dmitriy', 'f7dc99c069f39047c9bb1851ae9ed8d2', 'Дмитрий');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
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
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `events`
--
ALTER TABLE `events`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
