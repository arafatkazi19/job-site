-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2020 at 06:02 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `find_job`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `first_name`, `last_name`, `business_name`, `email`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Ernser LLC', 'Jakubowski Inc', 'Hills Ltd', 'romaguera.maudie@example.org', 20, '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(2, 'Green, Raynor and Blick', 'Beatty, Weber and Graham', 'Feil Ltd', 'tjacobs@example.org', 12, '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(3, 'King, Swaniawski and Okuneva', 'Lesch and Sons', 'Senger LLC', 'cpurdy@example.net', 16, '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(4, 'Halvorson-Bernier', 'Conroy-Green', 'Howe-Kling', 'kuhic.abagail@example.net', 18, '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(5, 'Feeney, Bode and Murphy', 'Goyette, Barton and O\'Keefe', 'Bins-Paucek', 'aaliyah31@example.org', 9, '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(6, 'Tillman Group', 'Mayer LLC', 'Rempel-Boehm', 'shields.grayson@example.org', 14, '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(7, 'Schmeler Inc', 'Macejkovic, Leuschke and Kshlerin', 'Haag Ltd', 'amelia.lebsack@example.net', 19, '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(8, 'Cummings Group', 'Pfeffer, Altenwerth and Lynch', 'Purdy, Kertzmann and Fay', 'amari10@example.com', 11, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(9, 'Franecki, Schroeder and Auer', 'Kling, Brakus and Wunsch', 'Lang-Huels', 'mozell.hill@example.com', 10, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(10, 'Koepp-Rowe', 'Mohr Group', 'Beier Group', 'astrid.leannon@example.org', 5, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(11, 'Metz PLC', 'Hegmann-Torp', 'Daniel-Russel', 'vstoltenberg@example.com', 5, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(12, 'Braun-Daugherty', 'Gutkowski-Ferry', 'Spencer-Sipes', 'qrogahn@example.org', 13, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(13, 'Durgan-Reilly', 'Weissnat Group', 'Hudson, Gibson and Hyatt', 'cschroeder@example.com', 3, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(14, 'Weber, Haag and Gottlieb', 'Roberts, Thompson and Barton', 'Homenick-Lockman', 'nstehr@example.net', 3, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(15, 'Kuhn, Abshire and Feeney', 'Barrows-Jakubowski', 'Kemmer, Hauck and Zemlak', 'bauch.michale@example.com', 2, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(16, 'Walsh Group', 'Weissnat PLC', 'Cronin PLC', 'dorian.armstrong@example.com', 1, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(17, 'Marquardt and Sons', 'Moen, Koepp and Metz', 'Hauck, Harvey and Waters', 'delphia.haley@example.com', 13, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(18, 'Becker, Rowe and Satterfield', 'Kulas-McKenzie', 'Harvey PLC', 'eveline.green@example.net', 9, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(19, 'Haag PLC', 'Lehner-Yost', 'Hintz-Lowe', 'wendy56@example.org', 11, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(20, 'Boyer-Hoeger', 'Lesch Inc', 'Jaskolski Group', 'adeline48@example.org', 3, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(21, 'fjjhfjn', 'ghmgjx', 'gkmgxj', '', 21, '2020-09-19 06:04:33', '2020-09-19 06:04:33');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `salary`, `location`, `country`, `user_id`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Web Developer', 'Voluptas et et harum eum aut nemo. Dolor quos adipisci officia explicabo illo similique. Fuga autem qui quia magni cumque ipsam non. Rerum nesciunt ea possimus esse itaque nihil. Ut excepturi laboriosam corrupti repellendus ad culpa et est. Voluptate id enim odio rerum ad perferendis. Commodi at repudiandae odio. Et accusamus delectus earum possimus laboriosam in similique dignissimos. Quibusdam non in tenetur autem.', '10490', 'Aimeebury', 'Switzerland', 7, 18, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(2, 'Athletic Trainer', 'Rem suscipit quis deserunt autem veniam. Molestiae nihil quam provident repellat nostrum repellendus. Nemo laudantium quos rem error. Nihil voluptate beatae ut sapiente. Qui voluptatem libero facilis tenetur delectus. Explicabo ut possimus et adipisci nobis accusantium beatae. Sequi voluptatem inventore cum est at. Qui eum qui dolorem commodi cumque vero. Eum consequatur animi itaque et nam dolor. Excepturi accusamus et id earum est nobis laborum. Error est sequi qui harum sit. Sequi fugiat dolores aut quia nemo saepe. Expedita aperiam corporis sint facere ipsam occaecati. Delectus distinctio qui voluptate optio. Id voluptatibus assumenda dolorem eaque eius nobis hic. Officiis harum autem iure in. Ducimus itaque nesciunt ut voluptas necessitatibus sunt.', '18120', 'Steuberton', 'Liechtenstein', 17, 12, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(3, 'Watch Repairer', 'Et laborum aut corrupti cupiditate exercitationem odit. Ipsum eaque sint ut beatae. Dolorem repellendus illum est iure impedit harum nobis. Modi et numquam saepe voluptatem et totam in. Eum eum velit et dolor enim pariatur accusantium. Tempore corrupti dolorem voluptates. Non quis aliquid soluta ex autem eligendi. Ea aut aut tempora. Ipsam aperiam et est minus et veritatis. Est unde et corporis reprehenderit aut vitae aut. Ipsa ea placeat sed. Nam temporibus doloremque optio. Eaque minus recusandae veniam. Occaecati ut provident repellendus aut omnis. Tenetur illo eius optio possimus aut impedit. Vero tempore nisi provident. Doloremque est non iure qui dolor provident est et. Aliquid quae voluptatem quia sapiente pariatur necessitatibus expedita occaecati. Minus sit vero quo ullam sed placeat. Fugiat molestiae architecto temporibus maxime fugit sed voluptatibus quisquam. Dicta voluptas exercitationem veritatis id laborum vel consectetur. Vero asperiores cupiditate aperiam eligendi ullam et voluptatem. Quaerat sit autem natus.', '19344', 'West Amaramouth', 'Cayman Islands', 11, 13, '2020-09-19 02:10:06', '2020-09-19 02:10:06'),
(4, 'Network Admin OR Computer Systems Administrator', 'Et consequuntur deserunt sed error. Eligendi et impedit deleniti vitae. Repellendus doloremque mollitia nesciunt soluta enim. Commodi quae possimus quia aut omnis. Cumque placeat laboriosam excepturi repellat ea non. Earum repellendus tempore perferendis maiores qui aperiam facilis. Veritatis dicta ut incidunt voluptatibus. Unde est nemo delectus. Laudantium illum tempora adipisci vitae eum. Quae non sit aliquid rerum sint quis sit. Ut tempore rerum est officiis similique ut sequi. Impedit amet eos delectus error accusamus. Alias neque provident sint architecto. Et dolore ea dolores quo assumenda. At impedit at consequatur omnis asperiores. Amet rerum veniam quae in assumenda quos quis explicabo. Repellendus autem cum cumque atque pariatur et tempora vero. Quibusdam eos facilis voluptatem vel. Maxime laboriosam perferendis debitis. Eligendi nostrum doloremque minima quae sunt qui cumque.', '3658', 'East Berenice', 'Guinea-Bissau', 16, 19, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(5, 'Shampooer', 'Sint laborum quia in. Deserunt est minima ut omnis ullam quas ipsam. Nam necessitatibus cupiditate iste earum delectus sint. Aut voluptas distinctio sed nihil mollitia eveniet asperiores. Dolor voluptatem quibusdam exercitationem cumque corporis et dolorem libero. Reiciendis distinctio molestiae qui aliquid amet maiores pariatur. Qui earum provident possimus non minus. Sit maiores saepe necessitatibus consequatur deleniti. Illo cum dolor et reprehenderit non. Consequatur praesentium porro commodi est. Dolor nihil dicta quasi voluptatibus. Minus corrupti impedit natus minima adipisci ipsum libero. Et perspiciatis non assumenda aliquid aperiam. Architecto nihil dicta sed quia vel non. Dolores reprehenderit animi quam.', '16199', 'Lake Maeveburgh', 'Malawi', 20, 12, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(6, 'Boiler Operator', 'Unde aperiam architecto quod inventore omnis rem. Deleniti non accusamus earum animi. Earum quia aut aperiam officiis excepturi beatae. Qui consectetur rem sequi voluptas eius ea temporibus. Optio soluta maxime quos aut temporibus aut. Perferendis tempore iusto debitis eos sint voluptate. At laboriosam vel quibusdam vel possimus magni culpa. Minima odio eaque eveniet dolorum. Natus nisi aut dolorem voluptates. Odio autem veritatis repudiandae vitae est.', '15981', 'Libbieside', 'Norfolk Island', 7, 15, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(7, 'Oil Service Unit Operator', 'Recusandae ut autem veniam veritatis. Et et quasi nesciunt ipsa. Quia cum eligendi optio magnam dolorum asperiores ducimus. Facere sunt porro nam dolorem ullam aut. Dolorem facilis minus non delectus eligendi ipsa sunt. Aut voluptatem nam veritatis ad rerum corrupti. Eum voluptates cum maxime vel quae deserunt quisquam est. Nemo nulla et quos aut consequatur. Dolor et enim cupiditate dolor. Consequuntur voluptas et sunt sed amet sint dolor. Nihil quasi voluptates enim eaque. Beatae magni alias eum temporibus velit et doloribus. Hic qui eligendi suscipit reiciendis minus recusandae labore. Officia iure et omnis consequatur est enim. Maiores pariatur rem explicabo est et. Enim placeat sunt enim doloremque. Perspiciatis et fugiat repellendus minima et voluptas. Laboriosam minima deserunt et placeat eaque officia. Tempora omnis nostrum aut. Tempore laborum est aut aut. Soluta possimus quos et enim et sunt nobis.', '7687', 'Lake Flossieport', 'Papua New Guinea', 11, 19, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(8, 'Operating Engineer', 'Pariatur fugiat voluptatem omnis consequatur enim ut reprehenderit. Pariatur aliquid non quia voluptatum. Alias rerum quis ipsam et deserunt. Non tenetur voluptas possimus ea. Earum nostrum qui labore veritatis aut occaecati. At voluptas doloremque laudantium quia et natus. Maxime tempora tempora nostrum aut vel. Quae itaque iure omnis labore nihil dolor. Laudantium nesciunt voluptatem pariatur deleniti accusantium adipisci sunt. Iure in omnis provident hic voluptatibus totam fugit. Ipsum saepe voluptatem dolorum aut et impedit. Non at doloribus quod minus et ipsum aperiam tempora. Et quia saepe cupiditate dolores magni perferendis. Unde qui delectus consequuntur aliquid qui voluptas nemo.', '18159', 'North Ansleyland', 'Lao People\'s Democratic Republic', 1, 13, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(9, 'HR Specialist', 'Amet et debitis minus repellendus perferendis. Repellendus placeat itaque perferendis ab alias. Fugit eos fugit illum minus. Sed laboriosam vel sit odit. Similique sequi voluptatibus quasi. Tempora quas consequatur explicabo. Unde blanditiis officia aut adipisci numquam. Optio quia optio sed ullam. Est similique quos voluptatem itaque iure vel. Doloremque ratione neque aut temporibus dicta. Vero explicabo consequatur cupiditate hic. Alias accusamus tenetur voluptatem labore omnis omnis maiores. Magni expedita voluptate praesentium. Qui et voluptas nulla eos delectus delectus harum eaque. Accusantium et ducimus accusantium animi consequuntur praesentium. Veniam ab quibusdam ipsum. Voluptatem consectetur aliquid assumenda sit quod rerum dolores. Eaque omnis velit officiis maiores beatae. Dolorem aut rerum unde labore in. Similique qui ut quo eveniet quod. Praesentium explicabo modi recusandae iusto voluptas corrupti sequi. Culpa eaque in est similique. Est tenetur dicta qui officiis eaque est. Ratione quae commodi eius est sequi quia labore recusandae. Illum voluptas odio neque praesentium magnam harum. Quam nihil rerum fugiat nesciunt. Molestiae quibusdam et quibusdam quo est et aspernatur at. Exercitationem quis ullam aliquam nisi est sapiente non. Sint eum aut qui aut quia.', '12736', 'Minniechester', 'Tanzania', 1, 4, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(10, 'Casting Machine Operator', 'Tempore cumque temporibus asperiores est provident aut. Et nulla itaque quo quod. Quasi saepe quibusdam omnis voluptatibus deserunt voluptas. Aut rerum voluptatum ut. Officia corporis sed eaque repellat recusandae sint ut. Quia aperiam porro neque nihil veniam. Molestiae tempora cumque libero molestiae voluptatem assumenda. Nulla non qui reiciendis incidunt eos ex et. Optio aliquam voluptatibus iusto voluptatem. Neque quia omnis non eos. Enim ex earum repellat ratione ad. Quod iusto autem qui quas rerum. Ipsa nihil molestias omnis occaecati saepe aspernatur voluptates sit. Distinctio odit rerum et veniam. Maiores voluptatem modi et consequatur eos culpa iure. Quis explicabo excepturi quod dolore. Repellat harum voluptas nemo a veniam unde et.', '12313', 'Elenabury', 'Costa Rica', 12, 4, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(11, 'Airframe Mechanic', 'Error iusto sed corrupti ut. Fuga facilis odio delectus et id. Et fugit voluptatem quibusdam dolores. Est eum voluptatem dignissimos. Quasi molestias nisi magni. Quas fuga eveniet libero sed est ex natus perferendis. Non inventore sequi aut et ut. Nisi saepe ut odio excepturi nulla. Tempora cumque quo sed sed ut. Tempora aut eos natus omnis. Iure nihil quia fugiat eum.', '19679', 'Alvertafurt', 'Latvia', 10, 16, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(12, 'Elevator Installer and Repairer', 'Quis voluptas a et quis consequatur. Magnam ipsa voluptates animi cum qui. Voluptatem magni voluptas suscipit laboriosam eum voluptatum ut qui. Ducimus tempore velit praesentium. Quo aut laboriosam sit eos. Est assumenda minus facere saepe ut. Delectus eum non assumenda nisi nisi maxime et. Dolore velit maiores dolorem pariatur consequatur ratione qui. Autem non aut aliquam autem. Cupiditate sed sed eligendi repudiandae. Facilis sed quidem ratione totam ipsa tempore qui. Sit ex earum natus incidunt unde id magnam. Voluptatem cumque repudiandae praesentium ea voluptas eos magnam. Voluptatum voluptatem nisi suscipit ullam. Enim odit unde doloremque.', '11684', 'South Maeveland', 'United Kingdom', 1, 9, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(13, 'Maid', 'Voluptatibus dolores qui omnis facere. Quis laborum veritatis quod voluptates qui officia accusantium. Magnam exercitationem hic ex odio. Ullam sed facere eos cupiditate eos. Ut itaque provident rerum. Magni dolore at alias illum quos occaecati. Odio porro at provident eligendi quo et. Exercitationem consequatur impedit perspiciatis mollitia. Sequi quis et porro impedit impedit libero aperiam ut. A soluta sint nostrum et ullam eum. Alias delectus ut dolorem. Assumenda dolores numquam sed ullam autem eveniet. Et pariatur optio esse illo quia molestiae distinctio suscipit.', '19464', 'Lake Garretview', 'Benin', 16, 10, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(14, 'Captain', 'Blanditiis officiis quo et aut modi. Molestiae qui natus eaque deserunt doloribus qui sed aut. Assumenda labore corrupti labore et aspernatur sunt odio. Nam quasi ut aperiam consequatur asperiores. Nemo illum recusandae similique sequi mollitia omnis odit. Rem quasi quod provident magni porro distinctio molestias est. Voluptatibus laboriosam non nostrum. Officia quo quis expedita quidem autem ea natus animi. Quis a ullam unde eum atque pariatur odit. Qui neque quasi a consectetur sunt qui dolor. Deleniti consequatur quo et. Ex autem dolorem labore eum dolorem. Quae facere animi et illo quis quasi et. Aut quam odio repellat omnis dolor accusantium porro.', '1998', 'Svenberg', 'Poland', 11, 7, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(15, 'Dredge Operator', 'Ullam nam assumenda eveniet velit voluptatibus. Aut et impedit provident deserunt odit sit ex. Ut explicabo consequatur amet ea. Eius recusandae vel nemo. Eum iusto aliquam laboriosam autem. Possimus molestiae rerum unde voluptatem tempore qui nostrum. Dignissimos quia et sint ad amet. Et numquam illum alias quaerat. Dolorem dolorem quaerat maxime nulla voluptatibus nobis. Voluptate id optio consequatur dignissimos. Dicta incidunt optio ullam quo. Et a sit optio et. Quibusdam tempora sit eius autem totam nulla velit. Sunt omnis adipisci unde exercitationem unde. Nihil voluptatum repudiandae eaque. Aut aspernatur nihil quia voluptatem architecto. Non architecto tenetur sapiente sequi. Quod aliquam ad et ut nihil adipisci est. Alias consequatur suscipit libero et in voluptates pariatur at. Repudiandae deserunt odio ut non et ipsam. Ut placeat quo aut fugit. Natus non ut voluptatem et ut. Ipsa eaque quaerat ullam voluptatem aspernatur. Voluptates provident aut autem rerum ut. Qui aspernatur et sit odio nulla ex deserunt.', '1706', 'Wymanmouth', 'Antigua and Barbuda', 18, 11, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(16, 'Substance Abuse Social Worker', 'Sunt consequatur nulla vel quia saepe eum. Cupiditate assumenda enim qui sit omnis et itaque. A veniam aperiam culpa sed quaerat commodi. Atque voluptatum aut in consequatur. Asperiores accusantium provident ducimus nisi ullam vero. Doloribus aspernatur a corporis tempora fugiat blanditiis nulla. Perspiciatis fugit perspiciatis quo. Enim totam voluptatem est maiores eum. Illo et maxime reiciendis minima perferendis. Inventore omnis accusantium rerum necessitatibus necessitatibus aliquid libero. Vero optio alias quibusdam debitis rem quaerat nemo. Et ex nam sapiente reiciendis. Perspiciatis voluptas est est tempora delectus. Ipsa alias labore qui rem repudiandae.', '7010', 'Lake Vesta', 'Jamaica', 8, 7, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(17, 'Cardiovascular Technologist', 'Est voluptate qui aut. Velit laudantium ea velit nihil nesciunt. Consequatur laudantium totam et non et accusantium sunt aspernatur. Dolor eum corrupti aut consequuntur minima. Ut quod quia nam nihil laudantium perferendis et. Omnis voluptatem consequatur necessitatibus quasi. Consequuntur corrupti eligendi nam est quisquam dolores non. Odio et et id qui totam aut. Omnis earum est omnis molestiae pariatur sint. Quis sunt laborum omnis deserunt ducimus debitis voluptatem autem. Dignissimos aut perspiciatis commodi. Quibusdam architecto qui qui alias voluptatibus iusto animi. Velit et quos a ratione illo accusamus. Quia tempore placeat sit odit incidunt. Provident repudiandae consequatur dolor est dolor. Et quisquam voluptas quam pariatur aut non aperiam. Ipsum quia et consequuntur provident dolor placeat. Possimus animi labore similique est et. Qui aliquid porro magni quo vitae error est. In et nesciunt eos aut. Quod veniam velit amet molestiae possimus. Rerum corrupti explicabo nisi veritatis. Eos excepturi vitae tempore esse. Aliquid qui modi atque temporibus accusamus.', '13256', 'Port Hazleside', 'Iceland', 19, 13, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(18, 'Medical Equipment Preparer', 'Et praesentium doloremque esse atque culpa possimus. Amet deserunt ipsam deleniti quis et aliquam. Excepturi excepturi cupiditate tenetur animi amet dolor. Explicabo laudantium qui qui. Quidem suscipit rerum qui iusto sed. Sint et qui tempora. Est soluta aut quae aut accusantium. Vel molestiae facilis rem possimus veniam labore dignissimos. Omnis occaecati qui saepe nobis sit illum. Nostrum aut est illo omnis mollitia accusantium. Quaerat omnis facere accusantium eius. Eos vitae numquam autem recusandae. Enim nostrum et optio et sint. Tenetur consequatur et omnis harum sapiente nostrum asperiores.', '6723', 'Lake Phyllisland', 'Philippines', 5, 10, '2020-09-19 02:10:07', '2020-09-19 02:10:07'),
(19, 'Dental Laboratory Technician', 'Doloribus minus alias cum eius. Dignissimos rerum sit quibusdam possimus. Occaecati quas beatae vero. Velit molestiae modi sint et aliquam molestiae. Consequatur quas voluptas quibusdam nam. Labore dicta sunt omnis eius et non. Rerum veniam nam tempora vitae. Omnis labore cupiditate et quibusdam. Delectus a nisi ut temporibus ullam omnis dolores. Sint adipisci voluptatum est. Ad rerum voluptas quis hic. Quas excepturi suscipit voluptatum mollitia et at soluta quia. Libero molestiae ea nam inventore et excepturi commodi. Voluptas aut omnis consequatur et. Ea ea quod iste debitis ea nisi nihil. Aperiam autem modi eveniet. Voluptatem voluptas praesentium architecto voluptas molestias qui. Laudantium neque totam harum expedita autem. Sint enim qui quo ut aut magnam incidunt. Quod error dolore consequatur molestiae unde natus. Nostrum officiis praesentium vero quis quibusdam. Vitae perspiciatis at possimus deleniti velit.', '14721', 'Boscoborough', 'South Africa', 13, 3, '2020-09-19 02:10:08', '2020-09-19 02:10:08'),
(20, 'Welding Machine Tender', 'Et ex est omnis rerum. Magni in molestias id sed voluptatem reiciendis. Voluptas velit eum eos. Consequatur neque aut est rerum velit aspernatur. Quas qui non dolore architecto quasi occaecati. Et ut est libero eveniet soluta qui tenetur. Libero error et quae iste consequatur quod. Laborum voluptatem et esse id libero tempora tempora. Doloribus unde aperiam tempora vel ut. Praesentium quis dolorem est occaecati rerum et odit magnam. A laboriosam et sit saepe. Non et sunt et error amet ex. Ipsa inventore repellendus mollitia rerum vel facere. Molestiae eaque dolorem pariatur temporibus enim non doloribus sit. Dolores quisquam incidunt nam. Est et dignissimos sit deserunt.', '8320', 'South Nigel', 'Saint Pierre and Miquelon', 3, 13, '2020-09-19 02:10:08', '2020-09-19 02:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `job_user`
--

CREATE TABLE `job_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2020_09_15_072332_create_jobs_table', 1),
(4, '2020_09_15_072521_create_companies_table', 1),
(5, '2020_09_15_072603_create_profiles_table', 1),
(6, '2020_09_15_072849_create_job_user_table', 1),
(7, '2020_09_15_073028_create_tracks_table', 1);

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
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resume` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skills` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

CREATE TABLE `tracks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Nicholas Hyatt III', 'seeker', 'jarvis.murphy@example.net', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'phdjCNK7FN', '2020-09-19 02:10:03', '2020-09-19 02:10:03'),
(2, 'Javon Zboncak II', 'seeker', 'aokeefe@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jcdHOlp9QV', '2020-09-19 02:10:03', '2020-09-19 02:10:03'),
(3, 'Mrs. Ashlee Fisher Jr.', 'seeker', 'sonia71@example.net', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'greJrmkZ1Z', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(4, 'Dedric Corwin DDS', 'seeker', 'rau.jules@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'noziBpHAU5', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(5, 'Darien Hamill', 'seeker', 'shania47@example.net', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'k9LxDXMzDY', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(6, 'Ted Balistreri', 'seeker', 'wellington.kulas@example.net', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vDLhxEHxUd', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(7, 'Javier Gislason', 'seeker', 'guadalupe.jerde@example.com', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BAnATBGBZi', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(8, 'Freddy Oberbrunner', 'seeker', 'olson.maya@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HLmTeg6TNW', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(9, 'Rosendo Muller', 'seeker', 'vladimir82@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Xw2eoOOR89', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(10, 'Granville Spencer', 'seeker', 'wward@example.net', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HVV4jYC8mf', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(11, 'Mortimer Parisian', 'seeker', 'friesen.nayeli@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QPAwjiuUMr', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(12, 'Dr. Adriana Nikolaus MD', 'seeker', 'theresia.hettinger@example.com', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PEKfXgrMGz', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(13, 'Leif O\'Conner V', 'seeker', 'madalyn77@example.com', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NoX9nZssph', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(14, 'Mrs. Adela Cartwright V', 'seeker', 'elyse.walsh@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fF4DQkOS3l', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(15, 'Miller Reynolds', 'seeker', 'qgoodwin@example.net', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '493wZ6Rddo', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(16, 'Bruce Gusikowski', 'seeker', 'doug07@example.net', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pm7O7M8xhC', '2020-09-19 02:10:04', '2020-09-19 02:10:04'),
(17, 'Tito Rippin', 'seeker', 'dion.bogisich@example.com', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fuX02cftBg', '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(18, 'Bettye Trantow', 'seeker', 'grady.tabitha@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'QaFkTXlDlI', '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(19, 'Antonina Schumm', 'seeker', 'felicia20@example.org', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OXbvbNpya5', '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(20, 'Maximus Reichel', 'seeker', 'gloria49@example.com', '2020-09-19 02:10:03', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bekmPQ449M', '2020-09-19 02:10:05', '2020-09-19 02:10:05'),
(21, '', 'employer', 'gkmgx@ege.com', NULL, '$2y$10$wxk4W3M4EATXzPmsauCHMuOpvxbayhE3d8BvcIRuw3DZLoUn.nsdW', NULL, '2020-09-19 06:04:33', '2020-09-19 06:04:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_user`
--
ALTER TABLE `job_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracks`
--
ALTER TABLE `tracks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `job_user`
--
ALTER TABLE `job_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tracks`
--
ALTER TABLE `tracks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
