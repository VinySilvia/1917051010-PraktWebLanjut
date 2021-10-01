-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Okt 2021 pada 03.42
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `weblan_firtsproject`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2021-10-01-002223', 'App\\Database\\Migrations\\Posts', 'default', 'App', 1633048056, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(150) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`post_id`, `judul`, `deskripsi`, `gambar`, `author`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tempora necessitatibus et odio.', 'Optio provident velit porro consequatur dolor. Sit esse quibusdam quae autem est. Distinctio praesentium ut praesentium et et. Ullam et numquam assumenda ex quas.', NULL, 'Cordell Larkin', 'nature', 'eum-doloribus-sequi-velit-maxime', '2021-10-01 08:16:34', '2021-10-01 08:16:34'),
(2, 'Hic temporibus fugiat et.', 'Ut incidunt est et minima numquam aut ad. Ipsam velit ut harum atque atque et. Repellat explicabo labore id. Beatae illo molestiae quo. Vel optio amet consectetur voluptatem.', NULL, 'Ciara Russel Sr.', 'nature', 'commodi-quam-dolore-ullam', '2021-10-01 08:16:34', '2021-10-01 08:16:34'),
(3, 'Labore fuga quidem molestiae commodi.', 'Deserunt est maxime ullam. Illum qui dolorem rerum consequuntur dolores. Alias et sunt nihil neque quasi qui et. Qui est aspernatur voluptatibus et odio quae nobis.', NULL, 'Shanie Lowe DDS', 'nature', 'autem-unde-eos-exercitationem', '2021-10-01 08:16:34', '2021-10-01 08:16:34'),
(4, 'Illum totam inventore magni.', 'Et a tempora architecto nostrum. Sit sint ad assumenda corrupti quasi.', NULL, 'Pinkie Hudson', 'nature', 'iste-quaerat-rerum-provident', '2021-10-01 08:16:34', '2021-10-01 08:16:34'),
(5, 'Molestiae maxime sint.', 'Delectus consequuntur dolorem illo eius id. Commodi magnam consequatur dolores ut ratione accusantium. Harum rerum aut nesciunt fuga velit necessitatibus id. Hic facere sit ea et porro.', NULL, 'Jennyfer Mraz', 'nature', 'omnis-temporibus-tenetur', '2021-10-01 08:16:35', '2021-10-01 08:16:35'),
(6, 'Eos ducimus repellat quae occaecati.', 'Et quia voluptatem quis aut. Aut vel mollitia modi libero molestias velit velit. Reprehenderit error consequuntur qui earum hic voluptas accusamus.', NULL, 'Mr. Dedric Barrows', 'nature', 'quo-delectus-vero-amet', '2021-10-01 08:16:35', '2021-10-01 08:16:35');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
