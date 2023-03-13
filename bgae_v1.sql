SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `dana_statystyczna` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `dana_statystyczna` (`id`, `nazwa`) VALUES
(1, 'uruchomienie_wersji_desktopowej'),
(2, 'uruchomienie_wersji_mobilnej'),
(3, 'przejscie_gry_out'),
(4, 'przejscie_gry_left'),
(5, 'przejscie_gry_right'),
(6, 'uderzenie_gruntu'),
(7, 'zniszczenie_bossa'),
(8, 'czas_gry_min'),
(9, 'przejscie_misji'),
(10, 'uzycie_bomby'),
(11, 'uzycie_rakiety'),
(12, 'uzycie_drona'),
(13, 'uzycie_specjalnego'),
(14, 'smierc'),
(15, 'wziecie_statku_1'),
(16, 'wziecie_statku_2'),
(17, 'wziecie_statku_3'),
(18, 'wziecie_statku_4'),
(19, 'wziecie_broni_specjalna_0a'),
(20, 'wziecie_broni_specjalna_2'),
(21, 'wziecie_broni_specjalna_4'),
(22, 'wziecie_broni_glowna_0'),
(23, 'wziecie_broni_glowna_1a'),
(24, 'wziecie_broni_glowna_1c'),
(25, 'wziecie_broni_glowna_2a'),
(26, 'wziecie_broni_glowna_3b'),
(27, 'wziecie_broni_glowna_3c'),
(28, 'wziecie_broni_glowna_4b'),
(29, 'wziecie_broni_dodatkowa_1a'),
(30, 'wziecie_broni_dodatkowa_2a'),
(31, 'wziecie_broni_dodatkowa_3a'),
(32, 'wziecie_broni_dodatkowa_4a'),
(33, 'wziecie_broni_dodatkowa_4c');

