-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: aauolnqaqll9wh.crnmtib3ljla.eu-west-1.rds.amazonaws.com
-- Generation Time: May 11, 2020 at 01:18 PM
-- Server version: 8.0.16
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benjilevine.com`
--
CREATE DATABASE IF NOT EXISTS `benjilevine.com` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `benjilevine.com`;

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `content` varchar(5000) COLLATE utf8mb4_general_ci NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`, `priority`) VALUES
(1, '<strong>Benji Levine</strong> is an enthusiastic and hardworking <strong>Computer Systems Engineering</strong> graduate from the <strong>University of Warwick</strong>. Particularly interested in infrastructure and DevOps, with skills in software engineering, project management, and system administration.', 0),
(2, 'Benji is currently <strong>travelling the world</strong> to learn about different cultures and discover new areas of interest.<br>Having started travelling in October 2019, he has so far visited ten cities, including Berlin, Madrid, and Oslo.', 1),
(3, 'Benji graduated from the University of Warwick in July 2019 with a <strong>high 2:1</strong> in Computer Systems Engineering BEng. He was one of the first eight students to study Computer Systems Engineering at Warwick, and one of the first five to graduate. The course provided <a href=\'#skills\'>a variety of valuable skills</a>, particularly helped by Benji\'s personal tutors; Matt Leeke and Suhaib Fahmy. Suhaib Fahmy also supervised Benji during his final year project on <strong>Modelling Smart Field-Programmable Gate Array Switches in the Network</strong>. More details on this project can be found <a href=\'#projects\'>below</a>.', 2),
(4, 'Whilst at Warwick, Benji held the position of <span class=\'is-italic\'>IT Officer</span> at <strong><a href=\'https://warwick.film/\'>Warwick Student Cinema</a></strong> for two years. This position involved managing all of the society\'s IT equipment, including firewalls, Windows and Linux servers, a large PHP-based website, various databases, containers, virtual machines, an internal Wi-Fi network, network switches, an Active Directory for 50+ users, Windows workstations, an electronic point-of-sale (EPOS) system, and more. The experience gained from this position was invaluable, providing exposure to equipment and architectures which are hard to find outside of a professional environment.', 3);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(5000) COLLATE utf8mb4_general_ci NOT NULL,
  `date` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`name`, `description`, `date`, `priority`) VALUES
