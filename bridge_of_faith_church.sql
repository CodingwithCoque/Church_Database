-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 14, 2025 at 03:20 AM
-- Server version: 8.0.40
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bridge_of_faith_church`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendees`
--

CREATE TABLE `attendees` (
  `attendee_id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `registration_date` datetime NOT NULL,
  `ticket_type` varchar(50) NOT NULL,
  `workshop_id` int NOT NULL,
  `session_id` int NOT NULL,
  `church_affiliation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `attendees`
--

INSERT INTO `attendees` (`attendee_id`, `first_name`, `last_name`, `registration_date`, `ticket_type`, `workshop_id`, `session_id`, `church_affiliation`) VALUES
(1, 'Adam ', 'Johnson', '2025-03-10 02:26:18', 'General', 2, 5, 'Faith Chapel'),
(2, 'Maria', 'Lopez', '2025-03-11 02:26:18', 'VIP', 4, 7, 'Grace Fellowship'),
(3, 'Daniel', 'Carter', '2025-03-09 02:26:18', 'General', 1, 3, 'Kingdom Church'),
(4, 'Olivia', 'Brown', '2025-03-12 02:26:18', 'Speaker', 0, 9, 'Living Waters Church'),
(5, 'Chris', 'Evans', '2025-03-08 02:26:18', 'General', 3, 2, 'New Life Ministry'),
(6, 'Sophie', 'Davis', '2025-03-13 02:26:18', 'Volunteer', 5, 6, 'River of Grace'),
(7, 'Lucas', 'King', '2025-03-14 02:26:18', 'General', 7, 1, 'Christ\'s Light'),
(8, 'Jessica ', 'Taylor', '2025-03-07 02:26:18', 'VIP', 6, 8, 'House of Worship'),
(9, 'Matthew', 'Hall', '2025-03-06 02:26:18', 'General', 0, 4, 'Kingdom Builders'),
(10, 'Lily', 'Harris', '2025-03-05 02:26:18', 'Speaker', 8, 10, 'Restoration Church');

-- --------------------------------------------------------

--
-- Table structure for table `logistics`
--

CREATE TABLE `logistics` (
  `logistics_id` int NOT NULL,
  `resource_type` varchar(100) NOT NULL,
  `quantity` int NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `event_date` date NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `logistics`
--

INSERT INTO `logistics` (`logistics_id`, `resource_type`, `quantity`, `assigned_to`, `status`, `event_date`, `notes`) VALUES
(1, 'Chairs', 200, 'Logistics Team A', 'Pending', '2025-04-01', 'For main hall seating'),
(2, 'Projectors', 5, 'IT Team', 'Approved', '2025-04-02', 'Setup for speaker rooms'),
(3, 'Microphones', 10, 'Audio Team', 'In Progress', '2025-04-03', 'Testing in worship area'),
(4, 'Refreshments', 1000, 'Catering Team', 'Denied', '2025-04-04', 'For general attendees'),
(5, 'Bibles', 100, 'Event Volunteers', 'Approved', '2025-04-05', 'For free distribution'),
(6, 'Sound System', 2, 'Audio Team', 'In Progress', '2025-04-06', 'Main stage setup'),
(7, 'Stage Decorations', 1, 'Design Team', 'Approved', '2025-04-07', 'Theme-based decoration'),
(8, 'Name Tags', 400, 'Registration Team', 'Pending', '2025-04-08', 'Pre-printed for attendees'),
(9, 'Security Personnel', 6, 'Security Team', 'Denied', '2025-04-09', 'Event entrance & backstage'),
(10, 'Transport Buses', 3, 'Transportation Team', 'Pending', '2025-04-10', 'To pick up attendees');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `speaker_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` int NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `title`, `description`, `speaker_id`, `date`, `time`, `duration`, `location`) VALUES
(1, 'Faith in the Digital Age', 'How technology impacts faith and ministry', 7, '2025-04-01', '09:00:00', 60, 'Main Hall '),
(2, 'The Power of Prayer', 'Strengthening personal and communal prayer', 2, '2025-04-02', '10:30:00', 45, 'Room A'),
(3, 'Worship and Praise', 'The role of music in spiritual growth', 3, '2025-04-03', '14:00:00', 90, 'Worship Center'),
(4, 'Leading with Purpose', 'Principles of Christian leadership', 1, '2025-04-04', '13:00:00', 60, 'Leadership Room'),
(5, 'Overcoming Life’s Challenges', 'Finding faith in difficult times', 10, '2025-04-05', '11:00:00', 90, 'Room B'),
(6, 'Women in Ministry', 'Encouraging female leadership in churches', 8, '2025-04-06', '15:00:00', 60, 'Room C'),
(7, 'Mission Work Today', 'Challenges and victories in global missions', 5, '2025-04-07', '10:30:00', 75, 'Conference Hall'),
(8, 'Biblical Studies', 'A deep dive into scripture interpretation', 7, '2025-04-08', '16:00:00', 120, 'Library'),
(9, 'Youth Ministry', 'Engaging the next generation in faith', 4, '2025-04-09', '14:30:00', 60, 'Room D'),
(10, 'Church Growth Strategies', 'Expanding and strengthening congregations', 9, '2025-04-10', '17:00:00', 90, 'Auditorium');

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `speaker_id` int NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `bio` text NOT NULL,
  `organization` varchar(225) NOT NULL,
  `topic` varchar(225) NOT NULL,
  `session_id` int NOT NULL,
  `social_media` text NOT NULL,
  `availabilty` tinyint(1) NOT NULL,
  `rating` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`speaker_id`, `first_name`, `last_name`, `bio`, `organization`, `topic`, `session_id`, `social_media`, `availabilty`, `rating`) VALUES