CREATE TABLE `dana_statystyczna_gracza` (
  `id_danej_statystycznej` int(11) NOT NULL,
  `id_gracza` int(11) NOT NULL,
  `poziom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `dana_statystyczna_gracza` (`id_danej_statystycznej`, `id_gracza`, `poziom`) VALUES
(1, 50, 333),
(1, 51, 514),
(1, 52, 412),
(1, 53, 94),
(1, 54, 75),
(1, 56, 65),
(1, 81, 1),
(2, 50, 83),
(2, 51, 467),
(2, 52, 251),
(2, 53, 99),
(2, 54, 34),
(2, 56, 0),
(2, 81, 0),
(3, 50, 51),
(3, 51, 65),
(3, 52, 93),
(3, 53, 16),
(3, 54, 26),
(3, 56, 0),
(3, 81, 0),
(4, 50, 34),
(4, 51, 159),
(4, 52, 198),
(4, 53, 35),
(4, 54, 37),
(4, 56, 25),
(4, 81, 1),
(5, 50, 135),
(5, 51, 153),
(5, 52, 175),
(5, 53, 38),
(5, 54, 28),
(5, 56, 22),
(5, 81, 0),
(6, 50, 7),
(6, 51, 41),
(6, 52, 35),
(6, 53, 51),
(6, 54, 23),
(6, 56, 7),
(6, 81, 0),
(7, 50, 892),
(7, 51, 162),
(7, 52, 971),
(7, 53, 237),
(7, 54, 235),
(7, 56, 236),
(7, 81, 0),
(8, 50, 516685),
(8, 51, 11613),
(8, 52, 8531),
(8, 53, 8715),
(8, 54, 7412),
(8, 56, 1524),
(8, 81, 0),
(9, 50, 2630),
(9, 51, 538),
(9, 52, 4164),
(9, 53, 1743),
(9, 54, 1561),
(9, 56, 327),
(9, 81, 1),
(10, 50, 3280),
(10, 51, 1644),
(10, 52, 2512),
(10, 53, 3261),
(10, 54, 3612),
(10, 56, 523),
(10, 81, 0),
(11, 50, 3775),
(11, 51, 1528),
(11, 52, 2612),
(11, 53, 2157),
(11, 54, 2152),
(11, 56, 644),
(11, 81, 0),
(12, 50, 530),
(12, 51, 369),
(12, 52, 153),
(12, 53, 799),
(12, 54, 744),
(12, 56, 215),
(12, 81, 0),
(13, 50, 443),
(13, 51, 251),
(13, 52, 172),
(13, 53, 516),
(13, 54, 317),
(13, 56, 97),
(13, 81, 0),
(14, 50, 19),
(14, 51, 325),
(14, 52, 532),
(14, 53, 893),
(14, 54, 461),
(14, 56, 204),
(14, 81, 0),
(15, 50, 426),
(15, 51, 412),
(15, 52, 954),
(15, 53, 97),
(15, 54, 851),
(15, 56, 33),
(15, 81, 0),
(16, 50, 361),
(16, 51, 374),
(16, 52, 851),
(16, 53, 68),
(16, 54, 672),
(16, 56, 28),
(16, 81, 0),
(17, 50, 306),
(17, 51, 269),
(17, 52, 532),
(17, 53, 46),
(17, 54, 231),
(17, 56, 21),
(17, 81, 0),
(18, 50, 213),
(18, 51, 160),
(18, 52, 385),
(18, 53, 16),
(18, 54, 127),
(18, 56, 16),
(18, 81, 0),
(19, 50, 412),
(19, 51, 467),
(19, 52, 321),
(19, 53, 64),
(19, 54, 152),
(19, 56, 22),
(19, 81, 0),
(20, 50, 268),
(20, 51, 413),
(20, 52, 274),
(20, 53, 51),
(20, 54, 65),
(20, 56, 17),
(20, 81, 0),
(21, 50, 233),
(21, 51, 396),
(21, 52, 175),
(21, 53, 24),
(21, 54, 42),
(21, 56, 14),
(21, 81, 0),
(22, 50, 1283),
(22, 51, 363),
(22, 52, 941),
(22, 53, 152),
(22, 54, 95),
(22, 56, 96),
(22, 81, 0),
(23, 50, 841),
(23, 51, 316),
(23, 52, 869),
(23, 53, 122),
(23, 54, 83),
(23, 56, 53),
(23, 81, 0),
(24, 50, 623),
(24, 51, 279),
(24, 52, 813),
(24, 53, 118),
(24, 54, 53),
(24, 56, 48),
(24, 81, 0),
(25, 50, 544),
(25, 51, 265),
(25, 52, 783),
(25, 53, 86),
(25, 54, 32),
(25, 56, 41),
(25, 81, 0),
(26, 50, 423),
(26, 51, 231),
(26, 52, 715),
(26, 53, 75),
(26, 54, 22),
(26, 56, 37),
(26, 81, 0),
(27, 50, 410),
(27, 51, 170),
(27, 52, 648),
(27, 53, 42),
(27, 54, 18),
(27, 56, 29),
(27, 81, 0),
(28, 50, 389),
(28, 51, 152),
(28, 52, 528),
(28, 53, 12),
(28, 54, 16),
(28, 56, 15),
(28, 81, 0),
(29, 50, 356),
(29, 51, 126),
(29, 52, 358),
(29, 53, 86),
(29, 54, 12),
(29, 56, 35),
(29, 81, 0),
(30, 50, 321),
(30, 51, 98),
(30, 52, 257),
(30, 53, 53),
(30, 54, 5),
(30, 56, 24),
(30, 81, 0),
(31, 50, 296),
(31, 51, 74),
(31, 52, 216),
(31, 53, 32),
(31, 54, 3),
(31, 56, 19),
(31, 81, 0),
(32, 50, 251),
(32, 51, 61),
(32, 52, 175),
(32, 53, 12),
(32, 54, 2),
(32, 56, 15),
(32, 81, 0),
(33, 50, 198),
(33, 51, 41),
(33, 52, 32),
(33, 53, 6),
(33, 54, 0),
(33, 56, 11),
(33, 81, 0);
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagnieca_lead` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_osiagniecia) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 4) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 7 AND id_gracza = @id) >= 5 THEN
			INSERT INTO osiagniecie_gracza VALUES (4, @id);
		END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_aluminium` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_osiagniecia) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 1) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 3 AND id_gracza = @id) > 0 OR
		(SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 4 AND id_gracza = @id) > 0 OR
		(SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 5 AND id_gracza = @id) > 0 THEN
			INSERT INTO osiagniecie_gracza VALUES (1, @id);
        END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_antimony` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_osiagniecia) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 5) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_gracza = @id AND id_danej_statystycznej = 10) >= 500 AND
		(SELECT poziom FROM dana_statystyczna_gracza WHERE id_gracza = @id AND id_danej_statystycznej = 11) >= 500 AND
        (SELECT poziom FROM dana_statystyczna_gracza WHERE id_gracza = @id AND id_danej_statystycznej = 12) >= 80 THEN
			INSERT INTO osiagniecie_gracza VALUES (5, @id);
        END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_cobalt` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
SET @liczba_wykonanych = 19;
SET @licznik = 0;
    IF (SELECT COUNT(id_osiagniecia) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 6) < 1 THEN
            WHILE @liczba_wykonanych <= 33 DO
                IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = @liczba_wykonanych AND id_gracza = @id) >= 1 THEN SET @licznik = @licznik +1; END IF;
                SET @liczba_wykonanych = @liczba_wykonanych + 1; 
            END WHILE;
            IF (@licznik = 15) THEN INSERT INTO osiagniecie_gracza VALUES (6, @id); END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_iron` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
