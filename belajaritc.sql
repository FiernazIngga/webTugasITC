-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2025 at 09:45 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajaritc`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `idBuku` int NOT NULL,
  `judul` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun` int NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`idBuku`, `judul`, `genre`, `penulis`, `penerbit`, `tahun`, `isi`) VALUES
(59, 'The Case Against Reality', 'Filsafat, Psikologi', 'Donald Hoffman', 'Norton', 2019, 'Mengusulkan bahwa dunia yang kita alami bukanlah realitas sejati, melainkan konstruksi yang dihasilkan oleh pikiran kita.'),
(60, 'The Master and His Emissary', 'Filsafat, Psikologi', 'Iain McGilchrist', 'Yale University Press', 2009, 'Menganalisis peran dua belahan otak dalam pemikiran manusia dan bagaimana ketidakseimbangan keduanya mempengaruhi budaya dan peradaban.'),
(61, 'The Genealogy of Morals', 'Filsafat', 'Friedrich Nietzsche', 'Vintage', 1887, 'Menganalisis asal-usul nilai moral dan bagaimana nilai-nilai tersebut berkembang di dalam budaya manusia.'),
(62, 'The Fabric of the Cosmos', 'Fisika, Filsafat', 'Brian Greene', 'Knopf', 2004, 'Menggali struktur alam semesta dan berbagai teori fisika, termasuk teori string dan relativitas umum.'),
(63, 'The End of History and the Last Man', 'Filsafat, Politik', 'Francis Fukuyama', 'Free Press', 1992, 'Membahas bahwa dengan berakhirnya Perang Dingin, demokrasi liberal adalah bentuk terakhir dari pemerintahan manusia.'),
(64, 'The Structure of Evolutionary Theory', 'Biologi, Teori Evolusi', 'Stephen Jay Gould', 'Belknap Press', 2002, 'Membahas teori evolusi dalam konteks pemikiran modern, termasuk analisis terhadap perubahan dalam teori Darwin.'),
(65, 'The Paradox of Liberation', 'Politik, Sejarah', 'Miguel Angel Beltrán', 'Oxford University Press', 2014, 'Menelaah kontradiksi dalam upaya pembebasan sosial dan politik di Amerika Latin.'),
(66, 'The Art of Loving', 'Psikologi, Filsafat', 'Erich Fromm', 'Harper & Row', 1956, 'Menjelaskan tentang cinta dalam berbagai bentuk dan bagaimana mencapainya sebagai seni kehidupan.'),
(67, 'The Power of Now', 'Filsafat, Spiritualitas', 'Eckhart Tolle', 'New World Library', 1997, 'Membahas konsep hidup di saat ini sebagai cara untuk mencapai kebahagiaan dan kedamaian batin.'),
(68, 'How to Be an Existentialist', 'Filsafat', 'Gary Cox', 'Continuum', 2009, 'Menguraikan filosofi eksistensialisme dan bagaimana prinsip-prinsipnya dapat diterapkan dalam kehidupan sehari-hari.'),
(69, 'The Varieties of Religious Experience', 'Psikologi, Agama', 'William James', 'Longmans, Green, and Co.', 1902, 'Menganalisis pengalaman religius dari perspektif psikologi dan bagaimana pengalaman tersebut memengaruhi individu.'),
(70, 'The Hero with a Thousand Faces', 'Filsafat, Psikologi', 'Joseph Campbell', 'Princeton University Press', 1949, 'Menganalisis pola-pola universal dalam cerita heroik di berbagai budaya dan mitologi dunia.'),
(71, 'On the Origin of Consciousness', 'Psikologi, Filsafat', 'Julian Jaynes', 'Houghton Mifflin', 1976, 'Mengusulkan teori bahwa kesadaran manusia berkembang secara evolusioner, dimulai dari keadaan pikiran yang terbagi.'),
(72, 'The New Jim Crow', 'Sosiologi, Politik', 'Michelle Alexander', 'The New Press', 2010, 'Mengkritik sistem peradilan pidana di Amerika Serikat dan dampaknya terhadap diskriminasi rasial terhadap orang kulit hitam.'),
(73, 'The Art of War for Executives', 'Manajemen, Militer', 'Donald G. Krause', 'Hyperion', 2002, 'Mengadaptasi prinsip-prinsip taktik perang klasik Sun Tzu untuk dunia manajemen dan strategi bisnis.');

-- --------------------------------------------------------

--
-- Table structure for table `pinjambuku`
--

CREATE TABLE `pinjambuku` (
  `idPinjam` int NOT NULL,
  `idUser` int NOT NULL,
  `idBuku` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pinjambuku`
--

INSERT INTO `pinjambuku` (`idPinjam`, `idUser`, `idBuku`) VALUES
(20, 24, 14),
(21, 24, 15),
(22, 24, 16),
(23, 24, 17),
(24, 24, 18);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `namaLengkap` varchar(255) NOT NULL,
  `emailUser` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `namaLengkap`, `emailUser`, `username`, `password`) VALUES
(24, 'user', 'user@gmail.com', 'user', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idBuku`);

--
-- Indexes for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  ADD PRIMARY KEY (`idPinjam`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `idBuku` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `pinjambuku`
--
ALTER TABLE `pinjambuku`
  MODIFY `idPinjam` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
