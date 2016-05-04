-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2016 at 06:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
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

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'project data', '{"quick_or_custom":"quick","what":"sql","structure_or_data_forced":"0","table_select[]":["awards","castcrew","filmmaker","genres","movies","reviews","showing","theaters"],"table_structure[]":["awards","castcrew","filmmaker","genres","movies","reviews","showing","theaters"],"table_data[]":["awards","castcrew","filmmaker","genres","movies","reviews","showing","theaters"],"output_format":"sendit","filename_template":"@DATABASE@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"structure_and_data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"structure_and_data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","xml_structure_or_data":"data","xml_export_events":"something","xml_export_functions":"something","xml_export_procedures":"something","xml_export_tables":"something","xml_export_triggers":"something","xml_export_views":"something","xml_export_contents":"something","yaml_structure_or_data":"data","":null,"lock_tables":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_create_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}'),
(2, 'root', 'server', 'project', '{"quick_or_custom":"quick","what":"sql","db_select[]":["phpmyadmin","ser322","test"],"output_format":"sendit","filename_template":"@SERVER@","remember_template":"on","charset":"utf-8","compression":"none","maxsize":"","codegen_structure_or_data":"data","codegen_format":"0","csv_separator":",","csv_enclosed":"\\"","csv_escaped":"\\"","csv_terminated":"AUTO","csv_null":"NULL","csv_structure_or_data":"data","excel_null":"NULL","excel_edition":"win","excel_structure_or_data":"data","htmlword_structure_or_data":"structure_and_data","htmlword_null":"NULL","json_structure_or_data":"data","latex_caption":"something","latex_structure_or_data":"structure_and_data","latex_structure_caption":"Structure of table @TABLE@","latex_structure_continued_caption":"Structure of table @TABLE@ (continued)","latex_structure_label":"tab:@TABLE@-structure","latex_relation":"something","latex_comments":"something","latex_mime":"something","latex_columns":"something","latex_data_caption":"Content of table @TABLE@","latex_data_continued_caption":"Content of table @TABLE@ (continued)","latex_data_label":"tab:@TABLE@-data","latex_null":"\\\\textit{NULL}","mediawiki_structure_or_data":"data","mediawiki_caption":"something","mediawiki_headers":"something","ods_null":"NULL","ods_structure_or_data":"data","odt_structure_or_data":"structure_and_data","odt_relation":"something","odt_comments":"something","odt_mime":"something","odt_columns":"something","odt_null":"NULL","pdf_report_title":"","pdf_structure_or_data":"data","phparray_structure_or_data":"data","sql_include_comments":"something","sql_header_comment":"","sql_compatibility":"NONE","sql_structure_or_data":"structure_and_data","sql_create_table":"something","sql_auto_increment":"something","sql_create_view":"something","sql_procedure_function":"something","sql_create_trigger":"something","sql_backquotes":"something","sql_type":"INSERT","sql_insert_syntax":"both","sql_max_query_size":"50000","sql_hex_for_binary":"something","sql_utc_time":"something","texytext_structure_or_data":"structure_and_data","texytext_null":"NULL","yaml_structure_or_data":"data","":null,"as_separate_files":null,"csv_removeCRLF":null,"csv_columns":null,"excel_removeCRLF":null,"excel_columns":null,"htmlword_columns":null,"json_pretty_print":null,"ods_columns":null,"sql_dates":null,"sql_relation":null,"sql_mime":null,"sql_use_transaction":null,"sql_disable_fk":null,"sql_views_as_tables":null,"sql_metadata":null,"sql_drop_database":null,"sql_drop_table":null,"sql_if_not_exists":null,"sql_truncate":null,"sql_delayed":null,"sql_ignore":null,"texytext_columns":null}');

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

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('ser322', 1, 'Relationship between tables');

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
('root', '[{"db":"ser322","table":"filmmaker"},{"db":"ser322","table":"castcrew"},{"db":"ser322","table":"movies"},{"db":"ser322","table":"theaters"},{"db":"ser322","table":"showing"},{"db":"ser322","table":"reviews"},{"db":"ser322","table":"awards"},{"db":"ser322","table":"genres"},{"db":"mysql","table":"user"}]');

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
('root', '2016-04-27 23:05:03', '{"collation_connection":"utf8mb4_unicode_ci"}');

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
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `ser322`
--
CREATE DATABASE IF NOT EXISTS `ser322` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ser322`;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `PID` int(11) NOT NULL,
  `AID` int(11) NOT NULL,
  `Organization` tinytext,
  `Name` tinytext,
  `AwardYear` date DEFAULT NULL,
  `MID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`PID`, `AID`, `Organization`, `Name`, `AwardYear`, `MID`) VALUES
(9, 0, 'Hollywood Foreign Press Association (Golden Globes)', 'Best Performance by an Actor in a Supporting Role in a Motion Picture', '2009-01-11', 9),
(9, 1, 'Academy of Motion Picture Arts and Sciences (Oscars)', 'Best Performance by an Actor in a Supporting Role', '2009-02-22', 9);

-- --------------------------------------------------------

--
-- Table structure for table `castcrew`
--