SET @liczba_wykonanych = 19;
SET @licznik = 0;
    IF (SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 12) < 1 THEN
            WHILE @liczba_wykonanych <= 33 DO
                IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = @liczba_wykonanych AND id_gracza = @id) >= 10 THEN SET @licznik = @licznik +1; END IF;
                SET @liczba_wykonanych = @liczba_wykonanych + 1; 
            END WHILE;
			IF (@licznik > 0) THEN INSERT INTO osiagniecie_gracza VALUES (12, @id); END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_lithium` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 9) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 6 AND id_gracza = @id) * 20 <=
        (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 9 AND id_gracza = @id) AND 
        (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 9 AND id_gracza = @id) >= 20
        THEN
			INSERT INTO osiagniecie_gracza VALUES (9, @id);
        END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_silicon` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_osiagniecia) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 2) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 1 AND id_gracza = @id) > 0 AND
		(SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 2 AND id_gracza = @id) > 0 THEN
				INSERT INTO osiagniecie_gracza VALUES (2, @id);
		END IF;
	END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_silver` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 11) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 9 AND id_gracza = @id) >= 100 THEN
			INSERT INTO osiagniecie_gracza VALUES (11, @id);
		END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_titanium` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 7) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 8 AND id_gracza = @id) >= 1440 THEN
			INSERT INTO osiagniecie_gracza VALUES (7, @id);
        END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_tungsten` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 3) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 14 AND id_gracza = @id) * 5 <=
        (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 9 AND id_gracza = @id) AND 
        (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 9 AND id_gracza = @id) >= 5
        THEN
			INSERT INTO osiagniecie_gracza VALUES (3, @id);
        END IF;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_uranium` AFTER UPDATE ON `dana_statystyczna_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 10) < 1 THEN
		IF (SELECT poziom FROM dana_statystyczna_gracza WHERE id_danej_statystycznej = 13 AND id_gracza = @id) >= 50 THEN
			INSERT INTO osiagniecie_gracza VALUES (10, @id);
		END IF;
    END IF;
END
$$
DELIMITER ;

CREATE TABLE `gracz` (
  `id` int(11) NOT NULL,
  `nick` varchar(16) NOT NULL,
  `haslo` varchar(60) NOT NULL,
  `email` varchar(45) NOT NULL,
  `czas_rejestracji` datetime NOT NULL DEFAULT current_timestamp(),
  `ranga` int(1) NOT NULL,
  `url_zdjecia_profilowego` text DEFAULT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `gracz` (`id`, `nick`, `haslo`, `email`, `czas_rejestracji`, `ranga`, `url_zdjecia_profilowego`, `status`) VALUES
(50, 'damian', '$2y$10$CcwYlvrdf9YDnjvy4sBmXeveLRqARDkUTWlmjL5mEVsfUD36Z1SUy', 'damian@interia.pl', '2022-12-01 12:00:00', 3, 'https://images.pagina12.com.ar/styles/focal_content_1200x1050/public/2021-05/164081-vaporwave_0.jpg?itok=jZzWaYp4', ''),
(51, 'tester', '$2y$10$ZNLBuGYV1dx0FmioctnqB.qCNB2K4eEupd0MF65p64kvSkis/1Nbm', 'tester@gmail.com', '2022-12-01 12:00:00', 4, 'https://ocdn.eu/pulscms-transforms/1/n0-ktkqTURBXy82ZTQxYWMzYjcxYTBhYmYzYjJhMTNiNDBmYzAzZjRjYi5qcGVnkpUDAADNAoDNAWiTBc0EsM0Cdg', ''),
(52, 'tester_drugi', '$2y$10$vqbB56b6BrDfrC4AwzNa/.sQDpe68eyFD4h.iO5kTVR0t7lOFWvnC', 'testerdrugi@gmail.com', '2022-12-01 12:00:00', 3, NULL, ''),
(53, 'tester_trzeci', '$2y$10$IibjcLin9AZq8vzy08mIpO7nu0LsYDMpttdgfQkqcPYlFKlfkNxse', 'testertrzeci@gmail.com', '2022-12-01 12:00:00', 3, NULL, ''),
(54, 'megatester', '$2y$10$1iS1cwWvGJ4VU8pOJbBbkOoUH9UmY0jgIuJAUHqQFttAkAJUdYzF2', 'megatester@gmail.com', '2022-12-01 12:00:00', 3, 'https://cdn.dribbble.com/users/3405711/screenshots/11900442/abstract_sci-fi__psychedelic_tunnel_corridor__00058__4x.jpg', ''),
(56, 'mat', '$2y$10$DCXurHExJsmvt6EOn0va1urnzguIvI0NZP1GRgU458/UjUKxAmM82', 'mat@wp.pl', '2022-12-01 12:00:00', 3, 'https://cdn.galleries.smcloud.net/t/galleries/gf-PVgK-So6k-ks6f_ilustracja-do-artykulu-664x442-nocrop.jpg', ''),
(81, 'beta', '$2y$10$XzSaguEKKB67PLajg9EVjuqo7ZRmqui26EbqhM3vrvbq6vS4UzjQy', 'beta@tester.pl', '2022-12-01 12:00:00', 0, NULL, '');
DELIMITER $$
CREATE TRIGGER `inicjalizacja_danych_gracza` AFTER INSERT ON `gracz` FOR EACH ROW BEGIN
	SET @liczba_danych = (SELECT COUNT(id) FROM dana_statystyczna);
	SET @liczba_wykonanych = 1;
	SET @id_gracza = NEW.id;
	
	WHILE @liczba_danych >= @liczba_wykonanych DO
	   INSERT INTO dana_statystyczna_gracza VALUES(@liczba_wykonanych,@id_gracza,0);
	   SET @liczba_wykonanych = @liczba_wykonanych + 1;
	END WHILE;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `inicjalizacja_przedmiotow_gracza` AFTER INSERT ON `gracz` FOR EACH ROW BEGIN
SET @liczba_danych = (SELECT COUNT(id) FROM przedmiot);
SET @liczba_wykonanych = 1;
SET @id_gracza = NEW.id;

WHILE @liczba_danych >= @liczba_wykonanych DO
   INSERT INTO przedmiot_gracza VALUES(@id_gracza,@liczba_wykonanych,0);
   SET @liczba_wykonanych = @liczba_wykonanych + 1;
END WHILE;
END
$$
DELIMITER ;

CREATE TABLE `oferta` (
  `id_nadawcy` int(11) NOT NULL,
  `id_przedmiotu_nadawcy` int(11) NOT NULL,
  `id_odbiorcy` int(11) NOT NULL,
  `id_przedmiotu_odbiorcy` int(11) NOT NULL,
  `czy_zaakceptowana` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `osiagniecie` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(13) NOT NULL,
  `opis` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `osiagniecie` (`id`, `nazwa`, `opis`) VALUES
(1, 'aluminium', 'for winning the game'),
(2, 'silicon', 'for playing both desktop and mobile version'),
(3, 'tungsten', 'for getting hit less often than one time per five missions'),
(4, 'lead', 'for defeating at least five bosses'),
(5, 'antimony', 'for firing at least 500 rockets, 500 bombs and 80 drones'),
(6, 'cobalt', 'for acquiring every possible weapon at least once'),
(7, 'titanium', 'for playing longer than for twenty four hours'),
(8, 'gold', 'for acquiring at least 33 ship styles'),
(9, 'lithium', 'for getting destroyed by non-enemy causes less than one time per twenty missions'),
(10, 'uranium', 'for using a special weapon at least fifty times'),
(11, 'silver', 'for completing any missions at least one hundred times'),
(12, 'iron', 'for choosing one weapon at least ten times');

CREATE TABLE `osiagniecie_gracza` (
  `id_osiagniecia` int(11) NOT NULL,
  `id_gracza` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `osiagniecie_gracza` (`id_osiagniecia`, `id_gracza`) VALUES
(1, 50),
(1, 51),
(1, 54),
(1, 81),
(2, 50),
(2, 51),
(3, 50),
(3, 51),
(3, 54),
(4, 50),
(4, 51),
(4, 54),
(5, 50),
(5, 51),
(5, 54),
(6, 50),
(6, 51),
(6, 54),
(7, 50),
(7, 51),
(8, 51),
(9, 50),
(9, 51),
(10, 50),
(10, 51),
(10, 54),
(11, 50),
(11, 51),
(11, 54),
(12, 50),
(12, 51),
(12, 54);
DELIMITER $$
CREATE TRIGGER `aktualizacja_rang_z_osiagniec` AFTER INSERT ON `osiagniecie_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
	IF (SELECT ranga FROM gracz WHERE id = @id) < 1 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 100 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) >= 2 THEN
			UPDATE gracz SET ranga = 1 WHERE id = @id;
		END IF;
	ELSEIF (SELECT ranga FROM gracz WHERE id = @id) < 2 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 220 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) >= 5 THEN
			UPDATE gracz SET ranga = 2 WHERE id = @id;
		END IF;
	ELSEIF (SELECT ranga FROM gracz WHERE id = @id) < 3 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 450 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) >= 9 THEN
			UPDATE gracz SET ranga = 3 WHERE id = @id;
		END IF;
	ELSEIF (SELECT ranga FROM gracz WHERE id = @id) < 4 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 600 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) = 12 THEN
			UPDATE gracz SET ranga = 4 WHERE id = @id;
		END IF;
	END IF;
