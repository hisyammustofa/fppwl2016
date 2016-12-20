-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2016 at 12:37 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ai_project`
--
CREATE DATABASE IF NOT EXISTS `ai_project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ai_project`;

-- --------------------------------------------------------

--
-- Table structure for table `tb_comment`
--

CREATE TABLE `tb_comment` (
  `id_comment` int(11) NOT NULL,
  `usr_comment` text NOT NULL,
  `polarity` double NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_comment`
--

INSERT INTO `tb_comment` (`id_comment`, `usr_comment`, `polarity`, `id_product`, `id_user`) VALUES
(1, 'the movie is the best. that scene is amazing', 0.87777, 2, 1),
(2, 'i hate this movie, because bad', 0.33333, 1, 1),
(9, 'i love this movie', 0.5, 1, 2),
(10, 'this movie is amazing', 0.6000000000000001, 1, 2),
(11, 'this movie is dissapointing. the scene is bad', -0.6999999999999998, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id_product` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(120) NOT NULL,
  `category` varchar(20) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id_product`, `name`, `description`, `category`, `image`) VALUES
(1, 'Android XXX3', '13Mp camera with support of technology for rapid phase focusing', 'smartphone', 'smartphoneone.jpg'),
(2, 'Android Coly X2', '11Mp camera with support of technology for rapid phase focusing', 'smartphone', 'smartphonetwo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `passwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `name`, `email`, `passwd`) VALUES
(1, 'hisyam', 'hisyam@gmail.com', '123'),
(2, 'roiz', 'roiz@yahoo.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_movie` (`id_product`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_comment`
--
ALTER TABLE `tb_comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_comment`
--
ALTER TABLE `tb_comment`
  ADD CONSTRAINT `tb_comment_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `tb_product` (`id_product`),
  ADD CONSTRAINT `tb_comment_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
--
-- Database: `db_ci`
--
CREATE DATABASE IF NOT EXISTS `db_ci` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `db_ci`;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `ringkasan` text NOT NULL,
  `isi` text NOT NULL,
  `status_artikel` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `slug`, `ringkasan`, `isi`, `status_artikel`, `id_user`, `tanggal`) VALUES
(1, 'Latihan Code Igniter', 'latihan-code-igniter', '<p>Quis nostrud exercitation ut enim ad minim veniam, eu fugiat nulla pariatur. Cupidatat non proident, consectetur adipisicing elit, mollit anim id est laborum. Ut labore et dolore magna aliqua.</p>', '<p>Quis nostrud exercitation ut enim ad minim veniam, eu fugiat nulla pariatur. Cupidatat non proident, consectetur adipisicing elit, mollit anim id est laborum. Ut labore et dolore magna aliqua.</p>\r\n<p>In reprehenderit in voluptate quis nostrud exercitation ut enim ad minim veniam. Sed do eiusmod tempor incididunt eu fugiat nulla pariatur. Sunt in culpa in reprehenderit in voluptate consectetur adipisicing elit.</p>\r\n<p>Velit esse cillum dolore ut enim ad minim veniam. Duis aute irure dolor ut aliquip ex ea commodo consequat. Eu fugiat nulla pariatur. Ut labore et dolore magna aliqua.</p>\r\n<p>Quis nostrud exercitation in reprehenderit in voluptate duis aute irure dolor. Ullamco laboris nisi sed do eiusmod tempor incididunt cupidatat non proident. Consectetur adipisicing elit, sunt in culpa mollit anim id est laborum. Ut aliquip ex ea commodo consequat.</p>\r\n<p>Velit esse cillum dolore qui officia deserunt lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, sed do eiusmod tempor incididunt ullamco laboris nisi. Velit esse cillum dolore eu fugiat nulla pariatur. Qui officia deserunt duis aute irure dolor lorem ipsum dolor sit amet. Sed do eiusmod tempor incididunt sunt in culpa cupidatat non proident.</p>', 'Publish', 1, '2016-03-13 08:01:06'),
(2, 'Menampilkan berita dengan CI', 'menampilkan-berita-dengan-ci', '<p>Cumque nihil impedit quo minus at vero eos et accusamus et iusto odio cum soluta nobis est eligendi optio. Id quod maxime placeat facere possimus, omnis dolor repellendus. Nisi ut aliquid ex ea commodi consequatur? Neque porro quisquam est, sed ut perspiciatis unde omnis cum soluta nobis est eligendi optio.</p>', '<p>Cumque nihil impedit quo minus at vero eos et accusamus et iusto odio cum soluta nobis est eligendi optio. Id quod maxime placeat facere possimus, omnis dolor repellendus. Nisi ut aliquid ex ea commodi consequatur? Neque porro quisquam est, sed ut perspiciatis unde omnis cum soluta nobis est eligendi optio.</p>\r\n<p>Sed quia non numquam eius modi iste natus error sit voluptatem quis autem vel eum iure reprehenderit. Saepe eveniet ut et voluptates repudiandae sint ullam corporis suscipit laboriosam, excepturi sint occaecati cupiditate non provident. Sed quia consequuntur magni dolores eos dicta sunt explicabo.</p>\r\n<p>Nisi ut aliquid ex ea commodi consequatur? Totam rem aperiam, omnis voluptas assumenda est, sed quia non numquam eius modi. Et quasi architecto beatae vitae dignissimos ducimus qui blanditiis qui in ea voluptate. Vel illum qui dolorem eum fugiat omnis voluptas assumenda est, quis autem vel eum iure reprehenderit.</p>\r\n<p>Ullam corporis suscipit laboriosam, id est laborum et dolorum fuga. Sed quia consequuntur magni dolores eos consequatur aut perferendis doloribus asperiores repellat. Sed quia non numquam eius modi quo voluptas nulla pariatur? Accusantium doloremque laudantium, omnis dolor repellendus. Et molestiae non recusandae.</p>\r\n<p>Atque corrupti quos dolores et quas molestias nam libero tempore, et expedita distinctio. Nisi ut aliquid ex ea commodi consequatur? Quo voluptas nulla pariatur? Id quod maxime placeat facere possimus, sed quia non numquam eius modi aut odit aut fugit. Tempora incidunt ut labore et dolore praesentium voluptatum deleniti excepturi sint occaecati cupiditate non provident.</p>', 'Publish', 1, '2016-03-13 08:01:57'),
(3, 'Latihan Halaman Statis dengan CI', 'latihan-halaman-statis-dengan-ci', '<p>Big is no longer impregnable to focus on improvement, not cost, as knowledge is fragmented into specialities. Building a dynamic relationship between the main players. Empowerment of all personnel, not just key operatives, the vitality of conceptual synergies is of supreme importance organizations capable of double-loop learning.</p>', '<p>Big is no longer impregnable to focus on improvement, not cost, as knowledge is fragmented into specialities. Building a dynamic relationship between the main players. Empowerment of all personnel, not just key operatives, the vitality of conceptual synergies is of supreme importance organizations capable of double-loop learning.</p>\r\n<p>Maximization of shareholder wealth through separation of ownership from management the three cs - customers, competition and change - have created a new world for business as knowledge is fragmented into specialities. In order to build a shared view of what can be improved, empowerment of all personnel, not just key operatives, through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. Building a dynamic relationship between the main players. Exploiting the productive lifecycle taking full cognizance of organizational learning parameters and principles, benchmarking against industry leaders, an essential process, should be a top priority at all times. Measure the process, not the people.</p>', 'Publish', 1, '2016-03-13 08:01:57'),
(4, 'Belajar CI Sendiri', 'belajar-ci-sendiri', '<p>In order to build a shared view of what can be improved, motivating participants and capturing their expectations, while those at the coal face don''t have sufficient view of the overall goals. Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. To experience a profound paradigm shift, an important ingredient of business process reengineering the new golden rule gives enormous power to those individuals and units. Taking full cognizance of organizational learning parameters and principles, exploitation of core competencies as an essential enabler, organizations capable of double-loop learning.</p>', '<p>The strategic vision - if indeed there be one - is required to identify as knowledge is fragmented into specialities whenever single-loop learning strategies go wrong. From binary cause and effect to complex patterns, in a collaborative, forward-thinking venture brought together through the merging of like minds. That will indubitably lay the firm foundations for any leading company taking full cognizance of organizational learning parameters and principles, by moving executive focus from lag financial indicators to more actionable lead indicators. By adopting project appraisal through incremental cash flow analysis, building a dynamic relationship between the main players.</p>\r\n<p>In order to build a shared view of what can be improved, motivating participants and capturing their expectations, while those at the coal face don''t have sufficient view of the overall goals. Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. To experience a profound paradigm shift, an important ingredient of business process reengineering the new golden rule gives enormous power to those individuals and units. Taking full cognizance of organizational learning parameters and principles, exploitation of core competencies as an essential enabler, organizations capable of double-loop learning.</p>\r\n<p>The strategic vision - if indeed there be one - is required to identify an investment program where cash flows exactly match shareholders'' preferred time patterns of consumption. Highly motivated participants contributing to a valued-added outcome. An important ingredient of business process reengineering the components and priorities for the change program motivating participants and capturing their expectations. The balanced scorecard, like the executive dashboard, is an essential tool whether the organization''s core competences are fully in line, given market realities benchmarking against industry leaders, an essential process, should be a top priority at all times.</p>', 'Publish', 1, '2016-03-13 08:01:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`) VALUES
(1, 'admin', 'admin@email.com', 'admin', 'admin'),
(2, 'admin2', 'admin2@email.com', 'admin2', 'admin2'),
(3, 'hisyam', 'mustofahisyam13@gmail.com', 'hisyam', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{"angular_direct":"direct","snap_to_grid":"off","relation_lines":"true"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"quince_garden","table":"member"},{"db":"quince_garden","table":"testimoni"},{"db":"quince_garden","table":"admin"},{"db":"quince_garden","table":"divisi"},{"db":"quince_garden","table":"counter"},{"db":"quince_garden","table":"galeri"},{"db":"quince_garden","table":"overview"},{"db":"quince_garden","table":"jabatan"},{"db":"quince_garden","table":"contact"},{"db":"quince_garden","table":"portofolio"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2016-11-23 14:26:27', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `pwl`
--
CREATE DATABASE IF NOT EXISTS `pwl` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pwl`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(200) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `lastlog` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `fullname`, `email`, `lastlog`) VALUES
(1, 'admin', 'ac43724f16e9241d990427ab7c8f4228', 'Pengelola Aplikasi', 'mustofahisyam13@gmail.com', '2014-11-12 06:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `nationality`
--

CREATE TABLE `nationality` (
  `id_nationality` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `nationality` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nationality`
--

INSERT INTO `nationality` (`id_nationality`, `code`, `nationality`) VALUES
(2, 'AFG', 'Afghanistan'),
(3, 'ALB', 'Albania'),
(4, 'DZA', 'Algeria'),
(5, 'ASM', 'American Samoa'),
(6, 'AND', 'Andorra'),
(7, 'AGO', 'Angola'),
(8, 'AIA', 'Anguilla'),
(9, '', 'Antarctica'),
(10, 'ATG', 'Antigua and Barbuda'),
(11, 'ARG', 'Argentina'),
(12, 'ARM', 'Armenia'),
(13, 'ABW', 'Aruba'),
(14, 'AUS', 'Australia'),
(15, 'AUT', 'Austria'),
(16, 'AZE', 'Azerbaijan'),
(17, 'BHS', 'Bahamas'),
(18, 'BHR', 'Bahrain'),
(19, 'BGD', 'Bangladesh'),
(20, 'BRB', 'Barbados'),
(21, 'BLR', 'Belarus'),
(22, 'BEL', 'Belgium'),
(23, 'BLZ', 'Belize'),
(24, 'BEN', 'Benin'),
(25, 'BMU', 'Bermuda'),
(26, 'BTN', 'Bhutan'),
(27, 'BOL', 'Bolivia'),
(28, 'BIH', 'Bosnia and Herzegovina'),
(29, 'BWA', 'Botswana'),
(30, '', 'Bouvet Island'),
(31, 'BRA', 'Brazil'),
(32, '', 'British Indian Ocean Territory'),
(33, 'BRN', 'Brunei Darussalam'),
(34, 'BGR', 'Bulgaria'),
(35, 'BFA', 'Burkina Faso'),
(36, 'BDI', 'Burundi'),
(37, 'KHM', 'Cambodia'),
(38, 'CMR', 'Cameroon'),
(39, 'CAN', 'Canada'),
(40, 'CPV', 'Cape Verde'),
(41, 'CYM', 'Cayman Islands'),
(42, 'CAF', 'Central African Republic'),
(43, 'TCD', 'Chad'),
(44, 'CHL', 'Chile'),
(45, 'CHN', 'China'),
(46, '', 'Christmas Island'),
(47, '', 'Cocos (Keeling) Islands'),
(48, 'COL', 'Colombia'),
(49, 'COM', 'Comoros'),
(50, 'COG', 'Congo'),
(51, 'COD', 'Congo, the Democratic Republic of the'),
(52, 'COK', 'Cook Islands'),
(53, 'CRI', 'Costa Rica'),
(54, 'CIV', 'Cote D''Ivoire'),
(55, 'HRV', 'Croatia'),
(56, 'CUB', 'Cuba'),
(57, 'CYP', 'Cyprus'),
(58, 'CZE', 'Czech Republic'),
(59, 'DNK', 'Denmark'),
(60, 'DJI', 'Djibouti'),
(61, 'DMA', 'Dominica'),
(62, 'DOM', 'Dominican Republic'),
(63, 'ECU', 'Ecuador'),
(64, 'EGY', 'Egypt'),
(65, 'SLV', 'El Salvador'),
(66, 'GNQ', 'Equatorial Guinea'),
(67, 'ERI', 'Eritrea'),
(68, 'EST', 'Estonia'),
(69, 'ETH', 'Ethiopia'),
(70, 'FLK', 'Falkland Islands (Malvinas)'),
(71, 'FRO', 'Faroe Islands'),
(72, 'FJI', 'Fiji'),
(73, 'FIN', 'Finland'),
(74, 'FRA', 'France'),
(75, 'GUF', 'French Guiana'),
(76, 'PYF', 'French Polynesia'),
(77, '', 'French Southern Territories'),
(78, 'GAB', 'Gabon'),
(79, 'GMB', 'Gambia'),
(80, 'GEO', 'Georgia'),
(81, 'DEU', 'Germany'),
(82, 'GHA', 'Ghana'),
(83, 'GIB', 'Gibraltar'),
(84, 'GRC', 'Greece'),
(85, 'GRL', 'Greenland'),
(86, 'GRD', 'Grenada'),
(87, 'GLP', 'Guadeloupe'),
(88, 'GUM', 'Guam'),
(89, 'GTM', 'Guatemala'),
(90, 'GIN', 'Guinea'),
(91, 'GNB', 'Guinea-Bissau'),
(92, 'GUY', 'Guyana'),
(93, 'HTI', 'Haiti'),
(94, '', 'Heard Island and Mcdonald Islands'),
(95, 'VAT', 'Holy See (Vatican City State)'),
(96, 'HND', 'Honduras'),
(97, 'HKG', 'Hong Kong'),
(98, 'HUN', 'Hungary'),
(99, 'ISL', 'Iceland'),
(100, 'IND', 'India'),
(101, 'IDN', 'Indonesia'),
(102, 'IRN', 'Iran, Islamic Republic of'),
(103, 'IRQ', 'Iraq'),
(104, 'IRL', 'Ireland'),
(105, 'ISR', 'Israel'),
(106, 'ITA', 'Italy'),
(107, 'JAM', 'Jamaica'),
(108, 'JPN', 'Japan'),
(109, 'JOR', 'Jordan'),
(110, 'KAZ', 'Kazakhstan'),
(111, 'KEN', 'Kenya'),
(112, 'KIR', 'Kiribati'),
(113, 'PRK', 'Korea, Democratic People''s Republic of'),
(114, 'KOR', 'Korea, Republic of'),
(115, 'KWT', 'Kuwait'),
(116, 'KGZ', 'Kyrgyzstan'),
(117, 'LAO', 'Lao People''s Democratic Republic'),
(118, 'LVA', 'Latvia'),
(119, 'LBN', 'Lebanon'),
(120, 'LSO', 'Lesotho'),
(121, 'LBR', 'Liberia'),
(122, 'LBY', 'Libyan Arab Jamahiriya'),
(123, 'LIE', 'Liechtenstein'),
(124, 'LTU', 'Lithuania'),
(125, 'LUX', 'Luxembourg'),
(126, 'MAC', 'Macao'),
(127, 'MKD', 'Macedonia, the Former Yugoslav Republic of'),
(128, 'MDG', 'Madagascar'),
(129, 'MWI', 'Malawi'),
(130, 'MYS', 'Malaysia'),
(131, 'MDV', 'Maldives'),
(132, 'MLI', 'Mali'),
(133, 'MLT', 'Malta'),
(134, 'MHL', 'Marshall Islands'),
(135, 'MTQ', 'Martinique'),
(136, 'MRT', 'Mauritania'),
(137, 'MUS', 'Mauritius'),
(138, '', 'Mayotte'),
(139, 'MEX', 'Mexico'),
(140, 'FSM', 'Micronesia, Federated States of'),
(141, 'MDA', 'Moldova, Republic of'),
(142, 'MCO', 'Monaco'),
(143, 'MNG', 'Mongolia'),
(144, 'MSR', 'Montserrat'),
(145, 'MAR', 'Morocco'),
(146, 'MOZ', 'Mozambique'),
(147, 'MMR', 'Myanmar'),
(148, 'NAM', 'Namibia'),
(149, 'NRU', 'Nauru'),
(150, 'NPL', 'Nepal'),
(151, 'NLD', 'Netherlands'),
(152, 'ANT', 'Netherlands Antilles'),
(153, 'NCL', 'New Caledonia'),
(154, 'NZL', 'New Zealand'),
(155, 'NIC', 'Nicaragua'),
(156, 'NER', 'Niger'),
(157, 'NGA', 'Nigeria'),
(158, 'NIU', 'Niue'),
(159, 'NFK', 'Norfolk Island'),
(160, 'MNP', 'Northern Mariana Islands'),
(161, 'NOR', 'Norway'),
(162, 'OMN', 'Oman'),
(163, 'PAK', 'Pakistan'),
(164, 'PLW', 'Palau'),
(165, '', 'Palestinian Territory, Occupied'),
(166, 'PAN', 'Panama'),
(167, 'PNG', 'Papua New Guinea'),
(168, 'PRY', 'Paraguay'),
(169, 'PER', 'Peru'),
(170, 'PHL', 'Philippines'),
(171, 'PCN', 'Pitcairn'),
(172, 'POL', 'Poland'),
(173, 'PRT', 'Portugal'),
(174, 'PRI', 'Puerto Rico'),
(175, 'QAT', 'Qatar'),
(176, 'REU', 'Reunion'),
(177, 'ROM', 'Romania'),
(178, 'RUS', 'Russian Federation'),
(179, 'RWA', 'Rwanda'),
(180, 'SHN', 'Saint Helena'),
(181, 'KNA', 'Saint Kitts and Nevis'),
(182, 'LCA', 'Saint Lucia'),
(183, 'SPM', 'Saint Pierre and Miquelon'),
(184, 'VCT', 'Saint Vincent and the Grenadines'),
(185, 'WSM', 'Samoa'),
(186, 'SMR', 'San Marino'),
(187, 'STP', 'Sao Tome and Principe'),
(188, 'SAU', 'Saudi Arabia'),
(189, 'SEN', 'Senegal'),
(190, '', 'Serbia and Montenegro'),
(191, 'SYC', 'Seychelles'),
(192, 'SLE', 'Sierra Leone'),
(193, 'SGP', 'Singapore'),
(194, 'SVK', 'Slovakia'),
(195, 'SVN', 'Slovenia'),
(196, 'SLB', 'Solomon Islands'),
(197, 'SOM', 'Somalia'),
(198, 'ZAF', 'South Africa'),
(199, '', 'South Georgia and the South Sandwich Islands'),
(200, 'ESP', 'Spain'),
(201, 'LKA', 'Sri Lanka'),
(202, 'SDN', 'Sudan'),
(203, 'SUR', 'Suriname'),
(204, 'SJM', 'Svalbard and Jan Mayen'),
(205, 'SWZ', 'Swaziland'),
(206, 'SWE', 'Sweden'),
(207, 'CHE', 'Switzerland'),
(208, 'SYR', 'Syrian Arab Republic'),
(209, 'TWN', 'Taiwan, Province of China'),
(210, 'TJK', 'Tajikistan'),
(211, 'TZA', 'Tanzania, United Republic of'),
(212, 'THA', 'Thailand'),
(213, '', 'Timor-Leste'),
(214, 'TGO', 'Togo'),
(215, 'TKL', 'Tokelau'),
(216, 'TON', 'Tonga'),
(217, 'TTO', 'Trinidad and Tobago'),
(218, 'TUN', 'Tunisia'),
(219, 'TUR', 'Turkey'),
(220, 'TKM', 'Turkmenistan'),
(221, 'TCA', 'Turks and Caicos Islands'),
(222, 'TUV', 'Tuvalu'),
(223, 'UGA', 'Uganda'),
(224, 'UKR', 'Ukraine'),
(225, 'ARE', 'United Arab Emirates'),
(226, 'GBR', 'United Kingdom'),
(227, 'USA', 'United States'),
(228, '', 'United States Minor Outlying Islands'),
(229, 'URY', 'Uruguay'),
(230, 'UZB', 'Uzbekistan'),
(231, 'VUT', 'Vanuatu'),
(232, 'VEN', 'Venezuela'),
(233, 'VNM', 'Viet Nam'),
(234, 'VGB', 'Virgin Islands, British'),
(235, 'VIR', 'Virgin Islands, U.s.'),
(236, 'WLF', 'Wallis and Futuna'),
(237, 'ESH', 'Western Sahara'),
(238, 'YEM', 'Yemen'),
(239, 'ZMB', 'Zambia'),
(240, 'ZWE', 'Zimbabwe'),
(257, 'OTH', 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(10) NOT NULL,
  `id_nationality` int(10) DEFAULT NULL,
  `nis` varchar(10) NOT NULL,
  `full_name` varchar(250) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `date_ob` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `id_nationality`, `nis`, `full_name`, `email`, `date_ob`) VALUES
(4293, 227, 'T4584', 'Surya s', 'surya.s@amikom', '1983-12-11'),
(4294, 14, 'T1237', 'Joanne Evans', 'joevans08@gmail.com', '1972-08-08'),
(4295, 193, 'T5113', 'Gabriel Kit Iglesias-Tan', 'sol.iglesias@nus.edu.sg', '2005-02-07'),
(4296, 14, 'T5089', 'Aaron Page', 'aaron.page@dfat.gov.au', '1974-07-20'),
(4297, 226, 'T8986', 'Moazzam Malik', 'moazzam_m@hotmail.com', '1967-05-29'),
(4298, 170, 'T7705', 'Sol Iglesias', 'sol.iglesias@nus.edu.sg', '1977-03-27'),
(4299, 226, 'T3817', 'Adrian Hartley Campbell-Black', 'adrncmp@hotmail.com', '1962-12-25'),
(4300, 81, 'T4550', 'Alexander Smit', 'a.smit@stud.uni-heidelberg.de', '1989-12-25'),
(4301, 108, 'T3411', 'Kento Matsuyama', 'k.matsuyama@mitsuilease.co.id', '0000-00-00'),
(4302, 14, 'T3241', 'Eleanor Izatt Bensley', 'eibensley@gmail.com', '1986-11-09'),
(4303, 108, 'T5449', 'Haruka Onishi', 'harutone33@yahoo.co.jp', '1979-03-15'),
(4305, 114, 'T9334', 'Lee Joe Hyung', 'wo4134@naver.com', '1991-01-23'),
(4306, 114, 'T5964', 'Kim Tae Sook', 'grayi802@hanmail.net', '0000-00-00'),
(4307, 81, 'T8046', 'Anne-Cathrin Vonarx', 'anne-cathrin.vonarx@giz.de', '1982-01-13'),
(4308, 14, 'T4959', 'Rochelle O''Hagan', 'rochelle.ohagan@gmail.com', '1973-12-23'),
(4309, 14, 'T4874', 'Kieran O''Leary', 'Kieran.oleary.au@gmail.com', '1976-08-07'),
(4310, 14, 'T9883', 'Olivia Evans', '', '2004-04-24'),
(4311, 14, 'T7995', 'Graham Evans', 'grahamjo99@gmail.com', '1970-08-23'),
(4312, 14, 'T1700', 'Lily Evans', '', '2005-09-14'),
(4313, 114, 'T9880', 'Kyungyi Lee', 'caribbeanky@hotmail.com', '1972-09-30'),
(4314, 114, 'T6093', 'Kang Phil Goo', 'phil72@hanmail.net', '1972-07-24'),
(4315, 108, 'T9001', 'Ryo Izawa', 'cluth.rio@hotmail.com', '1977-09-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `nationality`
--
ALTER TABLE `nationality`
  ADD PRIMARY KEY (`id_nationality`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nationality`
--
ALTER TABLE `nationality`
  MODIFY `id_nationality` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4317;--
-- Database: `quince_garden`
--
CREATE DATABASE IF NOT EXISTS `quince_garden` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quince_garden`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@queny.garden.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `tanggal` date NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`tanggal`, `hits`) VALUES
('2016-12-17', 11);

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(20) NOT NULL,
  `deskripsi_divisi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`, `deskripsi_divisi`) VALUES
(1, 'divisi pelayanan', 'divisi pelayanan'),
(2, 'divisi testing', 'divisi testing'),
(3, 'divisi operasional', 'divisi operasional'),
(4, 'divisi pengembanga', 'divisi pengembanga');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `nama_galeri` varchar(30) NOT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `email` varchar(40) NOT NULL,
  `foto` text,
  `id_divisi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nama`, `alamat`, `no_telp`, `email`, `foto`, `id_divisi`) VALUES
(2, 'coba', 'coli', '00000', 'coli', 'g2.jpg', 2),
(5, 'asdas', 'asdfas', 'dasdas', 'asdas', NULL, 1),
(6, 'asdas', 'asdsa', 'sadas', 'sadsa', NULL, 1),
(7, 'sadas', 'asdas', 'asdas', 'asdas', NULL, 1),
(8, 'asdas', 'asfas', 'asfasdas', 'sadas', NULL, 1),
(9, 'asdas', 'asdas', 'wdsad', 'asdsa', NULL, 1),
(10, 'asdas', 'sadas', 'sadas', 'asdsa', NULL, 2),
(11, 'sadas', 'asdas', 'asdas', 'sadas', NULL, 2),
(12, 'asdsa', 'sadas', 'asdas', 'sadas', NULL, 2),
(13, 'asdas', 'asdas', 'asd', 'asdas', NULL, 2),
(14, 'sadas', 'sadsa', 'sadas', 'sadas', NULL, 1),
(15, 'Hisyam', 'Amikom', '085111119876', 'mustofahisyam13@gmail.com', 'Capture1', 2),
(16, 'Anri', 'Test ', '1111', 'mustofahisyam13@gmail.com', 'Capture.PNG', 3),
(17, 'Alan', 'Amikom', '0976542', 'students@amikom.ac.id', 'Capture.PNG', 3),
(19, 'Came', 'Ngaloran', '123412412', 'ngaloran@gmail.com', 'brush.png', 1),
(20, 'Mustofa', 'Atlas', '12321321', 'mustofahisyam13@gmail.com', 'g1.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `overview`
--

CREATE TABLE `overview` (
  `id_overview` int(11) NOT NULL,
  `nama_overview` varchar(25) DEFAULT NULL,
  `deskripsi_overview` varchar(90) NOT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `portofolio`
--

CREATE TABLE `portofolio` (
  `id_portofolio` int(11) NOT NULL,
  `nama_portofolio` varchar(25) DEFAULT NULL,
  `deskripsi_portofolio` varchar(150) NOT NULL,
  `gambar` text,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `id_servis` int(11) NOT NULL,
  `nama_servis` varchar(25) DEFAULT NULL,
  `deskripsi_servis` varchar(150) NOT NULL,
  `gambar` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL,
  `nama_testimoner` varchar(40) NOT NULL,
  `email_testimoner` varchar(40) NOT NULL,
  `img_testimoner` text NOT NULL,
  `respon_testimoner` text NOT NULL,
  `tanggal` date NOT NULL,
  `polarity` double DEFAULT NULL,
  `divisi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testimoni`, `nama_testimoner`, `email_testimoner`, `img_testimoner`, `respon_testimoner`, `tanggal`, `polarity`, `divisi`) VALUES
(6, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'pelayanannya buruk dan kurang memuaskan', '2016-11-03', -0.12222222222222216, 2),
(7, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'serring terjadi kesalahan dalam pelayannya', '2016-11-13', -0.222211111111, 3),
(8, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'pelayanannya sangat bagus dan memuaskan', '2016-12-20', 0.78, 1),
(9, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'ini bukan opini atau sentimen', '2016-12-08', 0, 2),
(10, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Terima kasih atas pelayannya selama ini, sangat membantu', '2016-12-20', 0.2, 1),
(11, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Sangat bagus dan inovatif', '2016-12-20', 0.705, 2),
(12, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Sangat mengesankan', '2016-10-06', 0.41, 3),
(13, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'Sangat baik dan memuaskan', '2016-10-11', 0.2, 1),
(14, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'pelayanannya sangat bagus dan memuaskan', '2016-12-19', 0.78, 2),
(15, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'pelayanannya sangat bagus dan memuaskan', '2016-10-19', 0.78, 2),
(16, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'terus ditingkatkan pelayannya', '2016-10-19', 0, 2),
(17, 'Hisyam Mustofa', 'mustofahisyam13@gmail.com', 'http://pbs.twimg.com/profile_images/810515338840264705/VOa4GhFX_normal.jpg', 'tidak memuaskan. pelayanannya mengecewakan', '2016-12-20', -0.6, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD KEY `id_jabatan` (`id_divisi`);

--
-- Indexes for table `overview`
--
ALTER TABLE `overview`
  ADD PRIMARY KEY (`id_overview`);

--
-- Indexes for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_portofolio`),
  ADD KEY `id_member_satu` (`id_member`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`id_servis`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testimoni`),
  ADD KEY `fk_divisi` (`divisi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `overview`
--
ALTER TABLE `overview`
  MODIFY `id_overview` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `id_servis` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id_divisi`);

--
-- Constraints for table `portofolio`
--
ALTER TABLE `portofolio`
  ADD CONSTRAINT `portofolio_ibfk_1` FOREIGN KEY (`id_member`) REFERENCES `member` (`id_member`);

--
-- Constraints for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD CONSTRAINT `fk_divisi` FOREIGN KEY (`divisi`) REFERENCES `divisi` (`id_divisi`) ON DELETE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `my_event_count` ON SCHEDULE EVERY 1 DAY STARTS '2016-12-18 00:00:01' ON COMPLETION PRESERVE ENABLE DO INSERT INTO counter (tanggal, hits) VALUES(NOW(),0)$$

DELIMITER ;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `testproyek`
--
CREATE DATABASE IF NOT EXISTS `testproyek` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testproyek`;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `slug` varchar(128) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `slug`, `text`) VALUES
(1, 'Moday Morning', 'Movies', 'Tentang film abstrak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
