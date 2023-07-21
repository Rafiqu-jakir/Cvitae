-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2023 at 06:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvitae`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `aboutme` varchar(100) NOT NULL,
  `freelance` varchar(100) NOT NULL,
  `resendence` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Age` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`aboutme`, `freelance`, `resendence`, `address`, `email`, `Age`) VALUES
('This is Rafiqul Jakir From Sonaimuri, Noakhali, Bangldesh', 'Available', 'Bangladeshi', 'Dhaka, Bangladesh', 'rj@gmail.com', '23'),
('', '', '', '', 'sanzida@gmail.com', ''),
('sdfs', 'sds', 'adsad', 'asdasd', 'billal@gmail.com', 'asdasd'),
('', '', '', '', 'raju@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `email`, `password`, `name`) VALUES
(1, 'rj@gmail.com', '276', 'Rafiqul Xakir');

-- --------------------------------------------------------

--
-- Table structure for table `approve_user`
--

CREATE TABLE `approve_user` (
  `ID` varchar(10) NOT NULL,
  `Payment_method` varchar(30) NOT NULL,
  `Transaction_id` varchar(30) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `package` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `freelance` varchar(50) NOT NULL,
  `ifram` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`address`, `phone`, `email`, `freelance`, `ifram`) VALUES
('Dhaka, Bangladesh', '01879074212', 'rj@gmail.com', 'Available', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3650.1914228009027!2d90.35472651434962!3d23.81179119234659!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c12015382851%3A0x3ceca92fcf1a72d2!2sBangladesh%20University%20of%20Business%20and%20Technology%20(BUBT)!5e0!3m2!1sen!2sbd!4v1669661669794!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
('', '', 'sanzida@gmail.com', '', ''),
('asdasd', 'asdasd', 'billal@gmail.com', 'sds', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2581.266711606132!2d90.35151625753885!3d23.802151197259825!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c0e6fc1daec9%3A0x46f829c0754ebb5e!2sMasjidul%20Akbar%20Eidgah%20Maidan!5e0!3m2!1sen!2sbd!4v1669645290404!5m2!1sen!2sbd\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>'),
('', '', 'raju@gmail.com', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `year1` varchar(20) NOT NULL,
  `institute1` varchar(200) NOT NULL,
  `location1` varchar(100) NOT NULL,
  `description1` varchar(500) NOT NULL,
  `year2` varchar(20) NOT NULL,
  `institute2` varchar(200) NOT NULL,
  `location2` varchar(100) NOT NULL,
  `description2` varchar(500) NOT NULL,
  `year3` varchar(20) NOT NULL,
  `institute3` varchar(200) NOT NULL,
  `location3` varchar(100) NOT NULL,
  `description3` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`year1`, `institute1`, `location1`, `description1`, `year2`, `institute2`, `location2`, `description2`, `year3`, `institute3`, `location3`, `description3`, `email`) VALUES
('2009 - 2013', 'School', 'Noakhali', 'Class 3 - Class 8', '2014 - 2016', 'SSC', 'Sonaimuri, Noakhali', 'Class 9 - Class 10', '2016 - 2018', 'HSC', 'Dhaka, Bangladesh', 'Class 11 - Class 12', 'rj@gmail.com'),
('', '', '', '', '', '', '', '', '', '', '', '', 'sanzida@gmail.com'),
('2009 - 2013', 'asdsad', 'asdas', 'asdsa', 'asdasd', 'asdasd', 'asdsd', 'asdas', 'asdsda', 'asdsad', 'asddas', 'asdads', 'billal@gmail.com'),
('', '', '', '', '', '', '', '', '', '', '', '', 'raju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `year1` varchar(20) NOT NULL,
  `designation1` varchar(30) NOT NULL,
  `company1` varchar(50) NOT NULL,
  `description1` varchar(500) NOT NULL,
  `year2` varchar(20) NOT NULL,
  `designation2` varchar(30) NOT NULL,
  `company2` varchar(50) NOT NULL,
  `description2` varchar(500) NOT NULL,
  `year3` varchar(20) NOT NULL,
  `designation3` varchar(30) NOT NULL,
  `company3` varchar(50) NOT NULL,
  `description3` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`year1`, `designation1`, `company1`, `description1`, `year2`, `designation2`, `company2`, `description2`, `year3`, `designation3`, `company3`, `description3`, `email`) VALUES
('2019 - present', 'Web Designer', 'Fiverr INC', 'Work from Home. Freelancing ', '2016 - 2017', 'Junior Developer', 'ABC Slutions', 'lorem ipsum site dollar emmit', '2017 - 2019', 'Student', 'Softech IT', 'Learned Web design and Wordpress Development', 'rj@gmail.com'),
('', '', '', '', '', '', '', '', '', '', '', '', 'sanzida@gmail.com'),
('asdasd', 'asdasd', 'asdas', 'asdasd', 'asdasd', 'asdasddsa', 'asdasd', 'asdasd', 'dasdasd', 'asdasd', 'asdasd', 'asdasd', 'billal@gmail.com'),
('', '', '', '', '', '', '', '', '', '', '', '', 'raju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `main_skills`
--

CREATE TABLE `main_skills` (
  `skill1` varchar(20) NOT NULL,
  `percentage1` varchar(10) NOT NULL,
  `skill2` varchar(20) NOT NULL,
  `percentage2` varchar(10) NOT NULL,
  `skill3` varchar(20) NOT NULL,
  `percentage3` varchar(10) NOT NULL,
  `skill4` varchar(20) NOT NULL,
  `percentage4` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_skills`
--

INSERT INTO `main_skills` (`skill1`, `percentage1`, `skill2`, `percentage2`, `skill3`, `percentage3`, `skill4`, `percentage4`, `email`) VALUES
('Web Development', '75', 'Worpress Developmet', '85', 'Graphics Design', '45', 'Video Editing', '65', 'rj@gmail.com'),
('', '', '', '', '', '', '', '', 'sanzida@gmail.com'),
('sadas', 'asdasd', 'asdasd', 'adsdasdas', 'asdsa', 'asdas', 'sadds', 'asads', 'billal@gmail.com'),
('', '', '', '', '', '', '', '', 'raju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `my_service`
--

CREATE TABLE `my_service` (
  `skill1` varchar(100) NOT NULL,
  `des1` varchar(500) NOT NULL,
  `skill2` varchar(100) NOT NULL,
  `des2` varchar(500) NOT NULL,
  `skill3` varchar(100) NOT NULL,
  `des3` varchar(500) NOT NULL,
  `skill4` varchar(100) NOT NULL,
  `des4` varchar(500) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `my_service`
--

INSERT INTO `my_service` (`skill1`, `des1`, `skill2`, `des2`, `skill3`, `des3`, `skill4`, `des4`, `email`) VALUES
('Web Design', 'lorem ipsum site dollar immit', 'HTML / CSS', 'lorem ipsum site dollar immit', 'HTML / CSS', 'lorem ipsum site dollar immit', '', 'lorem ipsum site dollar immit', 'rj@gmail.com'),
('', '', '', '', '', '', '', '', 'sanzida@gmail.com'),
('sadasd', 'asdsad', 'asdas', 'asdas', 'asdas', 'asdasd', '', 'asdads', 'billal@gmail.com'),
('', '', '', '', '', '', '', '', 'raju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `others_skills`
--

CREATE TABLE `others_skills` (
  `skill1` varchar(20) NOT NULL,
  `percentage1` varchar(10) NOT NULL,
  `skill2` varchar(20) NOT NULL,
  `percentage2` varchar(10) NOT NULL,
  `skill3` varchar(20) NOT NULL,
  `percentage3` varchar(10) NOT NULL,
  `skill4` varchar(20) NOT NULL,
  `percentage4` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `others_skills`
--

INSERT INTO `others_skills` (`skill1`, `percentage1`, `skill2`, `percentage2`, `skill3`, `percentage3`, `skill4`, `percentage4`, `email`) VALUES
('HTML / CSS', '100', 'Java Script', '45', 'Jquery', '75', 'VS Composer', '87', 'rj@gmail.com'),
('', '', '', '', '', '', '', '', 'sanzida@gmail.com'),
('asdas', 'asdsdadas', 'asdas', 'asdasd', 'asdad', 'dsads', 'sadasd', 'asdasd', 'billal@gmail.com'),
('', '', '', '', '', '', '', '', 'raju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(10) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Title` varchar(2000) NOT NULL,
  `Description` varchar(5000) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `Date`, `Title`, `Description`, `email`, `Name`) VALUES
(10, '28/11/22', 'What Tech\'s Biggest Failures in 2022 Can Teach Us', 'With Thanksgiving and Black Friday in the rearview mirror, we\'re entering the home stretch of 2022. Congratulations, you made it through another rough year. \r\n\r\nWe\'ve traditionally reserved this Thanksgiving period to have a little fun while shining a light on the year\'s biggest failings in tech, with a roundup affectionately known as CNET\'s annual Tech Turkeys. In the past, the ribbing was good natured, pointing out silly products or a random faux pas at a conference (hello, Michael Bay!).\r\n\r\nThen the problems across Big Tech piled on. Congressional hearings, election-swinging misinformation, and privacy-invading breaches became a regular thing. Add to that a world-halting pandemic, inflationary pressures, a Russian-led war, earthquakes, and an environment where one catastrophe drops after another. All together, it can be more than a little dark and overwhelming. \r\n\r\nSo instead of gawking at some of Big Tech\'s most embarrassing flops and failings, we\'re going to try to get some use out of them. Let\'s take a look at what lessons we can take away from those Tech Turkeys.', 'rj@gmail.com', 'Rafiqul Xakir'),
(11, '28/11/22', 'Why the 2023 Toyota Prius Looks Like It Does, Inside and Out', 'Toyota is enthusiastic about all major propulsion systems: hybrid, plug-in hybrid, fuel cell, internal combustion and pure battery electric. Just about the only system the company lacks is a solar car. This spread bet is based on Toyota\'s position as the largest mainstream automaker and one with the resources to credibly chase that many visions. \r\n\r\nPropulsion technology aside, it sure helps if a green car looks good: They can\'t help the environment much if people avoid models because they\'re ugly. The first thing you notice about the 2023 Prius is that it arguably wears its first suit of desirable sheet metal. \r\nThe new car rides lower, has a longer wheelbase (the distance between front and rear wheels) and can accommodate 19-inch wheels for the first time. Its body curves are subtle and tend to flow from front to rear, all of which results in a vehicle that looks longer and more poised to move forward, not hunchbacked. Previous Prius styling seemed to be more about making a social statement, from celebrities who could afford Lambos and Bentleys but chose to arrive in something contrarian, to others who roll coal as their own when they pass a Prius.', 'rj@gmail.com', 'Rafiqul Xakir'),
(12, '28/11/22', 'Why It\'s So Hard to Enjoy This World Cup', 'I want to enjoy the World Cup. I really do. But it\'s almost impossible to enjoy the beautiful game when this cursed competition is set in such a sordid context.\r\n\r\nThe 2022 World Cup, like all sporting events, should be all about bringing people together. For fans and players of all ages, sports should inspire teamwork, health and community. The World Cup should be for kids, for lifelong fans, for family members seeking common ground -- and for the Welsh, who qualified for only the second time ever. \r\n\r\nIt should be for anyone who needs some respite from the relentless tide of awfulness of the past few years. But it should also be for the workers, activists and LGBTQ community of host nation Qatar and across the globe. It should be for people who just want to live their lives and enjoy themselves, without money and hatred tainting everything.\r\n\r\nDespite FIFA\'s plea to focus on the game, there\'s been as much conversation about what\'s happening off the field as on it. Will players wear rainbow armbands to protest the region\'s homophobic laws? Or should we just accept each other\'s beliefs, no matter how abhorrent they seem? Should we support a sport mired in bribery and corruption? Can we sing and cheer in stadiums that people died to build? And are we hypocrites if we condemn other nations without condemning the injustices in our own? \r\n\r\nIt\'s a lot.\r\n\r\nI\'m British, and I\'m a soccer/football fan (in an on-and-off, love-hate sort of way). I bought an England replica shirt recently, but not one of the current England shirts worn by Harry Kane and chums in Qatar. No, I bought a replica of the shirt England\'s players wore at Italia \'90. ', 'rj@gmail.com', 'Rafiqul Xakir'),
(13, '28/11/22', 'Twitter-Musk Update: Musk Is \'Recruiting\' After Thousands of Layoffs', 'Twitter\'s always been a bit chaotic, but its new owner and CEO, Elon Musk, is taking it to a whole new level. He\'s been making dramatic changes since he bought the company for $44 billion on Oct. 27, including laying off half the staff while changing moderation policies and unbanning extremist accounts while figuring out who will be verified.\r\n\r\nTwitter\'s saga with Musk, who also runs automaker Tesla and aerospace company SpaceX, was chaotic even before he took control. He signed a deal in April to acquire the company but then tried to back out of it, leading Twitter to sue him. After months of pretrial skirmishes, Musk closed the acquisition just before a court-ordered deadline. \r\n\r\nAfter laying off half the staff and most contractors, he gave remaining employees an ultimatum: work under his new intense culture or go. Many, it seems, decided to leave. A smaller number were fired just before Thanksgiving. This evacuation of Twitter by thousands of its workers has spurred worries of outages, hacks and disruptions. \r\n\r\nHere\'s the most recent news about Musk\'s takeover of Twitter:\r\nNov 26: Musk notes \"We\'re recruiting\"\r\n\r\nMust tweeted a collection of slides late Saturday, the first of which noted \"we\'re recruiting\" -- after weeks of layoffs, resignations and other defections at the company. Musk again claimed engagement is surging on Twitter, sharing slides that claimed new signups and active minutes have recently hit record highs. (The figures couldn\'t be independently verified.)  He also reiterated his ambitions to make Twitter into an \"everything app,\" sharing mockups of features like encrypted direct messages, longform tweets and payments.\r\n\r\nMusk also has personally called the CEOs of major brands that halted advertising on Twitter, according to the Financial Times, which cited an unnamed source. Other brands reduced their spending to a minimum rather than cutting it off entirely in order to avoid confrontation with Musk, the FT reported. ', 'rj@gmail.com', 'Rafiqul Xakir'),
(14, '28/11/22', 'Is Amazon Pushing Prices Higher? Legal Wars Are Waging to Prove It', 'Black Friday is prime time for low prices, and Amazon usually takes a starring role. But regulators around the country are trying to prove that Amazon\'s market power drives online prices higher than they should be. \r\n\r\nIn three court cases, Amazon faces allegations that its policies and practices limit competition on price on and off its platform. At the heart of the arguments is Amazon\'s dominance of your online shopping. Antitrust regulators say that gives Amazon the power to set its own rules for pricing in violation of antitrust laws.\r\n\r\nIf you\'re a regular shopper, these protracted court battles leave a question mark hanging over the prices you pay during your holiday shopping and beyond. \r\n\r\nTwo complaints, one lodged by California\'s attorney general and another by Washington DC\'s, claim Amazon\'s market power helps keep prices high by penalizing third-party sellers that offer lower prices on sites outside of Amazon\'s. Bargain-hunting shoppers might find cheaper options on a brand\'s website or a competing marketplace, they allege, if it weren\'t for Amazon\'s practices that stifle sellers from offering lower prices. \r\n\r\nThe company seems to believe \"it is better for the Amazon \'customer experience\' if consumers do not see lower prices off Amazon -- regardless of whether they are actually getting the lowest prices possible,\" California AG Rob Bonta said. \r\n\r\nA third case, filed in November, argues that Amazon and Apple have kept prices high for iPhones and other Apple devices. An allegedly illegal agreement limits how many third-party sellers can list Apple products on Amazon, the suit claims, crimping competition on price. \r\n\r\nAmazon, according to the lawsuit, used the agreement to transform \"its position on Amazon Marketplace from a peripheral seller of Apple iPhones and iPads to the platform\'s dominant seller, all while charging higher prices than consumers had previously enjoyed before.\" \r\n\r\nAmazon declined to comment on the lawsuit focused on Apple products, but the company said the claims from the California and DC attorneys general have it \"exactly backwards\" when it comes the company\'s impact on pricing.\r\n\r\n\"Amazon takes pride in the fact that we offer low prices across the broadest selection, and like any store we reserve the right not to highlight offers to customers that are not priced competitively,\" Amazon spokesperson Curtis Eichelberger said in a statement. \"The relief the AG seeks would force Amazon to feature higher prices to customers, oddly going against core objectives of antitrust law.\"\r\n\r\nAmazon is by far the largest e-commerce platform in the US, and third-party sellers turn to Amazon by the millions to reach you with their products. Estimates of Amazon\'s share of US e-commerce range from more than 37% of all online shopping transactions to as high as 70%, according to the DC\'s attorney general.\r\n\r\nWhen it comes to pricing, Amazon\'s critics tend to focus on what they see as predatory low prices that put smaller competitors out of business. But these three complaints get at another part of the picture, according to Barry Lynn, executive director of the Open Markets Institute. \r\n\r\n\"They\'re showing that Amazon is, in a very routine way, forcing consumers to pay more than they need to,\" he said. ', 'rj@gmail.com', 'Rafiqul Xakir'),
(15, '28/11/22', 'FCC Bans Huawei and ZTE Gear Over National Security Risk', 'The FCC has banned telecommunications and video surveillance gear from several China-based companies, including Huawei and ZTE, over national security concerns, the agency said Friday. \r\n\r\nHuawei and ZTE have repeatedly been in the crosshairs of US government over espionage concerns. But the ban also prevents Chinese companies Hytera, Hangzhou Hikvision Digital Technology and Dahua from selling gear in the US.\r\n\r\n\"The FCC is committed to protecting our national security by ensuring that untrustworthy communications equipment is not authorized for use within our borders, and we are continuing that work here,\" FCC Chairwoman Jessica Rosenworcel said in a press release. \"These new rules are an important part of our ongoing actions to protect the American people from national security threats involving telecommunications.\"\r\n\r\nThe companies involved didn\'t immediately respond to a request for comment.\r\n\r\nThe latest regulatory move comes as the US continues to grapple with China\'s tech influence, with lawmakers more loudly voicing their concerns about the country. In 2019, an executive order from then-president Donald Trump put Huawei on the Commerce Department\'s Bureau of Industry and Security Entity list, effectively banning the company from US networks over its close relationship to the Chinese government. \r\n\r\nIn 2020, the FCC ordered all US broadband and wireless companies to stop using any equipment from Chinese manufacturers, which included Huawei and ZTE, and began efforts to revoke China Telecom\'s authorization to operate in the US. The FCC banned more Chinese companies earlier this year. \r\n\r\nHuawei remains prevented from using Google services like Gmail and the Play Store in its Android smartphones. \r\n\r\nFCC commissioner Brendar Carr said in an interview earlier this month that he believes US lawmakers should also ban short-form video app TikTok in the US over the potential mishandling of personal and sensitive data by China-based parent company ByteDance. This all points to the difficult relationship the US has with China, an authoritarian regime that can coerce companies within its borders, potentially affecting technology that gets exported overseas. At the same time, China is also a major tech producer, helping make everything from iPhones to PS5 game consoles. ', 'rj@gmail.com', 'Rafiqul Xakir'),
(16, '28/11/22', 'Ford Recalls More Than 500,000 Cars Over Fire Risk', '\"Taking care of our customers who are affected by this potential issue is our utmost priority,\" said Jim Azzouz, executive director of global CX products and customer relations in a press release. \"Once the repair is available, we will ask customers to schedule service with their preferred dealer. They can then take advantage of our complimentary pickup and delivery or a loaner to make sure the repair is completed at their earliest convenience.\"\r\n\r\nRecalls aren\'t uncommon in the automotive industry. While some recalls are serious, posing potential fire risks or other dangers, others are more tame and can be done with minor repairs or software updates. Tesla issued a recall earlier this week over rear light issues and is doing a major recall in China over software and seat-belt issues. Stellantis, parent company to Chrysler, Dodge and Alfa Romeo, informed owners earlier this month over faulty Takata airbags affecting 276,000 vehicles. GMC recalled 735 Hummer EVs and 86 BrightDrop EV600 electric vans for improperly sealed batteries. Due to regulation and potential lawsuits, companies are usually quick to inform customers of recalls and quickly remedy issues.\r\n\r\nFord says this recall will require an engine software update and a tube installation that will drain fuel from the cylinder head and away from hot surfaces. The company says people can continue driving their vehicles under this recall. ', 'rj@gmail.com', 'Rafiqul Xakir');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_table`
--

CREATE TABLE `pricing_table` (
  `N_o_days` varchar(10) NOT NULL,
  `N_o_gigs` varchar(30) NOT NULL,
  `N_o_post` varchar(200) NOT NULL,
  `price` varchar(15) NOT NULL,
  `package_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing_table`
--

INSERT INTO `pricing_table` (`N_o_days`, `N_o_gigs`, `N_o_post`, `price`, `package_name`) VALUES
('30', '30', '30', '30', 'Platinum'),
('20', '20', '20', '20', 'Glod'),
('[value-1]', '[value-2]', '[value-3]', '[value-4]', '[value-5]'),
('15', '20', '10', '10', 'silver');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`facebook`, `twitter`, `github`, `email`) VALUES
('', '', '', 'sanzida@gmail.com'),
('https://www.facebook.com/meherin.mitu.12', 'https://twitter.com/login', 'https://github.com/Rafiqu-jakir', 'rj@gmail.com'),
('asdas', 'asdsad', 'asdasdasd', 'billal@gmail.com'),
('', '', '', 'raju@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

CREATE TABLE `user_registration` (
  `ID` int(11) NOT NULL,
  `Full Name` varchar(30) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `profession` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`ID`, `Full Name`, `Email`, `Password`, `profession`) VALUES
(5, 'Rafiqul Jakir', 'rj@gmail.com', 'rafiqul276', 'Web Designer'),
(6, 'Sanzida Akter', 'sanzida@gmail.com', '258', 'Student'),
(13, 'Mir Billal', 'billal@gmail.com', '262', 'Graphic Designer'),
(15, 'Raju Raihan', 'raju@gmail.com', '351', 'Student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
