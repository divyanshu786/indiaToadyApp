-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2022 at 06:07 PM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IndiaToday`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `heading` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `bannerImage` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `category` varchar(50) NOT NULL,
  `author_name` varchar(60) NOT NULL,
  `author_id` int NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `heading`, `content`, `bannerImage`, `category`, `author_name`, `author_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Fulfilling dreams of Ambedkar, Bhagat Singh: Arvind Kejriwal returns ‘terrorist’ barb', 'Delhi Chief Minister Arvind Kejriwal, who has been accused of harbouring pro-separatist ties by the BJP and Congress, hit back at his \"corrupt\" rivals on Saturday, saying, \"The person who they call a terrorist has today dedicated 12,430 smart classrooms to the nation.\" He was speaking at the inaugural programme for smart classrooms in the Delhi government schools.\r\n\r\n\r\nPlayUnmute\r\nFullscreen\r\nVDO.AI\r\n\r\n\"All these corrupt people have come together in calling me a terrorist. The person who they call a terrorist has today dedicated 12,430 smart classrooms to the nation. Now, the children of officers, judges, rickshaw drivers and workers will sit at the same desk and study. This terrorist is fulfilling the dreams of Baba Sahib Ambedkar and Bhagat Singh,\" the chief minister said in a sharp attack on his political opponents.\r\n\r\n\r\nLast week, the BJP shared a video of Kumar Vishwas, once a close confidant of Arvind Kejriwal who later quit the AAP, who alleged that Kejriwal wants to become \"either the CM of Punjab or the CM of Khalistan\".\r\n\r\nAlso Read: I may be sweetest terrorist who built hospitals, schools: Arvind Kejriwal on being called Khalistani\r\n\r\nThe Congress, too, has jumped on the wagon, criticising the Delhi chief minister who hopes to sweep power in Punjab - a state currently with the Congress - this election.\r\n\r\nADVERTISEMENT\r\n\r\nCongress leaders Rahul Gandhi and Priyanka Gandhi Vadra have trained their guns on Kejriwal over the allegations levelled at the Delhi chief minister by former AAP leader Kumar Vishwas.\r\n\r\nCHECK THESE OUT\r\nMORE\r\n\r\nChanni only said Punjab should be run by Punjabis: Priyanka Gandhi on \'bhaiye\' remark\r\nChanni only said Punjab should be run by Punjabis: Priyanka Gandhi on \'bhaiye\' remark\r\n\r\nRECOMMENDED\r\nManish Tewari expresses shock as Congress expels senior leader Kewal Singh Dhillon\r\nManish Tewari expresses shock as Congress expels senior leader Kewal Singh Dhillon\r\n\r\nRECOMMENDED\r\nBihar, UP \'bhaiya\' remark being distorted, clarifies Punjab CM Channi after row\r\nBihar, UP \'bhaiya\' remark being distorted, clarifies Punjab CM Channi after row\r\n\r\nRECOMMENDED\r\nWill look into it: Amit Shah responds to Channi\'s demand for probe against Kejriwal\r\nWill look into it: Amit Shah responds to Channi\'s demand for probe against Kejriwal\r\n\r\nRECOMMENDED\r\nI don\'t impose dress code on officials, but...: Yogi Adityanath on hijab row\r\nI don\'t impose dress code on officials, but...: Yogi Adityanath on hijab row\r\n\r\nTRENDING\r\nMeet the third-generation Mangeshkars, who will carry forward Lata Didi\'s legacy\r\nMeet the third-generation Mangeshkars, who will carry forward Lata Didi\'s legacy\r\n\r\nMOST READ\r\n\"Mr Kejriwal, give a straight answer. Is Kumar Vishwas telling the truth? Yes or no?\" Rahul Gandhi tweeted last evening. His sister Priyanka soon retweeted, saying: \"Waiting for your response.\"\r\n\r\nArvind Kejriwal\'s Aam Aadmi Party has fielded 114 candidates in Punjab, where it hopes to seize power for the first time with promises of better education and free electricity, among others. Punjab will vote tomorrow to elect 117 members to its Assembly. Votes will be counted on March 10.\r\n\r\nRead More \r\nClick here for IndiaToday.in’s complete coverage of the coronavirus pandemic.\r\n\r\n\r\nPosted by\r\nIndia Today Web Desk\r\nPOST A COMMENT (6)\r\nLearn Data Science & Analytics without quitting your job.\r\nA 48% salary hike? All too possible now! Become a Business Analyst or a Data Scientist\r\nGreat Learning\r\n|\r\nSponsored\r\nLearn from IIT Madras Faculty & Industry Experts.\r\nStarts at Rs 4688/month. Without Quitting Your Job Get 68% Salary Hike.\r\nIntellipaat\r\n|\r\nSponsored\r\nHelping a hungry family is also a tax saving option\r\nAkshaya Patra\r\n|\r\nSponsored\r\nI Can’t Hold Back My Tears. Please Save My Son From Dying.\r\nKetto\r\n|\r\nSponsored\r\n2-Year Online MBA Course | UGC Entitled. NAAC \'A++\' Graded | 2022 Batch\r\nJAIN Online\r\n|\r\nSponsored\r\nBegin your child\'s coding journey with iD Tech.\r\nDoes your child want to code and monetize their own game with Roblox or Make mods for Minecraft? Start a YouTube channel?  Get 20 learning sessions at ₹14,500 for 10 weeks\r\niD Tech\r\n|\r\nSponsored\r\nPave your way as an SDE Abroad!\r\nAttend a Free session by Mohit Yadav on how to crack SDE Job opportunities outside. Book!\r\nScaler Academy\r\n|\r\nSponsored\r\n\r\n2 & 4 BHK Sky Homes From 2.14 Cr in Mahim with Plethora of Outdoor & Indoor Amenities\r\nPasscode Miracle Bay\r\n|\r\nSponsored\r\nOnline competitions in Pune schools to celebrate National Science Day\r\nIndia Today\r\nSania Mirza: Don’t let anybody tell you that you can’t do it\r\nIndia Today\r\n10:90 Payment Plan on 1-2 BHK in Powai with Spacious Balconies & Modern Lifestyle\r\nPasscode Eye of Powai\r\n|\r\nSponsored\r\n1, 2 & 3 BHK Homes in Chandivali at Amaryllis, Nahar Group\r\nNahar Group\r\n|\r\nSponsored\r\nCrypto Currency Mining in Home and Generate Bitcoin\r\nCCM Hardware Service\r\n|\r\nSponsored\r\nLuxury 2 BHK Homes from ₹1.99 Cr* (all incl.) in Mumbai near Powai. New Sample Apartment Ready.\r\nShapoorji Pallonji - Vicinia\r\n|\r\nSponsored\r\n1 & 2 BHK Residences at Runwal MyCity, Dombivli\r\nBook 1 & 2 BHK at Runwal MyCity. 156 acres of township, Dedicated parking, Clubhouse for each cluster & more\r\nRunwal\r\n|\r\nSponsored\r\nIndia U-19 star Rajvardhan Hangargekar accused of age fraud as Maharashtra Sports Commissioner seeks action\r\nIndia Today\r\nJaya Bachchan, daughter Shweta pose with Tina Ambani at her son Anmol\'s mehendi ceremony\r\nIndia Today\r\n\r\n\r\nUltra-soft, airy knit shirts. Custom-made.\r\nBombay Shirt Company\r\n|\r\nSponsored\r\n10:80:10 Pay Plan & Stamp Duty on 2, 3 & 4 BHK from 2.19 Cr* in Wadala with Opulent Lifestyle\r\nPasscode Infinia\r\n|\r\nSponsored\r\nFull Body Checkup at Home at Rs 699 Only  \r\nRedcliffe Labs\r\n|\r\nSponsored\r\nKolte Patil Life Republic - 2 & 2.5 BHK Homes Starting at Rs. 59 Lakhs *\r\nEasy access To Pune Mumbai Expressway\r\nKolte Patil Life Republic\r\n|\r\nSponsored\r\nOpen Free Demat & Trading A/c with JM Financial\r\nJM Financial\r\n|\r\nSponsored\r\nHow a village in Kashmir has kept Covid at bay\r\nIndia Today\r\n5,529 vacancies on offer for TNPSC Group 2 recruitment! Apply from February 23, prelims on May 21\r\nIndia Today\r\nADVERTISEMENT\r\n\r\nREAD THIS\r\n\r\nBappi Lahiri: The ultimate showman \r\n\r\nRepresentative Image\r\nWho is a Bhaiya?\r\n\r\n\r\nUnderstanding the Dalit demography of Punjab, caste by caste\r\n\r\nBattleground UP: Back together, Akhilesh & family makes strong pitch for power\r\nBattleground UP: Back together, Akhilesh & family makes strong pitch for power\r\n\r\nADVERTISEMENT\r\n\r\nRECOMMENDED\r\n', 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202202/Arvind_Kejriwal_1_1200x768.jpeg?35FIdEcmFmqaMtfsbfojjLQ.euVmySZI&size=770:433', 'news', 'divyanshu', 1, 1, '2022-02-19 10:16:00', '2022-02-19 10:16:00'),
