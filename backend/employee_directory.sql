-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 12 2022 г., 16:20
-- Версия сервера: 8.0.29
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `employee_directory`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id_group` int NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id_group`, `name`) VALUES
(1, 'Бухгалтерия'),
(2, 'Руководство'),
(3, 'Отдел кадров'),
(4, 'Отдел маркетинга');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(120) NOT NULL,
  `account` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `id_groups` int DEFAULT NULL,
  `number` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `account`, `email`, `id_groups`, `number`) VALUES
(1, 'Олег Олегович', 'companydomain/OlegOlegovich', 'OlegOlegovich@co.com', 2, '+123(456)-45-66'),
(2, 'Ваня Иванов', 'companydomain/IvanIvanov', 'IvanIvanov@co.com', 1, '+123(456)-45-66'),
(3, 'Fredericka Drake', 'frederickadrake@companydomain.com', 'frederickadrake1121@icloud.net', 3, '1-906-547-3486'),
(4, 'Sawyer Dunlap', 'sawyerdunlap6377@companydomain.com', 'sawyerdunlap@hotmail.ca', 2, '1-694-533-1671'),
(5, 'Keelie Clayton', 'keelieclayton@companydomain.com', 'keelieclayton3691@aol.ca', 2, '1-768-392-0464'),
(6, 'Adele Abbott', 'adeleabbott593@companydomain.com', 'adeleabbott@icloud.com', 4, '1-830-666-9822'),
(7, 'Maia Pitts', 'maiapitts@companydomain.com', 'maiapitts@hotmail.ca', 2, '1-630-896-3422'),
(8, 'Lacey Summers', 'laceysummers3262@companydomain.com', 'laceysummers3506@google.edu', 2, '1-948-341-2633'),
(9, 'Macy Vinson', 'macyvinson@companydomain.com', 'macyvinson@protonmail.org', 2, '1-618-166-3758'),
(10, 'Jolene Becker', 'jolenebecker@companydomain.com', 'jolenebecker3321@hotmail.ca', 2, '1-286-686-7325'),
(11, 'Stuart Monroe', 'stuartmonroe@companydomain.com', 'stuartmonroe@aol.ca', 2, '1-335-227-6776'),
(12, 'Sara Dillon', 'saradillon@companydomain.com', 'saradillon6791@yahoo.net', 2, '1-800-624-1168'),
(13, 'Sara Clements', 'saraclements@companydomain.com', 'saraclements@aol.com', 2, '1-733-301-6772'),
(14, 'Philip Massey', 'philipmassey@companydomain.com', 'philipmassey1384@aol.com', 3, '1-568-890-7867'),
(15, 'Martha Wood', 'marthawood@companydomain.com', 'marthawood8298@google.net', 3, '1-228-500-6244'),
(16, 'Ginger Harris', 'gingerharris@companydomain.com', 'gingerharris4354@outlook.com', 3, '1-775-700-7113'),
(17, 'Jordan Fitzpatrick', 'jordanfitzpatrick@companydomain.com', 'jordanfitzpatrick@aol.ca', 1, '1-465-863-3182'),
(18, 'Walter Watson', 'walterwatson@companydomain.com', 'walterwatson@protonmail.org', 3, '1-434-778-7222'),
(19, 'Winifred Wilcox', 'winifredwilcox4330@companydomain.com', 'winifredwilcox5122@outlook.net', 3, '1-472-920-3411'),
(20, 'Jameson Glenn', 'jamesonglenn@companydomain.com', 'jamesonglenn@hotmail.net', 3, '1-938-141-4813'),
(21, 'Adrienne Burke', 'adrienneburke6125@companydomain.com', 'adrienneburke@protonmail.edu', 2, '1-882-683-3158'),
(22, 'Howard Strong', 'howardstrong6289@companydomain.com', 'howardstrong@protonmail.net', 1, '1-421-431-5872'),
(23, 'Forrest Mendez', 'forrestmendez7214@companydomain.com', 'forrestmendez7196@hotmail.edu', 4, '1-495-466-4491'),
(24, 'Miriam Terrell', 'miriamterrell@companydomain.com', 'miriamterrell@hotmail.couk', 1, '1-958-362-2317'),
(25, 'Hedley Estes', 'hedleyestes@companydomain.com', 'hedleyestes9059@outlook.org', 2, '1-308-832-8795'),
(26, 'Davis Finch', 'davisfinch@companydomain.com', 'davisfinch@icloud.net', 4, '1-281-706-8158'),
(27, 'Connor Stevens', 'connorstevens520@companydomain.com', 'connorstevens2164@aol.edu', 1, '1-937-148-7776'),
(28, 'Jermaine Cox', 'jermainecox@companydomain.com', 'jermainecox1886@hotmail.ca', 2, '1-684-511-2343'),
(29, 'Prescott Ferrell', 'prescottferrell@companydomain.com', 'prescottferrell@outlook.org', 2, '1-816-456-3716'),
(30, 'Steven Collier', 'stevencollier4602@companydomain.com', 'stevencollier@icloud.couk', 2, '1-518-846-2499'),
(31, 'Abigail Bauer', 'abigailbauer@companydomain.com', 'abigailbauer9126@protonmail.net', 1, '1-826-535-7341'),
(32, 'Maggy Pierce', 'maggypierce@companydomain.com', 'maggypierce818@hotmail.net', 1, '1-433-815-7151'),
(33, 'Regan Lancaster', 'reganlancaster@companydomain.com', 'reganlancaster3324@hotmail.edu', 2, '1-594-620-7923'),
(34, 'Jermaine Mccullough', 'jermainemccullough@companydomain.com', 'jermainemccullough@icloud.edu', 1, '1-894-188-1734'),
(35, 'Buckminster Roman', 'buckminsterroman@companydomain.com', 'buckminsterroman5871@protonmail.com', 3, '1-334-641-2935'),
(36, 'Aladdin Chambers', 'aladdinchambers@companydomain.com', 'aladdinchambers@icloud.couk', 1, '1-636-624-5848'),
(37, 'Vladimir Ramos', 'vladimirramos9976@companydomain.com', 'vladimirramos@google.couk', 4, '1-176-748-9771'),
(38, 'Sarah Golden', 'sarahgolden5@companydomain.com', 'sarahgolden@protonmail.com', 2, '1-117-685-1571'),
(39, 'Mona Burton', 'monaburton4424@companydomain.com', 'monaburton@protonmail.org', 4, '1-263-778-3636'),
(40, 'Marah Young', 'marahyoung@companydomain.com', 'marahyoung9454@protonmail.org', 4, '1-561-364-8681'),
(41, 'Halee Cruz', 'haleecruz8225@companydomain.com', 'haleecruz1236@aol.net', 2, '1-860-857-0869'),
(42, 'Zena Odom', 'zenaodom3156@companydomain.com', 'zenaodom4925@google.ca', 2, '1-556-962-4531'),
(43, 'Julian Cardenas', 'juliancardenas1798@companydomain.com', 'juliancardenas@yahoo.net', 2, '1-460-936-2552'),
(44, 'Desirae Rodriguez', 'desiraerodriguez4976@companydomain.com', 'desiraerodriguez518@protonmail.edu', 4, '1-821-736-8757'),
(45, 'Clinton Leonard', 'clintonleonard1065@companydomain.com', 'clintonleonard3211@protonmail.edu', 2, '1-525-302-5932'),
(46, 'Mia Acosta', 'miaacosta@companydomain.com', 'miaacosta@google.com', 3, '1-349-445-9548'),
(47, 'Isabelle Welch', 'isabellewelch@companydomain.com', 'isabellewelch817@aol.net', 3, '1-369-505-4701'),
(48, 'Mechelle Mccoy', 'mechellemccoy9988@companydomain.com', 'mechellemccoy2621@protonmail.couk', 2, '1-361-465-1711'),
(49, 'Griffith Rivas', 'griffithrivas@companydomain.com', 'griffithrivas@google.com', 1, '1-257-220-7549'),
(50, 'Fritz Rowland', 'fritzrowland@companydomain.com', 'fritzrowland@hotmail.couk', 3, '1-231-626-7225'),
(51, 'Nita Kidd', 'nitakidd@companydomain.com', 'nitakidd9449@yahoo.ca', 3, '1-872-767-5488'),
(52, 'Jayme Combs', 'jaymecombs2327@companydomain.com', 'jaymecombs@icloud.org', 3, '1-731-413-4588'),
(53, 'Alan Harrison', 'alanharrison635@companydomain.com', 'alanharrison4838@google.net', 4, '1-567-223-2249'),
(54, 'Ciaran Santana', 'ciaransantana@companydomain.com', 'ciaransantana@protonmail.com', 2, '1-255-152-0262'),
(55, 'Lucy Clayton', 'lucyclayton@companydomain.com', 'lucyclayton@icloud.net', 3, '1-675-870-4135'),
(56, 'Brandon Barker', 'brandonbarker8422@companydomain.com', 'brandonbarker5555@icloud.org', 2, '1-714-139-3305'),
(57, 'Libby Horton', 'libbyhorton@companydomain.com', 'libbyhorton@icloud.couk', 3, '1-526-103-2742'),
(58, 'Jacqueline Gallegos', 'jacquelinegallegos@companydomain.com', 'jacquelinegallegos6557@icloud.net', 2, '1-568-977-5354'),
(59, 'Galena Farmer', 'galenafarmer4769@companydomain.com', 'galenafarmer8119@yahoo.com', 2, '1-176-281-7677'),
(60, 'Preston Murray', 'prestonmurray@companydomain.com', 'prestonmurray@outlook.net', 3, '1-476-588-5861'),
(61, 'Beverly Barton', 'beverlybarton1222@companydomain.com', 'beverlybarton6580@google.couk', 1, '1-235-451-8586'),
(62, 'Ferris Hodge', 'ferrishodge9974@companydomain.com', 'ferrishodge@google.com', 3, '1-342-584-9253'),
(63, 'Amir Underwood', 'amirunderwood6379@companydomain.com', 'amirunderwood6289@yahoo.ca', 3, '1-374-325-4068'),
(64, 'Alexandra Odom', 'alexandraodom@companydomain.com', 'alexandraodom@aol.net', 4, '1-579-529-9067'),
(65, 'Arsenio Phillips', 'arseniophillips4111@companydomain.com', 'arseniophillips@aol.couk', 2, '1-732-450-3446'),
(66, 'Raven Estes', 'ravenestes1447@companydomain.com', 'ravenestes417@icloud.couk', 3, '1-212-257-3872'),
(67, 'Idola Dominguez', 'idoladominguez9699@companydomain.com', 'idoladominguez22@icloud.edu', 4, '1-662-315-4232'),
(68, 'Dean Leach', 'deanleach3950@companydomain.com', 'deanleach1974@yahoo.org', 4, '1-843-770-2711'),
(69, 'Ciaran Riggs', 'ciaranriggs@companydomain.com', 'ciaranriggs293@hotmail.couk', 3, '1-839-372-1681'),
(70, 'Jackson Woodward', 'jacksonwoodward@companydomain.com', 'jacksonwoodward@outlook.ca', 3, '1-481-125-8826'),
(71, 'Lois Blair', 'loisblair@companydomain.com', 'loisblair7904@yahoo.couk', 1, '1-504-612-1784'),
(72, 'Beau Ramsey', 'beauramsey4727@companydomain.com', 'beauramsey8295@yahoo.couk', 3, '1-920-737-3372'),
(73, 'Brooke Blackwell', 'brookeblackwell9062@companydomain.com', 'brookeblackwell@google.com', 2, '1-851-328-2043'),
(74, 'Aimee Hull', 'aimeehull@companydomain.com', 'aimeehull1778@aol.ca', 2, '1-616-565-2380'),
(75, 'Melyssa Cotton', 'melyssacotton5823@companydomain.com', 'melyssacotton7464@protonmail.net', 2, '1-600-882-4888'),
(76, 'Quyn Mccarty', 'quynmccarty@companydomain.com', 'quynmccarty994@aol.net', 3, '1-617-637-3931'),
(77, 'Brent Sutton', 'brentsutton1792@companydomain.com', 'brentsutton@yahoo.net', 3, '1-342-756-3961'),
(78, 'Adara Rich', 'adararich334@companydomain.com', 'adararich2297@outlook.edu', 2, '1-829-617-9403'),
(79, 'Ivan Rowland', 'ivanrowland430@companydomain.com', 'ivanrowland270@protonmail.com', 1, '1-222-288-2635'),
(80, 'Tate Brennan', 'tatebrennan5087@companydomain.com', 'tatebrennan@hotmail.edu', 4, '1-851-328-2604'),
(81, 'Pascale Donovan', 'pascaledonovan9766@companydomain.com', 'pascaledonovan@protonmail.edu', 2, '1-713-995-4342'),
(82, 'Henry Delgado', 'henrydelgado1242@companydomain.com', 'henrydelgado485@outlook.net', 4, '1-372-561-4065'),
(83, 'Justin Rogers', 'justinrogers@companydomain.com', 'justinrogers@yahoo.net', 2, '1-852-333-8207'),
(84, 'Malachi Kirk', 'malachikirk@companydomain.com', 'malachikirk6471@google.net', 4, '1-301-704-1775'),
(85, 'Nigel Barlow', 'nigelbarlow@companydomain.com', 'nigelbarlow2450@yahoo.org', 4, '1-234-337-3270'),
(86, 'Leigh Everett', 'leigheverett8145@companydomain.com', 'leigheverett2447@yahoo.ca', 3, '1-886-271-9634'),
(87, 'Chastity Cotton', 'chastitycotton1304@companydomain.com', 'chastitycotton735@protonmail.org', 2, '1-853-549-4632'),
(88, 'Noel Cook', 'noelcook2330@companydomain.com', 'noelcook3782@protonmail.edu', 1, '1-334-516-1523'),
(89, 'Stephen Bradley', 'stephenbradley@companydomain.com', 'stephenbradley@outlook.ca', 3, '1-248-641-7035'),
(90, 'Ima Mcguire', 'imamcguire9833@companydomain.com', 'imamcguire7735@aol.net', 2, '1-986-266-0230'),
(91, 'Jana Davenport', 'janadavenport6274@companydomain.com', 'janadavenport@icloud.ca', 4, '1-758-671-2723'),
(92, 'Cole Koch', 'colekoch@companydomain.com', 'colekoch5551@protonmail.net', 1, '1-564-650-9818'),
(93, 'Scott Skinner', 'scottskinner8826@companydomain.com', 'scottskinner@google.edu', 2, '1-743-951-8783'),
(94, 'Anjolie Hawkins', 'anjoliehawkins@companydomain.com', 'anjoliehawkins@protonmail.net', 3, '1-457-679-4635'),
(95, 'Ursa Garza', 'ursagarza@companydomain.com', 'ursagarza877@hotmail.com', 1, '1-636-638-2456'),
(96, 'Allistair Barton', 'allistairbarton8341@companydomain.com', 'allistairbarton1044@yahoo.edu', 4, '1-897-830-8510'),
(97, 'Hanna Branch', 'hannabranch300@companydomain.com', 'hannabranch2118@icloud.ca', 2, '1-276-674-4131'),
(98, 'Isabelle Valdez', 'isabellevaldez3643@companydomain.com', 'isabellevaldez1923@aol.net', 2, '1-942-527-3225'),
(99, 'Nerea Ewing', 'nereaewing@companydomain.com', 'nereaewing8043@yahoo.ca', 2, '1-540-465-3458'),
(100, 'Zeph Barker', 'zephbarker2232@companydomain.com', 'zephbarker@google.com', 2, '1-555-416-6955'),
(101, 'Nolan Morrow', 'nolanmorrow932@companydomain.com', 'nolanmorrow5697@protonmail.com', 2, '1-279-209-6473'),
(102, 'Indigo Carson', 'indigocarson5069@companydomain.com', 'indigocarson6663@outlook.net', 2, '1-879-241-1746'),
(103, 'Burke Drake', 'burkedrake5115@companydomain.com', 'burkedrake6972@icloud.com', 1, '1-615-472-7724'),
(104, 'Kiara Hudson', 'kiarahudson4670@companydomain.com', 'kiarahudson4106@outlook.couk', 2, '1-815-100-5218'),
(105, 'Rachel Rivers', 'rachelrivers9582@companydomain.com', 'rachelrivers1452@aol.org', 3, '1-774-325-6127'),
(106, 'Theodore Cohen', 'theodorecohen@companydomain.com', 'theodorecohen6031@hotmail.com', 3, '1-419-246-0531'),
(107, 'Kitra Carson', 'kitracarson@companydomain.com', 'kitracarson4909@icloud.edu', 3, '1-761-641-7324'),
(108, 'Lillian Bean', 'lillianbean6284@companydomain.com', 'lillianbean9477@yahoo.ca', 1, '1-335-491-3568'),
(109, 'Alexandra Rosales', 'alexandrarosales@companydomain.com', 'alexandrarosales3236@icloud.edu', 3, '1-738-757-6557'),
(110, 'Shelley Jimenez', 'shelleyjimenez@companydomain.com', 'shelleyjimenez7030@protonmail.ca', 3, '1-129-872-7941'),
(111, 'Stewart Moran', 'stewartmoran@companydomain.com', 'stewartmoran5118@yahoo.ca', 3, '1-301-973-4226'),
(112, 'Matthew Burgess', 'matthewburgess@companydomain.com', 'matthewburgess@aol.org', 3, '1-661-111-7149'),
(113, 'Daria Mcdowell', 'dariamcdowell9102@companydomain.com', 'dariamcdowell@outlook.edu', 3, '1-461-631-2148'),
(114, 'Winifred Randall', 'winifredrandall@companydomain.com', 'winifredrandall9602@protonmail.net', 3, '1-176-130-9215'),
(115, 'Nehru Woodard', 'nehruwoodard9170@companydomain.com', 'nehruwoodard3730@icloud.net', 2, '1-562-722-2612'),
(116, 'Candace Fernandez', 'candacefernandez4700@companydomain.com', 'candacefernandez6018@outlook.net', 3, '1-507-860-7456'),
(117, 'Petra Sargent', 'petrasargent3034@companydomain.com', 'petrasargent@google.net', 3, '1-515-514-6015'),
(118, 'Ainsley Cruz', 'ainsleycruz3291@companydomain.com', 'ainsleycruz1422@google.net', 4, '1-888-216-9697'),
(119, 'Ciara Booth', 'ciarabooth2921@companydomain.com', 'ciarabooth4879@outlook.org', 4, '1-785-565-8963'),
(120, 'Prescott Berry', 'prescottberry@companydomain.com', 'prescottberry6623@icloud.edu', 3, '1-121-277-6816'),
(121, 'Kane Brooks', 'kanebrooks5221@companydomain.com', 'kanebrooks@outlook.couk', 2, '1-430-355-3779'),
(122, 'Dylan Barker', 'dylanbarker1556@companydomain.com', 'dylanbarker8859@icloud.edu', 3, '1-722-568-0475'),
(123, 'Ciaran Trujillo', 'ciarantrujillo3498@companydomain.com', 'ciarantrujillo2834@icloud.org', 1, '1-405-581-5850'),
(124, 'Renee Jacobs', 'reneejacobs2358@companydomain.com', 'reneejacobs6535@icloud.couk', 4, '1-779-569-3444'),
(125, 'Vladimir Taylor', 'vladimirtaylor9243@companydomain.com', 'vladimirtaylor@google.couk', 2, '1-646-842-2165'),
(126, 'Sean Church', 'seanchurch5083@companydomain.com', 'seanchurch7322@yahoo.ca', 3, '1-892-107-4885'),
(127, 'Leah Anderson', 'leahanderson@companydomain.com', 'leahanderson@google.org', 3, '1-538-807-0785'),
(128, 'Lewis Gonzales', 'lewisgonzales@companydomain.com', 'lewisgonzales@icloud.ca', 2, '1-520-787-3326'),
(129, 'Jade Nichols', 'jadenichols9513@companydomain.com', 'jadenichols2512@icloud.com', 1, '1-258-861-2111'),
(130, 'Walter Humphrey', 'walterhumphrey@companydomain.com', 'walterhumphrey6859@aol.ca', 3, '1-829-862-3735'),
(131, 'Remedios Newman', 'remediosnewman7721@companydomain.com', 'remediosnewman7958@yahoo.edu', 2, '1-636-176-2776'),
(132, 'Hakeem Fletcher', 'hakeemfletcher992@companydomain.com', 'hakeemfletcher4381@hotmail.com', 3, '1-123-665-6909'),
(133, 'Hyatt Wyatt', 'hyattwyatt6384@companydomain.com', 'hyattwyatt2816@icloud.com', 3, '1-285-742-8714'),
(134, 'Hu Gilmore', 'hugilmore@companydomain.com', 'hugilmore@outlook.net', 1, '1-657-247-8842'),
(135, 'Brent Carson', 'brentcarson919@companydomain.com', 'brentcarson@protonmail.ca', 2, '1-558-487-2779'),
(136, 'Clementine Nunez', 'clementinenunez@companydomain.com', 'clementinenunez@protonmail.ca', 3, '1-552-808-5441'),
(137, 'Kyla Blackburn', 'kylablackburn2580@companydomain.com', 'kylablackburn3308@protonmail.com', 2, '1-214-539-9881'),
(138, 'Arden Hampton', 'ardenhampton4536@companydomain.com', 'ardenhampton4598@hotmail.org', 3, '1-344-247-6634'),
(139, 'Keely Hudson', 'keelyhudson1754@companydomain.com', 'keelyhudson@hotmail.com', 4, '1-445-553-6177'),
(140, 'Ferdinand Barrera', 'ferdinandbarrera9744@companydomain.com', 'ferdinandbarrera@icloud.net', 3, '1-395-245-2610'),
(141, 'Benjamin Baird', 'benjaminbaird1351@companydomain.com', 'benjaminbaird6509@icloud.com', 2, '1-394-248-8245'),
(142, 'Graham Romero', 'grahamromero@companydomain.com', 'grahamromero9275@hotmail.com', 4, '1-671-465-2625'),
(143, 'Deacon Bond', 'deaconbond800@companydomain.com', 'deaconbond@icloud.net', 4, '1-647-756-7804'),
(144, 'Stone Bryan', 'stonebryan@companydomain.com', 'stonebryan@google.couk', 4, '1-849-983-9166'),
(145, 'Dorothy Mcleod', 'dorothymcleod8995@companydomain.com', 'dorothymcleod@aol.ca', 4, '1-673-447-1316'),
(146, 'Eric Sampson', 'ericsampson4754@companydomain.com', 'ericsampson@yahoo.couk', 3, '1-892-881-6591'),
(147, 'Graham Ochoa', 'grahamochoa@companydomain.com', 'grahamochoa@aol.edu', 4, '1-743-208-5221'),
(148, 'Jonas Warner', 'jonaswarner@companydomain.com', 'jonaswarner@aol.net', 4, '1-254-244-2161'),
(149, 'Bert Chambers', 'bertchambers@companydomain.com', 'bertchambers7053@yahoo.com', 4, '1-221-195-5857'),
(150, 'Nathaniel Finley', 'nathanielfinley@companydomain.com', 'nathanielfinley6875@protonmail.net', 3, '1-724-736-2438'),
(151, 'Nevada Head', 'nevadahead6074@companydomain.com', 'nevadahead@outlook.org', 2, '1-702-926-5673'),
(152, 'Sheila Leon', 'sheilaleon6276@companydomain.com', 'sheilaleon9229@google.com', 3, '1-817-675-5175'),
(153, 'Chandler Mayer', 'chandlermayer@companydomain.com', 'chandlermayer@google.edu', 3, '1-472-437-6634'),
(154, 'Rhoda Rodgers', 'rhodarodgers@companydomain.com', 'rhodarodgers@icloud.couk', 3, '1-472-559-5787'),
(155, 'Kerry Blankenship', 'kerryblankenship3754@companydomain.com', 'kerryblankenship@hotmail.net', 3, '1-198-864-1766'),
(156, 'Cally Carr', 'callycarr2960@companydomain.com', 'callycarr3301@outlook.org', 1, '1-114-425-2893'),
(157, 'Laith Guy', 'laithguy2337@companydomain.com', 'laithguy@aol.edu', 1, '1-394-377-2329'),
(158, 'Abraham Chan', 'abrahamchan@companydomain.com', 'abrahamchan6167@google.net', 3, '1-572-963-4443'),
(159, 'Kamal Irwin', 'kamalirwin@companydomain.com', 'kamalirwin6796@google.com', 3, '1-329-403-8682'),
(160, 'Wallace Lancaster', 'wallacelancaster8830@companydomain.com', 'wallacelancaster5775@protonmail.org', 2, '1-806-955-8567'),
(161, 'Channing Adams', 'channingadams2678@companydomain.com', 'channingadams@google.com', 3, '1-242-831-2016'),
(162, 'Sean Crawford', 'seancrawford1509@companydomain.com', 'seancrawford8694@outlook.net', 2, '1-241-871-3496'),
(163, 'Dale Terrell', 'daleterrell@companydomain.com', 'daleterrell9717@yahoo.ca', 2, '1-397-383-7542'),
(164, 'Fitzgerald Shelton', 'fitzgeraldshelton9099@companydomain.com', 'fitzgeraldshelton@outlook.edu', 2, '1-358-503-7580'),
(165, 'Karleigh Buckner', 'karleighbuckner@companydomain.com', 'karleighbuckner@outlook.couk', 2, '1-210-211-2137'),
(166, 'Cally Lloyd', 'callylloyd796@companydomain.com', 'callylloyd2626@outlook.ca', 2, '1-586-339-1921'),
(167, 'Quinlan Valencia', 'quinlanvalencia@companydomain.com', 'quinlanvalencia7526@protonmail.net', 4, '1-792-732-4971'),
(168, 'Cally Pearson', 'callypearson411@companydomain.com', 'callypearson@aol.edu', 2, '1-355-663-1605'),
(169, 'Zelenia Goodman', 'zeleniagoodman7477@companydomain.com', 'zeleniagoodman7943@aol.net', 4, '1-667-834-7878'),
(170, 'Imelda Pitts', 'imeldapitts@companydomain.com', 'imeldapitts7174@icloud.com', 3, '1-884-627-6952'),
(171, 'Barbara Shelton', 'barbarashelton2171@companydomain.com', 'barbarashelton@icloud.net', 2, '1-770-632-3777'),
(172, 'Dominic Hurley', 'dominichurley9853@companydomain.com', 'dominichurley@outlook.org', 1, '1-388-888-4577'),
(173, 'Jaquelyn Dennis', 'jaquelyndennis@companydomain.com', 'jaquelyndennis6036@hotmail.edu', 3, '1-834-833-3219'),
(174, 'Macon Garrett', 'macongarrett8810@companydomain.com', 'macongarrett8563@aol.net', 4, '1-232-756-7278'),
(175, 'Lucas Ramirez', 'lucasramirez3463@companydomain.com', 'lucasramirez3109@outlook.org', 1, '1-540-870-8287'),
(176, 'Laura Levine', 'lauralevine@companydomain.com', 'lauralevine@aol.couk', 3, '1-287-261-6218'),
(177, 'Leigh Richardson', 'leighrichardson755@companydomain.com', 'leighrichardson@icloud.edu', 3, '1-751-707-5666'),
(178, 'Moana Zimmerman', 'moanazimmerman@companydomain.com', 'moanazimmerman4726@hotmail.com', 1, '1-731-161-6794'),
(179, 'Stella Hardy', 'stellahardy@companydomain.com', 'stellahardy7586@hotmail.edu', 1, '1-797-482-8122'),
(180, 'Justina Lester', 'justinalester@companydomain.com', 'justinalester@google.edu', 4, '1-277-477-1161'),
(181, 'Forrest Aguilar', 'forrestaguilar7879@companydomain.com', 'forrestaguilar3658@aol.net', 2, '1-407-425-5729'),
(182, 'Veronica Harding', 'veronicaharding3370@companydomain.com', 'veronicaharding@icloud.edu', 3, '1-860-942-1053'),
(183, 'Darius Mann', 'dariusmann1467@companydomain.com', 'dariusmann@aol.net', 2, '1-237-185-3137'),
(184, 'Addison Barrett', 'addisonbarrett@companydomain.com', 'addisonbarrett5271@outlook.org', 3, '1-977-995-2567'),
(185, 'Macey Huber', 'maceyhuber@companydomain.com', 'maceyhuber2764@yahoo.couk', 1, '1-728-370-8677'),
(186, 'Murphy Walter', 'murphywalter6052@companydomain.com', 'murphywalter8004@yahoo.edu', 4, '1-856-913-8148'),
(187, 'Brenda Fowler', 'brendafowler@companydomain.com', 'brendafowler@icloud.edu', 4, '1-997-634-7974'),
(188, 'Glenna Barlow', 'glennabarlow1440@companydomain.com', 'glennabarlow@google.net', 3, '1-171-583-7301'),
(189, 'Angela Gay', 'angelagay@companydomain.com', 'angelagay2041@yahoo.edu', 3, '1-502-713-7417'),
(190, 'Neve Caldwell', 'nevecaldwell133@companydomain.com', 'nevecaldwell@icloud.couk', 3, '1-248-974-0564'),
(191, 'Mariam Sheppard', 'mariamsheppard@companydomain.com', 'mariamsheppard@google.com', 2, '1-875-509-6724'),
(192, 'Gary Cote', 'garycote635@companydomain.com', 'garycote@protonmail.edu', 4, '1-152-695-0255'),
(193, 'Maite Jenkins', 'maitejenkins6742@companydomain.com', 'maitejenkins3406@yahoo.org', 3, '1-381-295-8615'),
(194, 'Whilemina Diaz', 'whileminadiaz@companydomain.com', 'whileminadiaz6825@yahoo.net', 2, '1-744-498-7263'),
(195, 'Wing Kelley', 'wingkelley8741@companydomain.com', 'wingkelley@google.net', 3, '1-525-936-1072'),
(196, 'Pamela Kaufman', 'pamelakaufman3054@companydomain.com', 'pamelakaufman@hotmail.com', 4, '1-136-223-7303'),
(197, 'Kimberley Duffy', 'kimberleyduffy@companydomain.com', 'kimberleyduffy@google.net', 3, '1-363-938-4411'),
(198, 'Buckminster Garza', 'buckminstergarza@companydomain.com', 'buckminstergarza@google.edu', 2, '1-763-636-3117'),
(199, 'Kirestin Hoover', 'kirestinhoover1624@companydomain.com', 'kirestinhoover3641@google.edu', 3, '1-953-236-4502'),
(200, 'Rose Grimes', 'rosegrimes6791@companydomain.com', 'rosegrimes@hotmail.couk', 3, '1-245-843-7384'),
(201, 'Baxter Benton', 'baxterbenton2306@companydomain.com', 'baxterbenton@yahoo.couk', 2, '1-230-425-1556'),
(202, 'Tiger Bradshaw', 'tigerbradshaw@companydomain.com', 'tigerbradshaw2733@yahoo.edu', 4, '1-977-816-8283'),
(203, 'Norman Woods', 'normanwoods522@companydomain.com', 'normanwoods6365@icloud.ca', 1, '1-709-665-6107'),
(204, 'Murphy Haynes', 'murphyhaynes@companydomain.com', 'murphyhaynes2813@outlook.edu', 2, '1-713-762-3298'),
(205, 'Leah Howe', 'leahhowe@companydomain.com', 'leahhowe@google.edu', 2, '1-738-758-5673'),
(206, 'Coby Blackburn', 'cobyblackburn128@companydomain.com', 'cobyblackburn9680@icloud.couk', 2, '1-474-537-7139'),
(207, 'Pascale Brock', 'pascalebrock@companydomain.com', 'pascalebrock7651@aol.edu', 1, '1-214-702-4281'),
(208, 'Finn Duran', 'finnduran@companydomain.com', 'finnduran4330@icloud.ca', 3, '1-812-833-6051'),
(209, 'Troy Pierce', 'troypierce181@companydomain.com', 'troypierce3643@hotmail.edu', 1, '1-915-130-5628'),
(210, 'Avye Carpenter', 'avyecarpenter4064@companydomain.com', 'avyecarpenter5932@yahoo.net', 3, '1-313-377-3797'),
(211, 'Dean Calderon', 'deancalderon4181@companydomain.com', 'deancalderon8296@protonmail.ca', 2, '1-728-245-2421'),
(212, 'Avram Guerra', 'avramguerra4117@companydomain.com', 'avramguerra5439@google.org', 2, '1-111-478-7555'),
(213, 'Deacon Alexander', 'deaconalexander@companydomain.com', 'deaconalexander@aol.com', 3, '1-907-213-7372'),
(214, 'Carly Pitts', 'carlypitts9019@companydomain.com', 'carlypitts5104@icloud.org', 4, '1-488-324-3638'),
(215, 'Jessica Roth', 'jessicaroth1751@companydomain.com', 'jessicaroth3145@google.net', 2, '1-438-222-6581'),
(216, 'Knox Hurley', 'knoxhurley4831@companydomain.com', 'knoxhurley8507@aol.com', 1, '1-226-931-8291'),
(217, 'Jesse Bennett', 'jessebennett7192@companydomain.com', 'jessebennett@aol.couk', 2, '1-988-275-6306'),
(218, 'Mikayla Drake', 'mikayladrake1895@companydomain.com', 'mikayladrake4238@protonmail.com', 3, '1-651-403-5537'),
(219, 'Philip Shelton', 'philipshelton8812@companydomain.com', 'philipshelton1565@yahoo.ca', 3, '1-148-242-3347'),
(220, 'Odette Howell', 'odettehowell@companydomain.com', 'odettehowell@yahoo.org', 3, '1-865-982-7897'),
(221, 'Craig Velasquez', 'craigvelasquez@companydomain.com', 'craigvelasquez@hotmail.edu', 2, '1-838-270-8242'),
(222, 'Sarah Guzman', 'sarahguzman@companydomain.com', 'sarahguzman2425@outlook.org', 1, '1-256-408-6147'),
(223, 'Ginger Conner', 'gingerconner@companydomain.com', 'gingerconner@protonmail.couk', 1, '1-297-852-3823'),
(224, 'Roanna Christensen', 'roannachristensen@companydomain.com', 'roannachristensen@yahoo.ca', 2, '1-148-817-7694'),
(225, 'Drew Hyde', 'drewhyde5886@companydomain.com', 'drewhyde@protonmail.edu', 1, '1-895-645-9958'),
(226, 'Donna Dickson', 'donnadickson9772@companydomain.com', 'donnadickson5097@icloud.com', 4, '1-763-487-9472'),
(227, 'Mark Cervantes', 'markcervantes6606@companydomain.com', 'markcervantes@icloud.net', 3, '1-614-342-1727'),
(228, 'Davis Brock', 'davisbrock@companydomain.com', 'davisbrock6029@aol.edu', 3, '1-413-576-7431'),
(229, 'Marcia Medina', 'marciamedina2917@companydomain.com', 'marciamedina9336@protonmail.net', 2, '1-348-676-9423'),
(230, 'Teegan Kennedy', 'teegankennedy9556@companydomain.com', 'teegankennedy@protonmail.org', 2, '1-542-369-5911'),
(231, 'Vivian Mercado', 'vivianmercado@companydomain.com', 'vivianmercado7193@protonmail.ca', 3, '1-256-451-7405'),
(232, 'Maia Horne', 'maiahorne@companydomain.com', 'maiahorne@protonmail.edu', 1, '1-215-783-5329'),
(233, 'Suki Burton', 'sukiburton@companydomain.com', 'sukiburton1584@yahoo.couk', 3, '1-443-364-0788'),
(234, 'Nero Murphy', 'neromurphy@companydomain.com', 'neromurphy@aol.ca', 2, '1-411-722-7504'),
(235, 'Jermaine Tucker', 'jermainetucker6732@companydomain.com', 'jermainetucker@google.net', 3, '1-499-733-4632'),
(236, 'Cassandra Bennett', 'cassandrabennett4141@companydomain.com', 'cassandrabennett2698@icloud.couk', 2, '1-471-422-5402'),
(237, 'Orla Guthrie', 'orlaguthrie@companydomain.com', 'orlaguthrie6886@google.ca', 1, '1-393-711-1449'),
(238, 'Holly Ware', 'hollyware6407@companydomain.com', 'hollyware@google.edu', 4, '1-111-376-2134'),
(239, 'Dacey Garza', 'daceygarza1264@companydomain.com', 'daceygarza@protonmail.ca', 2, '1-671-516-3170'),
(240, 'Beau Mathews', 'beaumathews4135@companydomain.com', 'beaumathews597@protonmail.net', 2, '1-365-537-2892'),
(241, 'Montana Stokes', 'montanastokes@companydomain.com', 'montanastokes@outlook.org', 3, '1-720-936-7057'),
(242, 'Jerome Barron', 'jeromebarron@companydomain.com', 'jeromebarron@protonmail.ca', 4, '1-536-812-0088'),
(243, 'Rhea Mcknight', 'rheamcknight@companydomain.com', 'rheamcknight5790@yahoo.org', 3, '1-223-842-8888'),
(244, 'Ciara Stone', 'ciarastone@companydomain.com', 'ciarastone7829@icloud.org', 4, '1-267-863-5184'),
(245, 'Quail Sweet', 'quailsweet@companydomain.com', 'quailsweet@aol.com', 2, '1-942-376-5632'),
(246, 'Cassady Jensen', 'cassadyjensen@companydomain.com', 'cassadyjensen@aol.edu', 2, '1-337-752-8438'),
(247, 'Samantha Pena', 'samanthapena@companydomain.com', 'samanthapena@yahoo.edu', 2, '1-568-162-3458'),
(248, 'Kellie Jenkins', 'kelliejenkins5791@companydomain.com', 'kelliejenkins4805@hotmail.com', 4, '1-736-561-0345'),
(249, 'Carla Cooley', 'carlacooley9303@companydomain.com', 'carlacooley5783@google.edu', 4, '1-938-758-5809'),
(250, 'Austin Powers', 'austinpowers8413@companydomain.com', 'austinpowers@yahoo.edu', 3, '1-611-876-2613'),
(251, 'Gray Mcneil', 'graymcneil9399@companydomain.com', 'graymcneil1706@icloud.ca', 3, '1-456-876-4872'),
(252, 'Jamal Bright', 'jamalbright6313@companydomain.com', 'jamalbright@yahoo.net', 2, '1-697-526-2494'),
(253, 'Nicholas Gray', 'nicholasgray@companydomain.com', 'nicholasgray5992@aol.net', 2, '1-729-454-4931'),
(254, 'Conan Washington', 'conanwashington@companydomain.com', 'conanwashington@protonmail.net', 3, '1-132-348-5742'),
(255, 'Charissa Beach', 'charissabeach@companydomain.com', 'charissabeach3099@google.net', 1, '1-371-719-7431'),
(256, 'Ila Daniels', 'iladaniels@companydomain.com', 'iladaniels@google.net', 3, '1-899-685-2140'),
(257, 'Audrey Moses', 'audreymoses9005@companydomain.com', 'audreymoses@protonmail.org', 2, '1-253-633-3312'),
(258, 'Madison Strong', 'madisonstrong@companydomain.com', 'madisonstrong301@icloud.com', 3, '1-674-443-7563'),
(259, 'Vernon Mcintyre', 'vernonmcintyre@companydomain.com', 'vernonmcintyre@outlook.couk', 2, '1-624-690-1011'),
(260, 'Elliott Parrish', 'elliottparrish570@companydomain.com', 'elliottparrish@aol.org', 4, '1-555-331-8745'),
(261, 'Beck Pearson', 'beckpearson3777@companydomain.com', 'beckpearson3895@icloud.edu', 1, '1-823-580-3689'),
(262, 'Barry Lynch', 'barrylynch@companydomain.com', 'barrylynch8207@hotmail.edu', 3, '1-474-223-7344'),
(263, 'Vera Rose', 'verarose2273@companydomain.com', 'verarose@google.net', 2, '1-506-615-7115'),
(264, 'Gareth Riggs', 'garethriggs5803@companydomain.com', 'garethriggs@outlook.edu', 2, '1-239-905-2771'),
(265, 'Colin Cabrera', 'colincabrera3887@companydomain.com', 'colincabrera6483@icloud.edu', 2, '1-311-412-5005'),
(266, 'Cassidy Blevins', 'cassidyblevins6271@companydomain.com', 'cassidyblevins5176@google.edu', 2, '1-342-676-6176'),
(267, 'Hall England', 'hallengland@companydomain.com', 'hallengland5445@icloud.couk', 2, '1-586-325-6768'),
(268, 'Quynn Wilkins', 'quynnwilkins1086@companydomain.com', 'quynnwilkins@outlook.net', 3, '1-925-705-4864'),
(269, 'Inga Odom', 'ingaodom1940@companydomain.com', 'ingaodom1993@outlook.net', 2, '1-313-810-8209'),
(270, 'Zahir Alexander', 'zahiralexander@companydomain.com', 'zahiralexander3332@outlook.couk', 4, '1-363-221-6007'),
(271, 'Imelda Carpenter', 'imeldacarpenter8265@companydomain.com', 'imeldacarpenter2177@hotmail.ca', 4, '1-544-908-2332'),
(272, 'David Decker', 'daviddecker3206@companydomain.com', 'daviddecker@yahoo.com', 2, '1-212-485-8520'),
(273, 'Cleo Dalton', 'cleodalton@companydomain.com', 'cleodalton@google.com', 2, '1-125-276-4519'),
(274, 'Alexander Franco', 'alexanderfranco5943@companydomain.com', 'alexanderfranco@yahoo.edu', 4, '1-857-276-8473'),
(275, 'Libby Bray', 'libbybray@companydomain.com', 'libbybray@outlook.couk', 4, '1-706-276-7347'),
(276, 'Lesley Simpson', 'lesleysimpson7663@companydomain.com', 'lesleysimpson7834@protonmail.couk', 2, '1-781-690-8228'),
(277, 'Yoshi Adams', 'yoshiadams1152@companydomain.com', 'yoshiadams7098@aol.ca', 4, '1-383-821-2264'),
(278, 'Louis George', 'louisgeorge4301@companydomain.com', 'louisgeorge@yahoo.net', 4, '1-338-484-1764'),
(279, 'Chancellor Rodriguez', 'chancellorrodriguez@companydomain.com', 'chancellorrodriguez@icloud.ca', 3, '1-239-378-4233'),
(280, 'Dolan Giles', 'dolangiles3743@companydomain.com', 'dolangiles2148@hotmail.net', 4, '1-853-427-8416'),
(281, 'Deanna Walton', 'deannawalton@companydomain.com', 'deannawalton@icloud.edu', 4, '1-603-973-1858'),
(282, 'Unity Wright', 'unitywright7687@companydomain.com', 'unitywright2742@aol.com', 4, '1-814-476-3857'),
(283, 'Reuben Parker', 'reubenparker6913@companydomain.com', 'reubenparker8972@icloud.edu', 1, '1-440-923-2218'),
(284, 'Stephen Stuart', 'stephenstuart8265@companydomain.com', 'stephenstuart3543@google.org', 2, '1-687-685-6677'),
(285, 'Lunea Carpenter', 'luneacarpenter@companydomain.com', 'luneacarpenter2782@yahoo.couk', 2, '1-189-519-3889'),
(286, 'Ralph Forbes', 'ralphforbes@companydomain.com', 'ralphforbes3948@protonmail.edu', 3, '1-328-677-0666'),
(287, 'Jessamine Mendez', 'jessaminemendez@companydomain.com', 'jessaminemendez4218@google.edu', 4, '1-557-714-6869'),
(288, 'Aaron Decker', 'aarondecker9242@companydomain.com', 'aarondecker@icloud.couk', 2, '1-138-896-7602'),
(289, 'Tashya Barnes', 'tashyabarnes1213@companydomain.com', 'tashyabarnes@outlook.couk', 2, '1-720-908-5105'),
(290, 'Galvin Dale', 'galvindale@companydomain.com', 'galvindale@protonmail.ca', 2, '1-818-452-2080'),
(291, 'Sonia Romero', 'soniaromero@companydomain.com', 'soniaromero@outlook.couk', 2, '1-476-289-5168'),
(292, 'Germaine Nolan', 'germainenolan@companydomain.com', 'germainenolan@google.edu', 3, '1-660-119-2976'),
(293, 'Samuel Gay', 'samuelgay@companydomain.com', 'samuelgay6346@hotmail.edu', 3, '1-532-813-5382'),
(294, 'Shea Nelson', 'sheanelson2394@companydomain.com', 'sheanelson@aol.net', 2, '1-373-522-6876'),
(295, 'Leandra Martin', 'leandramartin8840@companydomain.com', 'leandramartin@icloud.net', 1, '1-677-427-2554'),
(296, 'Alice Garcia', 'alicegarcia@companydomain.com', 'alicegarcia8259@hotmail.ca', 4, '1-347-240-7732'),
(297, 'Channing Curtis', 'channingcurtis6754@companydomain.com', 'channingcurtis9422@outlook.org', 2, '1-746-612-4327'),
(298, 'Wing Delaney', 'wingdelaney3895@companydomain.com', 'wingdelaney5070@aol.net', 3, '1-698-604-6136'),
(299, 'Ria Watson', 'riawatson1235@companydomain.com', 'riawatson8478@yahoo.edu', 3, '1-843-499-8936'),
(300, 'Noelle Sawyer', 'noellesawyer4844@companydomain.com', 'noellesawyer@yahoo.edu', 3, '1-683-926-8806'),
(301, 'Sylvester Cook', 'sylvestercook@companydomain.com', 'sylvestercook8496@protonmail.com', 3, '1-638-513-0543'),
(302, 'Ariel Brock', 'arielbrock9952@companydomain.com', 'arielbrock@outlook.edu', 3, '1-457-714-3519'),
(303, 'Anna Ivanovna', 'AnnaIvanovna@co.com', 'AnnaIvanovna@gmail.com', NULL, '+123(456)-45-66'),
(304, 'Lays Max', 'LaysMax@co.com', 'LaysMax@lays.com', NULL, '+123(456)-45-66'),
(305, 'Anna', 'Ivanovna', 'ya@yandex.ru', 3, '12345678'),
(306, 'Juli', 'Jun', 'ya@yandex.ru', NULL, '123456789'),
(307, 'Juli', 'Jun', 'ya@yandex.ru', NULL, '123456789'),
(308, 'Макс Максимов', 'max@adasd', 'ya@yandex.ru', 2, '123456789');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id_group`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_groups` (`id_groups`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id_group` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=309;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_groups`) REFERENCES `groups` (`id_group`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