('benjilevine.com Development', 'Designed and developed personal website in Python using <a href=\'https://flask-sqlalchemy.palletsprojects.com/en/2.x/\'>the Flask web framework</a> and <a href=\'https://bulma.io/\'>the Bulma CSS framework</a>.<br>\r\nDeployed with a MySQL database to AWS to gain experience with cloud-based infrastructure.', 'October 2019', 80),
('Choys', 'Open-source website to compare different locations in the UK for living.<br>\r\nUses web scrapers to source relevant data.<br>\r\nAvailable at <a href=\'https://github.com/benjilev08/Choys/\' target=\"_blank\" rel=\"noopener noreferrer\">https://github.com/benjilev08/Choys/</a>.</br>\r\nCurrently under active development.', 'August 2019 - Present', 120),
('Final Year Project', 'Modelling Smart Field-Programmable Gate Array Switches in the Network.\r\n<br>\r\nCreated an open-source Python application for modelling network topologies containing FPGA-based smart switches.\r\n<br>\r\n<a href=\'https://github.com/benjilev08/fpga_switch_model\'>The project code is publicly available here</a>, and <a href=\"static/assets/final_report.pdf\">the project report is available here</a>.', 'October 2018 - May 2019', 40),
('SAP Adaptive Server Enterprise on Treadmill', 'While working at Morgan Stanley, developed a Python script to build and run instances of SAP Adaptive Server Enterprise (ASE) database servers either locally or, using the Treadmill API, on cloud-based containers.<br>\r\nA range of configuration options were implemented and appropriately validated. Developed skills in Python, knowledge of containerisation theory, and experience of a long term project for clients.\r\n', 'June - September 2018', 60),
('Warwick Student Cinema', 'While serving as Warwick Student Cinema\'s IT Officer, made significant contributions to infrastructure and codebase, as well as providing user support.<br>\r\nThis included managing physical servers, virtual machines, containers, an active directory for over 50 users, firewalls, an internal network with VLANs and Wi-Fi, a network attached storage (NAS), various databases, an electronic point-of-sale (EPOS) system, a large PHP based website, and more.', 'February 2017 - March 2019', 100),
('Wordpress Website Development', 'Designed and developed personal websites for two leading professors of economics and a further website for their new collaborative project. SEO techniques were applied to these website and hosting was set up. Improved skills in PHP, HTML, CSS, and working with Wordpress. Also gained experience in analysing clients\' requirements to implement them efficiently and in presenting results to clients in meetings.<br>\r\nOne of these websites is available at <a href=\'https://lorrainedearden.com/\' target=\"_blank\" rel=\"noopener noreferrer\">https://lorrainedearden.com/</a>.', 'September 2017', 140);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill` (
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`name`, `url`, `img`) VALUES
('CSS', 'https://www.w3.org/Style/CSS/', 'css.png'),
('Debian', 'https://www.debian.org/', 'debian.png'),
('Docker', 'https://www.docker.com/', 'docker.png'),
('Flask', 'https://flask.palletsprojects.com/en/1.1.x/', 'flask.jpeg'),
('FreeNAS', 'https://www.freenas.org/', 'freenas.jpg'),
('Git', 'https://git-scm.com/', 'git.png'),
('GitHub', 'https://github.com/', 'github.png'),
('HTML', 'https://html.spec.whatwg.org/multipage/', 'html.png'),
('JavaScript', 'https://developer.mozilla.org/en-US/docs/Web/JavaScript', 'javascript.png'),
('Jenkins', 'https://jenkins.io/', 'jenkins.png'),
('LaTeX', 'https://www.latex-project.org/', 'latex.png'),
('Linux', 'https://www.linuxfoundation.org/', 'linux.png'),
('MATLAB', 'https://www.mathworks.com/products/matlab.html', 'matlab.png'),
('Microsoft Office', 'https://products.office.com/en-us/home', 'microsoft_office.png'),
('Nginx', 'https://www.nginx.com/', 'nginx.png'),
('pfSense', 'https://www.pfsense.org/', 'pfsense.jpeg'),
('PHP', 'https://www.php.net/', 'php.png'),
('Python', 'https://www.python.org/', 'python.png'),
('SQL', NULL, 'sql.jpeg'),
('Travis CI', 'https://travis-ci.com/', 'travis.png'),
('Ubuntu', 'https://ubuntu.com/', 'ubuntu.png'),
('Verilog', 'https://standards.ieee.org/standard/1800-2017.html', 'verilog.png'),
('Windows', 'https://www.microsoft.com/en-us/windows', 'windows.gif'),
('Windows Server', 'https://www.microsoft.com/en-us/cloud-platform/windows-server', 'windows_server.png');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `colour` varchar(20) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`name`, `colour`) VALUES
('Adobe Illustrator', 'success'),
('Adobe Photoshop', 'success'),
('Apache', 'link'),
('Assembly', 'primary'),
('AWS', 'info'),
('Bash', 'primary'),
('BibTeX', 'warning'),
('Bootstrap', 'success'),
('Bulma', 'success'),
('C', 'primary'),
('C#', 'primary'),
('C++', 'primary'),
('CoffeeScript', 'primary'),
('CPU', 'danger'),
('CSS', 'primary'),
('Dart', 'primary'),
('databases', 'link'),
('Debian', 'dark'),
('Django', 'link'),
('Docker', 'info'),
('ECMAScript', 'primary'),
('Firewall', 'danger'),
('Flask', 'link'),
('Fortran', 'primary'),
('FPGA', 'danger'),
('FreeNAS', 'info'),
('GIMP', 'success'),
('Git', 'info'),
('GitHub', 'info'),
('Go', 'primary'),
('Google Apps Script', 'primary'),
('GPU', 'danger'),
('Green Unicorn', 'link'),
('Haskell', 'primary'),
('HTML', 'primary'),
('Hyper-V', 'info'),
('Inkscape', 'success'),
('Java', 'primary'),
('JavaScript', 'primary'),
('Jenkins', 'info'),
('LaTeX', 'warning'),
('Linux', 'dark'),
('Lisp', 'primary'),
('Lua', 'primary'),
('MATLAB', 'primary'),
('Microsoft Office', 'warning'),
('Mininet', 'danger'),
('MySQL', 'link'),
('Network Switch', 'danger'),
('Nginx', 'link'),
('Objective-C', 'primary'),
('OCaml', 'primary'),
('OpenGL', 'primary'),
('P4', 'primary'),
('Pascal', 'primary'),
('Perl', 'primary'),
('pfSense', 'info'),
('PHP', 'primary'),
('PostgreSQL', 'link'),
('PowerShell', 'primary'),
('Proxmox', 'dark'),
('Python', 'primary'),
('R', 'primary'),
('Ruby', 'primary'),
('Rust', 'primary'),
('SAP Adaptive Server Enterprise', 'link'),
('Scala', 'primary'),
('Servers', 'danger'),
('SQL', 'primary'),
('SQLAlchemy', 'link'),
('SQLite', 'link'),
('Swift', 'primary'),
('SystemVerilog', 'primary'),
('Travis CI', 'info'),
('Treadmill', 'info'),
('TypeScript', 'primary'),
('Ubuntu', 'dark'),
('Veeam Backup and Replication', 'info'),
('Verilog', 'primary'),
('VHDL', 'primary'),
('Visual Basic', 'primary'),
('Web Scraper', 'link'),
('Windows', 'dark'),
('Windows Deployment Services', 'info'),
('Windows Server', 'dark'),
('Wordpress', 'link');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `project_name` varchar(200) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_name`, `project_name`) VALUES
('AWS', 'benjilevine.com Development'),
('Bulma', 'benjilevine.com Development'),
('CSS', 'benjilevine.com Development'),
('Flask', 'benjilevine.com Development'),
('Git', 'benjilevine.com Development'),
('GitHub', 'benjilevine.com Development'),
('HTML', 'benjilevine.com Development'),
('MySQL', 'benjilevine.com Development'),
('Python', 'benjilevine.com Development'),
('SQLAlchemy', 'benjilevine.com Development'),
('Bulma', 'Choys'),
('Flask', 'Choys'),
('PostgreSQL', 'Choys'),
('Python', 'Choys'),
('SQLAlchemy', 'Choys'),
('Web Scraper', 'Choys'),
('BibTeX', 'Final Year Project'),
('FPGA', 'Final Year Project'),
('Git', 'Final Year Project'),
('GitHub', 'Final Year Project'),
('LaTeX', 'Final Year Project'),
('Mininet', 'Final Year Project'),
('Network Switch', 'Final Year Project'),
('Python', 'Final Year Project'),
('Travis CI', 'Final Year Project'),
('Ubuntu', 'Final Year Project'),
('databases', 'SAP Adaptive Server Enterprise on Treadmill'),
('Git', 'SAP Adaptive Server Enterprise on Treadmill'),
('Python', 'SAP Adaptive Server Enterprise on Treadmill'),
('SAP Adaptive Server Enterprise', 'SAP Adaptive Server Enterprise on Treadmill'),
('Treadmill', 'SAP Adaptive Server Enterprise on Treadmill'),
('CSS', 'Warwick Student Cinema'),
('Debian', 'Warwick Student Cinema'),
('Docker', 'Warwick Student Cinema'),
('Firewall', 'Warwick Student Cinema'),
('FreeNAS', 'Warwick Student Cinema'),
('Git', 'Warwick Student Cinema'),
('GitHub', 'Warwick Student Cinema'),
('HTML', 'Warwick Student Cinema'),
('Hyper-V', 'Warwick Student Cinema'),
('Jenkins', 'Warwick Student Cinema'),
('Linux', 'Warwick Student Cinema'),
('MySQL', 'Warwick Student Cinema'),
('Network Switch', 'Warwick Student Cinema'),
('pfSense', 'Warwick Student Cinema'),
('PHP', 'Warwick Student Cinema'),
('PostgreSQL', 'Warwick Student Cinema'),
('Servers', 'Warwick Student Cinema'),
('SQL', 'Warwick Student Cinema'),
('Ubuntu', 'Warwick Student Cinema'),
('Veeam Backup and Replication', 'Warwick Student Cinema'),
('Windows', 'Warwick Student Cinema'),
('Windows Deployment Services', 'Warwick Student Cinema'),
('Windows Server', 'Warwick Student Cinema'),
('CSS', 'Wordpress Website Development'),
('PHP', 'Wordpress Website Development'),
('Wordpress', 'Wordpress Website Development');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_name`,`project_name`),
  ADD KEY `tags_ibfk_2` (`project_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`tag_name`) REFERENCES `tag` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tags_ibfk_2` FOREIGN KEY (`project_name`) REFERENCES `project` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
