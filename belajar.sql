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
-- Database: `belajar`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`idBuku`, `judul`, `genre`, `penulis`, `penerbit`, `tahun`, `isi`) VALUES
(14, 'The Ultimate Hero', 'Action', 'Tetsuo', 'Gahosha', 1967, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam quos mollitia fugit odit itaque saepe reiciendis quam repudiandae facere ratione? Minima reprehenderit deserunt sunt voluptate neque, iusto reiciendis modi doloribus veritatis adipisci accusantium nisi ducimus commodi id quisquam! Illo eum voluptatum modi, animi molestiae sit asperiores non at delectus inventore culpa iure provident reprehenderit? Voluptatibus ratione, eum praesentium molestiae magni aliquid error libero vel mollitia sint dignissimos corporis id provident laudantium tempora labore cum officia ipsam at hic obcaecati. Fugiat, facilis nam. Rerum distinctio, reiciendis dolores unde ipsam debitis, est reprehenderit mollitia itaque provident porro ipsum animi vitae nisi quibusdam quia nesciunt veritatis. Eveniet minus enim error expedita. At illum alias rerum itaque ipsum facilis, exercitationem nobis expedita ab accusamus obcaecati, molestiae minima voluptatum ex, earum tempore iusto praesentium repellendus necessitatibus cumque aspernatur iste. Nisi consequatur pariatur deserunt itaque quae aliquam reiciendis qui dolores, illum temporibus quisquam aliquid odio laudantium provident voluptas, ipsam recusandae repellat harum ullam vel suscipit, totam quam fuga exercitationem? Qui in ad amet eveniet odio, quia voluptas inventore odit eum fuga numquam ratione, molestias omnis excepturi aspernatur. Expedita molestias sed ut? Esse vel quisquam dolorem! Eos, voluptatem voluptatum illum voluptatibus ipsum ut corporis enim repellat totam, laudantium assumenda dolores odio provident modi dolor obcaecati consequuntur culpa, facere porro consequatur vel rerum animi. Dolorem dolore sequi tenetur, placeat tempora sed quasi enim nesciunt deserunt voluptate doloremque expedita itaque, neque in vel dolorum iure nostrum temporibus minus illum. Quod blanditiis tenetur impedit mollitia praesentium officiis quidem, fuga maxime corrupti vitae nobis, assumenda illum earum provident sapiente. Quod laudantium suscipit iusto aut accusamus odit pariatur illum delectus nihil laboriosam vel nulla dolores ea recusandae nemo atque dignissimos, architecto explicabo porro, officia temporibus maxime quo. Commodi repellat pariatur incidunt facere consequuntur illum enim ipsum accusantium placeat provident. Culpa illo non ut aut iusto unde ducimus obcaecati blanditiis cum dolorum omnis, rerum temporibus, facilis veniam sunt magnam id eligendi? Repellendus temporibus eligendi ab tenetur in totam, perspiciatis placeat dicta tempora veritatis molestias quos nesciunt, harum, eum rem? Impedit dolorum aliquam blanditiis. Tempore laborum enim blanditiis dolor doloribus ratione sint, accusamus, eligendi aliquam illum commodi eos fugiat quo non officia eum vitae tenetur obcaecati magni a! Nobis, in tempore itaque iste asperiores odio, vel illum eos vero voluptatem praesentium autem velit voluptatibus delectus ut reiciendis provident eum dolor eveniet. Rem accusamus delectus laudantium aliquam mollitia facere beatae ex ad expedita voluptatem. Ex repudiandae velit suscipit minima architecto sequi exercitationem, reiciendis in, qui eveniet porro ab unde. Quo corporis deserunt officia similique at voluptatibus sint cumque labore voluptates! Dolorum doloremque, minus, atque fugiat at nostrum sed eum accusantium corporis dolores cupiditate fugit distinctio incidunt, ea accusamus repudiandae labore magni. Obcaecati omnis cum magni, amet, nulla quas, ab voluptas reiciendis autem vero quasi tenetur. Fuga at totam consectetur a autem. Non voluptatem illum veniam, sed maiores sequi voluptates voluptas rem aperiam id similique laboriosam eum blanditiis amet eveniet sit voluptate vero quo impedit! Nostrum, nobis recusandae. Cumque itaque repudiandae quia enim illum quod dolorem aliquam, neque nihil error aspernatur voluptatem a, harum odit quo at in labore hic quis necessitatibus perferendis reprehenderit. Quam ad laboriosam sint iure laudantium, nobis eum itaque? Facilis earum impedit accusantium perferendis laboriosam porro dolorem pariatur dolore atque est maiores reprehenderit, maxime reiciendis? Tempora, tempore numquam ratione dolor sapiente, ex quibusdam magnam harum cum repellendus natus corporis beatae atque error porro eum nobis? Sapiente accusamus eaque dolor cum incidunt inventore maxime quisquam dicta quis facilis! Ullam praesentium ipsum culpa amet et eos laboriosam dolores minima quas tempora, eius quis alias placeat, iusto quae eveniet repudiandae rerum a. Velit voluptatum blanditiis perferendis totam sint unde aperiam aspernatur repudiandae consequatur beatae ipsa non temporibus molestiae commodi consequuntur a, enim deleniti. Mollitia asperiores eveniet, vitae ad amet sit, est voluptas, consequatur totam omnis voluptate eum porro repudiandae nobis illum eaque at excepturi tenetur dolorum similique. Quos, veniam asperiores distinctio animi repellat aliquam. Vitae soluta sed amet accusamus repellendus rerum qui? Id, corporis. Nemo qui maiores magnam, fugit ratione distinctio voluptates laboriosam quisquam ipsa et porro consequatur voluptate. Dolor quos dolorem, sint, a et eos laboriosam repellat ab natus magnam tenetur corporis assumenda aspernatur harum impedit. Inventore cum fugit, quos pariatur corrupti adipisci, nisi quae voluptatem earum sequi atque saepe odit, incidunt culpa accusantium laborum harum natus suscipit ut nobis ducimus eligendi veritatis ab soluta! Sint, ab natus omnis nisi aspernatur labore pariatur harum iusto fuga consequatur, hic molestiae aperiam explicabo ex commodi distinctio. Et officiis pariatur expedita nihil maxime at quisquam deserunt accusantium. Hic reiciendis veritatis perspiciatis adipisci deleniti atque dignissimos assumenda eos facilis, voluptate minima praesentium iste dolorum ad repudiandae necessitatibus totam labore quas laudantium nobis culpa recusandae! Neque temporibus eveniet autem ratione doloremque quas. Consequuntur hic laudantium nihil voluptate, beatae quia velit aliquam asperiores ex amet. Ipsam est reprehenderit accusamus necessitatibus ut? Eum, voluptatum nostrum hic accusamus ipsa asperiores excepturi at ullam sint temporibus ea illum id quos dolor. Eius ipsum, id, ullam vel dolorem commodi assumenda eaque reprehenderit nemo in voluptas, perferendis soluta alias placeat ipsam accusamus. Necessitatibus, autem nobis labore deleniti sapiente vitae voluptates doloribus illo praesentium! Tempora ullam est non, alias, vitae quidem iusto veniam voluptatibus reprehenderit maxime, similique explicabo placeat a? Nemo incidunt rerum perferendis porro aspernatur quidem dolorum sapiente fugit quasi quas voluptatum quis beatae, eaque quos nobis assumenda, eligendi commodi ducimus, dignissimos in. Laboriosam iste soluta accusantium adipisci. Eos nihil perferendis atque incidunt minima esse delectus dicta quasi deleniti molestiae. Optio deleniti velit voluptatum fuga nobis quis ad quia laboriosam quod sapiente, magni numquam ex possimus impedit eaque harum non doloribus error ratione amet. Eius suscipit hic tempora odit eligendi, sapiente aliquid! Culpa totam amet nulla, repellendus eveniet ipsam quae sint, provident at illo soluta tempora a officia molestiae dignissimos obcaecati neque ut assumenda. Eum hic fugit impedit rerum temporibus accusamus natus eius! At reprehenderit voluptate voluptatum, magnam quaerat alias maiores voluptatibus nam modi perspiciatis quae quam soluta exercitationem asperiores quos facilis ea repellendus in sapiente distinctio facere magni ducimus libero pariatur. Quos, porro quam.\n'),
(15, 'Ultraman Orb: The Movie Novel', 'Action', 'Various', 'Titan Books', 2014, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam quos mollitia fugit odit itaque saepe reiciendis quam repudiandae facere ratione? Minima reprehenderit deserunt sunt voluptate neque, iusto reiciendis modi doloribus veritatis adipisci accusantium nisi ducimus commodi id quisquam! Illo eum voluptatum modi, animi molestiae sit asperiores non at delectus inventore culpa iure provident reprehenderit? Voluptatibus ratione, eum praesentium molestiae magni aliquid error libero vel mollitia sint dignissimos corporis id provident laudantium tempora labore cum officia ipsam at hic obcaecati. Fugiat, facilis nam. Rerum distinctio, reiciendis dolores unde ipsam debitis, est reprehenderit mollitia itaque provident porro ipsum animi vitae nisi quibusdam quia nesciunt veritatis. Eveniet minus enim error expedita. At illum alias rerum itaque ipsum facilis, exercitationem nobis expedita ab accusamus obcaecati, molestiae minima voluptatum ex, earum tempore iusto praesentium repellendus necessitatibus cumque aspernatur iste. Nisi consequatur pariatur deserunt itaque quae aliquam reiciendis qui dolores, illum temporibus quisquam aliquid odio laudantium provident voluptas, ipsam recusandae repellat harum ullam vel suscipit, totam quam fuga exercitationem? Qui in ad amet eveniet odio, quia voluptas inventore odit eum fuga numquam ratione, molestias omnis excepturi aspernatur. Expedita molestias sed ut? Esse vel quisquam dolorem! Eos, voluptatem voluptatum illum voluptatibus ipsum ut corporis enim repellat totam, laudantium assumenda dolores odio provident modi dolor obcaecati consequuntur culpa, facere porro consequatur vel rerum animi. Dolorem dolore sequi tenetur, placeat tempora sed quasi enim nesciunt deserunt voluptate doloremque expedita itaque, neque in vel dolorum iure nostrum temporibus minus illum. Quod blanditiis tenetur impedit mollitia praesentium officiis quidem, fuga maxime corrupti vitae nobis, assumenda illum earum provident sapiente. Quod laudantium suscipit iusto aut accusamus odit pariatur illum delectus nihil laboriosam vel nulla dolores ea recusandae nemo atque dignissimos, architecto explicabo porro, officia temporibus maxime quo. Commodi repellat pariatur incidunt facere consequuntur illum enim ipsum accusantium placeat provident. Culpa illo non ut aut iusto unde ducimus obcaecati blanditiis cum dolorum omnis, rerum temporibus, facilis veniam sunt magnam id eligendi? Repellendus temporibus eligendi ab tenetur in totam, perspiciatis placeat dicta tempora veritatis molestias quos nesciunt, harum, eum rem? Impedit dolorum aliquam blanditiis. Tempore laborum enim blanditiis dolor doloribus ratione sint, accusamus, eligendi aliquam illum commodi eos fugiat quo non officia eum vitae tenetur obcaecati magni a! Nobis, in tempore itaque iste asperiores odio, vel illum eos vero voluptatem praesentium autem velit voluptatibus delectus ut reiciendis provident eum dolor eveniet. Rem accusamus delectus laudantium aliquam mollitia facere beatae ex ad expedita voluptatem. Ex repudiandae velit suscipit minima architecto sequi exercitationem, reiciendis in, qui eveniet porro ab unde. Quo corporis deserunt officia similique at voluptatibus sint cumque labore voluptates! Dolorum doloremque, minus, atque fugiat at nostrum sed eum accusantium corporis dolores cupiditate fugit distinctio incidunt, ea accusamus repudiandae labore magni. Obcaecati omnis cum magni, amet, nulla quas, ab voluptas reiciendis autem vero quasi tenetur. Fuga at totam consectetur a autem. Non voluptatem illum veniam, sed maiores sequi voluptates voluptas rem aperiam id similique laboriosam eum blanditiis amet eveniet sit voluptate vero quo impedit! Nostrum, nobis recusandae. Cumque itaque repudiandae quia enim illum quod dolorem aliquam, neque nihil error aspernatur voluptatem a, harum odit quo at in labore hic quis necessitatibus perferendis reprehenderit. Quam ad laboriosam sint iure laudantium, nobis eum itaque? Facilis earum impedit accusantium perferendis laboriosam porro dolorem pariatur dolore atque est maiores reprehenderit, maxime reiciendis? Tempora, tempore numquam ratione dolor sapiente, ex quibusdam magnam harum cum repellendus natus corporis beatae atque error porro eum nobis? Sapiente accusamus eaque dolor cum incidunt inventore maxime quisquam dicta quis facilis! Ullam praesentium ipsum culpa amet et eos laboriosam dolores minima quas tempora, eius quis alias placeat, iusto quae eveniet repudiandae rerum a. Velit voluptatum blanditiis perferendis totam sint unde aperiam aspernatur repudiandae consequatur beatae ipsa non temporibus molestiae commodi consequuntur a, enim deleniti. Mollitia asperiores eveniet, vitae ad amet sit, est voluptas, consequatur totam omnis voluptate eum porro repudiandae nobis illum eaque at excepturi tenetur dolorum similique. Quos, veniam asperiores distinctio animi repellat aliquam. Vitae soluta sed amet accusamus repellendus rerum qui? Id, corporis. Nemo qui maiores magnam, fugit ratione distinctio voluptates laboriosam quisquam ipsa et porro consequatur voluptate. Dolor quos dolorem, sint, a et eos laboriosam repellat ab natus magnam tenetur corporis assumenda aspernatur harum impedit. Inventore cum fugit, quos pariatur corrupti adipisci, nisi quae voluptatem earum sequi atque saepe odit, incidunt culpa accusantium laborum harum natus suscipit ut nobis ducimus eligendi veritatis ab soluta! Sint, ab natus omnis nisi aspernatur labore pariatur harum iusto fuga consequatur, hic molestiae aperiam explicabo ex commodi distinctio. Et officiis pariatur expedita nihil maxime at quisquam deserunt accusantium. Hic reiciendis veritatis perspiciatis adipisci deleniti atque dignissimos assumenda eos facilis, voluptate minima praesentium iste dolorum ad repudiandae necessitatibus totam labore quas laudantium nobis culpa recusandae! Neque temporibus eveniet autem ratione doloremque quas. Consequuntur hic laudantium nihil voluptate, beatae quia velit aliquam asperiores ex amet. Ipsam est reprehenderit accusamus necessitatibus ut? Eum, voluptatum nostrum hic accusamus ipsa asperiores excepturi at ullam sint temporibus ea illum id quos dolor. Eius ipsum, id, ullam vel dolorem commodi assumenda eaque reprehenderit nemo in voluptas, perferendis soluta alias placeat ipsam accusamus. Necessitatibus, autem nobis labore deleniti sapiente vitae voluptates doloribus illo praesentium! Tempora ullam est non, alias, vitae quidem iusto veniam voluptatibus reprehenderit maxime, similique explicabo placeat a? Nemo incidunt rerum perferendis porro aspernatur quidem dolorum sapiente fugit quasi quas voluptatum quis beatae, eaque quos nobis assumenda, eligendi commodi ducimus, dignissimos in. Laboriosam iste soluta accusantium adipisci. Eos nihil perferendis atque incidunt minima esse delectus dicta quasi deleniti molestiae. Optio deleniti velit voluptatum fuga nobis quis ad quia laboriosam quod sapiente, magni numquam ex possimus impedit eaque harum non doloribus error ratione amet. Eius suscipit hic tempora odit eligendi, sapiente aliquid! Culpa totam amet nulla, repellendus eveniet ipsam quae sint, provident at illo soluta tempora a officia molestiae dignissimos obcaecati neque ut assumenda. Eum hic fugit impedit rerum temporibus accusamus natus eius! At reprehenderit voluptate voluptatum, magnam quaerat alias maiores voluptatibus nam modi perspiciatis quae quam soluta exercitationem asperiores quos facilis ea repellendus in sapiente distinctio facere magni ducimus libero pariatur. Quos, porro quam.\n'),
(16, 'The Pragmatic Programmer: Your Journey to Mastery', 'Program', 'Andrew', 'Addison', 1999, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam quos mollitia fugit odit itaque saepe reiciendis quam repudiandae facere ratione? Minima reprehenderit deserunt sunt voluptate neque, iusto reiciendis modi doloribus veritatis adipisci accusantium nisi ducimus commodi id quisquam! Illo eum voluptatum modi, animi molestiae sit asperiores non at delectus inventore culpa iure provident reprehenderit? Voluptatibus ratione, eum praesentium molestiae magni aliquid error libero vel mollitia sint dignissimos corporis id provident laudantium tempora labore cum officia ipsam at hic obcaecati. Fugiat, facilis nam. Rerum distinctio, reiciendis dolores unde ipsam debitis, est reprehenderit mollitia itaque provident porro ipsum animi vitae nisi quibusdam quia nesciunt veritatis. Eveniet minus enim error expedita. At illum alias rerum itaque ipsum facilis, exercitationem nobis expedita ab accusamus obcaecati, molestiae minima voluptatum ex, earum tempore iusto praesentium repellendus necessitatibus cumque aspernatur iste. Nisi consequatur pariatur deserunt itaque quae aliquam reiciendis qui dolores, illum temporibus quisquam aliquid odio laudantium provident voluptas, ipsam recusandae repellat harum ullam vel suscipit, totam quam fuga exercitationem? Qui in ad amet eveniet odio, quia voluptas inventore odit eum fuga numquam ratione, molestias omnis excepturi aspernatur. Expedita molestias sed ut? Esse vel quisquam dolorem! Eos, voluptatem voluptatum illum voluptatibus ipsum ut corporis enim repellat totam, laudantium assumenda dolores odio provident modi dolor obcaecati consequuntur culpa, facere porro consequatur vel rerum animi. Dolorem dolore sequi tenetur, placeat tempora sed quasi enim nesciunt deserunt voluptate doloremque expedita itaque, neque in vel dolorum iure nostrum temporibus minus illum. Quod blanditiis tenetur impedit mollitia praesentium officiis quidem, fuga maxime corrupti vitae nobis, assumenda illum earum provident sapiente. Quod laudantium suscipit iusto aut accusamus odit pariatur illum delectus nihil laboriosam vel nulla dolores ea recusandae nemo atque dignissimos, architecto explicabo porro, officia temporibus maxime quo. Commodi repellat pariatur incidunt facere consequuntur illum enim ipsum accusantium placeat provident. Culpa illo non ut aut iusto unde ducimus obcaecati blanditiis cum dolorum omnis, rerum temporibus, facilis veniam sunt magnam id eligendi? Repellendus temporibus eligendi ab tenetur in totam, perspiciatis placeat dicta tempora veritatis molestias quos nesciunt, harum, eum rem? Impedit dolorum aliquam blanditiis. Tempore laborum enim blanditiis dolor doloribus ratione sint, accusamus, eligendi aliquam illum commodi eos fugiat quo non officia eum vitae tenetur obcaecati magni a! Nobis, in tempore itaque iste asperiores odio, vel illum eos vero voluptatem praesentium autem velit voluptatibus delectus ut reiciendis provident eum dolor eveniet. Rem accusamus delectus laudantium aliquam mollitia facere beatae ex ad expedita voluptatem. Ex repudiandae velit suscipit minima architecto sequi exercitationem, reiciendis in, qui eveniet porro ab unde. Quo corporis deserunt officia similique at voluptatibus sint cumque labore voluptates! Dolorum doloremque, minus, atque fugiat at nostrum sed eum accusantium corporis dolores cupiditate fugit distinctio incidunt, ea accusamus repudiandae labore magni. Obcaecati omnis cum magni, amet, nulla quas, ab voluptas reiciendis autem vero quasi tenetur. Fuga at totam consectetur a autem. Non voluptatem illum veniam, sed maiores sequi voluptates voluptas rem aperiam id similique laboriosam eum blanditiis amet eveniet sit voluptate vero quo impedit! Nostrum, nobis recusandae. Cumque itaque repudiandae quia enim illum quod dolorem aliquam, neque nihil error aspernatur voluptatem a, harum odit quo at in labore hic quis necessitatibus perferendis reprehenderit. Quam ad laboriosam sint iure laudantium, nobis eum itaque? Facilis earum impedit accusantium perferendis laboriosam porro dolorem pariatur dolore atque est maiores reprehenderit, maxime reiciendis? Tempora, tempore numquam ratione dolor sapiente, ex quibusdam magnam harum cum repellendus natus corporis beatae atque error porro eum nobis? Sapiente accusamus eaque dolor cum incidunt inventore maxime quisquam dicta quis facilis! Ullam praesentium ipsum culpa amet et eos laboriosam dolores minima quas tempora, eius quis alias placeat, iusto quae eveniet repudiandae rerum a. Velit voluptatum blanditiis perferendis totam sint unde aperiam aspernatur repudiandae consequatur beatae ipsa non temporibus molestiae commodi consequuntur a, enim deleniti. Mollitia asperiores eveniet, vitae ad amet sit, est voluptas, consequatur totam omnis voluptate eum porro repudiandae nobis illum eaque at excepturi tenetur dolorum similique. Quos, veniam asperiores distinctio animi repellat aliquam. Vitae soluta sed amet accusamus repellendus rerum qui? Id, corporis. Nemo qui maiores magnam, fugit ratione distinctio voluptates laboriosam quisquam ipsa et porro consequatur voluptate. Dolor quos dolorem, sint, a et eos laboriosam repellat ab natus magnam tenetur corporis assumenda aspernatur harum impedit. Inventore cum fugit, quos pariatur corrupti adipisci, nisi quae voluptatem earum sequi atque saepe odit, incidunt culpa accusantium laborum harum natus suscipit ut nobis ducimus eligendi veritatis ab soluta! Sint, ab natus omnis nisi aspernatur labore pariatur harum iusto fuga consequatur, hic molestiae aperiam explicabo ex commodi distinctio. Et officiis pariatur expedita nihil maxime at quisquam deserunt accusantium. Hic reiciendis veritatis perspiciatis adipisci deleniti atque dignissimos assumenda eos facilis, voluptate minima praesentium iste dolorum ad repudiandae necessitatibus totam labore quas laudantium nobis culpa recusandae! Neque temporibus eveniet autem ratione doloremque quas. Consequuntur hic laudantium nihil voluptate, beatae quia velit aliquam asperiores ex amet. Ipsam est reprehenderit accusamus necessitatibus ut? Eum, voluptatum nostrum hic accusamus ipsa asperiores excepturi at ullam sint temporibus ea illum id quos dolor. Eius ipsum, id, ullam vel dolorem commodi assumenda eaque reprehenderit nemo in voluptas, perferendis soluta alias placeat ipsam accusamus. Necessitatibus, autem nobis labore deleniti sapiente vitae voluptates doloribus illo praesentium! Tempora ullam est non, alias, vitae quidem iusto veniam voluptatibus reprehenderit maxime, similique explicabo placeat a? Nemo incidunt rerum perferendis porro aspernatur quidem dolorum sapiente fugit quasi quas voluptatum quis beatae, eaque quos nobis assumenda, eligendi commodi ducimus, dignissimos in. Laboriosam iste soluta accusantium adipisci. Eos nihil perferendis atque incidunt minima esse delectus dicta quasi deleniti molestiae. Optio deleniti velit voluptatum fuga nobis quis ad quia laboriosam quod sapiente, magni numquam ex possimus impedit eaque harum non doloribus error ratione amet. Eius suscipit hic tempora odit eligendi, sapiente aliquid! Culpa totam amet nulla, repellendus eveniet ipsam quae sint, provident at illo soluta tempora a officia molestiae dignissimos obcaecati neque ut assumenda. Eum hic fugit impedit rerum temporibus accusamus natus eius! At reprehenderit voluptate voluptatum, magnam quaerat alias maiores voluptatibus nam modi perspiciatis quae quam soluta exercitationem asperiores quos facilis ea repellendus in sapiente distinctio facere magni ducimus libero pariatur. Quos, porro quam.\n'),
(17, 'The Structure of Scientific Revolutions', 'Filsafat Sains', 'Thomas S. Kuhn', 'University of Chicago Press', 1962, 'Membahas bagaimana ilmu pengetahuan berkembang melalui revolusi ilmiah yang menggantikan paradigma lama dengan yang baru.'),
(18, 'A Brief History of Time', 'Fisika, Filsafat', 'Stephen Hawking', 'Bantam Books', 1988, 'Menjelaskan konsep-konsep kosmologi dan fisika teoretis, seperti lubang hitam dan teori relativitas.'),
(19, 'The Selfish Gene', 'Biologi, Teori Evolusi', 'Richard Dawkins', 'Oxford University Press', 1976, 'Mengemukakan pandangan bahwa seleksi alam terjadi pada tingkat gen, bukan individu atau spesies.'),
(20, 'The God Delusion', 'Filsafat, Agama', 'Richard Dawkins', 'Bantam Press', 2006, 'Mengkritik keberadaan Tuhan dan mempromosikan ateisme, menjelaskan pandangan bahwa agama adalah fenomena yang merugikan.'),
(21, 'Cosmos', 'Astronomi, Filsafat', 'Carl Sagan', 'Random House', 1980, 'Menjelaskan tentang alam semesta dan pencapaian ilmiah melalui pemahaman sains.'),
(22, 'The Origin of Species', 'Biologi, Teori Evolusi', 'Charles Darwin', 'John Murray', 1859, 'Menjelaskan teori evolusi melalui seleksi alam sebagai mekanisme utama perkembangan spesies.'),
(23, 'Thinking, Fast and Slow', 'Psikologi', 'Daniel Kahneman', 'Farrar, Straus and Giroux', 2011, 'Membahas dua sistem pemikiran manusia: sistem cepat yang intuitif dan sistem lambat yang lebih logis.'),
(24, 'The Gene: An Intimate History', 'Biografi, Biologi', 'Siddhartha Mukherjee', 'Scribner', 2016, 'Menceritakan sejarah penemuan dan dampak genetik pada perkembangan manusia dan penyakit.'),
(25, 'Sapiens: A Brief History of Humankind', 'Sejarah, Filsafat', 'Yuval Noah Harari', 'Harvill Secker', 2014, 'Mengulas sejarah umat manusia dari era prasejarah hingga masa modern, memadukan sains dan filsafat.'),
(26, 'The Tao of Physics', 'Filsafat, Fisika', 'Fritjof Capra', 'Shambhala', 1975, 'Menjelaskan hubungan antara fisika modern dan konsep-konsep dalam tradisi spiritual Timur.'),
(27, 'The Black Swan', 'Ekonomi, Filsafat', 'Nassim Nicholas Taleb', 'Random House', 2007, 'Membahas pentingnya kejadian tak terduga (Black Swan) dan dampaknya terhadap dunia.'),
(28, 'The Universe in a Nutshell', 'Fisika, Astronomi', 'Stephen Hawking', 'Bantam Books', 2001, 'Menjelaskan teori-teori fisika modern, seperti relativitas dan teori kuantum, dengan cara yang mudah dipahami.'),
(29, 'Outliers: The Story of Success', 'Psikologi, Ekonomi', 'Malcolm Gladwell', 'Little, Brown and Company', 2008, 'Menganalisis faktor-faktor luar biasa yang berkontribusi pada kesuksesan individu.'),
(30, 'The Power of Myth', 'Filsafat, Agama', 'Joseph Campbell', 'Doubleday', 1988, 'Mengungkapkan kesamaan-kesamaan dalam mitos-mitos dari berbagai kebudayaan di dunia.'),
(31, 'A Short History of Nearly Everything', 'Ilmu Pengetahuan', 'Bill Bryson', 'Broadway Books', 2003, 'Menjelaskan perkembangan besar dalam ilmu pengetahuan, dari asal-usul alam semesta hingga penemuan mikroskopis.'),
(32, 'The Immortal Life of Henrietta Lacks', 'Biografi, Bioteknologi', 'Rebecca Skloot', 'Crown Publishing Group', 2010, 'Mengisahkan kehidupan Henrietta Lacks dan kontribusinya terhadap kemajuan ilmu biomedis melalui sel HeLa.'),
(33, 'The Second Sex', 'Feminisme, Filsafat', 'Simone de Beauvoir', 'Gallimard', 1949, 'Membahas peran perempuan dalam masyarakat dan menyoroti ketidakadilan gender.'),
(34, 'The Man Who Mistook His Wife for a Hat', 'Psikologi, Filsafat', 'Oliver Sacks', 'Summit Books', 1985, 'Menggali kasus-kasus neuropsikiatrik yang aneh dan menawarkan wawasan tentang otak manusia.'),
(35, 'Guns, Germs, and Steel', 'Sejarah, Antropologi', 'Jared Diamond', 'W.W. Norton & Company', 1997, 'Menganalisis faktor-faktor yang memengaruhi perkembangan peradaban manusia di seluruh dunia.'),
(36, 'Meditations', 'Filsafat', 'Marcus Aurelius', 'Penguin Classics', 1800, 'Kumpulan pemikiran pribadi Kaisar Romawi Marcus Aurelius tentang filsafat Stoikisme.'),
(37, 'The Republic', 'Filsafat', 'Plato', 'Penguin Classics', -380, 'Dialog yang membahas tentang keadilan, politik, dan struktur masyarakat ideal.'),
(38, 'The Prince', 'Politik, Filsafat', 'Niccolò Machiavelli', 'Harcourt', 1532, 'Membahas tentang kekuasaan politik dan bagaimana seorang penguasa seharusnya mempertahankan kekuasaannya.'),
(39, 'The Myth of Sisyphus', 'Filsafat', 'Albert Camus', 'Gallimard', 1942, 'Menjelaskan pemikiran absurditas dan pencarian makna hidup melalui metafora Sisyphus.'),
(40, 'The Hitchhiker\'s Guide to the Galaxy', 'Fiksi Ilmiah, Humor', 'Douglas Adams', 'Pan Books', 1979, 'Menelusuri petualangan seorang manusia yang tersesat di luar angkasa dan refleksi absurd tentang hidup.'),
(41, 'The Art of War', 'Militer, Filsafat', 'Sun Tzu', 'Penguin Classics', -500, 'Karya klasik yang membahas taktik dan strategi dalam perang, sering diterapkan dalam dunia bisnis dan politik.'),
(42, 'The Bed of Procrustes', 'Filsafat', 'Nassim Nicholas Taleb', 'Random House', 2010, 'Menggali bagaimana pikiran manusia seringkali mengorbankan kenyataan untuk menyederhanakan dunia.'),
(43, 'The End of Faith', 'Agama, Filsafat', 'Sam Harris', 'W.W. Norton & Company', 2004, 'Mengkritik agama dari perspektif filsafat rasionalis dan membahas dampak buruknya terhadap masyarakat.'),
(44, 'The Tipping Point', 'Psikologi, Ekonomi', 'Malcolm Gladwell', 'Little, Brown and Company', 2000, 'Menganalisis bagaimana ide atau tren bisa mencapai titik kritis yang menyebabkan ledakan popularitas.'),
(45, 'Brave New World', 'Fiksi, Filsafat', 'Aldous Huxley', 'Chatto & Windus', 1932, 'Menceritakan sebuah dunia utopia dystopia yang dikendalikan oleh teknologi dan kontrol sosial yang ketat.'),
(46, 'Freakonomics', 'Ekonomi, Psikologi', 'Steven D. Levitt & Stephen J. Dubner', 'William Morrow', 2005, 'Menganalisis berbagai aspek kehidupan sehari-hari dengan perspektif ekonomi yang tidak biasa.'),
(47, 'The Handmaid\'s Tale', 'Fiksi, Filsafat', 'Margaret Atwood', 'McClelland and Stewart', 1985, 'Menceritakan kisah di dunia dystopia di mana perempuan diperlakukan sebagai properti negara.'),
(48, 'The Diamond Age', 'Fiksi Ilmiah', 'Neal Stephenson', 'Bantam Books', 1995, 'Menggambarkan masa depan di mana teknologi nano mengubah cara hidup dan memengaruhi struktur sosial.'),
(49, 'The Bell Curve', 'Psikologi, Sosiologi', 'Richard J. Herrnstein & Charles A. Murray', 'Free Press', 1994, 'Menganalisis hubungan antara IQ dan status sosial-ekonomi, serta dampaknya pada kebijakan sosial.'),
(50, 'The Origin of Consciousness in the Breakdown of the Bicameral Mind', 'Psikologi, Filsafat', 'Julian Jaynes', 'Houghton Mifflin', 1976, 'Mengusulkan teori bahwa kesadaran manusia berkembang secara evolusioner, dimulai dari keadaan pikiran yang terbagi.'),
(51, 'The Paradox of Choice', 'Psikologi, Ekonomi', 'Barry Schwartz', 'HarperCollins', 2004, 'Menjelaskan bagaimana terlalu banyak pilihan dapat membuat manusia merasa lebih tidak bahagia dan lebih tertekan.'),
(52, 'The Alchemist', 'Fiksi, Filsafat', 'Paulo Coelho', 'HarperOne', 1988, 'Kisah perjalanan seorang pemuda mencari harta karun, yang berfokus pada pencarian makna hidup dan tujuan.'),
(53, 'The Myth of the Rational Voter', 'Ekonomi, Psikologi', 'Bryan Caplan', 'Princeton University Press', 2007, 'Membahas bagaimana pemilih sering kali membuat keputusan yang tidak rasional dalam pemilu dan dampaknya terhadap kebijakan publik.'),
(54, 'Man and His Symbols', 'Psikologi, Filsafat', 'Carl G. Jung', 'Dell', 1964, 'Menggali simbolisme dalam alam bawah sadar manusia dan bagaimana simbol-simbol tersebut membentuk pikiran serta perilaku.'),
(55, 'The Wisdom of Crowds', 'Psikologi, Ekonomi', 'James Surowiecki', 'Doubleday', 2004, 'Menjelaskan bagaimana keputusan yang dibuat oleh kelompok besar sering kali lebih baik daripada keputusan individu.'),
(56, 'The Singularity is Near', 'Filsafat, Teknologi', 'Ray Kurzweil', 'Viking', 2005, 'Membahas teori tentang masa depan ketika kecerdasan buatan melampaui kecerdasan manusia.'),
(57, 'The Myth of the Machine', 'Filsafat, Teknologi', 'Lewis Mumford', 'Harcourt', 1967, 'Mengkritik pengaruh teknologi terhadap kemanusiaan dan menciptakan pandangan dunia yang lebih terhubung dengan alam dan manusia.'),
(58, 'The Dark Forest', 'Fiksi Ilmiah', 'Liu Cixin', 'Chongqing Publishing Group', 2008, 'Bagian kedua dari trilogi \"Remembrance of Earth\'s Past\", membahas teori tentang kehidupan asing dan konflik peradaban.'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
