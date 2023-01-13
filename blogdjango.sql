-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Czas generowania: 13 Sty 2023, 16:23
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `blogdjango`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add entry', 7, 'add_entry'),
(26, 'Can change entry', 7, 'change_entry'),
(27, 'Can delete entry', 7, 'delete_entry'),
(28, 'Can view entry', 7, 'view_entry');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$WJrWV35PwgV2O89jyxJFWv$kB8vg5hJiE6VKxqyaLLWxm5zZMli02XQNo0/YpPmZg4=', '2023-01-12 19:17:21.790006', 1, 'admin', '', '', '', 1, 1, '2023-01-12 19:17:12.186000');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-12 19:20:08.219014', '1', 'Wpis testowy', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Body\"]}}]', 7, 1),
(2, '2023-01-12 19:20:22.564834', '2', 'drugi wpis testowy', 2, '[{\"changed\": {\"fields\": [\"Slug\", \"Body\"]}}]', 7, 1),
(3, '2023-01-12 19:34:05.224710', '2', 'Drugi wpis testowy', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(4, '2023-01-12 20:43:15.142025', '1', 'Lorem Ipsum', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(5, '2023-01-12 20:43:23.950037', '2', 'It is a long established', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 7, 1),
(6, '2023-01-13 13:02:44.407667', '3', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-01-13 13:02:53.742543', '4', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-01-13 13:02:58.898738', '5', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-01-13 13:03:05.873451', '6', 'Lorem Ipsum', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-01-13 14:36:21.307012', '7', 'Donec', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-01-13 14:36:35.145094', '8', 'Proin', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-01-13 14:36:44.076201', '9', 'Sed', 1, '[{\"added\": {}}]', 7, 1),
(13, '2023-01-13 14:36:55.324263', '10', 'Vivamus', 1, '[{\"added\": {}}]', 7, 1),
(14, '2023-01-13 14:37:05.689084', '11', 'Quisque', 1, '[{\"added\": {}}]', 7, 1),
(15, '2023-01-13 14:37:19.065436', '12', 'Sed', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-01-13 14:37:30.154926', '13', 'Cras', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-01-13 14:37:40.355075', '14', 'Maecenas', 1, '[{\"added\": {}}]', 7, 1),
(18, '2023-01-13 14:37:56.698747', '15', 'Nulla', 1, '[{\"added\": {}}]', 7, 1),
(19, '2023-01-13 14:38:08.762779', '16', 'Fusca', 1, '[{\"added\": {}}]', 7, 1),
(20, '2023-01-13 14:38:20.629836', '17', 'Etiam', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'entries', 'entry'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-12 19:06:21.915994'),
(2, 'auth', '0001_initial', '2023-01-12 19:06:22.119967'),
(3, 'admin', '0001_initial', '2023-01-12 19:06:22.182872'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-12 19:06:22.198504'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-12 19:06:22.214135'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-12 19:06:22.245394'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-12 19:06:22.277041'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-12 19:06:22.292672'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-12 19:06:22.292672'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-12 19:06:22.323931'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-12 19:06:22.323931'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-12 19:06:22.339562'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-12 19:06:22.339562'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-12 19:06:22.355192'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-12 19:06:22.372828'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-12 19:06:22.386840'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-12 19:06:22.402473'),
(18, 'entries', '0001_initial', '2023-01-12 19:06:22.418102'),
(19, 'sessions', '0001_initial', '2023-01-12 19:06:22.433731'),
(20, 'entries', '0002_alter_entry_table', '2023-01-12 19:07:34.973637');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('pf0jliuqzbr6guv0foy2say3qi2movij', '.eJxVjEEOwiAQRe_C2hAoDFSX7j0DmWEGqZo2Ke3KeHfbpAvd_vfef6uE61LT2mROA6uLsur0uxHmp4w74AeO90nnaVzmgfSu6IM2fZtYXtfD_Tuo2OpWiwOIxRukvjDEHtDYQtxFzFiyBUuMnaVAYtwZinhywsASgt94dOrzBQVSORM:1pG34j:ZtNZRobi_01lUN6J97qJhxc3eI58eIiyJPAZ5esW7zg', '2023-01-26 19:17:21.794432');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `entries`
--

CREATE TABLE `entries` (
  `id` bigint(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `body` longtext NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `entries`
--

INSERT INTO `entries` (`id`, `title`, `slug`, `body`, `date`) VALUES
(1, 'Lorem Ipsum', 'Lorem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-01-12 19:10:05.290127'),
(2, 'It is a long established', 'Lorem', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2023-01-12 19:16:00.794372'),
(3, 'Lorem Ipsum', 'Lorem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-01-13 13:02:44.402668'),
(4, 'Lorem Ipsum', 'Lorem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-01-13 13:02:53.741543'),
(5, 'Lorem Ipsum', 'Lorem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-01-13 13:02:58.897365'),
(6, 'Lorem Ipsum', 'Lorem', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-01-13 13:03:05.872451'),
(7, 'Donec', 'donec', 'Donec arcu ligula, aliquam a feugiat vel, luctus sed quam. Aliquam molestie tortor maximus efficitur scelerisque. Curabitur interdum porttitor dui, non auctor velit hendrerit vel. Pellentesque eleifend ex ut semper molestie. Aenean pharetra odio sed metus vehicula, id luctus lacus pretium. Mauris hendrerit enim et congue lacinia. Ut vitae dapibus ipsum. Sed lacus quam, efficitur a ultrices sit amet, dapibus quis nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '2023-01-13 14:36:21.304787'),
(8, 'Proin', 'proin', 'Proin ornare ligula urna, et hendrerit tellus mollis eu. Maecenas feugiat ultrices odio at finibus. Sed condimentum, nulla sed sodales pulvinar, ligula enim venenatis lorem, et pharetra diam mauris non enim. Nulla a sapien sed magna efficitur vehicula id quis magna. Suspendisse augue ipsum, malesuada at elementum vel, venenatis vel tortor. In lacinia quis mi ac fermentum. Suspendisse potenti. Donec et luctus lacus. Aliquam erat volutpat. Suspendisse ultrices varius ligula, sed malesuada nisi rhoncus nec. Curabitur est eros, blandit in mattis non, porttitor a libero. Suspendisse nisi metus, accumsan sed neque eu, euismod porta tellus. Duis lobortis tempor ipsum nec volutpat.', '2023-01-13 14:36:35.143094'),
(9, 'Sed', 'sed', 'Sed ultricies consequat feugiat. Etiam eu pretium velit. Praesent imperdiet orci in tellus congue, at finibus turpis auctor. Duis id orci tincidunt, egestas dolor sed, imperdiet sapien. Aliquam egestas dictum arcu, sed interdum nulla lacinia vitae. Nam laoreet augue quis mi viverra molestie. Donec vitae sodales nisi. Interdum et malesuada fames ac ante ipsum primis in faucibus.', '2023-01-13 14:36:44.074923'),
(10, 'Vivamus', 'Vivamus', 'Vivamus gravida interdum neque, eget fringilla orci mattis ut. Suspendisse eget orci quis tortor rutrum finibus sed non eros. Etiam eget convallis tellus. Duis et diam in metus porta rhoncus. Fusce tincidunt nunc sed nunc iaculis fermentum aliquam vel dolor. Fusce tellus nunc, hendrerit a pharetra vitae, consectetur convallis lacus. Nullam pellentesque sem ac risus semper ultricies. Proin posuere risus massa, non faucibus nisi tincidunt eu. Integer iaculis nisi nec neque pretium porttitor. Sed eget dapibus nibh. Morbi sed ex ligula. Aenean eget ipsum a libero aliquam luctus id vel nulla. Aliquam erat volutpat. Duis at porttitor nunc. Fusce tincidunt nisi id accumsan elementum.', '2023-01-13 14:36:55.323262'),
(11, 'Quisque', 'Quisque', 'Quisque viverra felis quis orci viverra, quis eleifend sapien tempor. Vestibulum malesuada fringilla enim eu lacinia. Suspendisse vulputate nunc in dui rutrum, nec tristique nisi lacinia. Fusce sagittis, sem vitae tristique suscipit, sem risus lobortis dolor, ac elementum erat nibh vulputate tellus. Aliquam viverra eros ullamcorper purus condimentum, ullamcorper auctor lorem facilisis. Mauris luctus euismod fringilla. Etiam consequat sed ligula faucibus pulvinar.', '2023-01-13 14:37:05.689084'),
(12, 'Sed', 'sed', 'Sed sed ex elementum, malesuada ipsum ac, pulvinar risus. Nullam et consectetur erat. Sed varius lectus ac felis egestas pulvinar. Vivamus eget sem vitae neque elementum accumsan. Proin faucibus erat a urna blandit cursus. Maecenas tempus ante non condimentum pulvinar. Phasellus id volutpat purus. Sed sed nisi in tellus gravida pellentesque. Etiam commodo orci quis venenatis sagittis. Maecenas sed lobortis sapien. Phasellus lobortis augue vitae nulla pharetra, vel bibendum enim ornare. Quisque venenatis mauris id tristique interdum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras at leo nisi. Donec id justo vehicula, fringilla mauris sed, malesuada magna.', '2023-01-13 14:37:19.064435'),
(13, 'Cras', 'Cras', 'Cras tempus nulla quis nisl consectetur, eu sodales arcu tristique. Duis id quam sed est volutpat dignissim eget eget augue. Nunc ut ipsum at mauris accumsan aliquam id molestie dolor. Curabitur dignissim tellus a enim blandit, eget dictum enim interdum. Quisque metus quam, pulvinar id lacus eget, tempus congue dui. Fusce vel ipsum sed odio feugiat hendrerit. Sed dictum, odio ac efficitur scelerisque, libero nisi rutrum ligula, eu rutrum augue turpis quis erat. Integer malesuada risus ut velit blandit, sit amet sollicitudin ante scelerisque. Suspendisse dignissim, est in pretium blandit, nisl neque molestie enim, et tempus dolor mi id risus.', '2023-01-13 14:37:30.153491'),
(14, 'Maecenas', 'Maecenas', 'Maecenas at efficitur tortor. Integer vel lacinia elit. Etiam eget leo sed nisl aliquet pretium at ultricies velit. Fusce consectetur eros ut libero feugiat semper. Aliquam rhoncus diam justo, ac venenatis sapien blandit nec. Pellentesque eu nibh nulla. Nam facilisis diam odio, eu facilisis lorem congue non. Etiam consectetur varius augue, eget tempor massa porttitor eget. Donec pretium ac turpis vel sodales. Quisque dapibus cursus velit, vel lacinia arcu imperdiet sit amet. In condimentum tellus eu bibendum dignissim. Quisque finibus ipsum neque, ac pulvinar dui hendrerit a.', '2023-01-13 14:37:40.354075'),
(15, 'Nulla', 'Nulla', 'Nulla quis efficitur lacus. Nullam sed nulla sed erat porttitor ultrices. Phasellus suscipit dui quis ipsum accumsan, sit amet suscipit mi fringilla. Praesent aliquet, augue at efficitur sollicitudin, erat diam iaculis sem, sed aliquam sapien orci sit amet nunc. Vestibulum eget est nulla. Integer vel neque urna. Cras pretium luctus nisl, quis consequat massa. Sed nec egestas lorem, non convallis lectus. Vivamus id odio purus. Nunc semper elementum accumsan. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Integer semper convallis magna vitae efficitur. Etiam libero diam, sollicitudin vel arcu quis, condimentum tincidunt enim. Nam porta maximus lacus, sit amet feugiat augue blandit ac.', '2023-01-13 14:37:56.697905'),
(16, 'Fusca', 'fusca', 'Fusce sodales nulla ut magna dignissim, in vulputate sapien rhoncus. In hac habitasse platea dictumst. Mauris nec eros magna. Nam blandit nisi non metus commodo ullamcorper. Fusce eget tempus leo, nec viverra lectus. Proin id faucibus mauris. Aenean cursus imperdiet mauris eu consequat. Nulla ac rhoncus mauris, at suscipit risus. In luctus erat risus, iaculis consequat mauris egestas id. Praesent non vehicula arcu, eget cursus orci. Sed bibendum sed felis non venenatis. Ut gravida imperdiet dui vitae pretium. Integer tristique at magna in bibendum. Curabitur venenatis eu neque at egestas.', '2023-01-13 14:38:08.761908'),
(17, 'Etiam', 'Etiam', 'Etiam vestibulum non ante sed lobortis. Donec aliquam pulvinar mi, non sagittis lectus viverra id. Phasellus sagittis lectus in mi dapibus, eleifend accumsan tellus tincidunt. Donec volutpat orci sed risus dapibus, vitae consequat augue efficitur. Vivamus libero justo, dictum id sapien quis, commodo molestie massa. Cras tempus augue quis purus posuere congue. Nunc nibh est, sodales in dolor a, blandit consectetur ante. Aenean eget finibus ex. Pellentesque commodo maximus diam, sed vestibulum libero pharetra sed. Aenean nec lacus at orci fringilla malesuada.', '2023-01-13 14:38:20.628836');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeksy dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeksy dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeksy dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeksy dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeksy dla tabeli `entries`
--
ALTER TABLE `entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entries_entry_slug_dc9880c0` (`slug`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `entries`
--
ALTER TABLE `entries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ograniczenia dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ograniczenia dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
