-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Sty 2022, 23:31
-- Wersja serwera: 10.4.19-MariaDB
-- Wersja PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `logowanie`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2022_01_19_214425_add_phone_number_and_surname_columns_to_users_table', 2),
(10, '2022_01_22_112416_tabela_pytania', 3),
(11, '2022_01_22_175702_table_ranking', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `tresc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `odpa` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `odpb` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `odpc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `odpd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL,
  `poprawna` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`id`, `tresc`, `odpa`, `odpb`, `odpc`, `odpd`, `poprawna`) VALUES
(1, 'Wypisanie na ekranie zawarto??ci zmiennej char s = \"To jest tylko test\" zostanie wykonane w j??zyku C++ za pomoc?? instrukcji', 'cin&lt;&lt;s', 'cout&gt;&gt;s', 'cout&lt;&lt;s', 'cin&gt;&gt;s', 'c'),
(2, 'Destruktor w j??zyku C++ to metoda', 'wywo??ywana w momencie usuwania obiektu', 'wywo??ywana w momencie tworzenia obiektu', 'zwalniaj??ca pami???? przydzielon?? dynamicznie w obiekcie', 'porz??dkuj??ca pami???? operacyjn?? po usuni??tych obiektach', 'a'),
(3, 'Dziedziczenie w programowaniu obiektowym pozwala na', '????czenie obiekt??w', 'kopiowanie cech jednego obiektu do innego', 'usuni??cie z istniej??cej klasy zb??dnych element??w.', 'tworzenie nowej klasy na podstawie jednej lub kilku ju?? istniej??cych klas', 'd'),
(4, 'Czym jest inkrementacja', 'Zmniejszenie warto??ci o 1', 'Zwi??kszenie warto??ci o n, gdzie n>=2', 'Zwi??kszenie warto??ci o 1', '??adne z powy??szych', 'c'),
(5, 'Do kt??rego wyprowadzenia nale??y pod????czy?? g??o??niki aktywne w karcie d??wi??kowej, kt??rej schemat funkcjonalny przedstawia rysunek?', 'Mic in', 'Line in', 'Line out', 'Speaker out', 'c'),
(6, 'Kt??ry blok karty d??wi??kowej s??u??y do cyfrowego przetwarzania sygna????w?', 'Przetwornik A/D', 'Procesor DSP', 'Syntezator', 'Mikser', 'b'),
(7, 'Warunkiem niezb??dnym przy archiwizacji danych jest', 'kompresja danych', 'kopiowanie danych', 'kompresja i kopiowanie danych', 'kompresja i kopiowanie danych z jednoczesnym ich szyfrowaniem', 'b'),
(8, 'Kt??ra warstwa modelu ISO/OSI jest zwi??zana z protoko??em IP?', 'Sieciowa', 'Fizyczna', 'Transportowa', '????cza danych', 'a'),
(9, 'Ile kom??rek pami??ci mo??na zaadresowa?? bezpo??rednio w 64 bitowym procesorze, kt??ry ma 32 bitow?? szyn?? adresow???', '2 do pot??gi 32', '2 do pot??gi 64', '32 do pot??gi 2', '64 do pot??gi 2', 'a'),
(10, 'Co oznacza zwrot \"wykonanie backupu systemu\"?', 'Zamkni??cie systemu', 'Ponowne uruchomienie systemu', 'Wykonanie aktualizacji systemu', 'Wykonanie kopii zapasowej systemu', 'd'),
(11, 'Klaster komputerowy to', 'komputer z macierz?? dyskow??', 'komputer z wieloma procesorami', 'grupa komputer??w pracuj??cych wsp????bie??nie tak, jakby by?? to jeden komputer', 'komputer zapasowy, na kt??rym co pewien czas wykonywana jest kopia systemu g????wnego', 'c'),
(12, 'Jak?? ilo???? rzeczywistych danych mo??na przes??a?? w czasie 1 s przez ????cze synchroniczne o przepustowo??ci 512 kbps, bez sprz??towej i programowej kompresji?', 'Oko??o 5 kB', 'Oko??o 55 kB', 'Ponad 64 kB', 'Ponad 500 kB', 'b'),
(13, 'Jakiej liczbie kolor??w odpowiada kolor zakodowany na 16 bitach?', '16 kolorom', 'oko??o 64 tysi??com kolor??w', 'oko??o 65 tysi??com kolor??w', 'oko??o 16 milionom kolor??w', 'c'),
(14, 'Pami???? oznaczona symbolem PC3200 nie mo??e wsp????pracowa?? z magistral??', '300 MHz', '333 MHz', '400 MHz', '533 MHz', 'd'),
(15, 'Co oznacza jednostka dpi podawana w parametrach katalogowych skaner??w i drukarek?', 'Punkty na cal', 'G??sto???? optyczn??', 'Punkty na milimetr', 'Punkty na centymetr', 'a'),
(16, 'Jaka jest maksymalna pr??dko???? odczytu p??yt CD-R w nap??dzie oznaczonym x48?', '480 kB/s', '4800 kB/s', '7200 kB/s', '10000 kB/s', 'c'),
(17, 'Funkcje r????nych kategorii (daty i czasu, finansowe, tekstowe, matematyczne, statystyczne) s?? elementem sk??adowym', 'edytora tekstu', 'przegl??darki internetowej', 'arkusza kalkulacyjnego', 'program??w do tworzenia prezentacji multimedialnych', 'c'),
(18, 'Kt??ry z podanych j??zyk??w programowania nie jest j??zykiem webowym?', 'HTML5', 'JavaScript', 'PHP', 'C++', 'd'),
(19, 'W j??zyku C++ r????nica mi??dzy funkcj?? a procedur?? polega na tym, ??e', 'funkcja zwraca warto????, a procedura nie', 'do funkcji jako parametr mo??na przekazywa?? zmienn??, a do procedur tylko warto????', 'do procedury jako parametr mo??na przekazywa?? zmienn??, a do funkcji tylko warto????', 'funkcja mo??e by?? zdefiniowana z tylko jednym parametrem, a procedura z wieloma', 'a'),
(20, 'Jaki jest kod koloru w j??zyku HTML, je??li kolor ten ma sk??adowe w zapisie dziesi??tnym: czerwony = 27, zielony = 90 i niebieski = 104?', '#279004', '#1B5A68', '#1C9D4A', '#5A681B', 'b');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ranking`
--

CREATE TABLE `ranking` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `ranking`
--

INSERT INTO `ranking` (`id`, `Name`, `points`) VALUES
(1, 'Kacper', 5),
(46, 'Kacper', 2),
(57, 'Kacper', 4),
(58, 'Kacper', 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `phone_number`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'test5name', 'test 3', '534815884', 'kacperkos833@gmal.om', NULL, '$2y$10$A/2SByc2myq8mVp.xe7k3eZ0QmcduCIcp21xHojr4aNO3JcZ/DT6a', NULL, '2022-01-19 21:01:18', '2022-01-19 21:01:18'),
(3, 'Kacper', 'Marszycki', '534815884', 'marszycki056@gmail.com', NULL, '$2y$10$vXTRHPm4YvnXWEvU15jiJ.OpAqLWbkH/sD2/SWqXiXdOLDuBKjbvK', 'CEiGTMometlDV3DI4UKkrv8J5gYmWwXhqx4xHueZ2YWUahYBpliZbEtwYdm4', '2022-01-21 11:30:55', '2022-01-21 11:30:55'),
(10, 'test8', 'Puchalski', '307065257', 'test8@test.com', NULL, '', NULL, NULL, NULL),
(11, 'test9', 'Ignasiak', '824488208', 'test9@test.com', NULL, '', NULL, NULL, NULL);

--
-- Indeksy dla zrzut??w tabel
--

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT dla tabeli `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