END
$$
DELIMITER ;

CREATE TABLE `przedmiot` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(45) NOT NULL,
  `typ` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `przedmiot` (`id`, `nazwa`, `typ`) VALUES
(1, 'akumakaze', 1),
(2, 'agent tangerine', 1),
(3, 'edge', 1),
(4, 'ladybug', 1),
(5, 'furor', 1),
(6, 'pump', 1),
(7, 'fullprint', 1),
(8, 'mad', 1),
(9, 'aero', 1),
(10, 'tankie', 2),
(11, 'trip', 2),
(12, 'crank', 2),
(13, 'keelhaul', 2),
(14, 'ulfhedhnar', 2),
(15, 'macuahuitl', 2),
(16, 'midas', 2),
(17, 'cog', 2),
(18, 'sandstorm', 2),
(19, 'deco morreno', 3),
(20, '2088', 3),
(21, 'exposure', 3),
(22, 'long', 3),
(23, 'kitsch', 3),
(24, 'shakuhachi', 3),
(25, 'anti', 3),
(26, 'dagda', 3),
(27, 'pulpa', 3),
(28, 'ataraxia', 4),
(29, 'mbayuwayu', 4),
(30, 'aton', 4),
(31, 'rex', 4),
(32, 'holo', 4),
(33, '33', 4),
(34, 'crypto', 4),
(35, 'gloria', 4),
(36, 'liberty', 4);

