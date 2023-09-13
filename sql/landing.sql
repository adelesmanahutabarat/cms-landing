-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 13, 2023 at 05:31 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landing`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `causer_id`, `causer_type`, `properties`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'created', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Spongeboob\", \"type\": \"News\", \"intro\": \"test intro\", \"status\": 1, \"content\": \"<p>test content</p>\", \"meta_title\": \"Test Meta Title\", \"category_id\": 2, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"news\", \"meta_keywords\": \"test meta keywords\", \"created_by_alias\": \"Juli\", \"meta_description\": \"test meta description\"}}', '2022-06-20 07:03:40', '2022-06-20 07:03:40'),
(2, 'posts', 'updated', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"name\": \"Spongeboob\", \"type\": \"News\", \"intro\": \"test intro\", \"content\": \"<p>test content</p>\", \"meta_keywords\": \"test meta keywords\", \"created_by_alias\": \"Juli\"}, \"attributes\": {\"name\": \"Spongeboob edit\", \"type\": \"Article\", \"intro\": \"test intro edit\", \"content\": \"<p>test content edit</p>\", \"meta_keywords\": \"test meta keywords test\", \"created_by_alias\": \"Juli edit\"}}', '2022-06-20 08:34:40', '2022-06-20 08:34:40'),
(3, 'posts', 'updated', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"name\": \"Spongeboob edit\", \"intro\": \"test intro edit\", \"content\": \"<p>test content edit</p>\", \"meta_title\": \"Test Meta Title\", \"meta_keywords\": \"test meta keywords test\", \"created_by_alias\": \"Juli edit\", \"meta_description\": \"test meta description\"}, \"attributes\": {\"name\": \"Lirik Lagu Cinta Sampai Mati\", \"intro\": \"Lagu yang diciptakan oleh istri dari gitaris Kangen Band ini tengah viral di aplikasi TikTok dengan kutipan lirik: dengarkanlah di sepanjang malam aku berdoa, bersujud dan lalu aku meminta, semoga kita bersama.\", \"content\": \"<p>Lagu yang diciptakan oleh istri dari gitaris Kangen Band ini tengah viral di aplikasi TikTok dengan kutipan lirik: dengarkanlah di sepanjang malam aku berdoa, bersujud dan lalu aku meminta, semoga kita bersama.</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p>Duhai engkau sang belahan jiwa<br />\\r\\nNamamu terukir dalam pusara<br />\\r\\nDi setiap langkah ku selalu berdoa<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Duhai engkau tambatan hatiku<br />\\r\\nLabuhkanlah cintamu di hidupku<br />\\r\\nKu ingin kau tahu betapa merindu<br />\\r\\nHiduplah engkau denganku</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia</p>\\r\\n\\r\\n<p>Ha</p>\\r\\n\\r\\n<p>Duhai engkau tambatan hatiku<br />\\r\\nLabuhkanlah cintamu di hidupku<br />\\r\\nKu ingin kau tahu betapa merindu<br />\\r\\nHiduplah engkau denganku</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia dengarkanlah</p>\", \"meta_title\": \"Cinta Sampai Mati\", \"meta_keywords\": \"Lirik Lagu Cinta Sampai Mati\", \"created_by_alias\": \"Ade Lesmana\", \"meta_description\": \"Dengarkanlah disepanjang malam aku berdoa\"}}', '2022-06-21 03:52:46', '2022-06-21 03:52:46'),
(4, 'posts', 'updated', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"category_id\": 2, \"category_name\": \"news\"}, \"attributes\": {\"category_id\": 1, \"category_name\": \"Lirik\"}}', '2022-06-21 03:53:48', '2022-06-21 03:53:48'),
(5, 'posts', 'updated', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-06-21 04:49:39', '2022-06-21 04:49:39'),
(6, 'posts', 'updated', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"content\": \"<p>Lagu yang diciptakan oleh istri dari gitaris Kangen Band ini tengah viral di aplikasi TikTok dengan kutipan lirik: dengarkanlah di sepanjang malam aku berdoa, bersujud dan lalu aku meminta, semoga kita bersama.</p>\\r\\n\\r\\n<p>&nbsp;</p>\\r\\n\\r\\n<p>Duhai engkau sang belahan jiwa<br />\\r\\nNamamu terukir dalam pusara<br />\\r\\nDi setiap langkah ku selalu berdoa<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Duhai engkau tambatan hatiku<br />\\r\\nLabuhkanlah cintamu di hidupku<br />\\r\\nKu ingin kau tahu betapa merindu<br />\\r\\nHiduplah engkau denganku</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia</p>\\r\\n\\r\\n<p>Ha</p>\\r\\n\\r\\n<p>Duhai engkau tambatan hatiku<br />\\r\\nLabuhkanlah cintamu di hidupku<br />\\r\\nKu ingin kau tahu betapa merindu<br />\\r\\nHiduplah engkau denganku</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia dengarkanlah</p>\"}, \"attributes\": {\"content\": \"<p>Lagu yang diciptakan oleh istri dari gitaris Kangen Band ini tengah viral di aplikasi TikTok dengan kutipan lirik: dengarkanlah di sepanjang malam aku berdoa, bersujud dan lalu aku meminta, semoga kita bersama.</p>\\r\\n\\r\\n<p>Duhai engkau sang belahan jiwa<br />\\r\\nNamamu terukir dalam pusara<br />\\r\\nDi setiap langkah ku selalu berdoa<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Duhai engkau tambatan hatiku<br />\\r\\nLabuhkanlah cintamu di hidupku<br />\\r\\nKu ingin kau tahu betapa merindu<br />\\r\\nHiduplah engkau denganku</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia</p>\\r\\n\\r\\n<p>Ha</p>\\r\\n\\r\\n<p>Duhai engkau tambatan hatiku<br />\\r\\nLabuhkanlah cintamu di hidupku<br />\\r\\nKu ingin kau tahu betapa merindu<br />\\r\\nHiduplah engkau denganku</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nBersujud dan lalu aku meminta<br />\\r\\nSemoga kita bersama</p>\\r\\n\\r\\n<p>Dengarkanlah<br />\\r\\nDi sepanjang malam aku berdoa<br />\\r\\nCintaku untukmu selalu terjaga<br />\\r\\nDan aku pasti setia dengarkanlah</p>\"}}', '2022-06-21 05:39:26', '2022-06-21 05:39:26'),
(7, 'posts', 'created', 2, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Cinta Sampai Mati 2\", \"type\": \"Article\", \"intro\": \"Lagu Cinta Sampai Mati 2 adalah pelengkap dari single sebelumnya dengan balutan syair yang lebih mendalam dan lebih unik nya lagi lagu ini hadir diciptakan oleh Dodhy gitaris Kangen Band.\", \"status\": 1, \"content\": \"<p>Lagu Cinta Sampai 2 merupakan single terbaru dari Andika Kangen Band yang baru dirilis beberapa hari lalu.</p>\\r\\n\\r\\n<p>Lagu yang di unggah di kanal YouTube Kangen Band Official ini, sudah ditonton lebih dari 2,6 juta penonton, dan masuk tranding 14 di YouTube.</p>\\r\\n\\r\\n<p>Lagu&nbsp;<a href=\\\"https://literasinews.pikiran-rakyat.com/tag/Cinta%20Sampai%20Mati%202\\\">Cinta Sampai Mati 2</a>&nbsp;adalah pelengkap dari single sebelumnya dengan balutan syair yang lebih mendalam dan lebih unik nya lagi lagu ini hadir diciptakan oleh Dodhy gitaris Kangen Band.</p>\\r\\n\\r\\n<p>Merupakan balasan dari lagu yang sebelumnya lagu &quot;Cinta Sampai Mati&quot; yang diciptakan oleh istri dari Dodhy, seakan menjadi jawaban dari kisah cinta abadi dari pasangan suami istri ini.</p>\\r\\n\\r\\n<p>Kamu adalah makhluk yang kutuju<br />\\r\\nSelain kamu, aku tidak mau<br />\\r\\nKar&#39;na nyaman ada di dekatmu<br />\\r\\nSandaran hatiku</p>\\r\\n\\r\\n<p>Bersama kita arungi bahtera<br />\\r\\nMenjaga cinta dengan selayaknya<br />\\r\\nRasa nyaman bila di dekatmu<br />\\r\\nTambatan hatiku</p>\\r\\n\\r\\n<p>Dengan bismillah<br />\\r\\nAku jaga kesucian cinta<br />\\r\\nKu berjanji tidak akan mendua<br />\\r\\nKu pasti akan setia</p>\\r\\n\\r\\n<p>Dan dengan bismillah<br />\\r\\nSemoga bisa menentramkan jiwa<br />\\r\\nTuntunlah cinta kami sampai surga<br />\\r\\nDuhai Sang Pemilik Cinta<br />\\r\\nDengan bismillah</p>\\r\\n\\r\\n<p>Wo-oh, ah-ah<br />\\r\\nHa-ah-ah</p>\\r\\n\\r\\n<p>Bersama kita arungi bahtera<br />\\r\\nMenjaga cinta dengan selayaknya<br />\\r\\nRasa nyaman bila di dekatmu<br />\\r\\nTambatan hatiku (wo-oh-oh)</p>\\r\\n\\r\\n<p>Dengan bismillah<br />\\r\\nAku jaga kesucian cinta<br />\\r\\nKu berjanji tidak akan mendua<br />\\r\\nKu pasti akan setia</p>\\r\\n\\r\\n<p>Dan dengan bismillah<br />\\r\\nSemoga bisa menentramkan jiwa<br />\\r\\nTuntunlah cinta kami sampai surga<br />\\r\\nDuhai Sang Pemilik Cinta</p>\\r\\n\\r\\n<p>Dan dengan bismillah (cintai dengan bismillah)<br />\\r\\nAku jaga kesucian cinta<br />\\r\\nKu berjanji tidak akan mendua<br />\\r\\nKu pasti akan setia, wo-oh</p>\\r\\n\\r\\n<p>Dan dengan bismillah (cintai dengan bismillah)<br />\\r\\nSemoga bisa menentramkan jiwa<br />\\r\\nTuntunlah cinta kami sampai surga<br />\\r\\nDuhai Sang Pemilik Cinta</p>\\r\\n\\r\\n<p>Dengan bismilah</p>\", \"meta_title\": \"Cinta Sampai Mati 2\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"Cinta Sampai Mati 2\", \"created_by_alias\": \"Ade Lesmana\", \"meta_description\": \"Dengan bismillah Aku jaga kesucian cinta\"}}', '2022-06-21 09:44:35', '2022-06-21 09:44:35'),
(8, 'posts', 'updated', 2, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-06-21 10:12:08', '2022-06-21 10:12:08'),
(9, 'posts', 'created', 3, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"test email\", \"type\": \"Article\", \"intro\": \"test\", \"status\": 1, \"content\": \"<p>test</p>\", \"meta_title\": \"Test Meta Title\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"Cinta Sampai Mati 2\", \"created_by_alias\": \"Juli edit\", \"meta_description\": \"test meta description\"}}', '2022-07-04 02:38:23', '2022-07-04 02:38:23'),
(10, 'posts', 'created', 4, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Kamu Gila\", \"type\": \"Article\", \"intro\": \"Rilisan terbaru dari Kangen Band - Kamu Gila\", \"status\": 1, \"content\": \"<p>Hari ini aku kerumahmu<br />\\r\\nKu mohon kau jangan pergi dulu<br />\\r\\nKarna kita harus bicara<br />\\r\\nBiar tak ada yang terluka</p>\\r\\n\\r\\n<p>Engkau sangat tega buatku terluka<br />\\r\\nTidak punya rasa sungguh ku kecewa</p>\\r\\n\\r\\n<p>Salah apakah aku padamu<br />\\r\\nDan dimanakah letak dosaku<br />\\r\\nSehingga engkau pergi jauh dari kehidupanku</p>\\r\\n\\r\\n<p>Sayang kau hancurkan semuanya<br />\\r\\nDan kau buat hatiku terluka<br />\\r\\nJujurku sangat kecewa dengan sikapmu semua<br />\\r\\nKamu gila</p>\\r\\n\\r\\n<p>Karena kita harus bicara<br />\\r\\nBiar tak ada yang terluka<br />\\r\\nEngkau sangat tega buatku terluka<br />\\r\\nTidak punya rasa sungguh ku kecewa</p>\\r\\n\\r\\n<p>Salah apakah aku padamu<br />\\r\\nDan dimanakah letak dosaku<br />\\r\\nSehingga engkau pergi jauh dari kehidupanku</p>\\r\\n\\r\\n<p>Sayang kau hancurkan semuanya<br />\\r\\nDan kau buat hatiku terluka<br />\\r\\nJujurku sangat kecewa dengan sikapmu semua<br />\\r\\nKamu gila</p>\", \"meta_title\": \"Test Meta Title\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"test meta keywords test\", \"created_by_alias\": \"ade lesmana\", \"meta_description\": \"Kamu Gila Kangen Band\"}}', '2022-07-04 02:39:50', '2022-07-04 02:39:50'),
(11, 'posts', 'created', 5, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Tegar Septian\", \"type\": \"Feature\", \"intro\": \"test\", \"status\": 1, \"content\": \"<p>test</p>\", \"meta_title\": \"Test Meta Title\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"Cinta Sampai Mati 2\", \"created_by_alias\": \"ade lesmana\", \"meta_description\": \"Kamu Gila Kangen Band\"}}', '2022-07-04 03:14:12', '2022-07-04 03:14:12'),
(12, 'posts', 'updated', 5, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-07-04 03:14:46', '2022-07-04 03:14:46'),
(13, 'posts', 'updated', 5, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"name\": \"Tegar Septian\", \"content\": \"<p>test</p>\"}, \"attributes\": {\"name\": \"Cinta Sampai Mati 3\", \"content\": \"<p>Hari ini aku kerumahmu<br />\\r\\nKu mohon kau jangan pergi dulu<br />\\r\\nKarna kita harus bicara<br />\\r\\nBiar tak ada yang terluka</p>\\r\\n\\r\\n<p>Engkau sangat tega buatku terluka<br />\\r\\nTidak punya rasa sungguh ku kecewa</p>\"}}', '2022-07-04 03:51:15', '2022-07-04 03:51:15'),
(14, 'posts', 'updated', 5, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"intro\": \"test\"}, \"attributes\": {\"intro\": \"Hari ini aku kerumahmu\\r\\nKu mohon kau jangan pergi dulu\\r\\nKarna kita harus bicara\\r\\nBiar tak ada yang terluka\\r\\n\\r\\nEngkau sangat tega buatku terluka\\r\\nTidak punya rasa sungguh ku kecewa\"}}', '2022-07-04 04:00:31', '2022-07-04 04:00:31'),
(15, 'posts', 'updated', 4, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"intro\": \"Rilisan terbaru dari Kangen Band - Kamu Gila\"}, \"attributes\": {\"intro\": \"Hari ini aku kerumahmu\\r\\nKu mohon kau jangan pergi dulu\\r\\nKarna kita harus bicara\\r\\nBiar tak ada yang terluka\\r\\n\\r\\nEngkau sangat tega buatku terluka\\r\\nTidak punya rasa sungguh ku kecewa\"}}', '2022-07-04 04:00:52', '2022-07-04 04:00:52'),
(16, 'posts', 'updated', 5, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-07-26 05:45:17', '2022-07-26 05:45:17'),
(17, 'posts', 'created', 6, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Test dengan landing\", \"type\": \"Feature\", \"intro\": \"test intro dengan landing\", \"status\": 1, \"content\": \"<p>test content dengan landing</p>\", \"meta_title\": \"Cinta Sampai Mati 2\", \"category_id\": 3, \"is_featured\": 0, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"new highlight\", \"meta_keywords\": \"Cinta Sampai Mati 2\", \"created_by_alias\": \"ade\", \"meta_description\": \"test meta description\"}}', '2022-07-26 06:09:09', '2022-07-26 06:09:09'),
(18, 'posts', 'updated', 6, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-07-26 06:09:34', '2022-07-26 06:09:34'),
(19, 'posts', 'created', 7, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Jamu Pegel Mlarat\", \"type\": \"Article\", \"intro\": \"Dek reneo tak kandani\\r\\nOjo menjap menjep nggatelne ati\\r\\nDek ndang gawekno kopi\\r\\nNdasku ngelu ket wingi durung mari\\r\\nYen dikongkon mbok yo ndang dilakoni\\r\\nOjo tambah kok tinggal nonton tipi\", \"status\": 1, \"content\": \"<p>&nbsp;</p>\\r\\n\\r\\n<p>Dek reneo tak kandani Ojo menjap menjep nggatelne ati Dek ndang gawekno kopi Ndasku ngelu ket wingi durung mari Yen dikongkon mbok yo ndang dilakoni Ojo tambah kok tinggal nonton tipi Mas mbok yo koe ngerti Duit sing endi digawe tuku kopi Belanjane gak mbejaji Bumbu dapur kabeh entek gari terasi Aku isin mbendino ditagihi Sok kapan utangmu kok sauri Tak rewangi kerjo nganti bengi Nanging koyone yo ora mesti Tak rewangi ngliter tekan bali Nanging koyone yo ora mesti Sakjane aku wes ora kuat Sakjane aku wes pegel mlarat Kepengen nduwe sedan mengkilap Duit sak milyat lan omah tingkat Sakjane aku yo ora kuat Sakjane aku yo emoh mlarat Golekno jamu pegel mlarat Sopo ngerti besok dadi konglomerat<br />\\r\\n&nbsp;</p>\", \"meta_title\": \"Jamu Pegel Mlarat - Susi Permatasari Feat Abimanyu Feat Be One Project\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": null, \"created_by_alias\": \"ade lesmana\", \"meta_description\": \"Kangen Band\"}}', '2022-08-10 05:58:22', '2022-08-10 05:58:22'),
(20, 'posts', 'created', 8, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Lirik Lagu Malam Pertama\", \"type\": \"Article\", \"intro\": \"Setelah sekian lamanya\\r\\nDi malam pertama ini\\r\\nKau yang ku bangga banggakan\\r\\nKu tlah mendapat kesucianmu\", \"status\": 1, \"content\": \"<p>Setelah sekian lamanya Di malam pertama ini Kau yang ku bangga banggakan Ku tlah mendapat kesucianmu Dimana kesetiaanmu Dimana kehormatanmu Janjimu selalu setia Ternyata kau menebar luka Dia makan nangkanya Ku dapat getahnya Kau dustai aku Ternyata selingkuh Betapa teganya dirimu Kau khianati kesetiaanku Ternyata diriku tertipu Dengan kepolosan wajahmu Aku yang selalu percaya Dan menjaga cinta kita Kini sirnalah sudah Harapanku</p>\", \"meta_title\": \"Setelah Sekian Lamanya Di Malam Pertama Ini\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"Cinta Sampai Mati 2\", \"created_by_alias\": \"ade lesmana\", \"meta_description\": \"Setelah sekian lamanya Di malam pertama ini\"}}', '2022-08-10 06:00:51', '2022-08-10 06:00:51'),
(21, 'posts', 'created', 9, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Lirik Lagu Lupakan Aku\", \"type\": \"Article\", \"intro\": \"dulu kita pernah bersama\\r\\nnamun semua kini telah berubah\\r\\nikatan cinta telah sirna\\r\\ntinggallah duka dan nestafa\", \"status\": 1, \"content\": \"<p>&nbsp;</p>\\r\\n\\r\\n<p>dulu kita pernah bersama namun semua kini telah berubah ikatan cinta telah sirna tinggallah duka dan nestafa dahulu saling menyayangi namun ku harus pamit pergi kerana cintaku kemasi tidak mungkin aku kembali sudah kubilang jangan temui aku karena ku tidak ingin menemuimu ku harap engkau bisa memahamiku lekas pergi tinggalkan lah diriku sudah kubilang hapus air matamu dan jangan pernah lagi mencari aku aku tak ingin melukai hatimu lekaslah lupakan aku</p>\", \"meta_title\": \"Dulu Kita Pernah Bersama Namun Semua Kini Telah Berubah\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-08-10T07:03:33.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"dulu kita pernah bersama namun semua kini telah berubah\", \"created_by_alias\": null, \"meta_description\": \"dulu kita pernah bersama namun semua kini telah berubah\"}}', '2022-08-10 06:03:33', '2022-08-10 06:03:33'),
(22, 'posts', 'created', 10, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Lirik Lagu Lupakan Aku\", \"type\": \"Article\", \"intro\": \"dulu kita pernah bersama\\r\\nnamun semua kini telah berubah\\r\\nikatan cinta telah sirna\\r\\ntinggallah duka dan nestafa\", \"status\": 1, \"content\": \"<p>&nbsp;</p>\\r\\n\\r\\n<p>dulu kita pernah bersama namun semua kini telah berubah ikatan cinta telah sirna tinggallah duka dan nestafa dahulu saling menyayangi namun ku harus pamit pergi kerana cintaku kemasi tidak mungkin aku kembali sudah kubilang jangan temui aku karena ku tidak ingin menemuimu ku harap engkau bisa memahamiku lekas pergi tinggalkan lah diriku sudah kubilang hapus air matamu dan jangan pernah lagi mencari aku aku tak ingin melukai hatimu lekaslah lupakan aku</p>\", \"meta_title\": \"Dulu Kita Pernah Bersama Namun Semua Kini Telah Berubah\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-08-10T07:06:16.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"dulu kita pernah bersama namun semua kini telah berubah\", \"created_by_alias\": null, \"meta_description\": \"dulu kita pernah bersama namun semua kini telah berubah\"}}', '2022-08-10 06:06:16', '2022-08-10 06:06:16'),
(23, 'posts', 'updated', 4, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-08-10 06:07:05', '2022-08-10 06:07:05'),
(24, 'posts', 'updated', 2, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-08-10 06:07:13', '2022-08-10 06:07:13'),
(25, 'posts', 'updated', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-08-10 06:07:22', '2022-08-10 06:07:22'),
(26, 'posts', 'updated', 9, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"content\": \"<p>&nbsp;</p>\\r\\n\\r\\n<p>dulu kita pernah bersama namun semua kini telah berubah ikatan cinta telah sirna tinggallah duka dan nestafa dahulu saling menyayangi namun ku harus pamit pergi kerana cintaku kemasi tidak mungkin aku kembali sudah kubilang jangan temui aku karena ku tidak ingin menemuimu ku harap engkau bisa memahamiku lekas pergi tinggalkan lah diriku sudah kubilang hapus air matamu dan jangan pernah lagi mencari aku aku tak ingin melukai hatimu lekaslah lupakan aku</p>\"}, \"attributes\": {\"content\": \"<p>&nbsp;</p>\\r\\n\\r\\n<p>Dulu kita pernah bersama namun semua kini telah berubah</p>\\r\\n\\r\\n<p>ikatan cinta telah sirna tinggallah duka dan nestafa</p>\\r\\n\\r\\n<p>dahulu saling menyayangi namun ku harus pamit pergi</p>\\r\\n\\r\\n<p>kerana cintaku kemasi tidak mungkin aku kembali</p>\\r\\n\\r\\n<p>sudah kubilang jangan temui aku karena ku tidak ingin menemuimu</p>\\r\\n\\r\\n<p>ku harap engkau bisa memahamiku lekas pergi tinggalkan lah diriku</p>\\r\\n\\r\\n<p>sudah kubilang hapus air matamu dan jangan pernah lagi mencari aku</p>\\r\\n\\r\\n<p>aku tak ingin melukai hatimu lekaslah lupakan aku</p>\"}}', '2022-08-10 09:54:48', '2022-08-10 09:54:48'),
(27, 'posts', 'updated', 7, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"content\": \"<p>&nbsp;</p>\\r\\n\\r\\n<p>Dek reneo tak kandani Ojo menjap menjep nggatelne ati Dek ndang gawekno kopi Ndasku ngelu ket wingi durung mari Yen dikongkon mbok yo ndang dilakoni Ojo tambah kok tinggal nonton tipi Mas mbok yo koe ngerti Duit sing endi digawe tuku kopi Belanjane gak mbejaji Bumbu dapur kabeh entek gari terasi Aku isin mbendino ditagihi Sok kapan utangmu kok sauri Tak rewangi kerjo nganti bengi Nanging koyone yo ora mesti Tak rewangi ngliter tekan bali Nanging koyone yo ora mesti Sakjane aku wes ora kuat Sakjane aku wes pegel mlarat Kepengen nduwe sedan mengkilap Duit sak milyat lan omah tingkat Sakjane aku yo ora kuat Sakjane aku yo emoh mlarat Golekno jamu pegel mlarat Sopo ngerti besok dadi konglomerat<br />\\r\\n&nbsp;</p>\"}, \"attributes\": {\"content\": \"<p>&nbsp;</p>\\r\\n\\r\\n<p>Dek reneo tak kandani</p>\\r\\n\\r\\n<p>Ojo menjap menjep nggatelne ati</p>\\r\\n\\r\\n<p>Dek ndang gawekno kopi</p>\\r\\n\\r\\n<p>Ndasku ngelu ket wingi durung mari Yen</p>\\r\\n\\r\\n<p>dikongkon mbok yo ndang dilakoni Ojo tambah kok tinggal</p>\\r\\n\\r\\n<p>nonton tipi Mas mbok yo koe ngerti Duit sing endi</p>\\r\\n\\r\\n<p>digawe tuku kopi Belanjane gak mbejaji Bumbu dapur</p>\\r\\n\\r\\n<p>kabeh entek gari terasi Aku isin mbendino ditagihi Sok</p>\\r\\n\\r\\n<p>kapan utangmu kok sauri Tak rewangi kerjo nganti bengi</p>\\r\\n\\r\\n<p>Nanging koyone yo ora mesti Tak rewangi ngliter tekan</p>\\r\\n\\r\\n<p>bali Nanging koyone yo ora mesti Sakjane aku wes ora</p>\\r\\n\\r\\n<p>kuat Sakjane aku wes pegel mlarat Kepengen nduwe</p>\\r\\n\\r\\n<p>sedan mengkilap Duit sak milyat lan omah tingkat</p>\\r\\n\\r\\n<p>Sakjane aku yo ora kuat Sakjane aku yo emoh mlarat</p>\\r\\n\\r\\n<p>Golekno jamu pegel mlarat Sopo ngerti besok dadi konglomerat<br />\\r\\n&nbsp;</p>\"}}', '2022-08-10 09:55:41', '2022-08-10 09:55:41'),
(28, 'posts', 'updated', 5, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-08-12 05:43:21', '2022-08-12 05:43:21'),
(29, 'posts', 'updated', 1, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2022-08-12 05:43:39', '2022-08-12 05:43:39'),
(30, 'posts', 'created', 10, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Terimakasih\", \"type\": \"Article\", \"intro\": \"Shine Of Black kembali menciptakan karya yang sangat menggugah hati dan jiwa. Dimana lagu ini sudah diupload di Channel Indonesia Timur dengan Judul \\\"Terimakasih\\\"\", \"status\": 1, \"content\": \"<p>Terimakasih - Shine of Black</p>\\r\\n\\r\\n<p>Sempurna di mata&nbsp;<br />\\r\\nSenyuman itu yang buat sa tra bisa lupa<br />\\r\\nKo ajarkan tentang rindu<br />\\r\\nArti cinta yang tulus dan bahagia</p>\\r\\n\\r\\n<p>Terima kasih kau telah menjadi kekasihku<br />\\r\\nSelalu ada di setiap saat kubutuhkan dirimu<br />\\r\\nYou always in my heart because I love you baby<br />\\r\\nI wanna be with you I wanna be with you forever</p>\\r\\n\\r\\n<p>Sa mau hanya dengan ko sa trakan sey<br />\\r\\nCuma mau ko yang temani every day<br />\\r\\nAnd I need you wanna stay<br />\\r\\nAnd I need you wanna stay</p>\\r\\n\\r\\n<p>Sa jaga bae cinta&nbsp;<br />\\r\\nTak akan sa kasih sunyi<br />\\r\\nSa tulus sama ko tara bermain<br />\\r\\nSa mau ko disini<br />\\r\\n&nbsp;</p>\", \"meta_title\": \"Terimakasih Shine Of Black\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"Terimakasih Shine of Black\", \"created_by_alias\": \"ade lesmana\", \"meta_description\": \"Terimakasih Shine of Black\"}}', '2022-08-19 02:42:08', '2022-08-19 02:42:08'),
(31, 'posts', 'created', 11, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Vicky Salamor - Ikatan\", \"type\": \"Article\", \"intro\": \"Vicky Salamor - Ikatan. \\r\\n\\r\\nSejenak beta coba merenungkan kembali\\r\\nSaat hari itu di pelukan pertama\\r\\n*\\r\\nLalu coba lihat sekarang apa yang terjadi\\r\\nBukan lagi peluk tapi lutut bertekuk\", \"status\": 1, \"content\": \"<p>Vicky Salamor - Ikatan.&nbsp;</p>\\r\\n\\r\\n<p>Sejenak beta coba merenungkan kembali<br />\\r\\nSaat hari itu di pelukan pertama<br />\\r\\n*<br />\\r\\nLalu coba lihat sekarang apa yang terjadi<br />\\r\\nBukan lagi peluk tapi lutut bertekuk</p>\\r\\n\\r\\n<p>Ingat ka seng waktu hari itu&nbsp;<br />\\r\\nAle panggil beta sayang<br />\\r\\nMangapa sekarang cuma tersisa bayang dan khayalan tuk di kenang</p>\\r\\n\\r\\n<p>Reff :<br />\\r\\nApa artinya ikatan<br />\\r\\nBila akhirnya se lepaskan<br />\\r\\nYang nyata tinggal bayang bayang<br />\\r\\nBelum lagi mimpi buruk malam</p>\\r\\n\\r\\n<p>Beta coba merelakan<br />\\r\\nWalaupun sulit melupakan<br />\\r\\nHarusnya jadi masa depan<br />\\r\\nLebih pilih dia dan tinggalkan beta sandiri</p>\", \"meta_title\": \"Vicky Salamor Ikatan\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"Vicky Salamor Ikatan\", \"created_by_alias\": null, \"meta_description\": \"Vicky Salamor Ikatan\"}}', '2022-08-19 02:44:50', '2022-08-19 02:44:50'),
(32, 'posts', 'created', 12, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa\", \"type\": \"Article\", \"intro\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa\\r\\n\\r\\nDari awal ko bilang\\r\\nKalo ko su tra sayang\\r\\nSa pu hati, sa su rela untuk tunggu\\r\\nSa pu hati, sa su rela lepas rindu\\r\\nBukan ko saja yang punya hati, bilang saja kalo mo pisah\\r\\nBukan ko saja yang punya hati, tapi kenapa harus sa?\", \"status\": 1, \"content\": \"<p>Dari awal ko bilang<br />\\r\\nKalo ko su tra sayang<br />\\r\\nSa pu hati, sa su rela untuk tunggu<br />\\r\\nSa pu hati, sa su rela lepas rindu<br />\\r\\nBukan ko saja yang punya hati, bilang saja kalo mo pisah<br />\\r\\nBukan ko saja yang punya hati, tapi kenapa harus sa ?</p>\\r\\n\\r\\n<p>Ko bilang sa tunggu<br />\\r\\nKo bilang setia tu parlente<br />\\r\\nMata deng kapala<br />\\r\\nLia baku bawa ko kele</p>\\r\\n\\r\\n<p>Jang kasi harapan yang tra pasti<br />\\r\\nSa cuma minta tolong hargai<br />\\r\\nSetidaknya bilang<br />\\r\\nJang buat sa harus menunggu</p>\\r\\n\\r\\n<p>Sekarang mana-mana kalo ko pi say<br />\\r\\nSekarang juga sa stop deng ko bay<br />\\r\\nPadahal dorang yang selalu jaga frey<br />\\r\\nJadi stop bilang sa harus stay</p>\\r\\n\\r\\n<p>Ada cahaya ko kasi gelap<br />\\r\\nSisakan luka di dalam benak<br />\\r\\nSaat malam ada de yang temani saat ko tidur lelap<br />\\r\\nIngat di awal bertemu&nbsp;<br />\\r\\nKu tak sedang ingin bertamu<br />\\r\\nSaat ku tau rusak mu<br />\\r\\nTapi ku ingin jadi rusuk mu</p>\\r\\n\\r\\n<p>Ini su terjadi semua su berubah<br />\\r\\nIni su terjadi sa cuma bisa minta<br />\\r\\nJang korbankan sa hati karena ko tra cinta</p>\\r\\n\\r\\n<p>Sa tunggu ko janji ko akan pulang<br />\\r\\nSa pu harapan hilang saat sa tau ko berhenti berjuang wowwww</p>\", \"meta_title\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)\", \"category_id\": 1, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-06-21T09:02:35.000000Z\", \"category_name\": \"Lirik\", \"meta_keywords\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)\", \"created_by_alias\": \"ade lesmana\", \"meta_description\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)\"}}', '2022-08-19 02:47:10', '2022-08-19 02:47:10'),
(33, 'posts', 'updated', 12, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"name\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa\", \"intro\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa\\r\\n\\r\\nDari awal ko bilang\\r\\nKalo ko su tra sayang\\r\\nSa pu hati, sa su rela untuk tunggu\\r\\nSa pu hati, sa su rela lepas rindu\\r\\nBukan ko saja yang punya hati, bilang saja kalo mo pisah\\r\\nBukan ko saja yang punya hati, tapi kenapa harus sa?\"}, \"attributes\": {\"name\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady\", \"intro\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa\"}}', '2022-08-19 03:01:43', '2022-08-19 03:01:43'),
(34, 'posts', 'updated', 11, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"name\": \"Vicky Salamor - Ikatan\", \"intro\": \"Vicky Salamor - Ikatan. \\r\\n\\r\\nSejenak beta coba merenungkan kembali\\r\\nSaat hari itu di pelukan pertama\\r\\n*\\r\\nLalu coba lihat sekarang apa yang terjadi\\r\\nBukan lagi peluk tapi lutut bertekuk\"}, \"attributes\": {\"name\": \"Vicky Salamor\", \"intro\": \"Vicky Salamor - Ikatan.\"}}', '2022-08-19 03:02:01', '2022-08-19 03:02:01'),
(35, 'posts', 'updated', 10, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"intro\": \"Shine Of Black kembali menciptakan karya yang sangat menggugah hati dan jiwa. Dimana lagu ini sudah diupload di Channel Indonesia Timur dengan Judul \\\"Terimakasih\\\"\"}, \"attributes\": {\"intro\": \"Shine Of Black di Channel Indonesia Timur dengan Judul \\\"Terimakasih\\\"\"}}', '2022-08-19 03:02:25', '2022-08-19 03:02:25'),
(36, 'posts', 'updated', 12, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"intro\": \"Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa\"}, \"attributes\": {\"intro\": \"NEW! Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa\"}}', '2022-08-19 03:03:58', '2022-08-19 03:03:58'),
(37, 'posts', 'updated', 11, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": {\"intro\": \"Vicky Salamor - Ikatan.\"}, \"attributes\": {\"intro\": \"NEW! Vicky Salamor - Ikatan.\"}}', '2022-08-19 03:04:32', '2022-08-19 03:04:32'),
(38, 'posts', 'created', 13, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Five Minutes hingga The Titans Bakal Meriahkan Hari Jadi Wahana Media Entertainment ke-25\", \"type\": \"News\", \"intro\": \"Merayakan ulangtahun yang ke-25, label musik, Wahana Media Entertainment menggelar acara bertajuk House of Harmony. Acara tersebut rencananya bakal diselenggarakan pada Sabtu, 26 Agustus 2023, di Menara Kuningan, Jakarta Selatan.\", \"status\": 1, \"content\": \"<p>Merayakan ulangtahun yang ke-25, label musik, Wahana Media Entertainment menggelar acara bertajuk House of Harmony. Acara tersebut rencananya bakal diselenggarakan pada Sabtu, 26 Agustus 2023, di Menara Kuningan, Jakarta Selatan.<br />\\r\\n<br />\\r\\n&quot;Pada perayaan ulang tahun ke-25, Wahana Media Entertainment akan diselenggarakan tiga kegiatan, yakni Townhall Meeting, Partnership Program, dan Anniversary Party,&quot; ucap Dika, manajer Media Publications, kepada awak media, Rabu (23/8/2023).<br />\\r\\n<br />\\r\\nMusisi yang bakal memeriahkan acara tersebut tidak kaleng-kaleng. Ada Five Minutes, The Titans, Tyok Satrio, Della Firdatia, Bella Queen, Azizah Maumere, Ruth Nelly, Obin The Flops, De Poin, Jogi, Stak Brothers, Boraspati, Nia Daniaty hingga Argadho Trio.</p>\", \"meta_title\": \"Five Minutes Hingga The Titans Bakal Meriahkan Hari Jadi Wahana Media Entertainment Ke-25\", \"category_id\": 2, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2023-09-12T02:47:03.000000Z\", \"category_name\": \"news\", \"meta_keywords\": null, \"created_by_alias\": \"Rudi\", \"meta_description\": \"Kangen Band\"}}', '2023-09-12 01:47:03', '2023-09-12 01:47:03'),
(39, 'posts', 'created', 14, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"attributes\": {\"name\": \"Bidik Pasar Internasional, Label Wahana Media Komitmen Majukan Musik Etnik Tanah Air\", \"type\": \"News\", \"intro\": \"Acara yang bertajuk House of Harmony itu dimeriahkan oleh beberapa penyanyi dan band lintas generasi mulai dari  Five Minutes, The Titans, Tyok Satrio, Della Firdatia, Bella Queen, Azizah Maumere, Ruth Nelly. Selain itu, ada juga Nia Daniaty, Obin The Flops, De Poin, Jogi, Stak Brothers, Boraspati dan Argadho Trio.\", \"status\": 1, \"content\": \"<p>Acara yang bertajuk House of Harmony itu dimeriahkan oleh beberapa penyanyi dan band lintas generasi mulai dari&nbsp; Five Minutes, The Titans, Tyok Satrio, Della Firdatia, Bella Queen, Azizah Maumere, Ruth Nelly. Selain itu, ada juga Nia Daniaty, Obin The Flops, De Poin, Jogi, Stak Brothers, Boraspati dan Argadho Trio.<br />\\r\\n<br />\\r\\n&ldquo;Acaranya ada ceremonial untuk merayakan bahwa kita sudah berhasil selama 25 tahun di dunia musik ini dan di sini akan terjadi juga acara ceremonial,&rdquo; ungkap Muchtar Simanjuntak selaku CEO Wahana Media Entertainment dalam keterangannya.</p>\\r\\n\\r\\n<p>&ldquo;Kita undang artis yang sudah bekerja sama dengan Wahana selama ini dan kita mengundang The Titans, Five Minutes, ada juga nanti Nia Daniaty yang bernyanyi,&rdquo; sambungnya.<br />\\r\\n&nbsp;</p>\", \"meta_title\": \"Bidik Pasar Internasional, Label Wahana Media Komitmen Majukan Musik Etnik Tanah Air\", \"category_id\": 2, \"is_featured\": 1, \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2023-09-12T03:27:10.000000Z\", \"category_name\": \"news\", \"meta_keywords\": null, \"created_by_alias\": \"Rudi\", \"meta_description\": \"Kangen Band\"}}', '2023-09-12 02:27:10', '2023-09-12 02:27:10'),
(40, 'posts', 'updated', 13, 'App\\Models\\Post', 1, 'App\\Models\\User', '{\"old\": [], \"attributes\": []}', '2023-09-12 05:33:26', '2023-09-12 05:33:26');

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `slug` varchar(191) NOT NULL,
  `bio` text,
  `spotify_embed` text,
  `image` varchar(191) DEFAULT NULL,
  `image_url` varchar(191) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `landing` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `slug`, `bio`, `spotify_embed`, `image`, `image_url`, `position`, `landing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Safira Inema', 'safira-inema', NULL, NULL, '090822104830.jpg', 'http://landing.test/storage/artists/090822104830.jpg', 1, 'Wahana Musik', '2022-08-05 09:07:52', '2022-11-02 01:44:09', NULL),