(1, 'Jane', 'Smith', 'Experienced pastor and author', 'Grace Ministries', 'Leadership in Ministry', 3, 'Instagram, Snapchat, X, and Facebook:\r\n@janesmithfaith', 1, 4),
(2, 'Michael ', 'Brown', 'Christian speaker and life coach', 'Faith Builders', 'The Power of Prayer', 7, 'Instagram & X:\r\n@michaelbrownmusic\r\n\r\nFacebook:\r\n@MichaelBrownMusic1', 1, 4),
(3, 'Sarah', 'Johnson', 'Worship leader and musician', 'Living Waters', 'Worship & Praise', 5, 'Instagram & Facebook:\r\n@sarahjohnsonyouth', 0, 4),
(4, 'David', 'White', 'Youth ministry leader', 'Youth Impact', 'Reaching the Next Generation', 2, 'Facebook:\r\n@davidwhiteglobal', 1, 4),
(5, 'Emily ', 'Clark', 'Missionary and evangelist', 'Global Missions', 'Spreading the Gospel', 9, 'X & Facebook:\r\n@emilyclarktherapy', 0, 5),
(6, 'Thomas', 'Lee', 'Christian psychologist', 'Renewed Minds', 'Faith & Mental Health', 4, 'Instagram & X:\r\n@thomasleebible', 0, 4),
(7, 'Rachel', 'Adams', 'Bible scholar and professor', 'Kingdom Theologians', 'Biblical Studies', 8, 'X:\r\n@thomasleebible\r\n\r\nInstagram:\r\n@thomasleebible19', 1, 5),
(8, 'Mark', 'Green', 'Women\'s ministry leader', 'Women of Grace', 'Women in Faith', 6, 'X & Instagram:\r\n@markgreenchurch', 0, 5),
(9, 'Laura', 'Scott', 'Church growth strategist', 'Church Growth Network', 'Church Leadership', 10, 'Instagram & Facebook:\r\n@laurascotthealing', 1, 5),
(10, 'Christopher', 'Alexander', 'Author and counselor', 'Healing Hearts', 'Overcoming Grief', 1, 'Facebook:\r\n@ChrisAlex13\r\n\r\nInstagram:\r\n@ChrisAlexander01', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `workshop_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `speaker_id` int NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `duration` int NOT NULL,
  `capacity` int NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `workshops`
--

INSERT INTO `workshops` (`workshop_id`, `title`, `description`, `speaker_id`, `date`, `time`, `duration`, `capacity`, `location`) VALUES
(1, 'Leading with Faith', 'Leadership principles for church leaders', 1, '2025-04-01', '10:00:00', 90, 50, 'Room A'),
(2, 'Prayer Warriors', 'Developing a powerful prayer life', 2, '2025-04-02', '11:30:00', 60, 30, 'Room B'),
(3, 'The Art of Worship', 'Worship techniques and leadership', 3, '2025-04-03', '14:00:00', 120, 100, 'Main Hall'),
(4, 'Youth Outreach', 'Reaching and mentoring young believers', 4, '2025-04-04', '13:00:00', 90, 50, 'Room C'),
(5, 'Missionary Work', 'Spreading the Gospel globally', 5, '2025-04-05', '09:00:00', 90, 40, 'Room D'),
(6, 'Christian Counseling', 'Faith-based mental health support', 6, '2025-04-06', '13:00:00', 60, 25, 'Room E'),
(7, 'Biblical Studies', 'Understanding key biblical concepts', 7, '2025-04-07', '10:30:00', 120, 80, 'Library'),
(8, 'Women in Ministry', 'Strengthening women leaders', 8, '2025-04-08', '16:00:00', 60, 40, 'Room F'),
(9, 'Church Growth', 'Strategies for growing a church', 9, '2025-04-09', '14:30:00', 90, 60, 'Auditorium'),
(10, 'Healing & Restoration', 'Overcoming grief and hardship', 10, '2025-04-10', '17:00:00', 90, 50, 'Room G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendees`
--
ALTER TABLE `attendees`
  ADD PRIMARY KEY (`attendee_id`);

--
-- Indexes for table `logistics`
--
ALTER TABLE `logistics`
  ADD PRIMARY KEY (`logistics_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`speaker_id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`workshop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendees`
--
ALTER TABLE `attendees`
  MODIFY `attendee_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `logistics`
--
ALTER TABLE `logistics`
  MODIFY `logistics_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `session_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `speaker_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `workshop_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