CREATE TABLE `przedmiot_gracza` (
  `id_gracza` int(11) NOT NULL,
  `id_przedmiotu` int(11) NOT NULL,
  `liczba_posiadanych` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `przedmiot_gracza` (`id_gracza`, `id_przedmiotu`, `liczba_posiadanych`) VALUES
(50, 1, 1),
(50, 2, 0),
(50, 3, 0),
(50, 4, 0),
(50, 5, 1),
(50, 6, 1),
(50, 7, 2),
(50, 8, 0),
(50, 9, 1),
(50, 10, 1),
(50, 11, 0),
(50, 12, 0),
(50, 13, 0),
(50, 14, 1),
(50, 15, 0),
(50, 16, 1),
(50, 17, 1),
(50, 18, 1),
(50, 19, 1),
(50, 20, 1),
(50, 21, 1),
(50, 22, 0),
(50, 23, 1),
(50, 24, 0),
(50, 25, 0),
(50, 26, 0),
(50, 27, 1),
(50, 28, 1),
(50, 29, 1),
(50, 30, 1),
(50, 31, 1),
(50, 32, 0),
(50, 33, 0),
(50, 34, 1),
(50, 35, 0),
(50, 36, 1),
(51, 1, 6),
(51, 2, 7),
(51, 3, 5),
(51, 4, 4),
(51, 5, 5),
(51, 6, 6),
(51, 7, 6),
(51, 8, 5),
(51, 9, 4),
(51, 10, 7),
(51, 11, 7),
(51, 12, 6),
(51, 13, 5),
(51, 14, 4),
(51, 15, 5),
(51, 16, 6),
(51, 17, 8),
(51, 18, 7),
(51, 19, 9),
(51, 20, 4),
(51, 21, 7),
(51, 22, 7),
(51, 23, 6),
(51, 24, 7),
(51, 25, 6),
(51, 26, 5),
(51, 27, 3),
(51, 28, 7),
(51, 29, 6),
(51, 30, 7),
(51, 31, 6),
(51, 32, 8),
(51, 33, 5),
(51, 34, 6),
(51, 35, 5),
(51, 36, 7),
(52, 1, 3),
(52, 2, 5),
(52, 3, 5),
(52, 4, 4),
(52, 5, 4),
(52, 6, 3),
(52, 7, 5),
(52, 8, 4),
(52, 9, 5),
(52, 10, 6),
(52, 11, 2),
(52, 12, 3),
(52, 13, 6),
(52, 14, 5),
(52, 15, 4),
(52, 16, 4),
(52, 17, 3),
(52, 18, 3),
(52, 19, 4),
(52, 20, 2),
(52, 21, 4),
(52, 22, 5),
(52, 23, 5),
(52, 24, 6),
(52, 25, 3),
(52, 26, 2),
(52, 27, 5),
(52, 28, 6),
(52, 29, 5),
(52, 30, 4),
(52, 31, 5),
(52, 32, 3),
(52, 33, 4),
(52, 34, 4),
(52, 35, 5),
(52, 36, 3),
(53, 1, 1),
(53, 2, 0),
(53, 3, 0),
(53, 4, 1),
(53, 5, 1),
(53, 6, 1),
(53, 7, 2),
(53, 8, 1),
(53, 9, 1),
(53, 10, 2),
(53, 11, 0),
(53, 12, 0),
(53, 13, 1),
(53, 14, 0),
(53, 15, 0),
(53, 16, 0),
(53, 17, 0),
(53, 18, 0),
(53, 19, 2),
(53, 20, 0),
(53, 21, 1),
(53, 22, 0),
(53, 23, 0),
(53, 24, 1),
(53, 25, 2),
(53, 26, 1),
(53, 27, 1),
(53, 28, 0),
(53, 29, 0),
(53, 30, 1),
(53, 31, 1),
(53, 32, 0),
(53, 33, 1),
(53, 34, 0),
(53, 35, 1),
(53, 36, 0),
(54, 1, 1),
(54, 2, 2),
(54, 3, 0),
(54, 4, 1),
(54, 5, 1),
(54, 6, 1),
(54, 7, 0),
(54, 8, 1),
(54, 9, 0),
(54, 10, 2),
(54, 11, 2),
(54, 12, 3),
(54, 13, 1),
(54, 14, 3),
(54, 15, 0),
(54, 16, 1),
(54, 17, 0),
(54, 18, 0),
(54, 19, 0),
(54, 20, 2),
(54, 21, 0),
(54, 22, 2),
(54, 23, 1),
(54, 24, 0),
(54, 25, 2),
(54, 26, 1),
(54, 27, 2),
(54, 28, 2),
(54, 29, 0),
(54, 30, 0),
(54, 31, 3),
(54, 32, 0),
(54, 33, 1),
(54, 34, 2),
(54, 35, 1),
(54, 36, 1),
(56, 1, 1),
(56, 2, 0),
(56, 3, 0),
(56, 4, 1),
(56, 5, 1),
(56, 6, 0),
(56, 7, 0),
(56, 8, 0),
(56, 9, 1),
(56, 10, 0),
(56, 11, 1),
(56, 12, 0),
(56, 13, 1),
(56, 14, 0),
(56, 15, 1),
(56, 16, 0),
(56, 17, 0),
(56, 18, 1),
(56, 19, 1),
(56, 20, 0),
(56, 21, 2),
(56, 22, 1),
(56, 23, 1),
(56, 24, 0),
(56, 25, 0),
(56, 26, 1),
(56, 27, 2),
(56, 28, 1),
(56, 29, 0),
(56, 30, 1),
(56, 31, 2),
(56, 32, 0),
(56, 33, 0),
(56, 34, 0),
(56, 35, 0),
(56, 36, 0),
(81, 1, 0),
(81, 2, 0),
(81, 3, 0),
(81, 4, 0),
(81, 5, 0),
(81, 6, 0),
(81, 7, 0),
(81, 8, 0),
(81, 9, 0),
(81, 10, 0),
(81, 11, 0),
(81, 12, 0),
(81, 13, 0),
(81, 14, 0),
(81, 15, 0),
(81, 16, 0),
(81, 17, 0),
(81, 18, 0),
(81, 19, 0),
(81, 20, 0),
(81, 21, 0),
(81, 22, 0),
(81, 23, 0),
(81, 24, 0),
(81, 25, 0),
(81, 26, 0),
(81, 27, 0),
(81, 28, 0),
(81, 29, 0),
(81, 30, 0),
(81, 31, 0),
(81, 32, 0),
(81, 33, 0),
(81, 34, 0),
(81, 35, 0),
(81, 36, 0);
DELIMITER $$
CREATE TRIGGER `aktualizacja_osiagniecia_gold` AFTER UPDATE ON `przedmiot_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
    IF (SELECT COUNT(id_osiagniecia) FROM osiagniecie_gracza WHERE id_gracza = @id AND id_osiagniecia = 8) < 1 THEN
		IF (SELECT SUM(liczba_posiadanych) FROM przedmiot_gracza WHERE id_gracza = @id) >= 33 THEN
			INSERT INTO osiagniecie_gracza VALUES (8, @id);
        END IF;
    END IF; 
END
$$
DELIMITER ;

CREATE TABLE `wiadomosc` (
  `id` int(11) NOT NULL,
  `id_nadawcy` int(11) NOT NULL,
  `id_odbiorcy` int(11) NOT NULL,
  `tekst` text NOT NULL,
  `czas_nadania` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `wynik_gracza` (
  `id_gracza` int(11) NOT NULL,
  `zdobyte_punkty` int(3) NOT NULL,
  `czas_zdobycia` datetime NOT NULL DEFAULT current_timestamp(),
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `wynik_gracza` (`id_gracza`, `zdobyte_punkty`, `czas_zdobycia`, `id`) VALUES
(50, 587, '2022-12-02 12:00:00', 100),
(50, 516, '2022-12-02 12:00:00', 105),
(50, 563, '2022-12-02 12:00:00', 106),
(50, 471, '2022-12-02 12:00:00', 108),
(50, 333, '2022-12-02 12:00:00', 154),
(50, 323, '2022-12-02 12:00:00', 155),
(50, 0, '2022-12-02 12:00:00', 156),
(50, 0, '2022-12-02 12:00:00', 157),
(50, 0, '2022-12-02 12:00:00', 158),
(50, 0, '2022-12-02 12:00:00', 159),
(50, 0, '2022-12-02 12:00:00', 160),
(50, 0, '2022-12-02 12:00:00', 161),
(50, 0, '2022-12-02 12:00:00', 162),
(50, 0, '2022-12-02 12:00:00', 163),
(50, 0, '2022-12-02 12:00:00', 164),
(50, 0, '2022-12-02 12:00:00', 165),
(50, 0, '2022-12-02 12:00:00', 166),
(50, 0, '2022-12-02 12:00:00', 167),
(50, 0, '2022-12-02 12:00:00', 168),
(50, 0, '2022-12-02 12:00:00', 169),
(50, 0, '2022-12-02 12:00:00', 170),
(50, 0, '2022-12-02 12:00:00', 171),
(50, 0, '2022-12-02 12:00:00', 172),
(50, 0, '2022-12-02 12:00:00', 173),
(50, 21, '2022-12-02 12:00:00', 174),
(51, 98, '2022-12-02 12:00:00', 100),
(51, 98, '2022-12-02 12:00:00', 102),
(51, 124, '2022-12-02 12:00:00', 103),
(51, 125, '2022-12-02 12:00:00', 105),
(51, 184, '2022-12-02 12:00:00', 106),
(51, 180, '2022-12-02 12:00:00', 107),
(51, 156, '2022-12-02 12:00:00', 108),
(51, 197, '2022-12-02 12:00:00', 109),
(51, 155, '2022-12-02 12:00:00', 110),
(51, 144, '2022-12-02 12:00:00', 111),
(51, 215, '2022-12-02 12:00:00', 112),
(51, 196, '2022-12-02 12:00:00', 113),
(51, 189, '2022-12-02 12:00:00', 114),
(51, 217, '2022-12-02 12:00:00', 115),
(51, 198, '2022-12-02 12:00:00', 116),
(51, 221, '2022-12-02 12:00:00', 117),
(51, 254, '2022-12-02 12:00:00', 118),
(51, 234, '2022-12-02 12:00:00', 119),
(51, 277, '2022-12-02 12:00:00', 120),
(51, 253, '2022-12-02 12:00:00', 121),
(51, 298, '2022-12-02 12:00:00', 122),
(51, 267, '2022-12-02 12:00:00', 123),
(51, 255, '2022-12-02 12:00:00', 124),
(51, 321, '2022-12-02 12:00:00', 125),
(51, 278, '2022-12-02 12:00:00', 126),
(51, 245, '2022-12-02 12:00:00', 127),
(51, 322, '2022-12-02 12:00:00', 128),
(51, 310, '2022-12-02 12:00:00', 129),
(51, 361, '2022-12-02 12:00:00', 130),
(51, 275, '2022-12-02 12:00:00', 131),
(51, 366, '2022-12-02 12:00:00', 132),
(51, 385, '2022-12-02 12:00:00', 133),
(51, 401, '2022-12-02 12:00:00', 134),
(51, 375, '2022-12-02 12:00:00', 135),
(51, 396, '2022-12-02 12:00:00', 136),
(51, 378, '2022-12-02 12:00:00', 137),
(51, 423, '2022-12-02 12:00:00', 138),
(51, 412, '2022-12-02 12:00:00', 139),
(51, 438, '2022-12-02 12:00:00', 140),
(51, 456, '2022-12-02 12:00:00', 141),
(51, 497, '2022-12-02 12:00:00', 142),
(51, 456, '2022-12-02 12:00:00', 143),
(51, 479, '2022-12-02 12:00:00', 144),
(51, 498, '2022-12-02 12:00:00', 145),
(51, 411, '2022-12-02 12:00:00', 146),
(51, 478, '2022-12-02 12:00:00', 147),
(51, 520, '2022-12-02 12:00:00', 148),
(51, 487, '2022-12-02 12:00:00', 149),
(51, 51, '2022-12-02 12:00:00', 150),
(51, 51, '2022-12-02 12:00:00', 151),
(51, 51, '2022-12-02 12:00:00', 152),
(51, 33, '2022-12-02 12:00:00', 153),
(52, 476, '2022-12-02 12:00:00', 101),
(52, 488, '2022-12-02 12:00:00', 109),
(53, 485, '2022-12-02 12:00:00', 102),
(54, 533, '2022-12-02 12:00:00', 103),
(54, 502, '2022-12-02 12:00:00', 107),
(56, 497, '2022-12-02 12:00:00', 104),
(81, 0, '2022-12-02 12:00:00', 175);
DELIMITER $$
CREATE TRIGGER `aktualizacja_rang_z_wynikow` AFTER INSERT ON `wynik_gracza` FOR EACH ROW BEGIN
SET @id = NEW.id_gracza;
	IF (SELECT ranga FROM gracz WHERE id = @id) < 1 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 100 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) >= 2 THEN
			UPDATE gracz SET ranga = 1 WHERE id = @id;
		END IF;
	ELSEIF (SELECT ranga FROM gracz WHERE id = @id) < 2 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 220 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) >= 5 THEN
			UPDATE gracz SET ranga = 2 WHERE id = @id;
		END IF;
	ELSEIF (SELECT ranga FROM gracz WHERE id = @id) < 3 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 450 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) >= 9 THEN
			UPDATE gracz SET ranga = 3 WHERE id = @id;
		END IF;
	ELSEIF (SELECT ranga FROM gracz WHERE id = @id) < 4 THEN
		IF (SELECT MAX(zdobyte_punkty) FROM wynik_gracza WHERE id_gracza = @id) >= 600 AND
		(SELECT COUNT(id_gracza) FROM osiagniecie_gracza WHERE id_gracza = @id) = 12 THEN
			UPDATE gracz SET ranga = 4 WHERE id = @id;
		END IF;
	END IF;
END
$$
DELIMITER ;

CREATE TABLE `znajomi` (
  `gracz_id_zapraszajacy` int(11) NOT NULL,
  `gracz_id_zapraszany` int(11) NOT NULL,
  `zaproszenie_przyjete` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `znajomi` (`gracz_id_zapraszajacy`, `gracz_id_zapraszany`, `zaproszenie_przyjete`) VALUES
(50, 51, b'1'),
(51, 53, b'1'),
(52, 54, b'1'),
(52, 56, b'1'),
(53, 52, b'1'),
(53, 56, b'1'),
(54, 51, b'1'),
(54, 53, b'1'),
(56, 51, b'1');


ALTER TABLE `dana_statystyczna`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `dana_statystyczna_gracza`
  ADD PRIMARY KEY (`id_danej_statystycznej`,`id_gracza`),
  ADD KEY `id_gracza` (`id_gracza`),
  ADD KEY `id_danej_statystycznej` (`id_danej_statystycznej`);

ALTER TABLE `gracz`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `oferta`
  ADD PRIMARY KEY (`id_nadawcy`,`id_przedmiotu_nadawcy`,`id_odbiorcy`,`id_przedmiotu_odbiorcy`),
  ADD KEY `id_odbiorcy` (`id_odbiorcy`),
  ADD KEY `id_przedmiotu_nadawcy` (`id_przedmiotu_nadawcy`),
  ADD KEY `id_przedmiotu_odbiorcy` (`id_przedmiotu_odbiorcy`),
  ADD KEY `id_nadawcy` (`id_nadawcy`);

ALTER TABLE `osiagniecie`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `osiagniecie_gracza`
  ADD PRIMARY KEY (`id_osiagniecia`,`id_gracza`),
  ADD KEY `id_gracza` (`id_gracza`),
  ADD KEY `id_osiagniecia` (`id_osiagniecia`);

ALTER TABLE `przedmiot`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `przedmiot_gracza`
  ADD PRIMARY KEY (`id_gracza`,`id_przedmiotu`),
  ADD KEY `id_przedmiotu` (`id_przedmiotu`),
  ADD KEY `id_gracza` (`id_gracza`);

ALTER TABLE `wiadomosc`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_nadawcy` (`id_nadawcy`,`id_odbiorcy`),
  ADD KEY `id_odbiorcy` (`id_odbiorcy`);

ALTER TABLE `wynik_gracza`
  ADD PRIMARY KEY (`id_gracza`,`id`),
  ADD KEY `id_gracza` (`id_gracza`);

ALTER TABLE `znajomi`
  ADD PRIMARY KEY (`gracz_id_zapraszajacy`,`gracz_id_zapraszany`),
  ADD KEY `gracz_id_zapraszany` (`gracz_id_zapraszany`),
  ADD KEY `gracz_id_zapraszajacy` (`gracz_id_zapraszajacy`);


ALTER TABLE `dana_statystyczna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

ALTER TABLE `gracz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

ALTER TABLE `osiagniecie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `przedmiot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

ALTER TABLE `wiadomosc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


ALTER TABLE `dana_statystyczna_gracza`
  ADD CONSTRAINT `dana_statystyczna_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dana_statystyczna_gracza_ibfk_2` FOREIGN KEY (`id_danej_statystycznej`) REFERENCES `dana_statystyczna` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `oferta`
  ADD CONSTRAINT `oferta_ibfk_1` FOREIGN KEY (`id_nadawcy`) REFERENCES `przedmiot_gracza` (`id_gracza`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oferta_ibfk_2` FOREIGN KEY (`id_odbiorcy`) REFERENCES `przedmiot_gracza` (`id_gracza`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oferta_ibfk_3` FOREIGN KEY (`id_przedmiotu_nadawcy`) REFERENCES `przedmiot_gracza` (`id_przedmiotu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `oferta_ibfk_4` FOREIGN KEY (`id_przedmiotu_odbiorcy`) REFERENCES `przedmiot_gracza` (`id_przedmiotu`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `osiagniecie_gracza`
  ADD CONSTRAINT `osiagniecie_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `osiagniecie_gracza_ibfk_2` FOREIGN KEY (`id_osiagniecia`) REFERENCES `osiagniecie` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `przedmiot_gracza`
  ADD CONSTRAINT `przedmiot_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `przedmiot_gracza_ibfk_2` FOREIGN KEY (`id_przedmiotu`) REFERENCES `przedmiot` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `wiadomosc`
  ADD CONSTRAINT `wiadomosc_ibfk_1` FOREIGN KEY (`id_nadawcy`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wiadomosc_ibfk_2` FOREIGN KEY (`id_odbiorcy`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `wynik_gracza`
  ADD CONSTRAINT `wynik_gracza_ibfk_1` FOREIGN KEY (`id_gracza`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `znajomi`
  ADD CONSTRAINT `znajomi_ibfk_1` FOREIGN KEY (`gracz_id_zapraszajacy`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `znajomi_ibfk_2` FOREIGN KEY (`gracz_id_zapraszany`) REFERENCES `gracz` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
