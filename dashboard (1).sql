-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 12:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dashboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `chinese`
--

CREATE TABLE `chinese` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chinese_test`
--

CREATE TABLE `chinese_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chinese_test`
--

INSERT INTO `chinese_test` (`id`, `question`, `answer`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, '中国的首都是什么?', '', '上海', '北京', '广州', '深圳', '2'),
(2, '天空是什么颜色?', '', '红色', '蓝色', '绿色', '黄色', '2'),
(3, '一周有几天?', '', '5', '6', '7', '8', '3'),
(4, '中国的货币是什么?', '', '美元', '欧元', '日元', '人民币', '4'),
(5, '世界上最大的海洋是什么?', '', '大西洋', '太平洋', '印度洋', '北冰洋', '2'),
(6, '一小时有几分钟?', '', '50', '60', '70', '80', '2'),
(7, '中国的官方语言是什么?', '', '英语', '西班牙语', '法语', '汉语', '4'),
(8, '世界上最高的山是什么?', '', 'K2', '珠穆朗玛峰', '勃朗峰', '干城章嘉峰', '2'),
(9, '中国现任国家主席是谁?', '', '胡锦涛', '江泽民', '习近平', '邓小平', '3'),
(10, '水的化学符号是什么?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(11, '哪个星球被称为红色星球?', '', '地球', '火星', '木星', '土星', '2'),
(12, '世界上最大的热带雨林是什么?', '', '亚马逊雨林', '黑森林', '舍伍德森林', '北方针叶林', '1'),
(13, '世界上最长的河流是什么?', '', '尼罗河', '亚马逊河', '长江', '密西西比河', '2'),
(14, '神经系统的主要器官是什么?', '', '心脏', '肺', '大脑', '肝脏', '3'),
(15, '太阳系中最大的行星是什么?', '', '地球', '火星', '木星', '土星', '3');

-- --------------------------------------------------------

--
-- Table structure for table `english`
--

CREATE TABLE `english` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `english`
--

INSERT INTO `english` (`id`, `question`, `answer`, `level`) VALUES
(1, 'is red a color or a fruit?', 'color', 'beginner');

-- --------------------------------------------------------

--
-- Table structure for table `english_test`
--

CREATE TABLE `english_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `english_test`
--