CREATE TABLE `castcrew` (
  `PID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `CastType` text NOT NULL,
  `Role` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `castcrew`
--

INSERT INTO `castcrew` (`PID`, `MID`, `CastType`, `Role`) VALUES
(1, 1, 'Actor', 'Leonard'),
(2, 6, 'Actor', 'Dex Dogtective'),
(3, 2, 'Actor', 'Tony Stark'),
(3, 3, 'Actor', 'Tony Stark'),
(3, 4, 'Actor', 'Tony Stark'),
(4, 4, 'Director', NULL),
(5, 4, 'Director', NULL),
(6, 3, 'Director', NULL),
(7, 2, 'Director', NULL),
(7, 2, 'Producer', NULL),
(7, 3, 'Producer', NULL),
(8, 1, 'Director', NULL),
(8, 1, 'Writer', NULL),
(8, 5, 'Director', NULL),
(8, 5, 'Producer', NULL),
(8, 5, 'Writer', NULL),
(8, 7, 'Director', NULL),
(8, 7, 'Writer', NULL),
(8, 8, 'Director', NULL),
(8, 8, 'Producer', NULL),
(8, 8, 'Writer', NULL),
(8, 9, 'Director', NULL),
(8, 9, 'Producer', NULL),
(8, 9, 'Writer', NULL),
(9, 9, 'Actor', 'Joker'),
(10, 7, 'Actor', 'Bruce Wayne'),
(10, 8, 'Actor', 'Bruce Wayne'),
(10, 9, 'Actor', 'Bruce Wayne'),
(11, 10, 'Actor', 'Rod'),
(12, 10, 'Director', NULL),
(12, 10, 'Producer', NULL),
(12, 10, 'Writer', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `filmmaker`
--

CREATE TABLE `filmmaker` (
  `PID` int(11) NOT NULL,
  `Name` tinytext,
  `BirthDate` date DEFAULT NULL,
  `DeathDate` date DEFAULT NULL,
  `BirthPlace` tinytext,
  `Biography` text,
  `Height` tinytext,
  `Ethnicity` tinytext,
  `Nickname` tinytext,
  `Note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filmmaker`
--

INSERT INTO `filmmaker` (`PID`, `Name`, `BirthDate`, `DeathDate`, `BirthPlace`, `Biography`, `Height`, `Ethnicity`, `Nickname`, `Note`) VALUES
(1, 'Guy Pearce', '1967-10-05', NULL, 'Ely, Cambridgeshire, England, UK', 'Guy Edward Pearce is an Australian actor and musician. He is well known for having starred in the role of Mike Young in the Australian television series Neighbours and in films such as The Adventures of Priscilla, Queen of the Desert (1994), L.A. Confidential (1997), Memento (2000), The Count of Monte Cristo (2002), The Road (2009), The King''s Speech (2010), Prometheus (2012), and Iron Man 3 (2013).', '5''10"', NULL, NULL, NULL),
(2, 'Charlie Sheen', '1965-09-03', NULL, 'New York City, New York', 'Carlos Irwin Estévez (born September 3, 1965), best known by his stage name Charlie Sheen, is an American actor. Sheen rose to fame after a series of successful films such as Platoon (1986), Wall Street (1987), Young Guns (1988), Eight Men Out (1988), Major League (1989), Hot Shots! (1991), and The Three Musketeers (1993). Sheen''s personal life has made headlines, including reports of alcohol and drug abuse and marital problems, as well as allegations of domestic violence. On November 17, 2015, Sheen publicly revealed that he was HIV positive, having been diagnosed about four years earlier.', '5''10"', 'Mixed', 'Carlos Estévez', NULL),
(3, 'Robert Downey Jr.', '1965-04-04', NULL, 'Manhattan, New York', 'Robert John Downey Jr. (born April 4, 1965)[1] is an American actor. His career has included critical and popular success in his youth, followed by a period of substance abuse and legal troubles, and a resurgence of commercial success in middle age.', '5''9"', 'White', 'RDJ', NULL),
(4, 'Anthony Russo', NULL, NULL, 'Cleveland, Ohio', 'Anthony Russo and Joseph V. Russo are American film and television directors. The brothers direct most of their work jointly, and also occasionally work as producers, screenwriters, actors, and editors. ', NULL, NULL, NULL, NULL),
(5, 'Joseph V. Russo', NULL, NULL, 'Cleveland, Ohio', 'Anthony Russo and Joseph V. Russo are American film and television directors. The brothers direct most of their work jointly, and also occasionally work as producers, screenwriters, actors, and editors. ', NULL, NULL, NULL, NULL),
(6, 'Joss Whedon', '1964-06-23', NULL, 'New York City, New York', 'Joseph Hill "Joss" Whedon (born June 23, 1964) is an American screenwriter, film and television director, film and television producer, comic book author, and composer. He is the founder of Mutant Enemy Productions and co-founder of Bellwether Pictures, and is best known as the creator of the television series Buffy the Vampire Slayer (1997–2003), Angel (1999–2004), Firefly (2002), Dollhouse (2009–10) and Agents of S.H.I.E.L.D. (2013–present).', '5''10"', NULL, NULL, NULL),
(7, 'Jon Favreau', '1966-10-19', NULL, 'Queens, New York City, New York', 'Jonathan Kolia "Jon" Favreau is an American actor, filmmaker and comedian. As an actor, he is best known for his roles in Rudy, Swingers (which he also wrote), Very Bad Things, The Break-Up, and Chef. His notable directorial efforts include Elf, Iron Man, Iron Man 2, Cowboys & Aliens, Chef, and The Jungle Book. He also served as an executive producer on The Avengers, Iron Man 3, and Avengers: Age of Ultron. His most prominent television role was that of Pete Becker, Monica Geller''s boyfriend during season three of the television sitcom Friends. He produces films under his banner Fairview Entertainment. The company has been credited as co-producers in most of Favreau''s directorial ventures.', '6''1"', 'White', 'Favs', NULL),
(8, 'Christopher Nolan', '1970-07-30', NULL, 'London, UK', 'Best known for his cerebral, often nonlinear story-telling, acclaimed writer-director Christopher Nolan was born on July 30, 1970 in London, England. Over the course of 15 years of film-making, Nolan has gone from low-budget independent films to working on some of the biggest blockbusters ever made.', '5''11"', NULL, 'Chris', NULL),
(9, 'Heath Ledger', '1979-04-04', '2008-01-22', 'Perth, Australia', 'Heathcliff Andrew Ledger was an Australian actor and director. After performing roles in Australian television and film during the 1990s, Ledger left for the United States in 1998 to develop his film career. His work comprised nineteen films, including 10 Things I Hate About You (1999), The Patriot (2000), A Knight''s Tale (2001), Monster''s Ball (2001), Ned Kelly (2003), The Brothers Grimm (2005), Lords of Dogtown (2005), Brokeback Mountain (2005), Casanova (2005), Candy (2006), I''m Not There (2007), The Dark Knight (2008) and The Imaginarium of Doctor Parnassus (2009).He also produced and directed music videos and aspired to be a film director.', '6''1"', 'White', 'Heathy', 'Died of accidental drug overdose'),
(10, 'Christian Bale', '1974-01-30', NULL, 'Haverfordwest, Pembrokeshire,UK', 'Christian Charles Philip Bale (born 30 January 1974) is an English actor. He has starred in both blockbuster films and smaller projects from independent producers and art houses.\r\n\r\nBale first caught the public eye at the age of 13, when he was cast in the starring role of Steven Spielberg''s Empire of the Sun (1987). Based on the original story by J. G. Ballard, Bale played an English boy who is separated from his parents and subsequently finds himself lost in a Japanese internment camp during World War II. In 2000, he garnered critical acclaim for his portrayal of serial killer Patrick Bateman in American Psycho. He is known for going to great lengths to portray characters in films, notably for the psychological thriller The Machinist (2004), where he lost 63 pounds (28.5 kg) to play the role of Trevor Reznik.\r\n\r\nBale went on to receive greater commercial recognition for his performance as Bruce Wayne/Batman in Christopher Nolan''s Batman Begins (2005), The Dark Knight (2008) and The Dark Knight Rises (2012). His portrayal of Dicky Eklund in the David O. Russell-directed biographical film The Fighter (2010), earned him critical acclaim and a number of awards, including the Academy Award for Best Supporting Actor. He has since gained further acclaim as well as subsequent Academy Award, Screen Actors Guild Award and Golden Globe nominations for his roles in Russell''s American Hustle and Adam McKay''s The Big Short.', '6''', NULL, NULL, NULL),
(11, 'Alan Bagh', '1985-05-30', NULL, 'Sacramento, CA', NULL, '5''9"', NULL, 'The world''s first synthetic actor', NULL),
(12, 'James Nguyen', '1966-09-01', NULL, 'Da Nang, Vietnam', 'Director James Nguyen is the founder of Moviehead.com, an online movie theater. In 2001, he produced and directed Julie and Jack - a romantic thriller about love and spirituality. In 2004, he completed a second film: Replica - a romantic thriller. Recently, James completed directing Birdemic - Shock and Terror, a romantic thriller about a platoon of eagles & vultures attacking the residents of a small town. James is working on the sequel, Birdemic II - The Resurrection. Also, The Sea is Rising.', '5''5', 'Vietnamese', NULL, 'Always has the main protagnogist as an employee for a computer company [salesman] The main protagnogists in his films are salesmen The combination of the genres of romance and thriller in his films Frequently casts Patsy van Ettinger & Rick Camp in his films [beach] Frequently shows the couple of the movie walking around the shore of a beach.');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `MID` int(11) NOT NULL,
  `Genre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`MID`, `Genre`) VALUES
(1, 'Mystery'),
(1, 'Thriller'),
(2, 'Action'),
(2, 'Adventure'),
(2, 'Sci-Fi'),
(3, 'Action'),
(3, 'Adventure'),
(3, 'Sci-Fi'),
(4, 'Action'),
(4, 'Adventure'),
(4, 'Sci-Fi'),
(4, 'Thriller'),
(5, 'Action'),
(5, 'Mystery'),
(5, 'Sci-Fi'),
(5, 'Thriller'),
(6, 'Action'),
(6, 'Animation'),
(6, 'Comdey'),
(6, 'Family'),
(6, 'Fantasy'),
(7, 'Action'),
(7, 'Crime'),
(7, 'Drama'),
(8, 'Action'),
(8, 'Crime'),
(8, 'Drama'),
(9, 'Action'),
(9, 'Crime'),
(9, 'Drama'),
(10, 'Horror'),
(10, 'Romance'),
(10, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `MID` int(11) NOT NULL,
  `Title` tinytext,
  `ReleaseDate` date DEFAULT NULL,
  `DVDRelease` date DEFAULT NULL,
  `Runtime` int(11) DEFAULT NULL,
  `Rating` tinytext,
  `ProductionType` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`MID`, `Title`, `ReleaseDate`, `DVDRelease`, `Runtime`, `Rating`, `ProductionType`) VALUES