(2, 'Night curfew lifted in Uttar Pradesh as Covid cases decline', 'Night curfew has been lifted in Uttar Pradesh after a decline in daily Covid cases was witnessed in the state. This comes a week after the state government had relaxed night curfew timings by an hour.\r\n\r\n\r\nNight curfew was imposed in Uttar Pradesh after the Omicron variant of coronavirus led to a surge in cases across the country.\r\n\r\nIndia reported a decline of 14.1 per cent lower than yesterday with 22,270 new Covid cases in the last 24 hours. With this, the total caseload has touched 4,28,02,505.\r\n\r\nA total of 325 deaths were reported in the country in the last 24 hours, increasing the total reported death count to 5,11,230.\r\n\r\nThe top five states which have registered maximum cases are Kerala with 7,780 cases, followed by Maharashtra with 2,068 cases, Karnataka with 1,333 cases, Rajasthan with 1,233 cases and Mizoram with 1,151 cases.', 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202202/upnight_1200x768.jpeg?PC7l6Afom_H9fvv6Sx_E8B1eHjQLAXc8&size=770:433', 'news', 'divyanshu', 1, 1, '2022-02-20 10:16:00', '2022-02-20 10:16:00'),
(3, 'India wins bid to host 2023 International Olympic Committee session in Mumbai', 'India will host the session for the first time since 1983. The session will be hosted at the state-of-the-art, brand new Jio World Convention Centre. Mumbai received a historic 99% of the votes in favour of its bid from the delegates participating in the process, with 75 members endorsing its candidature in the session held in Beijing.\r\n\r\n\"A historic moment as the International Olympic Committee Session is coming to India in 2023! Indian sport has made giant strides in recent years. Excited and proud to have been a part of the Indian delegation for this landmark occasion. #StrongerTogether #IOCSession2023,\" Anurag Thakur tweeted.', 'https://h2.vdo.ai/uploads/thumbnails/16391143253761b2e655a9528.png', 'sports', 'mohit', 2, 1, '2022-02-19 10:21:39', '2022-02-19 10:21:39'),
(4, 'Infinix Zero 5G first sale in India today: Price, specifications and everything you need to know ', 'nfinix Zero 5G is all set to go on its first sale today in India. The smartphone comes with a host of features including support for 13 5G bands, a MediaTek Density 900 processor, a 48-megapixel primary camera, and a 5000mAh battery. Infinix is also offering tons of deals on the Zero 5G for first-time buyers.', 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202202/Screenshot_2022-02-18_at_9.39._0_1200x768.png?XaCeCT33VRwWsOxOuaUTkIaIytgRCV65&size=770:433', 'tech', 'mohit', 2, 1, '2022-02-19 10:21:39', '2022-02-19 10:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `language` enum('hindi','english') NOT NULL,
  `marital_status` enum('married','unmarried','others','') NOT NULL,
  `dob` date NOT NULL,
  `birth_time` enum('am','pm') NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `mobile`, `gender`, `language`, `marital_status`, `dob`, `birth_time`, `profile_pic`, `created_at`, `updated_at`) VALUES
(1, 'divyanshu3', '$2b$10$diuMxCaebxCV3VwycOvyouXeENU7l3fcvSqSAaybjFCvrMlVy3.ne', 'divyansh3u@eleve.co.in', '9717962282', 'male', 'hindi', 'married', '2022-02-01', 'am', 'https://dev-admin.eleveglobal.com/assets/images/user.jpg', '2022-02-17 11:33:44', '2022-02-17 11:33:44'),
(2, 'mohit', '$2b$10$diuMxCaebxCV3VwycOvyouXeENU7l3fcvSqSAaybjFCvrMlVy3.ne', 'mohit@gmail.com', '9548553464', 'male', 'english', 'unmarried', '1999-02-10', 'am', 'https://dev-admin.eleveglobal.com/assets/images/user.jpg', '2022-02-19 10:25:59', '2022-02-19 10:25:59'),
(21, 'Divyanshu4', '$2b$10$U6LwJ.MLzNHm6nhf.6hSzOaWJQDrCIE/jABsLhOE8lsoIsqJD6Iru', 'divyanshu4@eleve.co.in', '9717962282', 'male', 'hindi', 'married', '2022-02-01', 'am', 'https://dev-admin.eleveglobal.com/assets/images/user.jpg', '2022-02-19 11:38:27', '2022-02-19 11:38:27'),
(22, 'Divyanshu5', '$2b$10$M12OeGEu.YsJVzZGoe23X.S3hrxRneYBTQ/LUbWNtVMBb.N6MeG4e', 'divyanshu5@eleve.co.in', '9717962282', 'male', 'hindi', 'married', '2022-02-01', 'am', 'https://dev-admin.eleveglobal.com/assets/images/user.jpg', '2022-02-19 11:38:38', '2022-02-19 11:38:38'),
(23, 'Divyanshu6', '$2b$10$jh0hmDn5C8l4MShaqHDu7.iqXl8b7KJ6TqgjWC3qQ8SClSXhcVHpu', 'divyanshu6@eleve.co.in', '9717962282', 'male', 'hindi', 'married', '2022-02-01', 'am', 'https://dev-admin.eleveglobal.com/assets/images/user.jpg', '2022-02-19 11:55:50', '2022-02-19 11:55:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