(2, 'Vita Alvia', 'vita-alvia', NULL, NULL, '090822105133.jpg', 'http://landing.test/storage/artists/090822105133.jpg', 2, 'Wahana Musik', '2022-08-05 09:10:07', '2022-08-09 03:51:33', NULL),
(3, 'Kalia Siska', 'kalia-siska', NULL, NULL, '090822105128.jpg', 'http://landing.test/storage/artists/090822105128.jpg', 3, 'Wahana Musik', '2022-08-08 03:53:43', '2022-08-09 03:51:28', NULL),
(4, 'Bella Queen', 'bella-queen', NULL, NULL, '090822105122.jpg', 'http://landing.test/storage/artists/090822105122.jpg', 4, 'Wahana Musik', '2022-08-09 02:51:25', '2022-08-09 03:51:22', NULL),
(5, 'Shinta Arsinta', 'shinta-arsinta', NULL, NULL, '090822105117.jpg', 'http://landing.test/storage/artists/090822105117.jpg', 5, 'Wahana Musik', '2022-08-09 03:29:11', '2022-08-09 03:51:17', NULL),
(6, 'Vicky Salamor', 'vicky-salamor', NULL, NULL, '180822124334.png', 'http://landing.test/storage/artists/180822124334.png', 1, 'Indonesia Timur', '2022-08-16 06:10:18', '2022-08-18 05:43:34', NULL),
(7, 'Ona Hetharua', 'ona-hetharua', NULL, NULL, '180822124053.png', 'http://landing.test/storage/artists/180822124053.png', 2, 'Indonesia Timur', '2022-08-16 06:12:02', '2022-08-18 05:40:53', NULL),
(8, 'Pieter Saparuane', 'pieter-saparuane', NULL, NULL, '180822124245.png', 'http://landing.test/storage/artists/180822124245.png', 3, 'Indonesia Timur', '2022-08-16 08:37:26', '2022-08-18 05:42:45', NULL),
(9, 'Mellyanox', 'mellyanox', NULL, NULL, '160822153918.jpg', 'http://landing.test/storage/artists/160822153918.jpg', 4, 'Indonesia Timur', '2022-08-16 08:39:18', '2022-08-16 08:39:18', NULL),
(10, 'R. Angkotasan', 'r.-angkotasan', NULL, NULL, '160822155021.jpg', 'http://landing.test/storage/artists/160822155021.jpg', 5, 'Indonesia Timur', '2022-08-16 08:50:21', '2022-08-16 08:50:21', NULL),
(11, 'JEAN CHRISTY', 'jean-christy', NULL, NULL, '160822155057.jpg', 'http://landing.test/storage/artists/160822155057.jpg', 7, 'Indonesia Timur', '2022-08-16 08:50:57', '2022-08-16 08:50:57', NULL),
(12, 'Melandy\'j', 'melandy\'j', NULL, NULL, '160822155135.jpg', 'http://landing.test/storage/artists/160822155135.jpg', 8, 'Indonesia Timur', '2022-08-16 08:51:35', '2022-08-16 08:51:35', NULL),
(13, 'Glory Satya', 'glory-satya', 'Southern Avenue is a Memphis street that runs from the easternmost part of the city limits all the way to Soulsville, the original home of Stax Records. Southern Avenue is also the name of a fiery young Memphis quintet that embodies its home city\'s soul, blues and gospel traditions.', '2tmiMc3Kh5cIfaFmChmI7z', '021122123834.png', 'http://landing.test/storage/artists/021122123834.png', 1, 'Wahana Production', '2022-10-28 02:16:10', '2022-11-16 01:41:12', NULL),
(14, 'Andika Mahesa', 'andika-mahesa', 'Southern Avenue is a Memphis street that runs from the easternmost part of the city limits all the way to Soulsville, the original home of Stax Records. Southern Avenue is also the name of a fiery young Memphis quintet that embodies its home city\'s soul, blues and gospel traditions..', NULL, '021122123737.png', 'http://landing.test/storage/artists/021122123737.png', 2, 'Wahana Production', '2022-11-02 01:45:11', '2022-11-02 05:37:37', NULL),
(15, 'Luki', 'luki', 'Southern Avenue is a Memphis street that runs from the easternmost part of the city limits all the way to Soulsville, the original home of Stax Records. Southern Avenue is also the name of a fiery young Memphis quintet that embodies its home city\'s soul, blues and gospel traditions.', NULL, '021122123753.png', 'http://landing.test/storage/artists/021122123753.png', 3, 'Wahana Production', '2022-11-02 04:12:09', '2022-11-02 05:37:53', NULL),
(16, 'Anima', 'anima', NULL, NULL, '021122124112.png', 'http://landing.test/storage/artists/021122124112.png', 4, 'Wahana Production', '2022-11-02 05:41:12', '2022-11-02 05:41:12', NULL),
(17, 'Sharen Fernandes', 'sharen-fernandes', NULL, NULL, '021122124140.png', 'http://landing.test/storage/artists/021122124140.png', 5, 'Wahana Production', '2022-11-02 05:41:40', '2022-11-02 05:41:40', NULL),
(18, 'test', 'test', 'test', '2tmiMc3Kh5cIfaFmChmI7z', '161122084201.png', 'http://landing.test/storage/artists/161122084201.png', 1, 'Wahana Production', '2022-11-16 01:42:01', '2022-11-16 01:42:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('single','ep','album') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'single',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `artis_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `composer` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `produced_by` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_label` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_genre` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `production_year` year(4) DEFAULT '2022',
  `first_release_date` date DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `lyric_language` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `artwork_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lyric_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `catalog_files`
--

CREATE TABLE `catalog_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catalog_id` bigint(20) UNSIGNED NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `order`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lirik', 'lirik', 'Lirik lagu', '1', 1, 1, 1, NULL, '2022-06-20 06:27:25', '2022-06-21 03:53:13', NULL),
(2, 'news', 'news', 'tesing news', '2', 1, 1, 1, NULL, '2022-06-20 06:32:08', '2022-06-20 06:32:08', NULL),
(3, 'new highlight', 'test', 'test', '3', 1, 1, 1, NULL, '2022-07-26 06:07:22', '2022-07-26 06:07:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `commentable_id` bigint(20) UNSIGNED DEFAULT NULL,
  `commentable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `moderated_by` int(10) UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `message` text,
  `landing` varchar(191) DEFAULT NULL,
  `is_send` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `email`, `name`, `subject`, `message`, `landing`, `is_send`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'syifa@gmail.com', 'Spongeboob', 'test', 'test dfsfd sdf', NULL, 0, '2022-06-17 09:17:40', '2022-06-17 09:17:40', NULL),