(1, 'Memento (2000)', '2001-05-25', '2001-09-04', 113, 'R', 'Live Action'),
(2, 'Iron Man (2008)', '2008-05-02', '2008-09-30', 126, 'PG-13', 'Live Action'),
(3, 'Avengers: Age of Ultron (2015)', '2015-05-01', '2015-10-02', 141, 'PG-13', 'Live Action'),
(4, 'Captain America: Civil War (2016)', '2016-05-06', NULL, 146, 'PG-13', 'Live Action'),
(5, 'Inception (2010)', '2010-07-16', '2010-12-10', 148, 'PG-13', 'Live Action'),
(6, 'Foodfight! (2012)', '2016-05-10', '2013-05-07', 87, 'PG', 'Animated'),
(7, 'Batman Begins (2005)', '2005-06-15', '2005-10-18', 140, 'PG-13', 'Live Action'),
(8, 'The Dark Knight Rises (2012)', '2012-07-20', '2012-12-04', 165, 'PG-13', 'Live Action'),
(9, 'The Dark Knight (2008)', '2008-07-18', '2008-12-09', 152, 'PG-13', 'Live Action'),
(10, 'Birdemic: Shock and Terror (2010)', '2010-02-27', '2009-04-03', 93, 'Not Rated', 'Live Action');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `MID` int(11) NOT NULL,
  `Review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`MID`, `Review`) VALUES
(1, 'Roger Ebert \nApril 13, 2001 |\nI have here a message from Vasudha Gandhi of Queens Village, N.Y., about the movie "Memento": "Although I loved the film, I don''t understand one key plot-point. If the last thing the main character remembers is his wife dying, then how does he remember that he has short-term memory loss?" Michael Cusumano of Philadelphia writes with the same query. They may have identified a hole big enough to drive the entire plot through. Perhaps a neurologist can provide a medical answer, but I prefer to believe that Leonard, the hero of the film, has a condition similar to Tom Hanks'' "brain cloud" in "Joe vs. the Volcano"--Leonard suffers from a condition brought on by a screenplay that finds it necessary, and it''s unkind of us to inquire too deeply.\n\nLeonard is played by Guy Pearce, in a performance that is curiously moving, considering that by definition it has no emotional arc. He has witnessed the violent death of his wife and is determined to avenge it. But he has had short-term memory loss ever since the death and has to make copious notes--he even has memos tattooed to his body as reminders.\n\nIf Leonard keeps forgetting what has already happened, we in the audience suffer from the opposite condition. We begin at the end, and work our way back toward the beginning, because the story is told backward.\n\nWell, not exactly; it begins with a brilliant idea, a Polaroid photograph that fades instead of developing, but every individual scene plays with time running forward, and there are some lateral moves and flashbacks that illuminate, or confuse, the issue. Essentially, Leonard is adrift in time and experience, and therefore so are we.\n\nThe idea of a narrative told backward was famously used by Harold Pinter in the 1983 film "Betrayal," based on his play. He told a story of adultery and betrayed friendship, beginning with the sad end and then working his way back through disenchantment to complications to happiness to speculation to innocence. His purpose was the opposite of the strategy used by writer-director Christopher Nolan in "Memento." Pinter''s subject was memory and regret, and the way adulteries often begin playfully and end miserably. There was irony in the way the characters grew happier in each scene, while the audience''s knowledge of what was ahead for them deepened.\n\nNolan''s device of telling his story backward, or sort of backward, is simply that--a device. It does not reflect the way Leonard thinks. He still operates in chronological time, and does not know he is in a time-reversed movie. The film''s deep backward and abysm of time is for our entertainment and has nothing to do with his condition. It may actually make the movie too clever for its own good. I''ve seen it twice. The first time, I thought I''d need a second viewing to understand everything. The second time, I found that greater understanding helped on the plot level, but didn''t enrich the viewing experience. Once is right for this movie. Confusion is the state we are intended to be in.\n\nThat said, "Memento" is a diabolical and absorbing experience, in which Pearce doggedly plays a low-rent Fugitive who patiently makes maps, jots notes and explains over and over that he has to talk fast because in a few minutes he''ll start forgetting the conversation. A motel clerk takes advantage of his condition to charge him for two rooms at the same time and cheerfully admits his fraud, pointing out Leonard will forget it. "Even if you get revenge, you''re not going to remember it," he''s told at one point, but his reply has a certain logic: "My wife deserves revenge whether or not I remember it." One striking element of the film is a series of flashbacks to a case Leonard investigated when he worked for an insurance company. This involves a man named Sammy, who appears to have memory loss, although he seems otherwise just like good old Sammy. His wife, a diabetic, can''t be sure he isn''t faking his condition, and arranges a test I will not reveal. This story has relevance to Leonard''s own plight, in an indirect way.\n\nThe other major characters are Natalie (Carrie-Anne Moss), and Teddy (Joe Pantoliano). Of Natalie, he has a Polaroid inscribed: "She has also lost someone. She will help you out of pity." Their relationship keeps starting over from the beginning. As for Teddy, his identity and role shifts mysteriously.\n\nThe purpose of the movie is not for us to solve the murder of the wife ("I can''t remember to forget you," he says of her). If we leave the theater not sure exactly what happened, that''s fair enough. The movie is more like a poignant exercise, in which Leonard''s residual code of honor pushes him through a fog of amnesia toward what he feels is his moral duty. The movie doesn''t supply the usual payoff of a thriller (how can it?), but it''s uncanny in evoking a state of mind. Maybe telling it backward is Nolan''s way of forcing us to identify with the hero. Hey, we all just got here.'),
(2, 'Roger Ebert\r\nJune 1, 2008   | \r\nWhen I caught up with "Iron Man," a broken hip had delayed me and the movie had already been playing for three weeks. What I heard during that time was that a lot of people loved it, that they were surprised to love it so much, and that Robert Downey Jr.''s performance was special. Apart from that, all I knew was that the movie was about a big iron man. I didn''t even know that a human occupied it, and halfway thought that the Downey character''s brain had been transplanted into a robot, or a fate equally weird.\r\n\r\nYes, I knew I was looking at sets and special effects--but I''m referring to the reality of the illusion, if that make any sense. With many superhero movies, all you get is the surface of the illusion. With "Iron Man," you get a glimpse into the depths. You get the feeling, for example, of a functioning corporation. Consider the characters of Pepper Potts (Gwyneth Paltrow), Stark''s loyal aide, and Obadiah Stane (Jeff Bridges), Stark''s business partner. They don''t feel drummed up for the occasion. They seem to have worked together for awhile.\r\n\r\nMuch of that feeling is created by the chemistry involving Downey, Paltrow and Bridges. They have relationships that seem fully-formed and resilient enough to last through the whole movie, even if plot mechanics were not about to take them to another level. Between the two men, there are echoes of the relationship between Howard Hughes and Noah Dietrich in Scorsese''s "The Aviator" (2004). Obadiah Stane doesn''t come onscreen waving flags and winking at the camera to announce he is the villain; he seems adequately explained simply as the voice of reason at Stark''s press conference. (Why did "Stark," during that scene, make me think of "staring mad?"). Between Stark and Pepper, there''s that classic screen tension between "friends" who know they can potentially become lovers.\r\n\r\nDowney''s performance is intriguing, and unexpected. He doesn''t behave like most superheroes: he lacks the psychic weight and gravitas. Tony Stark is created from the persona Downey has fashioned through many movies: irreverent, quirky, self-deprecating, wise-cracking. The fact that Downey is allowed to think and talk the way he does while wearing all that hardware represents a bold decision by the director, Jon Favreau. If he hadn''t desired that, he probably wouldn''t have hired Downey. So comfortable is Downey with Tony Stark''s dialogue, so familiar does it sound coming from him, that the screenplay seems almost to have been dictated by Downey''s persona.\r\n\r\nThere are some things that some actors can safely say onscreen, and other things they can''t. The Robert Downey Jr. persona would find it difficult to get away with weighty, profound statements (in an "entertainment," anyway--a more serious film like "Zodiac" is another matter). Some superheroes speak in a kind of heightened, semi-formal prose, as if dictating to Bartlett''s Familiar Quotations. Not Tony Stark. He could talk that way and be Juno''s uncle. "Iron Man" doesn''t seem to know how seriously most superhero movies take themselves. If there is wit in the dialog, the superhero is often supposed to be unaware of it. If there is broad humor, it usually belongs to the villain. What happens in "Iron Man," however, is that sometimes we wonder how seriously even Stark takes it. He''s flippant in the face of disaster, casual on the brink of ruin.\r\n\r\nIt''s prudent, I think, that Favreau positions the rest of the characters in a more serious vein. The supporting cast wisely does not try to one-up him. Gwyneth Paltrow plays Pepper Potts as a woman who is seriously concerned that this goofball will kill himself. Jeff Bridges makes Obadiah Stane one of the great superhero villains by seeming plausibly concerned about the stock price. Terrence Howard, as Col. Rhodes, is at every moment a conventional straight arrow. What a horror show it would have been if they were all tuned to Tony Stark''s sardonic wave length. We''d be back in the world of "Swingers" (1996) which was written by Favreau.\r\n\r\nAnother of the film''s novelties is that the enemy is not a conspiracy or spy organization. It is instead the reality in our own world today: Armaments are escalating beyond the ability to control them. In most movies in this genre, the goal would be to create bigger and better weapons. How unique that Tony Stark wants to disarm. It makes him a superhero who can think, reason and draw moral conclusions, instead of one who recites platitudes.\r\n\r\nThe movie is largely founded on its special effects. When somebody isn’t talking, something is banging, clanging or laying rubber. The armored robotic suits utilized by Tony and Obadiah would upstage lesser actors than Downey and Bridges; it''s surprising how much those two giant iron men seem to reflect the personalities of the men inside them. Everything they do is preposterous, of course, but they seem to be doing it, not the suits. Some of their moments have real grandeur--as when Tony tests his suit to see how high it will fly, and it finally falls back toward earth in a sequence that reminded me of a similar challenge in "The Right Stuff." The art direction is inspired by the original Marvel artists. The movie doesn''t reproduce the drawings of Jack Kirby and others, but it reproduces their feeling, a vision of out-scale enormity, seamless sleekness, secret laboratories made not of nuts and bolts but of...vistas.\r\n\r\nA lot of big budget f/x epics seem to abandon their stories with half an hour to go, and just throw effects at the audience. This one has a plot so ingenious it continues to function no matter how loud the impacts, how enormous the explosions. It’s an inspiration to provide Tony with that heart-saving device; he’s vulnerable not simply because Obadiah might destroy him, but because he might simply run out of juice.\r\n\r\nThat leaves us, however, with a fundamental question at the bottom of the story: Why must the ultimate weapon be humanoid in appearance? Why must it have two arms and two legs, and why does it matter if its face is scowling? In the real-world competitions between fighting machines, all the elements of design are based entirely on questions of how well they allow the machines to attack, defend, recover, stay upright, and overturn their enemies. It is irrelevant whether they have conventional eyes, or whether those eyes narrow. Nor does it matter whether they have noses, because their oxygen supply is obviously not obtained by breathing.\r\n\r\nThe solution to such dilemmas is that the armored suits look the way they do for entirely cinematic reasons. The bad iron man should look like a mean machine. The good iron man should utilize the racing colors of Tony Stark''s favorite sports cars. It wouldn''t be nearly as much fun to see a fight scene between two refrigerators crossed with the leftovers from a boiler room.\r\n\r\nAt the end of the day it ''s Robert Downey Jr. who powers the lift-off separating this from most other superhero movies. You hire an actor for his strengths, and Downey would not be strong as a one-dimensional mighty-man. He is strong because he is smart, quick and funny, and because we sense his public persona masks deep private wounds. By building on that, Favreau found his movie, and it''s a good one.'),
(3, ' Matt Zoller Seitz\r\nApril 28, 2015   |  \r\nAt one point in "Avengers: Age of Ultron," the hammer-swinging superhero Thor (Chris Hemsworth) tells the android villain Ultron (James Spader) that “there’s no need to break anything.” “Clearly you’ve never made an omelet,” Ultron replies. It''s nice when a movie hands you a metaphor like that. The second “Avengers” is a gigantic omelet combining everything in writer-director Joss Whedon''s refrigerator, pantry and spice rack, and dozens of eggs are broken in its creation. This film about a team of good guys battling a brilliant, genocidal robot is bigger, louder and more disjointed than the first "Avengers”—which, like this new installment, was a crescendo picture, meant to merge strands from solo superhero movies within the Marvel Universe. But it’s also got more personality—specifically Whedon’s—than any other film in the now seven-year-old franchise. And in its growing pains you can see a future in which these corporate movies might indeed be art, or at least unique expressions, rather than monotonous quarterly displays of things crashing into other things, with splashes of personality designed to fool people into thinking they''re not just widgets stamped out in Marvel''s hit factory. \r\n\r\nYou shouldn’t go into it expecting a smooth ride, and you should know that there are basic ways in which it''s not up to snuff. There''s too much over-edited "coverage" by multiple cameras, as opposed to true direction with purpose and flair. (Marvel farms out the planning of its action scenes to second unit crews and special effects artists long before the actors arrive on set, which might account for the choppy, incoherent, “just get it done” feeling of some early showdowns.) It isn''t until the final third that the movie''s destructo-ramas develop personalities as distinctive as the film''s dialogue scenes. Between Captain America (Chris Evans), Iron Man (Robert Downey, Jr.), Black Widow (Scarlett Johansson), the Hulk (Mark Ruffalo), Hawkeye (Jeremy Renner) and Thor; a number of supporting and cameo players; and several new leads, including Ultron’s henchpersons, the twins Quicksilver (Aaron Taylor-Johnson) and Scarlet Witch (Elizabeth Olsen), there might just be too many characters, even for a two-and-a-half-hour movie. (Whedon''s pre-release cut came in at three-plus hours; could this be one of those rare cases where longer is better?) The film will do nothing to quell complaints that the superhero genre is sexist: Black Widow is involved in yet another relationship with a male Avenger and burdened with a tragic backstory equating motherhood with womanly fulfillment, and while Scarlet Witch has some pleasingly Carrie-like rampages, she isn''t given enough to do.\r\n\r\nStill, given the band-of-heroes conceit and the mandate to serve as a high point in an ongoing mega-narrative, it’s hard to imagine "Age of Ultron" handily dispatching any of these problems. And as in the first “Avengers,” which was also overstuffed, Whedon manages to refine the main players’ personalities and set them against each other, often in logistically complex conversations between five or more people: action scenes of a different sort. \r\n\r\nCaptain America and Tony Stark/Iron Man are at the heart of this one. They’re always more intriguing when set against each other than when they’re claiming the spotlight in their own movies, but Whedon, who also serves as a consultant and dialogue polisher on other Marvel entries, has taken their conflict a step further by drawing on events in “Iron Man 3” and “Captain America: The Winter Soldier.” It’s Stark who creates the titular bad guy—with the reluctant help of scientist and part-time Hulk Bruce Banner—in response to trauma he suffered while battling Thor’s brother Loki and his extraterrestrial allies in the first “Avengers.” Ultron is supposed to serve as a Skynet-like artificial intelligence network that detects apocalyptic threats and swiftly destroys them. Cap saw the horrific outgrowth of this mentality in the second “Captain America," in which millions of alleged terrorists were nearly  wiped out by S.H.I.E.L.D. in simultaneous extra-judicial assassinations. Cap is appalled both by the Ultron project itself and the fact that Stark started it in secret because he “didn’t want to hear the ‘man-is-not-meant-to-meddle medley’” from his fellow Avengers. He was right to worry. Like many a sci-fi robot or Frankenstein’s monster, the creature has a different idea of what constitutes a threat (spoiler: it’s us). \r\n\r\nAll of which makes "Age of Ultron" a metaphorical working-through of America''s War on Terror, with Cap representing a principled, transparent military, answering to civilian authority, and Stark as the more paternalistic military-industrial response to 9/11 type threats, treating the masses as unruly kids who aren''t allowed a voice on grounds that all they’ll do is squabble and finger-point while the enemy-du-jour gathers strength. There are accusations of hypocrisy from both sides. Some of Whedon’s dialogue has the sting of political satire: Cap warns Tony that “every time someone tries to win a war before it starts, people die,” a not-too-veiled slap at post-9/11 American foreign policy, while Ultron chides Cap as “God''s righteous man, pretending you can live without a war,” a comment that indicts the United States itself, if you read Cap as a beefed-up Uncle Sam. Ultron, meanwhile, is another example of faith in technology run amok. He fancies himself a robot deity and creates other, smaller robots in his own image (all of which speak in Spader’s voice), but he’s the sadistic God of “King Lear,” a wanton boy smiting flies for sport.\r\n\r\nFor all its missteps, "Age of Ultron" is remarkable. If it’s a failure, as many critics insist, it’s a failure like Ang Lee’s “Hulk,” “Superman Returns” or “The Dark Knight Rises,” which is to say that it’s much more distinctively personal than most of the superhero movies whose titles are synonyms for success. There are points where the movie evokes not other Marvel spectaculars, but Whedon TV series like “Buffy the Vampire Slayer” and “Angel,” where the fun came from watching heroes and villains who were aware of themselves as heroes and villains work through psychological issues while trading screwball comedy dialogue along with body blows. In its lumpy-porridge way, this film makes a better case than any other Marvel picture for the notion that quarter-billion-dollar-budgeted, CGI-festooned slabs of multimedia synergy can be art, too, provided they''re made by an artist with a vision, and said artist appears to be in control of at least part of the production. (I say "part" because Whedon is on record suggesting that this movie’s production broke his spirits; that could mean that what we’re seeing onscreen is the best he can do, considering that the true auteurs of the Marvel films are executive producer Kevin Feige and his marketing department.)\r\n\r\nAmid the usual quota of quips and lightning and robots and explosions are moments of pathos, splendor, sentiment, and operatic horror. There’s quotable dialogue, delivered with the deadpan camaraderie of Howard Hawks ("Bringing up Baby," "Rio Bravo’), and scenes that evoke earlier classics without feeling too obviously like homages. The interaction between Black Widow and her erstwhile sweetheart, Bruce Banner, channels King Kong: she interrupts his Hulk-outs by holding up a slender hand with slightly curved fingers, and after a moment''s hesitation, the green giant reaches out in kind, like a curious ape touching his reflection in a fun-house mirror. A lyrical slow-motion set-piece sees the Avengers battling waves of Ultron’s android minions in a ruined cathedral, like the Bishop gang fending off Mapache’s army in “The Wild Bunch." The circling camera movements are echoed in the film''s credits sequence, which visualizes the film''s heroes and villains as figures in a classical sculpture: Marvel in marble. The design touches are swell: Ultron might be the most overtly Jack Kirby-esque apparition in any Marvel film, his expressive face comprised of thin, overlapping plates.\r\n\r\nKey lines tease out the superhero genre''s kinship to horror. "Maybe I am a monster," a character admits. "I''m not sure that I would know if I were one." Conversations and monologues consider the relationship between chaos and control, creation and destruction that drives not just action cinema but life itself. "When the universe starts to settle," Ultron says, "God throws a stone at it." Most surprising and welcome of all is the way Whedon builds criticism of the superhero genre''s disinterest in property destruction and civilian casualties (displayed most callously in "Man of Steel") into the plot. "Ultron can''t tell the difference between saving the world and destroying it," Scarlet Witch chides. "Where do you think he gets that?"  \r\n\r\nIt would be silly to position Marvel or Whedon or their fan army as underdogs. Once a niche genre, superhero films are now practically the official culture of the United States, and this entry will make a fortune no matter what anyone says about it. Still, I hope that even as people buy tickets out of habit, they''ll see that there is, in fact, art happening on the screen, maybe for the first time since Marvel''s march through American cinema started. "Age of Ultron" proves that a movie with stealth fighter jets, levitating cities and Hulk-on-robot fisticuffs can be as freewheeling as a no-budget indie. It''s a shame to think that this film will be dog-piled for its imperfections rather than applauded for trying to prove that a seemingly inflexible genre can bend into strange and surprising shapes.'),
(4, 'Wendy Ide\r\n1 May 2016 |\r\nWith his propaganda-poster jawline and air of unimpeachable nobility, Captain America (Chris Evans) has always been one of the duller members of the Marvel universe. Which is probably why, although this latest Avengers outing bears his name, the film-makers have press-ganged (almost) every spare ounce of Marvel muscle to back him up. The Hulk-sized gap in the lineup is filled by an engagingly geeky Spider-Man (Tom Holland, a promising taster for the stand-alone Spider-Movie next year). And while memorising who is in which of the colour-coded, armour-plated exoskeletons (and who is punching who in the head) can be challenging, the sheer force of so much superpowered personality on screen makes for a blast of a movie.\r\n\r\nFollowing an explosive but raggedly edited opening sequence in Nigeria, the Avengers are forced to confront the human cost of their ambitious action set pieces. Guilt over collateral damage is what prompts some of them – Tony Stark, Natasha Romanoff – to sign an accord ceding responsibility for their actions to the UN. But Steve Rogers, AKA Captain America, demurs. The freedom to deploy a spot of unilateral ass-kicking where needed is what makes the Captain, and by extension America, great. The scene is set for an internecine Avengers smackdown; the plot – hooked on an undercooked vengeful grudge – is of secondary importance to the opportunity to watch them knock titanium alloy spots off each other. Fortunately, the zinging screenplay, by Marvel regulars Christopher Markus and Stephen McFeely, hits home almost as frequently as the punches.'),
(5, 'Roger Ebert\nJuly 14, 2010   |  \nIt''s said that Christopher Nolan spent ten years writing his screenplay for "Inception." That must have involved prodigious concentration, like playing blindfold chess while walking a tight-wire. The film''s hero tests a young architect by challenging her to create a maze, and Nolan tests us with his own dazzling maze. We have to trust him that he can lead us through, because much of the time we''re lost and disoriented. Nolan must have rewritten this story time and again, finding that every change had a ripple effect down through the whole fabric.\n\nThe story can either be told in a few sentences, or not told at all. Here is a movie immune to spoilers: If you knew how it ended, that would tell you nothing unless you knew how it got there. And telling you how it got there would produce bafflement. The movie is all about process, about fighting our way through enveloping sheets of reality and dream, reality within dreams, dreams without reality. It''s a breathtaking juggling act, and Nolan may have considered his "Memento" (2000) a warm-up; he apparently started this screenplay while filming that one. It was the story of a man with short-term memory loss, and the story was told backwards.\n\nLike the hero of that film, the viewer of "Inception" is adrift in time and experience. We can never even be quite sure what the relationship between dream time and real time is. The hero explains that you can never remember the beginning of a dream, and that dreams that seem to cover hours may only last a short time. Yes, but you don''t know that when you''re dreaming. And what if you''re inside another man''s dream? How does your dream time synch with his? What do you really know?\n\nCobb (Leonardo DiCaprio) is a corporate raider of the highest order. He infiltrates the minds of other men to steal their ideas. Now he is hired by a powerful billionaire to do the opposite: To introduce an idea into a rival''s mind, and do it so well he believes it is his own. This has never been done before; our minds are as alert to foreign ideas as our immune system is to pathogens. The rich man, named Saito (Ken Watanabe), makes him an offer he can''t refuse, an offer that would end Cobb''s forced exile from home and family.\n\nCobb assembles a team, and here the movie relies on the well-established procedures of all heist movies. We meet the people he will need to work with: Arthur (Joseph Gordon-Levitt), his longtime associate; Eames (Tom Hardy), a master at deception; Yusuf (Dileep Rao), a master chemist. And there is a new recruit, Ariadne (Ellen Page), a brilliant young architect who is a prodigy at creating spaces. Cobb also goes to touch base with his father-in-law Miles (Michael Caine), who knows what he does and how he does it. These days Michael Caine need only appear on a screen and we assume he''s wiser than any of the other characters. It''s a gift.\n\nBut wait. Why does Cobb need an architect to create spaces in dreams? He explains to her. Dreams have a shifting architecture, as we all know; where we seem to be has a way of shifting. Cobb''s assignment is the "inception" (or birth, or wellspring) of a new idea in the mind of another young billionaire, Robert Fischer Jr. (Cillian Murphy), heir to his father''s empire. Saito wants him to initiate ideas that will lead to the surrender of his rival''s corporation. Cobb needs Ariadne \nto create a deceptive maze-space in Fischer''s dreams so that (I think) new thoughts can slip in unperceived. Is it a coincidence that Ariadne is named for the woman in Greek mythology who helped Theseus escape from the Minotaur''s labyrinth?\n\nCobb tutors Ariadne on the world of dream infiltration, the art of controlling dreams and navigating them. Nolan uses this as a device for tutoring us as well. And also as the occasion for some of the movie''s astonishing special effects, which seemed senseless in the trailer but now fit right in. The most impressive to me takes place (or seems to) in Paris, where the city literally rolls back on itself like a roll of linoleum tile.\n\nProtecting Fischer are any number of gun-wielding bodyguards, who may be working like the mental equivalent of antibodies; they seem alternatively real and figurative, but whichever they are, they lead to a great many gunfights, chase scenes and explosions, which is the way movies depict conflict these days. So skilled is Nolan that he actually got me involved in one of his chases, when I thought I was relatively immune to scenes that have become so standard. That was because I cared about who was chasing and being chased.\n\nIf you''ve seen any advertising at all for the film, you know that its architecture has a way of disregarding gravity. Buildings tilt. Streets coil. Characters float. This is all explained in the narrative. The movie is a perplexing labyrinth without a simple through-line, and is sure to inspire truly endless analysis on the web.\n\nNolan helps us with an emotional thread. The reason Cobb is motivated to risk the dangers of inception is because of grief and guilt involving his wife Mal (Marion Cotillard), and their two children. More I will not (in a way, cannot) say. Cotillard beautifully embodies the wife in an idealized way. Whether we are seeing Cobb''s memories or his dreams is difficult to say--even, literally, in the last shot. But she makes Mal function as an emotional magnet, and the love between the two provides an emotional constant in Cobb''s world, which is otherwise ceaselessly shifting.\n\n"Inception" works for the viewer, in a way, like the world itself worked for Leonard, the hero of "Memento." We are always in the Now. We have made some notes while getting Here, but we are not quite sure where Here is. Yet matters of life, death and the heart are involved--oh, and those multi-national corporations, of course. And Nolan doesn''t pause before using well-crafted scenes from spycraft or espionage, including a clever scheme on board a 747 (even explaining why it must be a 747).\n\nThe movies often seem to come from the recycling bin these days: Sequels, remakes, franchises. "Inception" does a difficult thing. It is wholly original, cut from new cloth, and yet structured with action movie basics so it feels like it makes more sense than (quite possibly) it does. I thought there was a hole in "Memento:" How does a man with short-term memory loss remember he has short-term memory loss? Maybe there''s a hole in "Inception" too, but I can''t find it. Christopher Nolan reinvented "Batman." This time he isn''t reinventing anything. Yet few directors will attempt to recycle "Inception." I think when Nolan left the labyrinth, he threw away the map.'),
(6, 'Jake Rossen\r\nAugust 9th, 2013 |\r\nThe brand managers at Georgia-Pacific were not about to budge. They agreed that Brawny Man, the plaid-shirted character adorning millions of paper-towel rolls, could come to life and share a moment with Mr. Clean. But their Angel Soft Baby, who had sold countless reams of toilet tissue, could never be displaced from her perch in the clouds. \r\nThe Brand X army parades its ketchup-based artillery. \r\nSuch concessions were typical of the two years spent negotiating for more than 80 food-industry characters to appear in “Foodfight!,” a computer-animated movie that was announced in 2000 by Threshold Entertainment. \r\nMore at NYTimes.com'),
(7, 'Roger Ebert\r\nJune 13, 2005   |  \r\n''Batman Begins" at last penetrates to the dark and troubled depths of the Batman legend, creating a superhero who, if not plausible, is at least persuasive as a man driven to dress like a bat and become a vigilante. The movie doesn''t simply supply Batman''s beginnings in the tradition of a comic book origin story, but explores the tortured path that led Bruce Wayne from a parentless childhood to a friendless adult existence. The movie is not realistic, because how could it be, but it acts as if it is.\r\n\r\nOpening in a prison camp in an unnamed nation, "Batman Begins" shows Bruce Wayne (Christian Bale) enduring brutal treatment as a prisoner, as part of his research into the nature of evil. He is rescued by the mysterious Henri Ducard (Liam Neeson), who appoints himself Wayne''s mentor, teaches him sword-fighting and mind control, and tries to enlist him in his amoral League of Shadows ("We burned London to the ground").\r\n\r\nWhen Wayne refuses to kill someone as a membership requirement, Ducard becomes his enemy; the reclusive millionaire returns to Gotham City determined to fight evil, without realizing quite how much trouble he is in.\r\n\r\nThe story of why he identifies with bats (childhood trauma) and hates evildoers (he saw his parents killed by a mugger) has been referred to many times in the various incarnations of the Batman legend, including four previous films. This time, it is given weight and depth. Wayne discovers in Gotham that the family Wayne Corp. is run by a venal corporate monster (Rutger Hauer), but that in its depths labors the almost forgotten scientific genius Lucius Fox (Morgan Freeman), who understands Wayne wants to fight crime and offers him the weaponry.\r\n\r\nLucius happens to have on hand a prototype Batmobile, which unlike the streamlined models in the earlier movies, is a big, unlovely juggernaut that looks like a Humvee''s wet dream. He also devises a bat-cape with surprising properties.\r\n\r\nThese preparations, Gotham crime details and the counsel of the faithful servant Alfred (Michael Caine) delay the actual appearance of Batman until the second act of the movie. We don''t mind. Unlike the earlier films, which delighted in extravagant special-effects action, "Batman Begins" is shrouded in shadow; instead of high-detail, sharp-edged special effects, we get obscure developments in fog and smoke, reinforced by a superb sound-effects design. And Wayne himself is a slow learner, clumsy at times, taking foolish chances, inventing Batman as he goes along.\r\n\r\nThis is at last the Batman movie I''ve been waiting for. The character resonates more deeply with me than the other comic superheroes, perhaps because when I discovered him as a child, he seemed darker and more grown-up than the cheerful Superman. He has secrets. As Alfred muses: "Strange injuries and a nonexistent social life. These things beg the question, what does Bruce Wayne do with his time?"\r\n\r\nWhat he does is create a high profile as a millionaire playboy who gets drunk and causes scenes. This disappoints Rachel Dawes (Katie Holmes), his friend since childhood, who is now an assistant D.A. She and Lt. James Gordon (Gary Oldman), apparently Gotham City''s only honest cop, are faced with a local crime syndicate led by Carmine Falcone (Tom Wilkinson). But Falcone''s gang is child''s play, compared to the deep scheme being hatched by the corrupt psychiatrist Dr. Jonathan Crane (Cillian Murphy), who, in the tradition of Victorian alienists, likes to declare his enemies insane and lock them up.\r\n\r\nCrane''s secret identity as the Scarecrow fits into a scheme to lace the Gotham water supply with a psychedelic drug. Then a superweapon will be used to vaporize the water, citizens will inhale the drug, and it will drive them crazy, for reasons which the Scarecrow and his confederates explain with more detail than clarity. Meanwhile, flashbacks establish the character''s deepest traumas, including his special relationship with bats and his guilt because he thinks he is responsible for his parents'' mugging.\r\n\r\nI admire, among other things, the way the movie doesn''t have the gloss of the earlier films. The Batman costume is an early design. The Bat Cave is an actual cave beneath Wayne Manor. The Batmobile enters and leaves it by leaping across a chasm and through a waterfall. The Bat Signal is crude and out of focus.\r\n\r\nThe movie was shot on location in Chicago, making good use of the murky depths of lower Wacker Drive and the Board of Trade building (now the Wayne Corp.). Special effects add a spectacular monorail down La Salle Street, which derails in the best scene along those lines since "The Fugitive."\r\n\r\nBale is just right for this emerging version of Batman. It''s strange to see him muscular and toned, after his cadaverous appearance in "The Machinist," but he suggests an inward quality that suits the character. Rachel is at first fooled by his facade of playboy irresponsibility, but Lt. Gordon figures out fairly quickly what Batman is doing, and why. Instead of one villain as the headliner, "Batman Begins" has a whole population, including Falcone, the Scarecrow, the Asian League of Shadows leader Ra''s Al Ghul (Ken Watanabe) and a surprise bonus pick.\r\n\r\nThe movie has been directed by Christopher Nolan, still only 35, whose "Memento" (2000) took Sundance by storm and was followed by "Insomnia" (2002), a police procedural with Al Pacino. What Warner Bros. saw in those pictures that inspired them to think of Nolan is hard to say, but the studio guessed correctly, and after an eight-year hiatus, the Batman franchise has finally found its way.\r\n\r\nI said this is the Batman movie I''ve been waiting for; more correctly, this is the movie I did not realize I was waiting for, because I didn''t realize that more emphasis on story and character and less emphasis on high-tech action was just what was needed. The movie works dramatically in addition to being an entertainment. There''s something to it.'),
(8, 'Roger Ebert\r\nJuly 17, 2012   |  \r\n"The Dark Knight Rises" leaves the fanciful early days of the superhero genre far behind, and moves into a doom-shrouded, apocalyptic future that seems uncomfortably close to today''s headlines. As urban terrorism and class warfare envelop Gotham and its infrastructure is ripped apart, Bruce Wayne (Christian Bale) emerges reluctantly from years of seclusion in Wayne Manor and faces a soulless villain as powerful as he is. The film begins slowly with a murky plot and too many new characters, but builds to a sensational climax.\r\n\r\nThe result, in Christopher Nolan''s conclusion to his Batman trilogy, is an ambitious superhero movie with two surprises: It isn''t very much fun, and it doesn''t have very much Batman. I''m thinking of the over-the-top action sequences of the earlier films that had a subcurrent of humor, and the exhilarating performance of Heath Ledger as the Joker. This movie is all serious drama, with a villain named Bane whose Hannibal Lecterish face-muzzle robs him of personality. And although we see a good deal of Bruce Wayne, his alter-ego Batman makes only a few brief appearances before the all-out climax.\r\n\r\nBane, played by Tom Hardy in a performance evoking a homicidal pro wrestler, is a mystery because it''s hard to say what motivates him. He releases thousands of Gotham''s criminals in a scenario resembling the storming of the Bastille. As they face off against most of the city police force in street warfare, Bane''s goal seems to be the overthrow of the ruling classes. But this would prove little if his other plan (the nuclear annihilation of the city) succeeds.\r\n\r\nBane stages two other sensational set pieces, involving destroying the Stock Exchange and blowing up a football stadium, that seemed aimed at our society''s twin gods of money and pro sports. No attempt is made to account for Bane''s funding and resources, and when it finally comes down to Bane and Batman going mano-a-mano during a street fight, it involves an anticlimactic fist-fight. He blows up the city''s bridges and to top that lands a right hook on Batman''s jaw?\r\n\r\nBane is the least charismatic of the Batman villains, but comes close to matching Bruce Wayne and Batman in screen time. The film also supplies a heroic young cop (Joseph Gordon-Levitt), two potential romantic partners for Wayne, and lots of screen time for series regulars Alfred the Butler (Michael Caine, remarkably effective in several trenchant scenes), Commissioner Gordon (Gary Oldman) and the genius inventor Lucius Fox (Morgan Freeman).\r\n\r\nOne of the women is the always enigmatic Catwoman (Anne Hathaway), and the other is Miranda Tate (Marion Cotillard), a millionaire who may be able to rescue Wayne Enterprises after Bane''s stock market mischief wipes out Wayne financially. Catwoman is a freelance burglar who''s always looking out for number one, and Miranda is a do-gooder environmentalist; both are drawn irresistibly to Bruce, who is not only still a bachelor but has spent the last eight years as a hermit, walled up in Wayne Manor with the loyal Alfred.\r\n\r\nAll of these characters and their activities produce stretches in the first half of the film during which, frankly, I was not entirely sure who was doing what and with which and to whom. The movie settles in for its sensational second half, however, although not everybody will be able to precisely explain the deep stone well where Bane imprisons Bruce Wayne. The circular walls of this well represent a deadly climbing wall by which anyone can try to reach freedom, but few succeed. The actual location is in Jodhpur, Rajasthan, India, and we get a glimpse of some zigzagging stairs that are unforgettably shown in "Baraka." Turns out Bane was held there as a child.\r\n\r\nThis is a dark and heavy film; it tests the weight a superhero movie can bear. That Nolan is able to combine civil anarchy, mass destruction and a Batcycle with exercise-ball tires is remarkable. That he does it without using 3D is admirable. That much of it was shot in the 70mm IMAX format allows it to make that giant screen its own. That it concludes the trilogy is inevitable; how much deeper can Nolan dig? It lacks the near-perfection of "The Dark Knight" (2008), it needs more clarity and a better villain, but it''s an honorable finale.'),
(9, 'Roger Ebert\r\nJuly 16, 2008   |  \r\n“Batman” isn’t a comic book anymore. Christopher Nolan’s “The Dark Knight” is a haunted film that leaps beyond its origins and becomes an engrossing tragedy. It creates characters we come to care about. That’s because of the performances, because of the direction, because of the writing, and because of the superlative technical quality of the entire production. This film, and to a lesser degree “Iron Man,” redefine the possibilities of the “comic-book movie.”\r\n\r\n“The Dark Knight” is not a simplistic tale of good and evil. Batman is good, yes, The Joker is evil, yes. But Batman poses a more complex puzzle than usual: The citizens of Gotham City are in an uproar, calling him a vigilante and blaming him for the deaths of policemen and others. And the Joker is more than a villain. He’s a Mephistopheles whose actions are fiendishly designed to pose moral dilemmas for his enemies.\r\n\r\nThe key performance in the movie is by the late Heath Ledger, as the Joker. Will he become the first posthumous Oscar winner since Peter Finch? His Joker draws power from the actual inspiration of the character in the silent classic “The Man Who Laughs” (1928). His clown''s makeup more sloppy than before, his cackle betraying deep wounds, he seeks revenge, he claims, for the horrible punishment his father exacted on him when he was a child. In one diabolical scheme near the end of the film, he invites two ferry-loads of passengers to blow up the other before they are blown up themselves. Throughout the film, he devises ingenious situations that force Batman (Christian Bale), Commissioner Gordon (Gary Oldman) and District Attorney Harvey Dent (Aaron Eckhart) to make impossible ethical decisions. By the end, the whole moral foundation of the Batman legend is threatened.\r\n\r\nBecause these actors and others are so powerful, and because the movie does not allow its spectacular special effects to upstage the humans, we’re surprised how deeply the drama affects us. Eckhart does an especially good job as Harvey Dent, whose character is transformed by a horrible fate into a bitter monster. It is customary in a comic book movie to maintain a certain knowing distance from the action, to view everything through a sophisticated screen. “The Dark Knight” slips around those defenses and engages us.\r\n\r\nYes, the special effects are extraordinary. They focus on the expected explosions and catastrophes, and have some superb, elaborate chase scenes. The movie was shot on location in Chicago, but it avoids such familiar landmarks as Marina City, the Wrigley Building or the skyline. Chicagoans will recognize many places, notably La Salle Street and Lower Wacker Drive, but director Nolan is not making a travelogue. He presents the city as a wilderness of skyscrapers, and a key sequence is set in the still-uncompleted Trump Tower. Through these heights, the Batman moves at the end of strong wires, or sometimes actually flies, using his cape as a parasail.\r\n\r\nThe plot involves nothing more or less than the Joker’s attempts to humiliate the forces for good and expose Batman’ secret identity, showing him to be a poser and a fraud. He includes Gordon and Dent on his target list, and contrives cruel tricks to play with the fact that Bruce Wayne once loved, and Harvey Dent now loves, Assistant D.A. Rachel Dawes (Maggie Gyllenhaal). The tricks are more cruel than he realizes, because the Joker doesn’t know Batman’s identity. Heath Ledger has a good deal of dialogue in the movie, and a lot of it isn’t the usual jabs and jests we’re familiar with: It’s psychologically more complex, outlining the dilemmas he has constructed, and explaining his reasons for them. The screenplay by Christopher Nolan and his brother Jonathan (who first worked together on “Memento”) has more depth and poetry than we might have expected.\r\n\r\nTwo of the supporting characters are crucial to the action, and are played effortlessly by the great actors Morgan Freeman and Michael Caine. Freeman, as the scientific genius Lucius Fox, is in charge of Bruce Wayne’s underground headquarters, and makes an ethical objection to a method of eavesdropping on all of the citizens of Gotham City. His stand has current political implicstions. Caine is the faithful butler Alfred, who understands Wayne better than anybody, and makes a decision about a crucial letter.\r\n\r\nNolan also directed the previous, and excellent, “Batman Begins” (2005), which went into greater detail than ever before about Bruce Wayne’s origins and the reasons for his compulsions. Now it is the Joker’s turn, although his past is handled entirely with dialogue, not flashbacks. There are no references to Batman’s childhood, but we certainly remember it, and we realize that this conflict is between two adults who were twisted by childhood cruelty — one compensating by trying to do good, the other by trying to do evil. Perhaps they instinctively understand that themselves.\r\n\r\nSomething fundamental seems to be happening in the upper realms of the comic-book movie. “Spider-Man II” (2004) may have defined the high point of the traditional film based on comic-book heroes. A movie like the new “Hellboy II” allows its director free rein for his fantastical visions. But now “Iron Man” and even more so “The Dark Knight” move the genre into deeper waters. They realize, as some comic-book readers instinctively do, that these stories touch on deep fears, traumas, fantasies and hopes. And the Batman legend, with its origins in film noir, is the most fruitful one for exploration.\r\n\r\nIn his two Batman movies, Nolan has freed the character to be a canvas for a broader scope of human emotion. For Bruce Wayne is a deeply troubled man, let there be no doubt, and if ever in exile from his heroic role, it would not surprise me what he finds himself capable of doing.');
INSERT INTO `reviews` (`MID`, `Review`) VALUES
(10, 'Fabio Periera\r\n05/08/2010 |\r\nYears ago, Jon Lovitz lent his voice to an animated series called The Critic, in which his character, Jay Sherman, would succinctly pronounce his verdict on most of what he was tasked to watch: “It stinks.”\r\n\r\nA review interested in keeping to the content of Birdemic: Shock and Terror could probably be summed up thusly. It is, truly, one of the worst films ever made and last Friday night’s midnight screening of the flick at The Cinefamily in Los Angeles did not pretend otherwise. To paraphrase the venue’s co-programmer who introduced the film, it’s an absolute joy to watch “for this kind of thing,” but to commit two hours to the entirety of the picture is to engage in something of an endurance sport. (Thankfully, The Cinefamily hands out free beer at the start of screenings.)\r\n\r\nAs the title credits roll, the film opens on a winding road. I’m not giving away any part of the story to tell you it winds for a while, as the same thirty seconds of music plays on loop. As credits for Editing and Cinematography appeared on the screen, the audience’s first ‘Boo!’ escaped, causing the entire theater to erupt in laughter.\r\n\r\nAnd so it begins, a tale of a young salesman who falls in love with a fashion model, and spends the rest of the film running away from sharp-taloned seagulls that defecate explosives and urinate acid. (No, I’m not making this up.)\r\n\r\nThere is more to the plot than that, but not much more. Scenes throughout the film touch ineloquently on a variety of current affairs topics, among them bird flu, the Iraq war, and the environment. For example, after a particularly long shoot-out scene, one character turns to the other and, apropos of nothing, says, “I’m just so tired of the killing in Iraq.” “Ok,” I thought, “but what does that have to do with the killer birds? And is that piece of dialog why the director claims Apocalypse Now and The Birds as inspiration for this film?\r\n\r\nDespite—or perhaps because of—it’s many struggles with dialog and camerawork, Birdemic has attracted national attention and a distribution deal. How, you ask? Having failed to get into Sundance, the 42-year old filmmaker James Nguyen drove a van covered in fake blood and posterss around the streets of the festival, as loudspeakers blared the sounds of screeching birds.\r\n\r\nAnd that act illuminates what makes Birdemic appealing enough for comedians like Rainn Wilson to tweet about it: its inadvertent exemplification of the camp aesthetic.\r\n\r\nBirdemic hews a close line to the conventions associated with box-office thrillers, from start to finish. But in executing them poorly it draws attention to their simplicity and ridiculousness. Why exactly is the lead actor dragging around this screaming broad he only met a short time ago? And doesn’t the presence of children complicate the whole survival thing? (Ah yes, they’re a family, and families survive—and thrive at the box office.) Logically piecing through Birdemic makes as much sense as doing the same to Transformers or Batman. Don’t look for logic, just suspend disbelief and enjoy the pretty pictures.\r\n\r\nWhich one can’t do while watching Birdemic and that is why it crosses the line into a camp classic. Some filmmakers, like John Waters in Pink Flamingos, work diligently to create the same aesthetic that Nguyen, through a lack of skill, accomplished by accident. But whereas a film like Pink Flamingos is actively trying to undermine social conventions to prove a point, Birdemic makes every attempt to hit the nail on the head, and misses without grace.\r\n\r\nAnd that makes it hilarious—a kind of funny where one is laughing as much at the conventions we all subscribe to each summer at the box office as the ramshackle shenanigans on-screen.');

-- --------------------------------------------------------

--
-- Table structure for table `showing`
--

CREATE TABLE `showing` (
  `TID` int(11) NOT NULL,
  `MID` int(11) NOT NULL,
  `ShowTimes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `showing`