INSERT INTO `english_test` (`id`, `question`, `answer`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, 'What is the capital of the UK?', 'London', '', '', '', '', '1'),
(2, 'What is the past tense of \"run\"?', 'ran', '', '', '', '', '1'),
(3, 'What is the synonym of \"happy\"?', 'joyful', '', '', '', '', '1'),
(4, 'How do you say \"hello\" in Spanish?', 'hola', '', '', '', '', '1'),
(5, 'What is 2 + 2?', '4', '', '', '', '', '1'),
(6, 'Name a fruit that is yellow.', 'banana', '', '', '', '', '1'),
(7, 'What is the largest mammal?', 'blue whale', '', '', '', '', '1'),
(8, 'How many continents are there?', '7', '', '', '', '', '1'),
(9, 'What is the capital of England?', 'London', 'London', 'Paris', 'Berlin', 'Madrid', '1'),
(10, 'Which is the largest planet in our solar system?', 'Jupiter', 'Earth', 'Mars', 'Jupiter', 'Saturn', '3'),
(11, 'What is the boiling point of water?', '100°C', '50°C', '75°C', '100°C', '125°C', '3'),
(12, 'Who wrote \"To Kill a Mockingbird\"?', 'Harper Lee', 'Mark Twain', 'J.K. Rowling', 'Harper Lee', 'Jane Austen', '4'),
(13, 'What is the hardest natural substance on Earth?', 'Diamond', 'Gold', 'Silver', 'Platinum', 'Diamond', ''),
(14, 'Which element has the chemical symbol O?', 'Oxygen', 'Oxygen', 'Gold', 'Silver', 'Iron', '1'),
(15, 'How many continents are there on Earth?', '7', '5', '6', '7', '8', '3'),
(16, 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Michelangelo', 'Raphael', 'Leonardo da Vinci', 'Donatello', '4'),
(17, 'What is the main ingredient in traditional Japanese miso soup?', 'Miso paste', 'Tofu', 'Miso paste', 'Soy sauce', 'Rice', '3'),
(18, 'Which language is the most widely spoken in the world?', 'Mandarin', 'Spanish', 'English', 'Hindi', 'Mandarin', '1'),
(19, 'What is the capital of Australia?', 'Canberra', 'Sydney', 'Melbourne', 'Canberra', 'Brisbane', '4'),
(20, 'What is the smallest prime number?', '2', '1', '2', '3', '5', '3'),
(21, 'Who is known as the \"Father of Computers\"?', 'Charles Babbage', 'Alan Turing', 'Bill Gates', 'Charles Babbage', 'Steve Jobs', '4'),
(22, 'Which planet is closest to the sun?', 'Mercury', 'Mercury', 'Venus', 'Earth', 'Mars', '1'),
(23, 'What is the square root of 64?', '8', '6', '7', '8', '9', '4');

-- --------------------------------------------------------

--
-- Table structure for table `french`
--

CREATE TABLE `french` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `french_test`
--

CREATE TABLE `french_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `french_test`
--

INSERT INTO `french_test` (`id`, `question`, `answer`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, 'Quelle est la capitale de la France?', '', 'Marseille', 'Lyon', 'Paris', 'Nice', '3'),
(2, 'Quelle couleur est le ciel?', '', 'Rouge', 'Bleu', 'Vert', 'Jaune', '2'),
(3, 'Combien de jours y a-t-il dans une semaine?', '', '5', '6', '7', '8', '3'),
(4, 'Quelle est la monnaie de la France?', '', 'Dollar', 'Euro', 'Yen', 'Livre', '2'),
(5, 'Quel est le plus grand océan du monde?', '', 'Atlantique', 'Pacifique', 'Indien', 'Arctique', '2'),
(6, 'Combien de minutes y a-t-il dans une heure?', '', '50', '60', '70', '80', '2'),
(7, 'Quelle est la langue officielle de la France?', '', 'Anglais', 'Espagnol', 'Français', 'Allemand', '3'),
(8, 'Quelle est la plus haute montagne du monde?', '', 'K2', 'Everest', 'Mont Blanc', 'Kangchenjunga', '2'),
(9, 'Qui est le président actuel de la France?', '', 'François Hollande', 'Nicolas Sarkozy', 'Emmanuel Macron', 'Jacques Chirac', '3'),
(10, 'Quel est le symbole chimique de l’eau?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(11, 'Quelle planète est connue sous le nom de planète rouge?', '', 'Terre', 'Mars', 'Jupiter', 'Saturne', '2'),
(12, 'Quelle est la plus grande forêt tropicale du monde?', '', 'Forêt amazonienne', 'Forêt noire', 'Forêt de Sherwood', 'Forêt boréale', '1'),
(13, 'Quel est le plus long fleuve du monde?', '', 'Nil', 'Amazone', 'Yangtsé', 'Mississippi', '2'),
(14, 'Quel est l’organe principal du système nerveux?', '', 'Cœur', 'Poumon', 'Cerveau', 'Foie', '3'),
(15, 'Quelle est la plus grande planète de notre système solaire?', '', 'Terre', 'Mars', 'Jupiter', 'Saturne', '3'),
(16, 'Quelle est la capitale de la France?', '', 'Marseille', 'Lyon', 'Paris', 'Nice', '3'),
(17, 'Quelle couleur est le ciel?', '', 'Rouge', 'Bleu', 'Vert', 'Jaune', '2'),
(18, 'Combien de jours y a-t-il dans une semaine?', '', '5', '6', '7', '8', '3'),
(19, 'Quelle est la monnaie de la France?', '', 'Dollar', 'Euro', 'Yen', 'Livre', '2'),
(20, 'Quel est le plus grand océan du monde?', '', 'Atlantique', 'Pacifique', 'Indien', 'Arctique', '2'),
(21, 'Combien de minutes y a-t-il dans une heure?', '', '50', '60', '70', '80', '2'),
(22, 'Quelle est la langue officielle de la France?', '', 'Anglais', 'Espagnol', 'Français', 'Allemand', '3'),
(23, 'Quelle est la plus haute montagne du monde?', '', 'K2', 'Everest', 'Mont Blanc', 'Kangchenjunga', '2'),
(24, 'Qui est le président actuel de la France?', '', 'François Hollande', 'Nicolas Sarkozy', 'Emmanuel Macron', 'Jacques Chirac', '3'),
(25, 'Quel est le symbole chimique de l’eau?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(26, 'Quelle planète est connue sous le nom de planète rouge?', '', 'Terre', 'Mars', 'Jupiter', 'Saturne', '2'),
(27, 'Quelle est la plus grande forêt tropicale du monde?', '', 'Forêt amazonienne', 'Forêt noire', 'Forêt de Sherwood', 'Forêt boréale', '1'),
(28, 'Quel est le plus long fleuve du monde?', '', 'Nil', 'Amazone', 'Yangtsé', 'Mississippi', '2'),
(29, 'Quel est l’organe principal du système nerveux?', '', 'Cœur', 'Poumon', 'Cerveau', 'Foie', '3'),
(30, 'Quelle est la plus grande planète de notre système solaire?', '', 'Terre', 'Mars', 'Jupiter', 'Saturne', '3');

-- --------------------------------------------------------

--
-- Table structure for table `german`
--

CREATE TABLE `german` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `german_test`
--

CREATE TABLE `german_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `german_test`
--

INSERT INTO `german_test` (`id`, `question`, `answer`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, 'Was ist die Hauptstadt von Deutschland?', '', 'Hamburg', 'Berlin', 'München', 'Frankfurt', '2'),
(2, 'Welche Farbe hat der Himmel?', '', 'Rot', 'Blau', 'Grün', 'Gelb', '2'),
(3, 'Wie viele Tage hat eine Woche?', '', '5', '6', '7', '8', '3'),
(4, 'Was ist die Währung von Deutschland?', '', 'Dollar', 'Euro', 'Yen', 'Pfund', '2'),
(5, 'Welcher ist der größte Ozean der Welt?', '', 'Atlantik', 'Pazifik', 'Indischer Ozean', 'Arktischer Ozean', '2'),
(6, 'Wie viele Minuten hat eine Stunde?', '', '50', '60', '70', '80', '2'),
(7, 'Was ist die Amtssprache von Deutschland?', '', 'Englisch', 'Spanisch', 'Französisch', 'Deutsch', '4'),
(8, 'Welcher Berg ist der höchste der Welt?', '', 'K2', 'Everest', 'Mont Blanc', 'Kangchenjunga', '2'),
(9, 'Wer ist der aktuelle Bundeskanzler von Deutschland?', '', 'Angela Merkel', 'Olaf Scholz', 'Gerhard Schröder', 'Helmut Kohl', '2'),
(10, 'Was ist das chemische Symbol für Wasser?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(11, 'Welcher Planet ist als roter Planet bekannt?', '', 'Erde', 'Mars', 'Jupiter', 'Saturn', '2'),
(12, 'Welcher ist der größte Regenwald der Welt?', '', 'Amazonas', 'Schwarzwald', 'Sherwood-Wald', 'Borealer Wald', '1'),
(13, 'Welcher ist der längste Fluss der Welt?', '', 'Nil', 'Amazonas', 'Yangtze', 'Mississippi', '2'),
(14, 'Was ist das Hauptorgan des Nervensystems?', '', 'Herz', 'Lunge', 'Gehirn', 'Leber', '3'),
(15, 'Welcher ist der größte Planet in unserem Sonnensystem?', '', 'Erde', 'Mars', 'Jupiter', 'Saturn', '3'),
(16, 'Was ist die Hauptstadt von Deutschland?', '', 'Hamburg', 'Berlin', 'München', 'Frankfurt', '2'),
(17, 'Welche Farbe hat der Himmel?', '', 'Rot', 'Blau', 'Grün', 'Gelb', '2'),
(18, 'Wie viele Tage hat eine Woche?', '', '5', '6', '7', '8', '3'),
(19, 'Was ist die Währung von Deutschland?', '', 'Dollar', 'Euro', 'Yen', 'Pfund', '2'),
(20, 'Welcher ist der größte Ozean der Welt?', '', 'Atlantik', 'Pazifik', 'Indischer Ozean', 'Arktischer Ozean', '2'),
(21, 'Wie viele Minuten hat eine Stunde?', '', '50', '60', '70', '80', '2'),
(22, 'Was ist die Amtssprache von Deutschland?', '', 'Englisch', 'Spanisch', 'Französisch', 'Deutsch', '4'),
(23, 'Welcher Berg ist der höchste der Welt?', '', 'K2', 'Everest', 'Mont Blanc', 'Kangchenjunga', '2'),
(24, 'Wer ist der aktuelle Bundeskanzler von Deutschland?', '', 'Angela Merkel', 'Olaf Scholz', 'Gerhard Schröder', 'Helmut Kohl', '2'),
(25, 'Was ist das chemische Symbol für Wasser?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(26, 'Welcher Planet ist als roter Planet bekannt?', '', 'Erde', 'Mars', 'Jupiter', 'Saturn', '2'),
(27, 'Welcher ist der größte Regenwald der Welt?', '', 'Amazonas', 'Schwarzwald', 'Sherwood-Wald', 'Borealer Wald', '1'),
(28, 'Welcher ist der längste Fluss der Welt?', '', 'Nil', 'Amazonas', 'Yangtze', 'Mississippi', '2'),
(29, 'Was ist das Hauptorgan des Nervensystems?', '', 'Herz', 'Lunge', 'Gehirn', 'Leber', '3'),
(30, 'Welcher ist der größte Planet in unserem Sonnensystem?', '', 'Erde', 'Mars', 'Jupiter', 'Saturn', '3');

-- --------------------------------------------------------

--
-- Table structure for table `italian`
--

CREATE TABLE `italian` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `italian_test`
--

CREATE TABLE `italian_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `italian_test`
--

INSERT INTO `italian_test` (`id`, `question`, `answer`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, 'Qual è la capitale d’Italia?', '', 'Milano', 'Roma', 'Venezia', 'Firenze', '2'),
(2, 'Di che colore è il cielo?', '', 'Rosso', 'Blu', 'Verde', 'Giallo', '2'),
(3, 'Quanti giorni ci sono in una settimana?', '', '5', '6', '7', '8', '3'),
(4, 'Qual è la moneta dell’Italia?', '', 'Dollaro', 'Euro', 'Yen', 'Sterlina', '2'),
(5, 'Qual è l’oceano più grande del mondo?', '', 'Atlantico', 'Pacifico', 'Indiano', 'Artico', '2'),
(6, 'Quanti minuti ci sono in un’ora?', '', '50', '60', '70', '80', '2'),
(7, 'Qual è la lingua ufficiale dell’Italia?', '', 'Inglese', 'Spagnolo', 'Francese', 'Italiano', '4'),
(8, 'Qual è la montagna più alta del mondo?', '', 'K2', 'Everest', 'Monte Bianco', 'Kangchenjunga', '2'),
(9, 'Chi è l’attuale presidente dell’Italia?', '', 'Sergio Mattarella', 'Giorgio Napolitano', 'Carlo Azeglio Ciampi', 'Oscar Luigi Scalfaro', '1'),
(10, 'Qual è il simbolo chimico dell’acqua?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(11, 'Quale pianeta è conosciuto come il pianeta rosso?', '', 'Terra', 'Marte', 'Giove', 'Saturno', '2'),
(12, 'Qual è la più grande foresta pluviale del mondo?', '', 'Foresta amazzonica', 'Foresta nera', 'Foresta di Sherwood', 'Foresta boreale', '1'),
(13, 'Qual è il fiume più lungo del mondo?', '', 'Nilo', 'Amazzonia', 'Yangtze', 'Mississippi', '2'),
(14, 'Qual è l’organo principale del sistema nervoso?', '', 'Cuore', 'Polmone', 'Cervello', 'Fegato', '3'),
(15, 'Qual è il pianeta più grande del nostro sistema solare?', '', 'Terra', 'Marte', 'Giove', 'Saturno', '3');

-- --------------------------------------------------------

--
-- Table structure for table `russian`
--

CREATE TABLE `russian` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `russian_test`
--

CREATE TABLE `russian_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `russian_test`
--

INSERT INTO `russian_test` (`id`, `question`, `answer`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, 'Какой город является столицей России?', '', 'Санкт-Петербург', 'Москва', 'Новосибирск', 'Екатеринбург', '2'),
(2, 'Какого цвета небо?', '', 'Красного', 'Синего', 'Зеленого', 'Желтого', '2'),
(3, 'Сколько дней в неделе?', '', '5', '6', '7', '8', '3'),
(4, 'Как называется валюта России?', '', 'Доллар', 'Евро', 'Йена', 'Рубль', '4'),
(5, 'Какой самый большой океан в мире?', '', 'Атлантический', 'Тихий', 'Индийский', 'Северный Ледовитый', '2'),
(6, 'Сколько минут в часе?', '', '50', '60', '70', '80', '2'),
(7, 'Какой официальный язык в России?', '', 'Английский', 'Испанский', 'Французский', 'Русский', '4'),
(8, 'Какая гора является самой высокой в мире?', '', 'К2', 'Эверест', 'Монблан', 'Канченджанга', '2'),
(9, 'Кто является нынешним президентом России?', '', 'Борис Ельцин', 'Владимир Путин', 'Дмитрий Медведев', 'Михаил Горбачев', '2'),
(10, 'Какое химическое обозначение воды?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(11, 'Какая планета известна как красная планета?', '', 'Земля', 'Марс', 'Юпитер', 'Сатурн', '2'),
(12, 'Какой самый большой тропический лес в мире?', '', 'Амазонский лес', 'Черный лес', 'Лес Шервуд', 'Бореальный лес', '1'),
(13, 'Какая самая длинная река в мире?', '', 'Нил', 'Амазонка', 'Янцзы', 'Миссисипи', '2'),
(14, 'Какой главный орган нервной системы?', '', 'Сердце', 'Легкие', 'Мозг', 'Печень', '3'),
(15, 'Какая самая большая планета в нашей солнечной системе?', '', 'Земля', 'Марс', 'Юпитер', 'Сатурн', '3');

-- --------------------------------------------------------

--
-- Table structure for table `spanish`
--

CREATE TABLE `spanish` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `level` enum('beginner','intermediate','advanced') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spanish_test`
--

CREATE TABLE `spanish_test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `correct_option` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spanish_test`
--

INSERT INTO `spanish_test` (`id`, `question`, `answer`, `option1`, `option2`, `option3`, `option4`, `correct_option`) VALUES
(1, '¿Cuál es la capital de España?', '', 'Barcelona', 'Madrid', 'Valencia', 'Sevilla', '2'),
(2, '¿De qué color es el cielo?', '', 'Rojo', 'Azul', 'Verde', 'Amarillo', '2'),
(3, '¿Cuántos días hay en una semana?', '', '5', '6', '7', '8', '3'),
(4, '¿Cuál es la moneda de España?', '', 'Dólar', 'Euro', 'Yen', 'Libra', '2'),
(5, '¿Cuál es el océano más grande del mundo?', '', 'Atlántico', 'Pacífico', 'Índico', 'Ártico', '2'),
(6, '¿Cuántos minutos hay en una hora?', '', '50', '60', '70', '80', '2'),
(7, '¿Cuál es el idioma oficial de España?', '', 'Inglés', 'Español', 'Francés', 'Alemán', '2'),
(8, '¿Cuál es la montaña más alta del mundo?', '', 'K2', 'Everest', 'Mont Blanc', 'Kangchenjunga', '2'),
(9, '¿Quién es el presidente actual de España?', '', 'Pedro Sánchez', 'Mariano Rajoy', 'José Luis Rodríguez Zapatero', 'Felipe González', '1'),
(10, '¿Cuál es el símbolo químico del agua?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(11, '¿Qué planeta es conocido como el planeta rojo?', '', 'Tierra', 'Marte', 'Júpiter', 'Saturno', '2'),
(12, '¿Cuál es la selva tropical más grande del mundo?', '', 'Selva amazónica', 'Selva negra', 'Selva de Sherwood', 'Selva boreal', '1'),
(13, '¿Cuál es el río más largo del mundo?', '', 'Nilo', 'Amazonas', 'Yangtsé', 'Misisipi', '2'),
(14, '¿Cuál es el órgano principal del sistema nervioso?', '', 'Corazón', 'Pulmón', 'Cerebro', 'Hígado', '3'),
(15, '¿Cuál es el planeta más grande de nuestro sistema solar?', '', 'Tierra', 'Marte', 'Júpiter', 'Saturno', '3'),
(16, '¿Cuál es la capital de España?', '', 'Barcelona', 'Madrid', 'Valencia', 'Sevilla', '2'),
(17, '¿De qué color es el cielo?', '', 'Rojo', 'Azul', 'Verde', 'Amarillo', '2'),
(18, '¿Cuántos días hay en una semana?', '', '5', '6', '7', '8', '3'),
(19, '¿Cuál es la moneda de España?', '', 'Dólar', 'Euro', 'Yen', 'Libra', '2'),
(20, '¿Cuál es el océano más grande del mundo?', '', 'Atlántico', 'Pacífico', 'Índico', 'Ártico', '2'),
(21, '¿Cuántos minutos hay en una hora?', '', '50', '60', '70', '80', '2'),
(22, '¿Cuál es el idioma oficial de España?', '', 'Inglés', 'Español', 'Francés', 'Alemán', '2'),
(23, '¿Cuál es la montaña más alta del mundo?', '', 'K2', 'Everest', 'Mont Blanc', 'Kangchenjunga', '2'),
(24, '¿Quién es el presidente actual de España?', '', 'Pedro Sánchez', 'Mariano Rajoy', 'José Luis Rodríguez Zapatero', 'Felipe González', '1'),
(25, '¿Cuál es el símbolo químico del agua?', '', 'H2O', 'O2', 'CO2', 'NaCl', '1'),
(26, '¿Qué planeta es conocido como el planeta rojo?', '', 'Tierra', 'Marte', 'Júpiter', 'Saturno', '2'),
(27, '¿Cuál es la selva tropical más grande del mundo?', '', 'Selva amazónica', 'Selva negra', 'Selva de Sherwood', 'Selva boreal', '1'),
(28, '¿Cuál es el río más largo del mundo?', '', 'Nilo', 'Amazonas', 'Yangtsé', 'Misisipi', '2'),
(29, '¿Cuál es el órgano principal del sistema nervioso?', '', 'Corazón', 'Pulmón', 'Cerebro', 'Hígado', '3'),
(30, '¿Cuál es el planeta más grande de nuestro sistema solar?', '', 'Tierra', 'Marte', 'Júpiter', 'Saturno', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chinese`
--
ALTER TABLE `chinese`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinese_test`
--
ALTER TABLE `chinese_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `english`
--
ALTER TABLE `english`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `english_test`
--
ALTER TABLE `english_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `french`
--
ALTER TABLE `french`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `french_test`
--
ALTER TABLE `french_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `german`
--
ALTER TABLE `german`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `german_test`
--
ALTER TABLE `german_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `italian`
--
ALTER TABLE `italian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `italian_test`
--
ALTER TABLE `italian_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `russian`
--
ALTER TABLE `russian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `russian_test`
--
ALTER TABLE `russian_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spanish`
--
ALTER TABLE `spanish`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spanish_test`
--
ALTER TABLE `spanish_test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chinese`
--
ALTER TABLE `chinese`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chinese_test`
--
ALTER TABLE `chinese_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `english`
--
ALTER TABLE `english`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `english_test`
--
ALTER TABLE `english_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `french`
--
ALTER TABLE `french`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `french_test`
--
ALTER TABLE `french_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `german`
--
ALTER TABLE `german`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `german_test`
--
ALTER TABLE `german_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `italian`
--
ALTER TABLE `italian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `italian_test`
--
ALTER TABLE `italian_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `russian`
--
ALTER TABLE `russian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `russian_test`
--
ALTER TABLE `russian_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `spanish`
--
ALTER TABLE `spanish`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spanish_test`
--
ALTER TABLE `spanish_test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