(28, 'adelesmanahutabarat@gmail.com', 'asd', 'dsf', 'test', NULL, 1, '2022-08-11 09:02:36', '2022-08-11 09:02:36', NULL),
(29, 'test@gmail.com', 'asdf', 'dfd', 'asdf', NULL, 1, '2022-08-11 09:03:14', '2022-08-11 09:03:14', NULL),
(30, 'test@gmail.com', 'tes', 'asdf', 'dfdfdf', NULL, 1, '2022-08-11 09:03:56', '2022-08-11 09:03:56', NULL),
(31, 'ade@gmail.com', 'ald', 'secdf', 'sdf4', NULL, 1, '2022-08-11 09:06:39', '2022-08-11 09:06:39', NULL),
(32, 'adelesmanahutabarat@gmail.com', 'asfd', 'asdf33', 'aa3', NULL, 1, '2022-08-11 09:10:29', '2022-08-11 09:10:29', NULL),
(33, 'adelesmanahutabarat@gmail.com', 'asfd', 'asdf33', 'aa3', NULL, 1, '2022-08-11 09:10:29', '2022-08-11 09:10:29', NULL),
(34, 'ade@gmail.com', 'ade', 'test subj', 'test messe', NULL, 1, '2022-08-11 09:12:21', '2022-08-11 09:12:21', NULL),
(35, 'adelesmanahutabarat@gmail.com', 'asdf', '4wt5sdf', 'asdfasdft', NULL, 1, '2022-08-11 09:21:17', '2022-08-11 09:21:17', NULL),
(36, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asfd', NULL, 1, '2022-08-11 09:22:07', '2022-08-11 09:22:07', NULL),
(37, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asfd', NULL, 1, '2022-08-11 09:22:07', '2022-08-11 09:22:07', NULL),
(38, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:22:41', '2022-08-11 09:22:41', NULL),
(39, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:22:41', '2022-08-11 09:22:41', NULL),
(40, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:35:20', '2022-08-11 09:35:20', NULL),
(41, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:35:20', '2022-08-11 09:35:20', NULL),
(42, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:35:31', '2022-08-11 09:35:31', NULL),
(43, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:35:31', '2022-08-11 09:35:31', NULL),
(44, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:36:02', '2022-08-11 09:36:02', NULL),
(45, 'adelesmanahutabarat@gmail.com', 'asdf', 'asdf', 'asdfasdf', NULL, 1, '2022-08-11 09:36:02', '2022-08-11 09:36:02', NULL),
(46, 'fsdfs@dasda.cpm', 'rfs', 'fsd', 'fsdfs', NULL, 1, '2022-08-11 09:36:21', '2022-08-11 09:36:21', NULL),
(47, 'fsdfs@dasda.cpm', 'rfs', 'fsd', 'fsdfs', NULL, 1, '2022-08-11 09:36:21', '2022-08-11 09:36:21', NULL),
(48, 'adelesmanahutabarat@gmail.com', 'dasa', 'das', 'dasda', NULL, 1, '2022-08-11 09:37:00', '2022-08-11 09:37:00', NULL),
(49, 'adelesmanahutabarat@gmail.com', 'rwerw', 'rwer', 'rewrw', NULL, 1, '2022-08-11 09:37:25', '2022-08-11 09:37:25', NULL),
(50, 'test@gmail.com', 'test', 'asdf', 'sadf', NULL, 1, '2022-08-11 09:38:15', '2022-08-11 09:38:15', NULL),
(51, 'ade@gmail.com', 'ade', 'test subj', 'test messe', NULL, 1, '2022-08-13 03:22:04', '2022-08-13 03:22:04', NULL),
(52, 'ade@gmail.com', 'adew', 'test subj', 'test messe', NULL, 1, '2022-08-13 03:23:26', '2022-08-13 03:23:26', NULL),
(53, 'ade@gmail.com', 'adew', 'test subj', 'test messe', NULL, 1, '2022-08-13 03:27:42', '2022-08-13 03:27:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_elements`
--

CREATE TABLE `content_elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_contents` int(11) NOT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `media` text COLLATE utf8mb4_unicode_ci,
  `media_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `elements`
--

CREATE TABLE `elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci,
  `position` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `title` varchar(191) NOT NULL,
  `image` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `landing` varchar(191) NOT NULL,
  `category` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `image`, `position`, `landing`, `category`, `created_at`, `updated_at`, `deleted_at`) VALUES
(8, 'test ghag gg', 'http://landing.test/storage/galleries/020822094935.jpg', 34, 'Wahana Record', 'Gallery', '2022-07-26 03:12:55', '2022-08-02 02:49:35', NULL),
(9, 'Ditinggal Pas Sayang-sayangnya', 'http://landing.test/storage/galleries/030822100202.png', 1, 'Wahana Musik', 'Banner', '2022-07-29 03:00:35', '2022-08-03 03:02:02', NULL),
(10, 'Gaun Merah - Vita Alvia', 'http://landing.test/storage/galleries/030822102011.png', 2, 'Wahana Musik', 'Banner', '2022-07-29 03:01:15', '2022-08-03 03:20:11', NULL),
(11, 'Apakah Itu Cinta', 'http://landing.test/storage/galleries/020822095023.jpg', 3, 'Wahana Musik', 'Gallery', '2022-07-29 03:01:46', '2022-08-02 03:25:01', NULL),
(12, 'Seharusnya Aku', 'http://landing.test/storage/galleries/030822101038.png', 4, 'Wahana Musik', 'Banner', '2022-07-29 03:06:50', '2022-08-03 03:10:38', NULL),
(13, 'Cinta Sampai Mati', 'http://landing.test/storage/galleries/020822095117.jpg', 3, 'Kangen Band', 'Banner', '2022-08-01 03:48:44', '2022-08-03 03:35:59', NULL),
(14, 'test', 'http://landing.test/storage/galleries/020822094243.png', 3, 'Wahana Record', 'Banner', '2022-08-02 02:42:43', '2022-08-02 02:42:43', NULL),
(15, 'BERBEZA KASTA | KALIA SISKA ft SKA 86 | DJ KENTRUNG', 'http://landing.test/storage/galleries/030822103518.png', 6, 'Wahana Musik', 'Banner', '2022-08-03 03:35:18', '2022-08-03 03:35:31', NULL),
(16, 'Vicky Salamor', 'http://landing.test/storage/galleries/180822162335.png', 1, 'Indonesia Timur', 'Gallery', '2022-08-18 09:12:58', '2022-08-18 09:23:35', NULL),
(17, 'Ona Hetharua', 'http://landing.test/storage/galleries/180822162738.png', 7, 'Indonesia Timur', 'Gallery', '2022-08-18 09:13:23', '2022-08-19 02:32:59', NULL),
(18, 'Ghosting', 'http://landing.test/storage/galleries/190822092120.png', 2, 'Indonesia Timur', 'Gallery', '2022-08-18 09:13:50', '2022-08-19 02:27:39', NULL),
(19, 'Terimakasih', 'http://landing.test/storage/galleries/190822092253.png', 3, 'Indonesia Timur', 'Gallery', '2022-08-18 09:14:39', '2022-08-19 02:27:51', NULL),
(20, 'Sa Takut', 'http://landing.test/storage/galleries/190822092920.png', 5, 'Indonesia Timur', 'Gallery', '2022-08-19 02:29:20', '2022-08-19 02:29:20', NULL),
(21, 'Kenapa Harus Sa', 'http://landing.test/storage/galleries/190822093058.png', 6, 'Indonesia Timur', 'Gallery', '2022-08-19 02:30:58', '2022-08-19 02:32:00', NULL),
(22, 'Slide 1', 'http://landing.test/storage/galleries/281022091152.jpg', 1, 'Wahana Production', 'Banner', '2022-10-27 03:53:05', '2022-10-28 02:11:53', NULL),
(23, 'Slide 2', 'http://landing.test/storage/galleries/311022102156.png', 2, 'Wahana Production', 'Banner', '2022-10-27 04:01:38', '2022-10-31 03:21:57', NULL),
(24, 'Slide 3', 'http://landing.test/storage/galleries/281022091210.png', 3, 'Wahana Production', 'Banner', '2022-10-27 04:02:03', '2022-10-28 02:12:10', NULL),
(25, 'Background Upcoming Show | Position harus urutan 1', 'http://landing.test/storage/galleries/281022120725.png', 1, 'Wahana Production', 'Background', '2022-10-28 02:41:17', '2022-10-28 05:07:25', NULL),
(26, 'Background New Music Video | Position harus urutan 2', 'http://landing.test/storage/galleries/311022102107.png', 2, 'Wahana Production', 'Background', '2022-10-28 03:36:57', '2022-10-31 03:21:07', NULL),
(27, 'Background Contact | Position harus urutan ke 3', 'http://landing.test/storage/galleries/281022120956.png', 3, 'Wahana Production', 'Background', '2022-10-28 05:09:56', '2022-10-28 05:09:56', NULL),
(28, 'Background Head | Position harus urutan ke 4', 'http://landing.test/storage/galleries/031122095209.png', 4, 'Wahana Production', 'Background', '2022-10-29 03:02:13', '2022-11-03 02:52:09', NULL),
(29, 'Glory Satya', 'http://landing.test/storage/galleries/311022100306.png', 1, 'Wahana Production', 'Gallery', '2022-10-29 04:24:30', '2022-10-31 03:03:06', NULL),
(30, 'Kangen Band', 'http://landing.test/storage/galleries/311022100605.png', 2, 'Wahana Production', 'Gallery', '2022-10-29 04:25:10', '2022-10-31 03:06:25', NULL),
(31, 'The Titans', 'http://landing.test/storage/galleries/311022100459.png', 3, 'Wahana Production', 'Gallery', '2022-10-29 04:26:55', '2022-10-31 03:04:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries_artist`
--

CREATE TABLE `galleries_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries_artist`
--

INSERT INTO `galleries_artist` (`id`, `artist_id`, `image`, `image_url`, `landing`, `created_at`, `updated_at`) VALUES
(1, 1, 'h', NULL, 'Wahana Production', '2023-06-12 05:50:03', '2023-06-12 05:50:03'),
(5, 1, '120623132433.png', 'http://localhost:9000/storage/galleriesartis/1206231607595222.jpg', 'Wahana Production', '2023-06-12 06:24:33', '2023-06-12 09:07:59'),
(6, 1, '120623132433.png', 'http://localhost:9000/storage/galleriesartis/1306230821364056.png', 'Wahana Production', '2023-06-12 06:24:33', '2023-06-13 01:21:36'),
(7, 1, '1206231352445314.png', 'http://localhost:9000/storage/galleriesartis/1206231540071822.png', 'DL Record', '2023-06-12 06:52:44', '2023-06-12 08:40:07'),
(8, 1, '1206231352445300.png', 'http://localhost:9000/storage/galleriesartis/1206231352445300.png', 'Wahana Production', '2023-06-12 06:52:44', '2023-06-12 06:52:44'),
(9, 13, '1306231453393564.png', 'http://localhost:9000/storage/galleriesartis/1306231453393564.png', 'Wahana Production', '2023-06-13 07:53:39', '2023-06-13 07:53:39'),
(10, 13, '1306231453396121.png', 'http://localhost:9000/storage/galleriesartis/1406231531265214.jpg', 'Wahana Production', '2023-06-13 07:53:39', '2023-06-14 08:31:26'),
(13, 13, '140623122629517.jpg', 'http://localhost:9000/storage/galleriesartis/140623122629517.jpg', 'Wahana Production', '2023-06-14 05:26:29', '2023-06-14 05:26:29'),
(14, 13, '1406231226292094.png', 'http://localhost:9000/storage/galleriesartis/1406231226292094.png', 'Wahana Production', '2023-06-14 05:26:29', '2023-06-14 05:26:29');

-- --------------------------------------------------------

--
-- Table structure for table `headers`
--

CREATE TABLE `headers` (
  `id` int(11) NOT NULL,
  `img_banner` varchar(191) DEFAULT NULL,
  `track_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `headers`
--

INSERT INTO `headers` (`id`, `img_banner`, `track_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '160622163253.png', 5, '2022-06-16 09:09:08', '2022-06-16 09:32:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `joins`
--

CREATE TABLE `joins` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `jenis_perusahaan` varchar(255) DEFAULT NULL,
  `url_channel` varchar(255) DEFAULT NULL,
  `jenis_channel` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `pesan` varchar(255) DEFAULT NULL,
  `is_email` bit(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, '97e76e86-5ec8-4b21-91e3-5381c7df597b', 'users', 'default', 'default.jpg', 'image/jpeg', 'public', 'public', 18760, '[]', '[]', '[]', 1, '2022-06-21 10:17:17', '2022-06-21 10:17:17'),
(2, 'App\\Models\\User', 6, '14b451b1-45b2-4a87-b2ae-ee0cfbad6d40', 'users', 'logo-wahanaproduction', 'logo-wahanaproduction.png', 'image/png', 'public', 'public', 37768, '[]', '[]', '[]', 2, '2022-06-22 07:44:41', '2022-06-22 07:44:41'),
(4, 'App\\Models\\User', 7, '4e55a155-ebb0-40b5-96a9-c51c5e916734', 'users', 'red-arrow-5a3a4e2a297520.0066231215137705381698', 'red-arrow-5a3a4e2a297520.0066231215137705381698.jpg', 'image/jpeg', 'public', 'public', 10582, '[]', '[]', '[]', 3, '2022-08-22 03:59:59', '2022-08-22 03:59:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_19_152418_create_permission_tables', 1),
(5, '2020_02_19_173115_create_activity_log_table', 1),
(6, '2020_02_19_173641_create_settings_table', 1),
(7, '2020_02_19_173700_create_userprofiles_table', 1),
(8, '2020_02_19_173711_create_notifications_table', 1),
(9, '2020_02_22_115918_create_user_providers_table', 1),
(10, '2020_10_27_155557_create_media_table', 1),
(11, '2021_06_14_090652_create_catalogs_table', 1),
(12, '2021_06_14_092456_create_catalog_files_table', 1),
(13, '2021_06_18_152220_create_withdraws_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(5, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `param_group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `param_memo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parameters`
--

INSERT INTO `parameters` (`id`, `param_group`, `param_key`, `param_text`, `param_memo`, `created_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Landing', 'Indonesia Timur', 'Indonesia Timur', '', NULL, '2022-07-06 08:43:18', '2022-07-08 02:08:30', NULL),
(2, 'Landing', 'Teras Musik', 'Teras Musik', NULL, NULL, '2022-07-07 05:47:35', '2022-07-19 06:21:24', NULL),
(3, 'CHANNEL', 'test key lagi 1', 'param text lagi 2', 'param memot test 3', NULL, '2022-07-07 05:48:10', '2022-07-07 07:37:52', NULL),
(4, 'CHANNEL', 'UCA1j_75REY9xurdvnr_H8ig', 'Teras Musik', 'Channel Teras Musik', NULL, '2022-07-07 08:28:47', '2022-07-07 08:28:47', NULL),
(5, 'Landing', 'Wahana Musik', 'Wahana Musik', NULL, NULL, '2022-07-19 06:27:23', '2022-07-19 06:27:23', NULL),
(6, 'Landing', 'Wahana Record', 'Wahana Record', NULL, NULL, '2022-07-19 06:27:51', '2022-07-19 06:27:51', NULL),
(7, 'Landing', 'DL Record', 'DL Record', NULL, NULL, '2022-07-19 06:28:24', '2022-07-19 06:28:24', NULL),
(8, 'Landing', 'Kangen Band', 'Kangen Band', NULL, NULL, '2022-07-20 06:41:52', '2022-07-20 06:41:52', NULL),
(10, 'Platform', 'Facebook', 'Facebook', NULL, 1, '2022-07-28 04:02:36', '2022-07-28 03:04:29', NULL),
(11, 'Platform', 'Instagram', 'Instagram', NULL, NULL, '2022-07-28 03:04:12', '2022-07-28 03:04:12', NULL),
(12, 'Platform', 'Youtube', 'Youtube', NULL, NULL, '2022-07-28 03:04:46', '2022-07-28 03:04:46', NULL),
(13, 'Platform', 'TikTok', 'TikTok', NULL, NULL, '2022-07-28 03:05:19', '2022-07-28 03:05:19', NULL),
(14, 'Platform', 'Twitter', 'Twitter', NULL, NULL, '2022-07-28 03:07:22', '2022-07-28 03:07:22', NULL),
(15, 'Gallery_category', 'Gallery', 'Gallery', NULL, NULL, '2022-07-29 08:31:20', '2022-07-29 08:31:20', NULL),
(16, 'Gallery_category', 'About', 'About', NULL, NULL, '2022-07-29 08:31:34', '2022-07-29 08:31:34', NULL),
(17, 'Gallery_category', 'Banner', 'Banner', NULL, NULL, '2022-08-01 07:16:48', '2022-08-01 07:17:39', NULL),
(18, 'Landing', 'Wahana Production', 'Wahana Production', 'Wahana Production', NULL, '2022-10-27 02:34:27', '2022-10-27 02:34:27', NULL),
(19, 'Gallery_category', 'Background', 'Background', 'Background', NULL, '2022-10-28 02:44:19', '2022-10-28 02:44:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_backend', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(2, 'edit_settings', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(3, 'view_logs', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(4, 'view_users', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(5, 'add_users', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(6, 'edit_users', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(7, 'delete_users', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(8, 'restore_users', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(9, 'block_users', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(10, 'view_roles', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(11, 'add_roles', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(12, 'edit_roles', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(13, 'delete_roles', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(14, 'restore_roles', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(15, 'view_backups', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(16, 'add_backups', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(17, 'create_backups', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(18, 'download_backups', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(19, 'delete_backups', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(20, 'view_posts', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(21, 'add_posts', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(22, 'edit_posts', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(23, 'delete_posts', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(24, 'restore_posts', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(25, 'view_categories', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(26, 'add_categories', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(27, 'edit_categories', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(28, 'delete_categories', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(29, 'restore_categories', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(30, 'view_tags', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(31, 'add_tags', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(32, 'edit_tags', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(33, 'delete_tags', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(34, 'restore_tags', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(35, 'view_comments', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(36, 'add_comments', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(37, 'edit_comments', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(38, 'delete_comments', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(39, 'restore_comments', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(40, 'view_headers', 'web', '2022-06-21 11:28:57', '2022-06-21 11:29:14'),
(41, 'view_youtubes', 'web', '2022-06-21 11:29:04', '2022-06-21 11:29:17'),
(42, 'view_tracks', 'web', '2022-06-21 11:29:07', '2022-06-21 11:29:19'),
(43, 'view_galleries', 'web', '2022-06-21 11:29:09', '2022-06-21 11:29:22'),
(44, 'add_headers', 'web', '2022-06-22 05:27:10', '2022-06-22 05:27:10'),
(45, 'add_galleries', 'web', '2022-07-28 06:21:58', NULL),
(46, 'view_sosmeds', 'web', '2022-07-28 06:21:58', NULL),
(47, 'add_sosmeds', 'web', '2022-07-28 06:21:58', NULL),
(48, 'edit_sosmeds', 'web', '2022-07-28 06:21:58', NULL),
(49, 'edit_galleries', 'web', '2022-06-21 11:29:22', NULL),
(50, 'add_youtubes', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(51, 'edit_youtubes', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(52, 'add_tracks', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(53, 'edit_tracks', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(54, 'add_artists', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(55, 'edit_artists', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(56, 'view_artists', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(57, 'view_sosmedartists', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(58, 'add_sosmedartists', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(59, 'edit_sosmedartists', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(60, 'delete_sosmedartists', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int(11) DEFAULT NULL,
  `featured_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_og_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `moderated_by` int(10) UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_alias` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `landing`, `slug`, `intro`, `content`, `type`, `category_id`, `category_name`, `is_featured`, `featured_image`, `meta_title`, `meta_keywords`, `meta_description`, `meta_og_image`, `meta_og_url`, `hits`, `order`, `status`, `moderated_by`, `moderated_at`, `created_by`, `created_by_name`, `created_by_alias`, `updated_by`, `deleted_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lirik Lagu Cinta Sampai Mati', 'Wahana Musik', 'lirik-lagu-cinta-sampai-mati', 'Lagu yang diciptakan oleh istri dari gitaris Kangen Band ini tengah viral di aplikasi TikTok dengan kutipan lirik: dengarkanlah di sepanjang malam aku berdoa, bersujud dan lalu aku meminta, semoga kita bersama.', '<p>Lagu yang diciptakan oleh istri dari gitaris Kangen Band ini tengah viral di aplikasi TikTok dengan kutipan lirik: dengarkanlah di sepanjang malam aku berdoa, bersujud dan lalu aku meminta, semoga kita bersama.</p>\r\n\r\n<p>Duhai engkau sang belahan jiwa<br />\r\nNamamu terukir dalam pusara<br />\r\nDi setiap langkah ku selalu berdoa<br />\r\nSemoga kita bersama</p>\r\n\r\n<p>Duhai engkau tambatan hatiku<br />\r\nLabuhkanlah cintamu di hidupku<br />\r\nKu ingin kau tahu betapa merindu<br />\r\nHiduplah engkau denganku</p>\r\n\r\n<p>Dengarkanlah<br />\r\nDi sepanjang malam aku berdoa<br />\r\nBersujud dan lalu aku meminta<br />\r\nSemoga kita bersama</p>\r\n\r\n<p>Dengarkanlah<br />\r\nDi sepanjang malam aku berdoa<br />\r\nCintaku untukmu selalu terjaga<br />\r\nDan aku pasti setia</p>\r\n\r\n<p>Ha</p>\r\n\r\n<p>Duhai engkau tambatan hatiku<br />\r\nLabuhkanlah cintamu di hidupku<br />\r\nKu ingin kau tahu betapa merindu<br />\r\nHiduplah engkau denganku</p>\r\n\r\n<p>Dengarkanlah<br />\r\nDi sepanjang malam aku berdoa<br />\r\nBersujud dan lalu aku meminta<br />\r\nSemoga kita bersama</p>\r\n\r\n<p>Dengarkanlah<br />\r\nDi sepanjang malam aku berdoa<br />\r\nCintaku untukmu selalu terjaga<br />\r\nDan aku pasti setia</p>\r\n\r\n<p>Dengarkanlah<br />\r\nDi sepanjang malam aku berdoa<br />\r\nBersujud dan lalu aku meminta<br />\r\nSemoga kita bersama</p>\r\n\r\n<p>Dengarkanlah<br />\r\nDi sepanjang malam aku berdoa<br />\r\nCintaku untukmu selalu terjaga<br />\r\nDan aku pasti setia dengarkanlah</p>', 'Article', 1, 'Lirik', 1, '/storage/files/banner3.png', 'Cinta Sampai Mati', 'Lirik Lagu Cinta Sampai Mati', 'Dengarkanlah disepanjang malam aku berdoa', 'cinta sampai mati', 'cinta sampai mati', 0, 1, 1, NULL, NULL, 1, 'Super Admin', 'Ade Lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-06-20 07:03:40', '2022-08-12 05:43:39', NULL),
(2, 'Cinta Sampai Mati 2', 'Kangen Band', 'cinta-sampai-mati-2', 'Lagu Cinta Sampai Mati 2 adalah pelengkap dari single sebelumnya dengan balutan syair yang lebih mendalam dan lebih unik nya lagi lagu ini hadir diciptakan oleh Dodhy gitaris Kangen Band.', '<p>Lagu Cinta Sampai 2 merupakan single terbaru dari Andika Kangen Band yang baru dirilis beberapa hari lalu.</p>\r\n\r\n<p>Lagu yang di unggah di kanal YouTube Kangen Band Official ini, sudah ditonton lebih dari 2,6 juta penonton, dan masuk tranding 14 di YouTube.</p>\r\n\r\n<p>Lagu&nbsp;<a href=\"https://literasinews.pikiran-rakyat.com/tag/Cinta%20Sampai%20Mati%202\">Cinta Sampai Mati 2</a>&nbsp;adalah pelengkap dari single sebelumnya dengan balutan syair yang lebih mendalam dan lebih unik nya lagi lagu ini hadir diciptakan oleh Dodhy gitaris Kangen Band.</p>\r\n\r\n<p>Merupakan balasan dari lagu yang sebelumnya lagu &quot;Cinta Sampai Mati&quot; yang diciptakan oleh istri dari Dodhy, seakan menjadi jawaban dari kisah cinta abadi dari pasangan suami istri ini.</p>\r\n\r\n<p>Kamu adalah makhluk yang kutuju<br />\r\nSelain kamu, aku tidak mau<br />\r\nKar&#39;na nyaman ada di dekatmu<br />\r\nSandaran hatiku</p>\r\n\r\n<p>Bersama kita arungi bahtera<br />\r\nMenjaga cinta dengan selayaknya<br />\r\nRasa nyaman bila di dekatmu<br />\r\nTambatan hatiku</p>\r\n\r\n<p>Dengan bismillah<br />\r\nAku jaga kesucian cinta<br />\r\nKu berjanji tidak akan mendua<br />\r\nKu pasti akan setia</p>\r\n\r\n<p>Dan dengan bismillah<br />\r\nSemoga bisa menentramkan jiwa<br />\r\nTuntunlah cinta kami sampai surga<br />\r\nDuhai Sang Pemilik Cinta<br />\r\nDengan bismillah</p>\r\n\r\n<p>Wo-oh, ah-ah<br />\r\nHa-ah-ah</p>\r\n\r\n<p>Bersama kita arungi bahtera<br />\r\nMenjaga cinta dengan selayaknya<br />\r\nRasa nyaman bila di dekatmu<br />\r\nTambatan hatiku (wo-oh-oh)</p>\r\n\r\n<p>Dengan bismillah<br />\r\nAku jaga kesucian cinta<br />\r\nKu berjanji tidak akan mendua<br />\r\nKu pasti akan setia</p>\r\n\r\n<p>Dan dengan bismillah<br />\r\nSemoga bisa menentramkan jiwa<br />\r\nTuntunlah cinta kami sampai surga<br />\r\nDuhai Sang Pemilik Cinta</p>\r\n\r\n<p>Dan dengan bismillah (cintai dengan bismillah)<br />\r\nAku jaga kesucian cinta<br />\r\nKu berjanji tidak akan mendua<br />\r\nKu pasti akan setia, wo-oh</p>\r\n\r\n<p>Dan dengan bismillah (cintai dengan bismillah)<br />\r\nSemoga bisa menentramkan jiwa<br />\r\nTuntunlah cinta kami sampai surga<br />\r\nDuhai Sang Pemilik Cinta</p>\r\n\r\n<p>Dengan bismilah</p>', 'Article', 1, 'Lirik', 1, '/storage/files/maxresdefault (2).jpg', 'Cinta Sampai Mati 2', 'Cinta Sampai Mati 2', 'Dengan bismillah Aku jaga kesucian cinta', 'Dengan bismillah Aku jaga kesucian cinta', 'Dengan bismillah Aku jaga kesucian cinta', 0, 2, 1, NULL, NULL, 1, 'Super Admin', 'Ade Lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-06-21 09:44:35', '2022-08-10 06:07:13', NULL),
(4, 'Kamu Gila', 'Kangen Band', 'kamu-gila', 'Hari ini aku kerumahmu\r\nKu mohon kau jangan pergi dulu\r\nKarna kita harus bicara\r\nBiar tak ada yang terluka\r\n\r\nEngkau sangat tega buatku terluka\r\nTidak punya rasa sungguh ku kecewa', '<p>Hari ini aku kerumahmu<br />\r\nKu mohon kau jangan pergi dulu<br />\r\nKarna kita harus bicara<br />\r\nBiar tak ada yang terluka</p>\r\n\r\n<p>Engkau sangat tega buatku terluka<br />\r\nTidak punya rasa sungguh ku kecewa</p>\r\n\r\n<p>Salah apakah aku padamu<br />\r\nDan dimanakah letak dosaku<br />\r\nSehingga engkau pergi jauh dari kehidupanku</p>\r\n\r\n<p>Sayang kau hancurkan semuanya<br />\r\nDan kau buat hatiku terluka<br />\r\nJujurku sangat kecewa dengan sikapmu semua<br />\r\nKamu gila</p>\r\n\r\n<p>Karena kita harus bicara<br />\r\nBiar tak ada yang terluka<br />\r\nEngkau sangat tega buatku terluka<br />\r\nTidak punya rasa sungguh ku kecewa</p>\r\n\r\n<p>Salah apakah aku padamu<br />\r\nDan dimanakah letak dosaku<br />\r\nSehingga engkau pergi jauh dari kehidupanku</p>\r\n\r\n<p>Sayang kau hancurkan semuanya<br />\r\nDan kau buat hatiku terluka<br />\r\nJujurku sangat kecewa dengan sikapmu semua<br />\r\nKamu gila</p>', 'Article', 1, 'Lirik', 1, '/storage/files/THUMBNAIL YOUTUBE (1).png', 'Test Meta Title', 'test meta keywords test', 'Kamu Gila Kangen Band', 'Kangen Band Kamu Gila', 'test meta url test', 0, 3, 1, NULL, NULL, 1, 'Super Admin', 'ade lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-07-04 02:39:50', '2022-08-10 06:07:05', NULL),
(5, 'Cinta Sampai Mati 3', 'Wahana Musik', 'lirik-lagu-cinta-sampai-mati', 'Hari ini aku kerumahmu\r\nKu mohon kau jangan pergi dulu\r\nKarna kita harus bicara\r\nBiar tak ada yang terluka\r\n\r\nEngkau sangat tega buatku terluka\r\nTidak punya rasa sungguh ku kecewa', '<p>Hari ini aku kerumahmu<br />\r\nKu mohon kau jangan pergi dulu<br />\r\nKarna kita harus bicara<br />\r\nBiar tak ada yang terluka</p>\r\n\r\n<p>Engkau sangat tega buatku terluka<br />\r\nTidak punya rasa sungguh ku kecewa</p>', 'Feature', 1, 'Lirik', 1, '/storage/files/Screenshot_20.png', 'Test Meta Title', 'Cinta Sampai Mati 2', 'Kamu Gila Kangen Band', 'test meta image', 'test meta url test', 0, 4, 1, NULL, NULL, 1, 'Super Admin', 'ade lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-07-04 03:14:12', '2022-08-12 05:43:21', NULL),
(6, 'Test dengan landing', 'Kangen Band', 'test-denga-landing', 'test intro dengan landing', '<p>test content dengan landing</p>', 'Feature', 3, 'new highlight', 0, '/storage/files/1282415912.jpg', 'Cinta Sampai Mati 2', 'Cinta Sampai Mati 2', 'test meta description', 'test meta image', 'cinta sampai mati', 0, 5, 1, NULL, NULL, 1, 'Super Admin', 'ade', 1, NULL, '2022-06-21 08:02:35', '2022-07-26 06:09:09', '2022-07-26 06:09:34', NULL),
(7, 'Jamu Pegel Mlarat', 'Wahana Musik', 'jamu-pegel-mlarat', 'Dek reneo tak kandani\r\nOjo menjap menjep nggatelne ati\r\nDek ndang gawekno kopi\r\nNdasku ngelu ket wingi durung mari\r\nYen dikongkon mbok yo ndang dilakoni\r\nOjo tambah kok tinggal nonton tipi', '<p>&nbsp;</p>\r\n\r\n<p>Dek reneo tak kandani</p>\r\n\r\n<p>Ojo menjap menjep nggatelne ati</p>\r\n\r\n<p>Dek ndang gawekno kopi</p>\r\n\r\n<p>Ndasku ngelu ket wingi durung mari Yen</p>\r\n\r\n<p>dikongkon mbok yo ndang dilakoni Ojo tambah kok tinggal</p>\r\n\r\n<p>nonton tipi Mas mbok yo koe ngerti Duit sing endi</p>\r\n\r\n<p>digawe tuku kopi Belanjane gak mbejaji Bumbu dapur</p>\r\n\r\n<p>kabeh entek gari terasi Aku isin mbendino ditagihi Sok</p>\r\n\r\n<p>kapan utangmu kok sauri Tak rewangi kerjo nganti bengi</p>\r\n\r\n<p>Nanging koyone yo ora mesti Tak rewangi ngliter tekan</p>\r\n\r\n<p>bali Nanging koyone yo ora mesti Sakjane aku wes ora</p>\r\n\r\n<p>kuat Sakjane aku wes pegel mlarat Kepengen nduwe</p>\r\n\r\n<p>sedan mengkilap Duit sak milyat lan omah tingkat</p>\r\n\r\n<p>Sakjane aku yo ora kuat Sakjane aku yo emoh mlarat</p>\r\n\r\n<p>Golekno jamu pegel mlarat Sopo ngerti besok dadi konglomerat<br />\r\n&nbsp;</p>', 'Article', 1, 'Lirik', 1, '/storage/files/mlarat.jpg', 'Jamu Pegel Mlarat - Susi Permatasari Feat Abimanyu Feat Be One Project', NULL, 'Kangen Band', 'Dek reneo tak kandani', 'Dek reneo tak kandani', 0, 6, 1, NULL, NULL, 1, 'Super Admin', 'ade lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-08-10 05:58:22', '2022-08-10 09:55:41', NULL),
(8, 'Lirik Lagu Malam Pertama', 'Wahana Musik', 'lirik-lagu-malam-pertama', 'Setelah sekian lamanya\r\nDi malam pertama ini\r\nKau yang ku bangga banggakan\r\nKu tlah mendapat kesucianmu', '<p>Setelah sekian lamanya Di malam pertama ini Kau yang ku bangga banggakan Ku tlah mendapat kesucianmu Dimana kesetiaanmu Dimana kehormatanmu Janjimu selalu setia Ternyata kau menebar luka Dia makan nangkanya Ku dapat getahnya Kau dustai aku Ternyata selingkuh Betapa teganya dirimu Kau khianati kesetiaanku Ternyata diriku tertipu Dengan kepolosan wajahmu Aku yang selalu percaya Dan menjaga cinta kita Kini sirnalah sudah Harapanku</p>', 'Article', 1, 'Lirik', 1, '/storage/files/mama pertama.jpg', 'Setelah Sekian Lamanya Di Malam Pertama Ini', 'Cinta Sampai Mati 2', 'Setelah sekian lamanya Di malam pertama ini', 'Setelah sekian lamanya Di malam pertama ini', 'Setelah sekian lamanya Di malam pertama ini', 0, 7, 1, NULL, NULL, 1, 'Super Admin', 'ade lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-08-10 06:00:51', '2022-08-10 06:00:51', NULL),
(9, 'Lirik Lagu Lupakan Aku', 'Wahana Musik', 'lirik-lagu-lupakan-aku', 'dulu kita pernah bersama\r\nnamun semua kini telah berubah\r\nikatan cinta telah sirna\r\ntinggallah duka dan nestafa', '<p>&nbsp;</p>\r\n\r\n<p>Dulu kita pernah bersama namun semua kini telah berubah</p>\r\n\r\n<p>ikatan cinta telah sirna tinggallah duka dan nestafa</p>\r\n\r\n<p>dahulu saling menyayangi namun ku harus pamit pergi</p>\r\n\r\n<p>kerana cintaku kemasi tidak mungkin aku kembali</p>\r\n\r\n<p>sudah kubilang jangan temui aku karena ku tidak ingin menemuimu</p>\r\n\r\n<p>ku harap engkau bisa memahamiku lekas pergi tinggalkan lah diriku</p>\r\n\r\n<p>sudah kubilang hapus air matamu dan jangan pernah lagi mencari aku</p>\r\n\r\n<p>aku tak ingin melukai hatimu lekaslah lupakan aku</p>', 'Article', 1, 'Lirik', 1, '/storage/files/lupakan aku.jpg', 'Dulu Kita Pernah Bersama Namun Semua Kini Telah Berubah', 'dulu kita pernah bersama namun semua kini telah berubah', 'dulu kita pernah bersama namun semua kini telah berubah', 'dulu kita pernah bersama namun semua kini telah berubah', 'dulu kita pernah bersama namun semua kini telah berubah', 0, 2, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-08-10 06:03:33', '2022-08-10 06:03:33', '2022-08-10 09:54:48', NULL),
(10, 'Terimakasih', 'Indonesia Timur', 'terimakasih-shine-of-black', 'Shine Of Black di Channel Indonesia Timur dengan Judul \"Terimakasih\"', '<p>Terimakasih - Shine of Black</p>\r\n\r\n<p>Sempurna di mata&nbsp;<br />\r\nSenyuman itu yang buat sa tra bisa lupa<br />\r\nKo ajarkan tentang rindu<br />\r\nArti cinta yang tulus dan bahagia</p>\r\n\r\n<p>Terima kasih kau telah menjadi kekasihku<br />\r\nSelalu ada di setiap saat kubutuhkan dirimu<br />\r\nYou always in my heart because I love you baby<br />\r\nI wanna be with you I wanna be with you forever</p>\r\n\r\n<p>Sa mau hanya dengan ko sa trakan sey<br />\r\nCuma mau ko yang temani every day<br />\r\nAnd I need you wanna stay<br />\r\nAnd I need you wanna stay</p>\r\n\r\n<p>Sa jaga bae cinta&nbsp;<br />\r\nTak akan sa kasih sunyi<br />\r\nSa tulus sama ko tara bermain<br />\r\nSa mau ko disini<br />\r\n&nbsp;</p>', 'Article', 1, 'Lirik', 1, '/storage/files/maxresdefault (4).jpg', 'Terimakasih Shine Of Black', 'Terimakasih Shine of Black', 'Terimakasih Shine of Black', 'Terimakasih Shine of Black', 'Terimakasih Shine of Black', 0, 1, 1, NULL, NULL, 1, 'Super Admin', 'ade lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-08-19 02:42:08', '2022-08-19 03:02:25', NULL),
(11, 'Vicky Salamor', 'Indonesia Timur', 'vicky-salamor-ikatan', 'NEW! Vicky Salamor - Ikatan.', '<p>Vicky Salamor - Ikatan.&nbsp;</p>\r\n\r\n<p>Sejenak beta coba merenungkan kembali<br />\r\nSaat hari itu di pelukan pertama<br />\r\n*<br />\r\nLalu coba lihat sekarang apa yang terjadi<br />\r\nBukan lagi peluk tapi lutut bertekuk</p>\r\n\r\n<p>Ingat ka seng waktu hari itu&nbsp;<br />\r\nAle panggil beta sayang<br />\r\nMangapa sekarang cuma tersisa bayang dan khayalan tuk di kenang</p>\r\n\r\n<p>Reff :<br />\r\nApa artinya ikatan<br />\r\nBila akhirnya se lepaskan<br />\r\nYang nyata tinggal bayang bayang<br />\r\nBelum lagi mimpi buruk malam</p>\r\n\r\n<p>Beta coba merelakan<br />\r\nWalaupun sulit melupakan<br />\r\nHarusnya jadi masa depan<br />\r\nLebih pilih dia dan tinggalkan beta sandiri</p>', 'Article', 1, 'Lirik', 1, '/storage/files/maxresdefault (5).jpg', 'Vicky Salamor Ikatan', 'Vicky Salamor Ikatan', 'Vicky Salamor Ikatan', 'Vicky Salamor Ikatan', 'Vicky Salamor Ikatan', 0, 2, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-06-21 08:02:35', '2022-08-19 02:44:50', '2022-08-19 03:04:32', NULL),
(12, 'Jovi Herlandi, Zamorano, Kadoxx, Hady', 'Indonesia Timur', 'jovi-herlandi,-zamorano,-kadoxx,-hady---kenapa-harus-sa-(official-video)', 'NEW! Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa', '<p>Dari awal ko bilang<br />\r\nKalo ko su tra sayang<br />\r\nSa pu hati, sa su rela untuk tunggu<br />\r\nSa pu hati, sa su rela lepas rindu<br />\r\nBukan ko saja yang punya hati, bilang saja kalo mo pisah<br />\r\nBukan ko saja yang punya hati, tapi kenapa harus sa ?</p>\r\n\r\n<p>Ko bilang sa tunggu<br />\r\nKo bilang setia tu parlente<br />\r\nMata deng kapala<br />\r\nLia baku bawa ko kele</p>\r\n\r\n<p>Jang kasi harapan yang tra pasti<br />\r\nSa cuma minta tolong hargai<br />\r\nSetidaknya bilang<br />\r\nJang buat sa harus menunggu</p>\r\n\r\n<p>Sekarang mana-mana kalo ko pi say<br />\r\nSekarang juga sa stop deng ko bay<br />\r\nPadahal dorang yang selalu jaga frey<br />\r\nJadi stop bilang sa harus stay</p>\r\n\r\n<p>Ada cahaya ko kasi gelap<br />\r\nSisakan luka di dalam benak<br />\r\nSaat malam ada de yang temani saat ko tidur lelap<br />\r\nIngat di awal bertemu&nbsp;<br />\r\nKu tak sedang ingin bertamu<br />\r\nSaat ku tau rusak mu<br />\r\nTapi ku ingin jadi rusuk mu</p>\r\n\r\n<p>Ini su terjadi semua su berubah<br />\r\nIni su terjadi sa cuma bisa minta<br />\r\nJang korbankan sa hati karena ko tra cinta</p>\r\n\r\n<p>Sa tunggu ko janji ko akan pulang<br />\r\nSa pu harapan hilang saat sa tau ko berhenti berjuang wowwww</p>', 'Article', 1, 'Lirik', 1, '/storage/files/maxresdefault (6).jpg', 'Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)', 'Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)', 'Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)', 'Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)', 'Jovi Herlandi, Zamorano, Kadoxx, Hady - Kenapa Harus Sa (Official Video)', 0, 3, 1, NULL, NULL, 1, 'Super Admin', 'ade lesmana', 1, NULL, '2022-06-21 08:02:35', '2022-08-19 02:47:10', '2022-08-19 03:03:58', NULL),
(13, 'Five Minutes hingga The Titans Bakal Meriahkan Hari Jadi Wahana Media Entertainment ke-25', 'Wahana Production', 'five-minutes-hingga-the-titans-bakal-meriahkan-hari-jadi-wahana-media-entertainment-ke-25', 'Merayakan ulangtahun yang ke-25, label musik, Wahana Media Entertainment menggelar acara bertajuk House of Harmony. Acara tersebut rencananya bakal diselenggarakan pada Sabtu, 26 Agustus 2023, di Menara Kuningan, Jakarta Selatan.', '<p>Merayakan ulangtahun yang ke-25, label musik, Wahana Media Entertainment menggelar acara bertajuk House of Harmony. Acara tersebut rencananya bakal diselenggarakan pada Sabtu, 26 Agustus 2023, di Menara Kuningan, Jakarta Selatan.<br />\r\n<br />\r\n&quot;Pada perayaan ulang tahun ke-25, Wahana Media Entertainment akan diselenggarakan tiga kegiatan, yakni Townhall Meeting, Partnership Program, dan Anniversary Party,&quot; ucap Dika, manajer Media Publications, kepada awak media, Rabu (23/8/2023).<br />\r\n<br />\r\nMusisi yang bakal memeriahkan acara tersebut tidak kaleng-kaleng. Ada Five Minutes, The Titans, Tyok Satrio, Della Firdatia, Bella Queen, Azizah Maumere, Ruth Nelly, Obin The Flops, De Poin, Jogi, Stak Brothers, Boraspati, Nia Daniaty hingga Argadho Trio.</p>', 'News', 2, 'news', 1, '/storage/files/maxresdefault.jpg', 'Five Minutes Hingga The Titans Bakal Meriahkan Hari Jadi Wahana Media Entertainment Ke-25', NULL, 'Kangen Band', '/storage/files/WhatsApp Image 2023-08-27 at 12.25.22 AM.jpeg', NULL, 0, NULL, 1, NULL, NULL, 1, 'Super Admin', 'Rudi', 1, NULL, '2023-09-12 01:47:03', '2023-09-12 01:47:03', '2023-09-12 05:33:26', NULL),
(14, 'Bidik Pasar Internasional, Label Wahana Media Komitmen Majukan Musik Etnik Tanah Air', 'Wahana Production', 'bidik-pasar-internasional,-label-wahana-media-komitmen-majukan-musik-etnik-tanah-air', 'Acara yang bertajuk House of Harmony itu dimeriahkan oleh beberapa penyanyi dan band lintas generasi mulai dari  Five Minutes, The Titans, Tyok Satrio, Della Firdatia, Bella Queen, Azizah Maumere, Ruth Nelly. Selain itu, ada juga Nia Daniaty, Obin The Flops, De Poin, Jogi, Stak Brothers, Boraspati dan Argadho Trio.', '<p>Acara yang bertajuk House of Harmony itu dimeriahkan oleh beberapa penyanyi dan band lintas generasi mulai dari&nbsp; Five Minutes, The Titans, Tyok Satrio, Della Firdatia, Bella Queen, Azizah Maumere, Ruth Nelly. Selain itu, ada juga Nia Daniaty, Obin The Flops, De Poin, Jogi, Stak Brothers, Boraspati dan Argadho Trio.<br />\r\n<br />\r\n&ldquo;Acaranya ada ceremonial untuk merayakan bahwa kita sudah berhasil selama 25 tahun di dunia musik ini dan di sini akan terjadi juga acara ceremonial,&rdquo; ungkap Muchtar Simanjuntak selaku CEO Wahana Media Entertainment dalam keterangannya.</p>\r\n\r\n<p>&ldquo;Kita undang artis yang sudah bekerja sama dengan Wahana selama ini dan kita mengundang The Titans, Five Minutes, ada juga nanti Nia Daniaty yang bernyanyi,&rdquo; sambungnya.<br />\r\n&nbsp;</p>', 'News', 2, 'news', 1, '/storage/files/WhatsApp Image 2023-08-27 at 12.25.22 AM.jpeg', 'Bidik Pasar Internasional, Label Wahana Media Komitmen Majukan Musik Etnik Tanah Air', NULL, 'Kangen Band', '/storage/files/WhatsApp Image 2023-08-27 at 12.25.22 AM.jpeg', NULL, 0, NULL, 1, NULL, NULL, 1, 'Super Admin', 'Rudi', 1, NULL, '2023-09-12 02:27:10', '2023-09-12 02:27:10', '2023-09-12 02:27:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(2, 'administrator', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(3, 'manager', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(4, 'executive', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39'),
(5, 'user', 'web', '2022-06-14 05:21:39', '2022-06-14 05:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(1, 3),
(1, 4),
(1, 5),
(20, 5),
(21, 5),
(22, 5),
(25, 5),
(26, 5),
(27, 5),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 5),
(46, 5),
(47, 5),
(48, 5),
(49, 5),
(50, 5),
(51, 5),
(52, 5),
(53, 5),
(54, 5),
(55, 5),
(56, 5),
(57, 5),
(58, 5),
(59, 5),
(60, 5);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text COLLATE utf8mb4_unicode_ci,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `type`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'app_name', 'Kangen Band', 'string', 1, 1, NULL, '2022-06-22 02:55:53', '2022-06-22 02:55:53', NULL),
(2, 'footer_text', '<a href=\"https://kangenband.wahanaproduction.com/\">Built with ♥ from IT Wahana Media Entertainment</a>', 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(3, 'show_copyright', '1', 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(4, 'email', 'info.wahana@gmail.com', 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(5, 'facebook_url', '#', 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(6, 'twitter_url', '#', 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(7, 'instagram_url', '#', 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(8, 'linkedin_url', '#', 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(9, 'youtube_url', '#', 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(10, 'meta_site_name', 'Kangen Band | Kangen Band', 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(11, 'meta_description', 'Kangen Band', 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(12, 'meta_keyword', 'Kangen Band, Wahana Production, Andika Kangen Band, Dodhy Kangen Band', 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(13, 'meta_image', 'img/default_banner.jpg', 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(14, 'meta_fb_app_id', NULL, 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(15, 'meta_twitter_site', NULL, 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(16, 'meta_twitter_creator', NULL, 'text', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:55:54', NULL),
(17, 'google_analytics', NULL, 'string', 1, 1, NULL, '2022-06-22 02:55:54', '2022-06-22 02:56:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sosmeds`
--

CREATE TABLE `sosmeds` (
  `id` int(11) NOT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `platform` varchar(191) DEFAULT NULL,
  `landing` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sosmeds`
--

INSERT INTO `sosmeds` (`id`, `account_name`, `platform`, `landing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'wahana act', 'TikTok', 'DL Record', '2022-07-28 03:35:28', '2022-07-28 05:04:13', NULL),
(2, 'https://www.instagram.com/indonesia_timurofficial', 'Instagram', 'Indonesia Timur', '2022-08-20 02:12:08', '2022-08-22 02:09:46', NULL),
(3, 'https://www.tiktok.com/@indonesiatimurofficial', 'TikTok', 'Indonesia Timur', '2022-08-20 02:12:58', '2022-08-22 03:20:18', NULL),
(4, 'https://www.facebook.com/indonesiatimurofficial', 'Facebook', 'Indonesia Timur', '2022-08-20 02:13:20', '2022-08-22 02:10:12', NULL),
(5, 'https://www.youtube.com/channel/UCzz5Ym1uJ7Cn8gcy5B176Ng', 'Youtube', 'Indonesia Timur', '2022-08-20 02:19:49', '2022-08-22 02:09:21', NULL),
(6, 'wahanamusik', 'Instagram', 'Wahana Musik', '2022-08-22 04:40:57', '2022-08-22 04:40:57', NULL),
(7, 'https://www.instagram.com/wahana.production/', 'Instagram', 'Wahana Production', '2022-10-31 03:25:40', '2022-10-31 03:25:40', NULL),
(8, 'https://www.facebook.com/wahanaproductionofficial', 'Facebook', 'Wahana Production', '2022-10-31 03:26:28', '2022-10-31 03:26:28', NULL),
(9, 'https://www.youtube.com/c/KinagaraMusic', 'Youtube', 'Wahana Production', '2022-10-31 03:27:18', '2022-10-31 03:27:18', NULL),
(10, 'https://twitter.com/wahana_prod', 'Twitter', 'Wahana Production', '2022-10-31 03:28:13', '2022-10-31 03:28:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sosmed_artists`
--

CREATE TABLE `sosmed_artists` (
  `id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `account_name` varchar(191) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `landing` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sosmed_artists`
--

INSERT INTO `sosmed_artists` (`id`, `artist_id`, `account_name`, `platform`, `landing`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 13, 'gloryig', 'Instagram', 'Wahana Production', '2022-11-01 05:46:46', '2022-11-01 05:46:46', NULL),
(2, 13, 'gloryfbyt', 'Youtube', 'Wahana Production', '2022-11-01 05:47:23', '2022-11-02 01:29:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(11) NOT NULL,
  `email` varchar(191) DEFAULT NULL,
  `landing` varchar(191) DEFAULT NULL,
  `is_send` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `landing`, `is_send`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'super@admin.com', NULL, 0, '2022-06-17 07:51:00', '2022-06-17 07:51:00', NULL),
(12, 'test@gmail.com', NULL, 0, '2022-08-13 03:29:15', '2022-08-13 03:29:15', NULL),
(13, 'testagain@gmail.com', NULL, 0, '2022-08-13 03:29:24', '2022-08-13 03:29:24', NULL),
(14, NULL, NULL, 0, '2022-08-13 03:31:24', '2022-08-13 03:31:24', NULL),
(15, NULL, NULL, 0, '2022-08-13 03:31:45', '2022-08-13 03:31:45', NULL),
(16, NULL, NULL, 0, '2022-08-13 03:32:48', '2022-08-13 03:32:48', NULL),
(17, 'testagain@gmail.com', NULL, 0, '2022-08-13 03:33:22', '2022-08-13 03:33:22', NULL),
(18, 'testaeegain@gmail.com', NULL, 0, '2022-08-13 03:33:46', '2022-08-13 03:33:46', NULL),
(19, 'lusi@gmail.com', NULL, 0, '2022-08-13 03:35:01', '2022-08-13 03:35:01', NULL),
(20, 'lusi@gmail.com', NULL, 0, '2022-08-13 03:35:54', '2022-08-13 03:35:54', NULL),
(21, 'roy@gmail.com', '', 0, '2022-08-18 06:14:52', '2022-08-18 06:14:52', NULL),
(22, 'roby@gmail.com', '', 0, '2022-08-18 06:16:56', '2022-08-18 06:16:56', NULL),
(23, 'roby@gmail.com', NULL, 0, '2022-08-18 06:17:11', '2022-08-18 06:17:11', NULL),
(24, 'roby@gmail.com', NULL, 0, '2022-08-18 06:17:40', '2022-08-18 06:17:40', NULL),
(25, 'roby@gmail.com', NULL, 0, '2022-08-18 06:18:11', '2022-08-18 06:18:11', NULL),
(26, 'roby@gmail.com', NULL, 0, '2022-08-18 06:18:37', '2022-08-18 06:18:37', NULL),
(27, 'rob@gmail.com', NULL, 0, '2022-08-18 06:18:53', '2022-08-18 06:18:53', NULL),
(28, 'test@gmail.com', NULL, 0, '2022-08-18 06:20:29', '2022-08-18 06:20:29', NULL),
(29, 'test@gmail.com', 'test lands', 0, '2022-08-18 06:20:57', '2022-08-18 06:20:57', NULL),
(30, 'test@gmail.com', 'test lands', 0, '2022-08-18 06:21:20', '2022-08-18 06:21:20', NULL),
(31, 'test@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:24:26', '2022-08-18 06:24:26', NULL),
(32, 'super@admin.com', 'Indonesia Timur', 0, '2022-08-18 06:24:55', '2022-08-18 06:24:55', NULL),
(33, 'adelesmanahutabarat@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:25:11', '2022-08-18 06:25:11', NULL),
(34, 'super@admin.com', 'Indonesia Timur', 0, '2022-08-18 06:25:42', '2022-08-18 06:25:42', NULL),
(35, 'adelesmana.wahana@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:26:00', '2022-08-18 06:26:00', NULL),
(36, 'super@admin.com', 'Indonesia Timur', 0, '2022-08-18 06:28:56', '2022-08-18 06:28:56', NULL),
(37, 'admin@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:29:20', '2022-08-18 06:29:20', NULL),
(38, 'rtwaSD', 'Indonesia Timur', 0, '2022-08-18 06:31:43', '2022-08-18 06:31:43', NULL),
(39, 'adelesmanahutabarat@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:32:17', '2022-08-18 06:32:17', NULL),
(40, 'test@gmail.com', '', 0, '2022-08-18 06:38:07', '2022-08-18 06:38:07', NULL),
(41, 'test@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:42:36', '2022-08-18 06:42:36', NULL),
(42, 'adelesmanahutabarat@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:43:00', '2022-08-18 06:43:00', NULL),
(43, 'super@admin.com', 'Indonesia Timur', 0, '2022-08-18 06:43:40', '2022-08-18 06:43:40', NULL),
(44, 'adelesmanahutabarat@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:44:24', '2022-08-18 06:44:24', NULL),
(45, 'adelesmanahutabarat@gmail.com', '', 0, '2022-08-18 06:48:10', '2022-08-18 06:48:10', NULL),
(46, 'ten@gmail.com', 'Indonesia Timur', 0, '2022-08-18 06:49:08', '2022-08-18 06:49:08', NULL),
(47, 'test@gmail.com', '', 0, '2022-08-24 03:05:32', '2022-08-24 03:05:32', NULL),
(48, 'test@gmail.com', '', 0, '2022-08-24 03:29:23', '2022-08-24 03:29:23', NULL),
(49, 'test@gmail.com', '', 0, '2022-08-24 03:57:16', '2022-08-24 03:57:16', NULL),
(50, 'test@gmail.com', 'Indonesia Timur', 0, '2022-08-24 03:57:57', '2022-08-24 03:57:57', NULL),
(51, 'bona.wahana@gmail.com', '', 0, '2022-11-02 04:51:38', '2022-11-02 04:51:38', NULL),
(52, 'bona.wahana@gmail.com', '', 0, '2022-11-02 04:52:32', '2022-11-02 04:52:32', NULL),
(53, NULL, 'Wahana Production', 0, '2022-11-02 04:59:58', '2022-11-02 04:59:58', NULL),
(54, 'adelesmanahutabarat@gmail.com', 'Wahana Production', 0, '2022-11-02 05:01:19', '2022-11-02 05:01:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_id` bigint(20) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text COLLATE utf8mb4_unicode_ci,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `artist_id` int(11) NOT NULL,
  `landing` varchar(191) NOT NULL,
  `position` int(11) NOT NULL,
  `release_date` date DEFAULT NULL,
  `artwork` varchar(191) DEFAULT NULL,
  `artwork_url` varchar(191) NOT NULL,
  `audio` varchar(191) DEFAULT NULL,
  `audio_url` varchar(191) NOT NULL,
  `link_shop` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`id`, `title`, `artist_id`, `landing`, `position`, `release_date`, `artwork`, `artwork_url`, `audio`, `audio_url`, `link_shop`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'Cinta Sampai Mati 23', 1, 'DL Record', 3, '2022-06-23', 'http://landing.test/storage/artwork/210722141531.png', 'http://landing.test/storage/artwork/210722141531.png', 'http://landing.test/storage/audio/170622095619.mp4', 'http://landing.test/storage/audio/170622095619.mp4', 'fgdsfg3', '2022-06-15 10:08:03', '2022-07-25 04:00:54', NULL),
(3, 'Terimakasih Patah Hati', 1, 'Kangen Band', 0, '2022-06-17', 'http://landing.test/storage/artwork/170622095732.png', 'http://landing.test/storage/artwork/170622095732.png', 'http://landing.test/storage/audio/170622095732.mp4', 'http://landing.test/storage/audio/170622095732.mp4', '#', '2022-06-17 02:57:32', '2022-06-17 02:57:32', NULL),
(4, 'Selamat Tinggal Mantan', 1, 'Kangen Band', 0, '2022-06-04', 'http://landing.test/storage/artwork/170622095814.png', 'http://landing.test/storage/artwork/170622095814.png', 'http://landing.test/storage/audio/170622095814.mp4', 'http://landing.test/storage/audio/170622095814.mp4', '#', '2022-06-17 02:58:14', '2022-06-17 02:58:14', NULL),
(5, 'Cinta Sampai Mati', 1, 'Kangen Band', 0, '2022-02-25', 'http://landing.test/storage/artwork/170622100356.png', 'http://landing.test/storage/artwork/170622100356.png', 'http://landing.test/storage/audio/170622100356.mp4', 'http://landing.test/storage/audio/170622100356.mp4', '#', '2022-01-03 03:03:56', '2022-06-17 03:03:56', NULL),
(6, 'Usai Sudah', 1, 'Kangen Band', 0, '2022-06-17', 'http://landing.test/storage/artwork/300622110824.png', 'http://landing.test/storage/artwork/300622110824.png', 'http://landing.test/storage/audio/300622105742.mp3', 'http://landing.test/storage/audio/300622105742.mp3', '#', '2022-06-30 03:57:42', '2022-06-30 04:08:24', NULL),
(7, 'Ditinggal Pas Sayang Sayange', 1, 'Wahana Musik', 1, '2022-07-21', 'http://landing.test/storage/artwork/030822140854.jpg', 'http://landing.test/storage/artwork/030822140854.jpg', 'http://landing.test/storage/audio/300622105742.mp3', 'http://landing.test/storage/audio/300622105742.mp3', '#', '2022-07-21 05:08:09', '2022-08-09 03:16:21', NULL),
(8, 'BERBEZA KASTA | KALIA SISKA ft SKA 86 | DJ KENTRUNG', 3, 'Wahana Musik', 4, '2022-06-27', 'http://landing.test/storage/artwork/030822140927.jpg', 'http://landing.test/storage/artwork/030822140927.jpg', 'http://landing.test/storage/audio/030822114343.mp4', 'http://landing.test/storage/audio/030822114343.mp4', '#', '2022-07-25 03:31:57', '2022-08-09 03:12:11', NULL),
(9, 'Apakah Itu Cinta - Vita Alvia | DJ Slow Full Bass', 2, 'Wahana Musik', 3, '2022-08-28', 'http://landing.test/storage/artwork/030822140946.jpg', 'http://landing.test/storage/artwork/030822140946.jpg', 'http://landing.test/storage/audio/030822114343.mp4', 'http://landing.test/storage/audio/030822114343.mp4', '#', '2022-08-03 04:43:43', '2022-08-09 03:12:28', NULL),
(10, 'SAFIRA INEMA ft DJ SANTUY | SEHARUSNYA AKU', 1, 'Wahana Musik', 3, '2022-08-03', 'http://landing.test/storage/artwork/030822140958.jpg', 'http://landing.test/storage/artwork/030822140958.jpg', 'http://landing.test/storage/audio/030822114435.mp4', 'http://landing.test/storage/audio/030822114435.mp4', '#', '2022-08-03 04:44:35', '2022-08-03 07:50:45', NULL),
(11, 'Vita Alvia - Gaun Merah | Dj Opus Full Bass', 2, 'Wahana Musik', 6, '2022-08-03', 'http://landing.test/storage/artwork/030822141020.jpg', 'http://landing.test/storage/artwork/030822141020.jpg', 'http://landing.test/storage/audio/030822114712.mp4', 'http://landing.test/storage/audio/030822114712.mp4', '#', '2022-08-03 04:47:12', '2022-08-09 03:12:44', NULL),
(12, 'APAKAH ITU CINTA | KALIA SISKA ft SKA 86 | DJ KENTRUNG', 3, 'Wahana Musik', 3, '2022-08-03', 'http://landing.test/storage/artwork/030822141030.jpg', 'http://landing.test/storage/artwork/030822141030.jpg', 'http://landing.test/storage/audio/030822114811.mp4', 'http://landing.test/storage/audio/030822114811.mp4', '#', '2022-08-03 04:48:11', '2022-08-09 03:12:53', NULL),
(13, 'Lupakan Aku', 1, 'Wahana Musik', 4, '2022-08-09', 'http://landing.test/storage/artwork/090822100836.jpg', 'http://landing.test/storage/artwork/090822100836.jpg', 'http://landing.test/storage/audio/090822100836.mp3', 'http://landing.test/storage/audio/090822100836.mp3', '#', '2022-08-09 03:08:36', '2022-08-09 03:11:33', NULL),
(14, 'Tresnomu Koyo Gapuro', 5, 'Wahana Musik', 6, '2022-08-09', '240822095235.jpg', 'http://landing.test/storage/artwork/240822095235.jpg', '090822103114.mp3', 'http://landing.test/storage/audio/090822103114.mp3', '#', '2022-08-09 03:31:14', '2022-08-24 02:52:35', NULL),
(15, 'CINTA SENG PAKAI SPASI', 6, 'Indonesia Timur', 1, '2022-08-16', '160822154212.png', 'http://landing.test/storage/artwork/160822154212.png', '160822154212.mp3', 'http://landing.test/storage/audio/160822154212.mp3', '#', '2022-08-16 08:42:12', '2022-08-16 08:42:12', NULL),
(16, 'Manis Tapi Bukan Gula', 9, 'Indonesia Timur', 3, '2022-08-16', '160822154358.jpg', 'http://landing.test/storage/artwork/160822154358.jpg', '160822154358.mp3', 'http://landing.test/storage/audio/160822154358.mp3', '#', '2022-08-16 08:43:58', '2022-08-16 08:43:58', NULL),
(17, 'PARCUMA', 8, 'Indonesia Timur', 3, '2022-08-16', '160822154448.jpg', 'http://landing.test/storage/artwork/160822154448.jpg', '160822154448.mp3', 'http://landing.test/storage/audio/160822154448.mp3', '#', '2022-08-16 08:44:48', '2022-08-16 08:44:48', NULL),
(18, 'TUHAN SU ATUR', 7, 'Indonesia Timur', 4, '2022-08-16', '160822154558.jpg', 'http://landing.test/storage/artwork/160822154558.jpg', '160822154558.mp3', 'http://landing.test/storage/audio/160822154558.mp3', '#', '2022-08-16 08:45:58', '2022-08-16 08:45:58', NULL),
(19, 'Chacha Ocay', 12, 'Indonesia Timur', 5, '2022-08-16', '160822155217.jpg', 'http://landing.test/storage/artwork/160822155217.jpg', '160822155217.mp3', 'http://landing.test/storage/audio/160822155217.mp3', '#', '2022-08-16 08:52:17', '2022-08-16 08:52:17', NULL),
(20, 'INSOS KOFIAU', 11, 'Indonesia Timur', 7, '2022-08-16', '160822155302.jpg', 'http://landing.test/storage/artwork/160822155302.jpg', '160822155302.mp3', 'http://landing.test/storage/audio/160822155302.mp3', '#', '2022-08-16 08:53:02', '2022-08-16 08:53:02', NULL),
(21, 'SA TRA LUPA', 7, 'Indonesia Timur', 8, '2022-08-16', '160822155357.jpg', 'http://landing.test/storage/artwork/160822155357.jpg', '160822155357.mp3', 'http://landing.test/storage/audio/160822155357.mp3', '#', '2022-08-16 08:53:57', '2022-08-16 08:53:57', NULL),
(22, 'Ditinggal Pas Sayang Sayange', 1, 'Wahana Production', 1, '2022-10-27', '271022171551.png', 'http://landing.test/storage/artwork/271022171551.png', '271022171551.mp3', 'http://landing.test/storage/audio/271022171551.mp3', '#', '2022-10-27 10:15:51', '2022-10-27 10:15:51', NULL),
(23, 'CINTA SENG PAKAI SPASI', 6, 'Wahana Production', 2, '2022-10-27', '271022172533.jpg', 'http://landing.test/storage/artwork/271022172533.jpg', '271022172533.mp3', 'http://landing.test/storage/audio/271022172533.mp3', '#', '2022-10-27 10:25:33', '2022-10-27 10:25:33', NULL),
(24, 'Manis Tapi Bukan Gula', 9, 'Wahana Production', 3, '2022-10-27', '271022172713.png', 'http://landing.test/storage/artwork/271022172713.png', '271022172713.mp3', 'http://landing.test/storage/audio/271022172713.mp3', '#', '2022-10-27 10:27:13', '2022-10-27 10:27:13', NULL),
(25, 'Cinta Sampai', 3, 'Wahana Production', 4, '2022-10-28', '281022131938.jpg', 'http://landing.test/storage/artwork/281022131938.jpg', '281022131938.mp3', 'http://landing.test/storage/audio/281022131938.mp3', '#', '2022-10-28 06:19:38', '2022-10-28 06:19:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `url_youtube_artist`
--

CREATE TABLE `url_youtube_artist` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artist_id` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `landing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `url_youtube_artist`
--

INSERT INTO `url_youtube_artist` (`id`, `artist_id`, `url`, `landing`, `created_at`, `updated_at`) VALUES
(7, 1, 'www.facebook.com', 'Wahana Production', '2023-06-08 08:03:57', '2023-06-08 08:03:57'),
(8, 1, 'https://www.youtube.com/watch?v=YykjpeuMNEk&list=RD4n5bpeh5NNg&index=2', 'Wahana Production', '2023-06-08 08:03:57', '2023-06-09 02:21:01'),
(15, 13, 'https://www.youtube.com/embed/3CC07Y5-5rM?mute=1&autoplay=1', 'Wahana Production', '2023-06-14 01:18:08', '2023-06-14 06:01:10'),
(16, 13, 'https://www.youtube.com/embed/JUUOHgJbKLg?mute=1&autoplay=1', 'Wahana Production', '2023-06-14 01:18:08', '2023-06-14 06:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `userpics`
--

CREATE TABLE `userpics` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `landing_id` int(11) DEFAULT NULL,
  `created_by_name` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userpics`
--

INSERT INTO `userpics` (`id`, `user_id`, `landing_id`, `created_by_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 6, 'ade', '2022-07-18 05:05:30', '2022-07-20 02:25:54', NULL),
(2, 7, 7, 'ade', '2022-07-18 07:00:27', '2022-07-20 02:23:16', NULL),
(3, 7, 1, NULL, '2022-07-19 06:45:30', '2022-07-20 02:29:52', '2022-07-20 02:29:52'),
(4, 7, 8, NULL, '2022-07-20 07:16:26', '2022-08-22 04:27:07', '2022-08-22 04:27:07'),
(5, 6, 5, NULL, '2022-07-29 02:59:39', '2022-07-29 02:59:39', NULL),
(6, 6, 1, NULL, '2022-08-16 06:09:08', '2022-08-16 06:09:08', NULL),
(7, 7, 1, NULL, '2022-08-22 03:58:04', '2022-08-22 03:58:04', NULL),
(8, 6, 18, NULL, '2022-10-27 02:41:24', '2022-10-27 02:41:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `bio` text COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_metadata` text COLLATE utf8mb4_unicode_ci,
  `last_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `user_id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `url_website`, `url_facebook`, `url_twitter`, `url_instagram`, `url_linkedin`, `date_of_birth`, `address`, `bio`, `avatar`, `user_metadata`, `last_ip`, `login_count`, `last_login`, `email_verified_at`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '470-725-3963', 'Male', NULL, NULL, NULL, NULL, NULL, '1992-06-13', NULL, NULL, 'http://kangenband.test/storage/1/default.jpg', NULL, '127.0.0.1', 97, '2023-09-12 05:32:44', NULL, 1, NULL, 1, NULL, '2022-06-14 05:21:39', '2023-09-12 05:32:44', NULL),
(2, 2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '+1 (954) 801-4238', 'Other', NULL, NULL, NULL, NULL, NULL, '2016-02-13', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(3, 3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '+18202972192', 'Female', NULL, NULL, NULL, NULL, NULL, '1977-03-25', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(4, 4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '469-608-1120', 'Female', NULL, NULL, NULL, NULL, NULL, '1972-01-31', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(5, 5, 'General User', 'General', 'User', '100005', 'user@user.com', '+1-534-646-4327', 'Male', NULL, NULL, NULL, NULL, NULL, '2019-06-29', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(6, 6, 'Ade Lesmana', 'Ade', 'Lesmana', '100006', 'ade@gmail.com', '085297212548', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://kangenband.test/storage/2/logo-wahanaproduction.png', NULL, '127.0.0.1', 9, '2022-11-03 05:34:56', NULL, 1, 1, 6, NULL, '2022-06-21 10:31:45', '2022-11-03 05:34:56', NULL),
(7, 7, 'Binsar Manihuruk', 'Binsar', 'Manihuruk', '100007', 'binsar@gmail.com', '0852', 'Male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://landing.test/storage/4/red-arrow-5a3a4e2a297520.0066231215137705381698.jpg', NULL, '127.0.0.1', 1, '2022-08-22 03:58:44', NULL, 1, 1, 7, NULL, '2022-07-18 05:59:11', '2022-08-22 03:59:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'img/default-avatar.jpg',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `date_of_birth`, `email_verified_at`, `password`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '470-725-3963', 'Male', '1992-06-13', '2022-06-14 05:21:38', '$2y$10$4LbzjDKwr9IRMFhQhGFhUO.ZAHRRdjUSPE0Hu84HhF2Elpg1ppCUq', 'http://kangenband.test/storage/1/default.jpg', 1, NULL, '2022-06-14 05:21:38', '2022-06-21 10:17:17', NULL),
(2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '+1 (954) 801-4238', 'Other', '2016-02-13', '2022-06-14 05:21:39', '$2y$10$ntLDa4RixVSsx1UcJVIJYOBOzmpnPFMnhhVj34UpXaJJf4SvnFzsW', 'img/default-avatar.jpg', 1, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '+18202972192', 'Female', '1977-03-25', '2022-06-14 05:21:39', '$2y$10$9Np9/dJRnIrCd6FpnDQFYuQtXvOGOYfzpOchc2j7vzBaqOxka.Kia', 'img/default-avatar.jpg', 1, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '469-608-1120', 'Female', '1972-01-31', '2022-06-14 05:21:39', '$2y$10$UBaYDfAUhJ9MXan5KVDQjOw1gR5stacCqPkN.aNbX/SEMdyGm.0eW', 'img/default-avatar.jpg', 1, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(5, 'General User', 'General', 'User', '100005', 'user@user.com', '+1-534-646-4327', 'Male', '2019-06-29', '2022-06-14 05:21:39', '$2y$10$Tqj/gdfP7v/6jKmqiTOra.1EIGgql7e5E.NSq1.m20Oky93mYNmy2', 'img/default-avatar.jpg', 1, NULL, '2022-06-14 05:21:39', '2022-06-14 05:21:39', NULL),
(6, 'Ade Lesmana', 'Ade', 'Lesmana', '100006', 'ade@gmail.com', '085297212548', 'Male', NULL, '2022-06-21 10:31:45', '$2y$10$zl0fD0reWJRDGsXIf5j2hO4nRs3wVmQEN349t7zdnTBlIVkBOCws6', 'http://kangenband.test/storage/2/logo-wahanaproduction.png', 1, NULL, '2022-06-21 10:31:45', '2022-06-22 07:44:41', NULL),
(7, 'Binsar Manihuruk', 'Binsar', 'Manihuruk', '100007', 'binsar@gmail.com', '0852', 'Male', NULL, '2022-07-18 05:59:11', '$2y$10$PNxTquJiktr6cSZIO7ysB.g1rQTedBFMp3Br5sURITLDcBaWu57xy', 'http://landing.test/storage/4/red-arrow-5a3a4e2a297520.0066231215137705381698.jpg', 1, NULL, '2022-07-18 05:59:11', '2022-08-22 03:59:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE `user_providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `ip`, `device`, `created_at`) VALUES
(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-13 17:00:00'),
(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-14 17:00:00'),
(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-15 17:00:00'),
(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-16 17:00:00'),
(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-17 17:00:00'),
(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-19 17:00:00'),
(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-20 17:00:00'),
(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-21 17:00:00'),
(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-24 17:00:00'),
(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-06-28 17:00:00'),
(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-06-29 17:00:00'),
(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-06-30 17:00:00'),
(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-01 17:00:00'),
(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-03 17:00:00'),
(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '2022-07-04 17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `proof_of_payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `approved_description` text COLLATE utf8mb4_unicode_ci,
  `approved_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `youtubes`
--

CREATE TABLE `youtubes` (
  `id` int(11) NOT NULL,
  `landing` varchar(191) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `release_date` date DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `image_url` varchar(191) NOT NULL,
  `url` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `youtubes`
--

INSERT INTO `youtubes` (`id`, `landing`, `title`, `position`, `release_date`, `image`, `image_url`, `url`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'DL Record', 'Cinta Sampai mati', 1, '2022-02-25', '170622092214.png', 'http://landing.test/storage/artwork/170622092214.png', 'Xt0pDDsdbzw', '2022-06-15 04:07:10', '2022-07-20 07:26:35', NULL),
(4, 'Kangen Band', 'Cinta Sampai Mati 2', 2, '2022-04-29', '170622092246.png', 'http://landing.test/storage/artwork/170622092246.png', '3y3VxDKVXdE', '2022-06-16 02:25:38', '2022-06-17 02:22:46', NULL),
(5, 'Kangen Band', 'Terimakasih Patah Hati', 3, '2022-05-13', '170622092310.png', 'http://landing.test/storage/artwork/170622092310.png', '70z_KD1uARA', '2022-06-17 02:23:10', '2022-06-17 02:23:10', NULL),
(6, 'Kangen Band', 'Selamat Tinggal Mantan', 4, '2022-06-04', '170622092354.png', 'http://landing.test/storage/artwork/170622092354.png', 'g8layBtWcmk', '2022-06-17 02:23:54', '2022-06-17 02:23:54', NULL),
(7, 'Kangen Band', 'test', 1, '2022-07-20', '200722135519.png', 'http://landing.test/storage/artwork/200722135519.png', 'sdf5w45', '2022-07-20 06:55:19', '2022-07-20 06:55:19', NULL),
(8, 'Kangen Band', 'Cinta Sampai Mati 38', 3, '2022-07-23', '210722094323.png', 'http://landing.test/storage/artwork/210722094323.png', 'sdf5w453', '2022-07-21 02:42:41', '2022-07-21 02:44:07', NULL),
(9, 'Indonesia Timur', 'Ghosting', 1, '2022-08-13', '190822114958.png', 'http://landing.test/storage/artwork/190822114958.png', 'dKRU44aoSvI', '2022-08-18 03:10:25', '2022-08-19 04:49:58', NULL),
(10, 'Indonesia Timur', 'Terima Kasih', 2, '2022-08-18', '180822105347.png', 'http://landing.test/storage/artwork/180822105347.png', 'z7sQPh_JqY0', '2022-08-18 03:11:44', '2022-08-18 03:53:47', NULL),
(11, 'Indonesia Timur', 'Ikatan', 3, '2022-08-18', '180822105338.png', 'http://landing.test/storage/artwork/180822105338.png', 'mw0JpUtXq1s', '2022-08-18 03:12:28', '2022-08-18 03:53:38', NULL),
(12, 'Indonesia Timur', 'Kenapa Harus Sa', 4, '2022-07-21', '180822105316.png', 'http://landing.test/storage/artwork/180822105316.png', 'VKuFWVJHBxA', '2022-08-18 03:13:08', '2022-08-18 03:53:16', NULL),
(13, 'Indonesia Timur', 'Sa Takut', 5, '2022-07-13', '180822105325.png', 'http://landing.test/storage/artwork/180822105325.png', 'SkkqUo47ex4', '2022-08-18 03:29:44', '2022-08-18 03:53:25', NULL),
(14, 'Indonesia Timur', 'test', 1, '2022-08-22', '220822120138.png', 'http://landing.test/storage/artwork/220822120138.png', 'sadf', '2022-08-22 05:01:38', '2022-08-22 05:01:38', NULL),
(15, 'Wahana Production', 'The Titans - Kau Bukan Siapa Siapa Tapi Kau Cemburu', 1, '2022-10-29', '311022100208.png', 'http://landing.test/storage/artwork/311022100208.png', 'sX7CCA08-LU', '2022-10-29 03:17:10', '2022-10-31 03:02:08', NULL),
(16, 'Wahana Production', 'Five Minutes - Menanggung Rindu', 2, '2022-10-29', '291022112223.png', 'http://landing.test/storage/artwork/291022112223.png', 'KtUNw_FRMAo', '2022-10-29 03:19:52', '2022-10-29 04:22:23', NULL),
(17, 'Wahana Production', 'Anima Band - Bintang', 3, '2022-10-29', '291022112240.png', 'http://landing.test/storage/artwork/291022112240.png', '1hAPwBb2Voo', '2022-10-29 03:23:50', '2022-10-29 04:22:40', NULL),
(18, 'Wahana Production', 'Kangen Band - Cinta Sampai Mati', 4, '2022-10-29', '291022112327.png', 'http://landing.test/storage/artwork/291022112327.png', 'Xt0pDDsdbzw', '2022-10-29 03:25:26', '2022-10-29 04:23:27', NULL),
(19, 'Wahana Production', 'Glory Satya - Tiga Enam Lima Rasa', 5, '2022-10-29', '291022102753.jpg', 'http://landing.test/storage/artwork/291022102753.jpg', 'ji5aJpvWjB4', '2022-10-29 03:27:53', '2022-10-29 03:27:53', NULL),
(20, 'Wahana Production', 'SHAREN FERNANDEZ - SEMBUH', 6, '2022-10-29', '291022104317.png', 'http://landing.test/storage/artwork/291022104317.png', 'nTBFaWbcDhk', '2022-10-29 03:30:12', '2022-10-29 03:43:17', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `subject` (`subject_id`,`subject_type`),
  ADD KEY `causer` (`causer_id`,`causer_type`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalogs_cid_unique` (`cid`);

--
-- Indexes for table `catalog_files`
--
ALTER TABLE `catalog_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_elements`
--
ALTER TABLE `content_elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries_artist`
--
ALTER TABLE `galleries_artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joins`
--
ALTER TABLE `joins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmeds`
--
ALTER TABLE `sosmeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed_artists`
--
ALTER TABLE `sosmed_artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `url_youtube_artist`
--
ALTER TABLE `url_youtube_artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userpics`
--
ALTER TABLE `userpics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_providers_user_id_foreign` (`user_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `youtubes`
--
ALTER TABLE `youtubes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `catalog_files`
--
ALTER TABLE `catalog_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_elements`
--
ALTER TABLE `content_elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `elements`
--
ALTER TABLE `elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `galleries_artist`
--
ALTER TABLE `galleries_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `joins`
--
ALTER TABLE `joins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `parameters`
--
ALTER TABLE `parameters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sosmeds`
--
ALTER TABLE `sosmeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sosmed_artists`
--
ALTER TABLE `sosmed_artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `url_youtube_artist`
--
ALTER TABLE `url_youtube_artist`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `userpics`
--
ALTER TABLE `userpics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userprofiles`
--
ALTER TABLE `userprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `youtubes`
--
ALTER TABLE `youtubes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD CONSTRAINT `user_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