--

INSERT INTO `showing` (`TID`, `MID`, `ShowTimes`) VALUES
(1, 4, '3D 7:00pm'),
(1, 4, '7:00pm'),
(2, 4, '3D 7:00 pm | 10:30'),
(2, 4, '7:00 pm | 10:30'),
(3, 4, '3D 7:30 pm | 9:45 | 10:45'),
(3, 4, '7:00 pm | 7:45 | 8:30 | 9:15 | 10:20 | 11:00');

-- --------------------------------------------------------

--
-- Table structure for table `theaters`
--

CREATE TABLE `theaters` (
  `TID` int(11) NOT NULL,
  `Name` tinytext,
  `Location` tinytext,
  `NoOfTheaters` int(11) DEFAULT NULL,
  `PhoneNo` tinytext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theaters`
--

INSERT INTO `theaters` (`TID`, `Name`, `Location`, `NoOfTheaters`, `PhoneNo`) VALUES
(1, 'Harkins SanTan Village 16 ', '2298 E. Williams Field Rd., Gilbert AZ 85295', 16, '480) 821-3356'),
(2, 'AMC Mesa Grand 24', '1647 South Stapley, Mesa AZ 85204', 24, '(888) AMC-4FUN'),
(3, 'Regal Gilbert Stadium 14', '1144 South Gilbert Road, Gilbert AZ 85296', 16, '(844) 462-7342 1452');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`PID`,`AID`);

--
-- Indexes for table `castcrew`
--
ALTER TABLE `castcrew`
  ADD PRIMARY KEY (`PID`,`MID`,`CastType`(128)),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `filmmaker`
--
ALTER TABLE `filmmaker`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`MID`,`Genre`(128));

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`MID`,`Review`(128));

--
-- Indexes for table `showing`
--
ALTER TABLE `showing`
  ADD PRIMARY KEY (`TID`,`MID`,`ShowTimes`(128)),
  ADD KEY `MID` (`MID`);

--
-- Indexes for table `theaters`
--
ALTER TABLE `theaters`
  ADD PRIMARY KEY (`TID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmmaker`
--
ALTER TABLE `filmmaker`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `theaters`
--
ALTER TABLE `theaters`
  MODIFY `TID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `filmmaker` (`PID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `castcrew`
--
ALTER TABLE `castcrew`
  ADD CONSTRAINT `castcrew_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `filmmaker` (`PID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `castcrew_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `genres`
--
ALTER TABLE `genres`
  ADD CONSTRAINT `genres_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `showing`
--
ALTER TABLE `showing`
  ADD CONSTRAINT `showing_ibfk_1` FOREIGN KEY (`TID`) REFERENCES `theaters` (`TID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `showing_ibfk_2` FOREIGN KEY (`MID`) REFERENCES `movies` (`MID`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
