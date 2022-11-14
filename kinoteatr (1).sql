-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Ноя 14 2022 г., 22:39
-- Версия сервера: 8.0.31
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kinoteatr`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cinemas`
--

CREATE TABLE `cinemas` (
  `id_cinema` int NOT NULL,
  `shoping_center_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `adress` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cinemas`
--

INSERT INTO `cinemas` (`id_cinema`, `shoping_center_name`, `adress`, `district`, `type`) VALUES
(1, 'Авилон', 'Ташкентская 34 к 2', 'Кузьминки', 'Панавижн'),
(2, 'Авиапарк', '\r\nул. Авиаконструктора Микояна, 10', 'ЦСКА', 'IMAX'),
(3, 'ГУМ', 'Красная площадь, 3', 'Охотный ряд', 'IMAX'),
(4, 'Метрополис', 'Ленинградское ш., 16А, стр. 4', 'Балтийская', 'Панавижн');

-- --------------------------------------------------------

--
-- Структура таблицы `employee`
--

CREATE TABLE `employee` (
  `id_employee` int NOT NULL,
  `id_post` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `second_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_of_house` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `Login` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `employee`
--

INSERT INTO `employee` (`id_employee`, `id_post`, `name`, `second_name`, `street`, `number_of_house`, `middle_name`, `phone_number`, `email`, `date_of_birth`, `Login`, `Pass`) VALUES
(2, 1, 'Евгений', 'Глушков', 'Ташкентская', ' 34 к 2', 'Сергеевич', '+79015777510', 'vzlomka927@yandex.ru', '2017-10-11', 'Evgeniy_glushkov18', 'qw135246'),
(3, 2, 'Абдула', 'Бацаев', 'Ленина', '51', 'Магомет-баширович', '+79015777519', 'vzlomka917@yandex.ru', '2002-11-07', 'Abdyla17', '123123123'),
(4, 3, 'Эдмонд', 'Бадасян', 'Звёздной', '8', 'Сурикович', '+79015777521', 'vzlomka937@yandex.ru', '2002-11-21', 'Edmond18', '2222222'),
(5, 3, 'Николай', 'Дурындин', 'Медицинская', '6', 'Игоревич', '+79015777512', 'vzlomka907@yandex.ru', '2002-11-25', 'Dyrindin18', '333333333'),
(10, 5, 'Егор Артемьевич', 'Сорокин', 'Энергетиков', '21', 'Артемьевич', '+79015777589', 'vzlomka967@yandex.ru', '2002-11-13', 'Egor18', '44444444'),
(11, 5, 'Захар', 'Герасимов', 'Марксистская', '8', 'Кириллович', '+79015777189', 'vzlomka957@yandex.ru', '2002-11-05', 'Zaxar21', '555555555');

-- --------------------------------------------------------

--
-- Структура таблицы `genre`
--

CREATE TABLE `genre` (
  `id_genre` int NOT NULL,
  `genre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `genre`
--

INSERT INTO `genre` (`id_genre`, `genre`) VALUES
(1, 'Вестерн'),
(2, 'Хоррор'),
(3, 'Триллер'),
(4, 'Комедия'),
(5, 'Нуар'),
(6, 'Драма'),
(7, 'Фантастика');

-- --------------------------------------------------------

--
-- Структура таблицы `hall`
--

CREATE TABLE `hall` (
  `id_hall` int NOT NULL,
  `hallnumber` int NOT NULL,
  `id_cinema` int NOT NULL,
  `capacity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `hall`
--

INSERT INTO `hall` (`id_hall`, `hallnumber`, `id_cinema`, `capacity`) VALUES
(1, 1, 2, 30),
(2, 2, 2, 45),
(3, 3, 2, 45),
(4, 4, 2, 45),
(5, 1, 1, 45),
(6, 2, 1, 45),
(7, 3, 1, 50),
(8, 4, 1, 50),
(9, 1, 4, 60),
(10, 2, 4, 70),
(11, 1, 3, 70),
(12, 2, 3, 70);

-- --------------------------------------------------------

--
-- Структура таблицы `movies`
--

CREATE TABLE `movies` (
  `id_film` int NOT NULL,
  `id_genre` int NOT NULL,
  `id_producer` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `the_script` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `actors` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `movies`
--

INSERT INTO `movies` (`id_film`, `id_genre`, `id_producer`, `name`, `the_script`, `actors`, `duration`) VALUES
(1, 3, 6, 'Джокер', 'Клоун убил актера', 'джаред лето', '1:30:00'),
(2, 2, 2, 'Чёрны адам', '5000 лет назад Чёрный Адам был наделен силами египетских богов и заключён в тюрьму. Теперь он освобождается из своей усыпальницы и готовится явить миру уникальный подход к борьбе за справедливость', 'Дуэйн Джонсон, Элдис Ходж, Пирс Броснан', '1:30:25'),
(3, 2, 2, 'Анчартед: На картах не значится\r\n', 'Нейтан Дрейк не видел старшего брата Сэма 15 лет, с тех пор как тот сбежал из сиротского приюта. Парень работает барменом и промышляет мелким воровством, когда на него выходит Виктор Салливан по прозвищу Салли и предлагает отправиться на поиски давно потерянных сокровищ Магеллана', '\r\nАнтонио Бандерас, Сантьяго Монкада, Софья Тейлор, Али Хлоя', '1:25:15'),
(4, 3, 3, 'Призрачная шестёрка', 'Инсценировав собственную смерть, сознательный миллиардер начинает новую жизнь — набирает отряд наёмников из разных стран, чтобы бороться со злом в этом мире. Все члены команды получают вместо имён цифры, и их целью становится свержение диктатора и освобождение народа страны Тургистан', 'Райан Рейнольдс, Мелани Лоран, Мелани Лоран', '1:15:26');

-- --------------------------------------------------------

--
-- Структура таблицы `post`
--

CREATE TABLE `post` (
  `id_post` int NOT NULL,
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duties` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prize` int NOT NULL,
  `vacation` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `post`
--

INSERT INTO `post` (`id_post`, `post_name`, `duties`, `salary`, `prize`, `vacation`) VALUES
(1, 'Директор', 'Руководит персоналом', '145000', 20000, '0000-00-00'),
(2, 'Уборщик', 'Уборка помещений', '25000', 10000, '0000-00-00'),
(3, 'Билетёр', 'Проверка билетов на просмотр фильмов', '45000', 15000, '0000-00-00'),
(4, 'Охранник', 'Охраняет помещение и прилегающие территории', '30000', 0, '0000-00-00'),
(5, 'Кассир', 'осуществляет получение разменных денег и их размещение в кассовом ящике', '45000', 15000, '0000-00-00'),
(6, 'Администратор', 'Создание комфортных условий для клиента', '90000', 20000, '0000-00-00'),
(7, 'Киномеханик', 'Осуществляет демонстрацию фильмов в соответствии с утвержденным расписанием, обеспечивает техническое обслуживание киноустановок и своевременный уход за киноаппаратурой', '85000', 18000, '0000-00-00');

-- --------------------------------------------------------

--
-- Структура таблицы `producer`
--

CREATE TABLE `producer` (
  `id_producer` int NOT NULL,
  `producer_name` varchar(200) NOT NULL,
  `producer's_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `producer`
--

INSERT INTO `producer` (`id_producer`, `producer_name`, `producer's_description`) VALUES
(1, 'Стэнли Кубрик', 'Британский и американский кинорежиссёр, сценарист, кинопродюсер, кинооператор, фотограф. Один из самых влиятельных кинематографистов второй половины XX века'),
(2, 'Ингмар Бергман', 'Шведский режиссёр театра и кино, сценарист, писатель. Признан одним из величайших кинорежиссёров авторского кино'),
(3, 'Альфред Хичкок', 'Британский кинорежиссёр\r\nБританский и американский кинорежиссёр, продюсер, сценарист.'),
(4, 'Акира Куросава', 'Японский кинорежиссёр, сценарист и продюсер. Считается одним из самых влиятельных кинорежиссёров за всю историю кино. В течение 57 лет своей творческой деятельности создал 30 фильмов.'),
(5, 'Джей Джей Абрамс', 'Американский продюсер, сценарист, режиссер, актер и композитор.'),
(6, 'Гай Ричи\r\n', 'Британский кинорежиссёр, сценарист, продюсер, чаще всего работающий в жанре криминальной комедии.');

-- --------------------------------------------------------

--
-- Структура таблицы `session`
--

CREATE TABLE `session` (
  `id_session` int NOT NULL,
  `id_hall` int NOT NULL,
  `id_film` int NOT NULL,
  `time` time NOT NULL,
  `ticket_cost` int NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `session`
--

INSERT INTO `session` (`id_session`, `id_hall`, `id_film`, `time`, `ticket_cost`, `date`) VALUES
(1, 2, 1, '09:37:50', 200, '2022-11-22'),
(2, 1, 1, '12:48:33', 250, '2022-11-16'),
(3, 6, 2, '02:14:51', 200, '2022-11-14'),
(4, 3, 4, '14:28:51', 250, '2022-11-11'),
(5, 6, 1, '09:37:50', 200, '2022-11-22'),
(6, 11, 1, '16:11:45', 250, '2022-11-22');

-- --------------------------------------------------------

--
-- Структура таблицы `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int NOT NULL,
  `user` int NOT NULL,
  `session_info` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `second_name` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cinemas`
--
ALTER TABLE `cinemas`
  ADD PRIMARY KEY (`id_cinema`);

--
-- Индексы таблицы `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD KEY `id_post` (`id_post`);

--
-- Индексы таблицы `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- Индексы таблицы `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id_hall`),
  ADD KEY `id_cinema` (`id_cinema`);

--
-- Индексы таблицы `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id_film`),
  ADD KEY `id_genre` (`id_genre`),
  ADD KEY `id_producer` (`id_producer`);

--
-- Индексы таблицы `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_post_2` (`id_post`),
  ADD KEY `id_post_3` (`id_post`);

--
-- Индексы таблицы `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id_producer`);

--
-- Индексы таблицы `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `id_film` (`id_film`),
  ADD KEY `id_hall` (`id_hall`);

--
-- Индексы таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `session_info` (`session_info`),
  ADD KEY `user` (`user`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cinemas`
--
ALTER TABLE `cinemas`
  MODIFY `id_cinema` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `hall`
--
ALTER TABLE `hall`
  MODIFY `id_hall` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `movies`
--
ALTER TABLE `movies`
  MODIFY `id_film` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `producer`
--
ALTER TABLE `producer`
  MODIFY `id_producer` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `session`
--
ALTER TABLE `session`
  MODIFY `id_session` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Ограничения внешнего ключа таблицы `hall`
--
ALTER TABLE `hall`
  ADD CONSTRAINT `hall_ibfk_1` FOREIGN KEY (`id_cinema`) REFERENCES `cinemas` (`id_cinema`);

--
-- Ограничения внешнего ключа таблицы `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`id_producer`) REFERENCES `producer` (`id_producer`);

--
-- Ограничения внешнего ключа таблицы `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `movies` (`id_film`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`id_hall`) REFERENCES `hall` (`id_hall`);

--
-- Ограничения внешнего ключа таблицы `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`session_info`) REFERENCES `session` (`id_session`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
