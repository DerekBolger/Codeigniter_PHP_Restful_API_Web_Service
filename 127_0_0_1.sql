-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2016 at 03:41 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sswd-assignment`
--
CREATE DATABASE IF NOT EXISTS `sswd-assignment` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `sswd-assignment`;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE `characters` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(200) NOT NULL,
  `bio` varchar(700) NOT NULL,
  `status` varchar(200) NOT NULL,
  `house` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `characters`
--

INSERT INTO `characters` (`id`, `name`, `img`, `bio`, `status`, `house`) VALUES
(1, 'Arya Stark', 'http://www.billboard.com/files/media/maisie-williams-arya-stark-game-of-thrones-650-430.jpg', 'Born in 289 AC at Winterfell, Arya is the youngest daughter and third child of Lord Eddard Stark, the head of House Stark and Warden of the North, and Lady Catelyn Tully. Arya has an older sister, Sansa, an older brother, Robb, and two younger brothers, Bran and Rickon.', 'Still Playing the Game Of Thrones.', 'images/stark.jpg'),
(2, 'Bran Stark', 'http://www.billboard.com/files/media/isaac-hempstead-wright-bran-stark-game-of-thrones-650-430.jpg', 'Brandon Stark, typically called Bran, is the second son of Lord Eddard Stark and Lady Catelyn Tully. He is one of the major POV characters in the books. He has four older siblings Robb, Jon, Sansa, Arya and one younger Rickon.', 'Still Playing the Game Of Thrones.', 'images/stark.jpg'),
(3, 'John Snow', 'http://www.billboard.com/files/media/isaac-hempstead-wright-bran-stark-game-of-thrones-650-430.jpg', 'In A Game of Thrones, Jon Snow is the 16-year-old bastard son of Eddard or Ned Stark, lord of Winterfell, and half brother to Robb, Sansa, Arya, Bran and Rickon.', 'Still Playing the Game Of Thrones. Resurected by the witch Melisandra.', 'images/stark.jpg'),
(4, 'Daenerys Targaryen', 'http://www.billboard.com/files/media/emilia-clarke-daenerys-targaryen-game-of-thrones-650-430.jpg', 'Daenerys is the only daughter of Aerys II Targaryen and Rhaella Targaryen. She is now a princess living in exile, the last of the Targaryens. Daenerys was born in the closing days of Roberts Rebellion after her father, the mad king had already been killed.', 'Still Playing the Game Of Thrones.', 'images/targaryen.jpg'),
(5, 'Oberyn Martell', 'http://vignette3.wikia.nocookie.net/gameofthrones/images/6/67/Oberyn_Martell_%28Season_4%2C_Episode_06%29.png/revision/latest/scale-to-width-down/270?cb=20150302145403', 'Known as the Red Viper of Dorne, Oberyn was a member of House Martell, the ruling family of Dorne, and the younger brother of Doran Martell and the late Elia Martell, and the father of eight bastard girls known as the Sand Snakes. He was well known for his fighting skills, passionate temper, and sexual appetites.', 'Killed at the hands of the Mountain Gregor Clegane.', 'images/martell2.jpg'),
(6, 'Cersei Lannister', 'http://www.billboard.com/files/media/lena-headey-cersei-lannister-game-of-thrones-650-430.jpg', 'Cersei is the widow of King Robert Baratheon and Dowager Queen of the Seven Kingdoms. She is the daughter of Lord Tywin Lannister, twin sister of Jaime Lannister and elder sister of Tyrion Lannister. She has an incestuous sexual relationship with Jaime, who is secretly the father of her three children, Joffrey, Myrcella and Tommen.', 'Still Playing the Game Of Thrones.', 'images/lannister.jpg'),
(7, 'Tyrion Lannister', 'http://www.billboard.com/files/media/peter-dinklage-tyrion-lannister-game-of-thrones-650-430.jpg', 'Tyrion Lannister is the youngest son of Joanna Lannister and Lord Tywin Lannister. Tywin is the head of House Lannister, the richest man in the Seven Kingdoms and Lord Paramount of the Westerlands. The Westerlands are one of the constituent regions of the Seven Kingdoms and House Lannister of Casterly Rock is one of the Great Houses of the realm. He is the younger brother of Jaime and Cersei Lannister. His mother Joanna Lannister died giving birth to him. His father and sister hold him in contempt as they blame him for the death.', 'Still Playing the Game Of Thrones.', 'images/lannister.jpg'),
(8, 'Catelyn Stark', 'http://www.billboard.com/files/media/michelle-fairley-catelyn-stark-game-of-thrones-650-430.jpg', 'Catelyn was born into House Tully and is the eldest child of Lord Hoster Tully. She has a younger brother, Edmure, and a younger sister, Lysa. Petyr Baelish was fostered with the Tullys and Catelyn grew up with him. She was betrothed to marry Brandon Stark of Winterfell, but he was brutally murdered by the Mad King, Aerys II Targaryen after Prince Rhaegar had kidnapped Brandons sister Lyanna. Catelyn instead married Brandons brother, Eddard. Though they barely knew one another when they wed they have formed a strong and loving marriage.', 'She was executed at the aptly named Red Wedding.', 'images/tully.jpg'),
(9, 'Theon Greyjoy', 'http://www.billboard.com/files/media/alfie-allen-theon-greyjoy-games-of-thrones-650-430.jpg', 'A former ward of House Stark, Theon was quick to join his close friend Robb in his rebellion against King Joffrey. But upon returning to Pyke as Robbs envoy, Theon betrayed the family that raised him.', 'Still Playing the Game Of Thrones.', 'images/greyjoy.jpg'),
(10, 'Jorah Mormont', 'http://www.billboard.com/files/media/iain-glen-ser-jorah-mormont-game-of-thrones-650-430.jpg', 'The son of Lord Commander Jeor Mormont, he lives in exile in Essos acting as an advisor to Daenerys Targaryen. Although Jorah originally joined Danys company to spy on her, he has since become devoted to her.', 'Still Playing the Game Of Thrones.', 'images/mormont.jpg'),
(11, 'Sansa Stark', 'http://www.billboard.com/files/media/sophie-turner-sansa-stark-game-of-thrones-650-430.jpg', 'Sansa was born and raised at Winterfell. She has an older brother, Robb, two younger brothers, Bran and Rickon, a younger sister, Arya and a bastard half-brother, Jon Snow. Sansa enjoys proper lady like pursuits, and is good at sewing, embroidering, poetry, singing, dancing, literature and music.', 'Still Playing the Game Of Thrones.', 'images/stark.jpg'),
(12, 'Joffrey Baratheon', 'http://www.billboard.com/files/media/jack-gleeson-joffrey-baratheon-game-of-thrones-650-430.jpg', 'Joffrey is believed to be the oldest son and heir of King Robert Baratheon and Queen Cersei Lannister, both of whom entered into a political marriage alliance after Robert took the throne by force from the Mad King Aerys II Targaryen. In reality, his father is Jaime Lannister, the queens brother and the Lord Commander of the Kingsguard. He has a younger sister, Myrcella, and a younger brother, Tommen , both whom are also the product of Jaime and Cerseis incest. Their sole biological grandparents, Tywin and Joanna Lannister, were also apparently first cousins.', 'Died at his own wedding, a recurring theme in Game Of Thrones.', 'images/baratheon2.jpg'),
(13, 'Petyr Baelish', 'http://www.billboard.com/files/media/aidan_gillen-petyr-littlefinger-baelish-game-of-thrones-650-430.jpg', 'Nakedly ambitious, Littlefinger left the Small Council to marry Lysa Arryn and secure the Vale to the Lannisters side. Beyond his official duties, he is the eyes and ears of Kings Landing along with Varys.', 'Still Playing the Game Of Thrones.', 'images/bealish.jpg'),
(14, 'Robb Stark', 'http://www.billboard.com/files/media/richard-madden-robb-stark-game-of-thrones-650-430.jpg', 'Robb was conceived during the first fortnight of Eddard and Catelyns marriage, after which Eddard left his wife at Riverrun while he went to fight in Roberts Rebellion. Upon his return from the war, Catelyn greeted Ned with an infant Robb, and all returned to Winterfell, where Ned would rule as Lord and Robb was to be raised as his heir.Growing up in Winterfell, Robb was on good terms with his younger siblings, and developed a friendly rivalry with his bastard half brother, Jon Snow, who differs from Robb in appearance and personality. Robb was also close with his fathers ward, Theon Greyjoy, who came to regard Robb as something of a younger brother.', 'He was executed at the aptly named Red Wedding.', 'images/stark.jpg'),
(15, 'Sandor Clegane', 'http://www.billboard.com/files/media/rory-mccann-sandor-the-hound-clegane-game-of-thrones-650-430.jpg', 'Sandor Clegane is a member of House Clegane. He is the younger brother of the current head, Ser Gregor Clegane. He is nicknamed the Hound for his savage nature and unquestioning obedience to his masters and for the three dogs featured in his familys arms. The Hound is considered one of the most dangerous fighters in Westeros. As a child, Sandor received gruesome facial burns when Gregor shoved his face into a brazier. He came to loathe fire, his brother, and the hypocrisy of knighthood in general.",', 'May have been killed at the hands of Brienne Of Tarth, though his death has not been witnessed.', 'images/clegane.jpg'),
(16, 'Jaime Lannister', 'http://www.billboard.com/files/media/nikolaj-coster-waldau-jaime-lannister-game-of-thrones-650-430.jpg', 'Jaime is a born warrior, and most of his skills lie in the area of martial expertise. He has little interest in politics and court intrigue; by his own admission, Jaime only feels truly alive when fighting or making love. Jaime has the quintessential Lannister look, with bright green eyes and golden hair. He is considered to be extremely handsome, his tall frame complemented with comely features and a smile that cut like a knife; Jon Snow thinks to himself that Jaime is what a king should look like. He dresses in white, like any member of the Kingsguard when on duty, but he also wears his family colors and distinctive armor of his own at other times: gold plated, with a lions head helm.', 'Still Playing the Game Of Thrones.', 'images/lannister.jpg'),
(17, 'Tywin Lannister', 'http://www.billboard.com/files/media/charles-dance-tywin-lannister-game-of-thrones-650-430.jpg"', 'Tywin Lannister is Lord of Casterly Rock, Shield of Lannisport, and Warden of the West. The head of House Lannister, Tywin is one of the most powerful lords in Westeros, and is the father of Jaime, Cersei, and Tyrion Lannister. He loves his children Jaime and Cersei, but despises Tyrion. This is partly because Tyrion is deformed, but also Tywin blames his son for causing his beloved wife Joannas death during his birth, as well as for shaming the family name with his frequent whoring.', 'Died on the toilet at the hands of his own son Tyrion Lannister.', 'images/lannister.jpg'),
(18, 'Samwell Tarly', 'http://www.billboard.com/files/media/john-bradley-samwell-tarly-game-of-thrones-650-430.jpg', 'Samwell Tarly is the oldest son and former heir of Lord Randyll Tarly, the head of House Tarly and Lord of Horn Hill. House Tarly is one of the most powerful noble families in the Reach, and sworn to House Tyrell. By rights, Samwell would have grown up to be one of the top ranking lords of the Seven Kingdoms', 'Still Playing the Game Of Thrones.', 'images/tarly.jpg'),
(19, 'Ned Stark', 'http://www.billboard.com/files/media/sean-bean-eddard-ned-stark-game-of-thrones-650-430.jpg', 'Eddard is in his mid-thirties. He has a long face, dark hair and grey eyes. His closely trimmed beard is beginning to grey, making him look older than his years. His dark grey eyes reflect his moods, turning soft as fog or hard as stone. Among his enemies, Eddard has the reputation of having cold eyes. They are thought to reflect his frozen heart. Eddard is neither as large nor as handsome as his older brother Brandon was, according to Catelyn Stark; however, she also states that he has a good sweet heart beneath his solemn face. He keeps faith with the old gods. He is fiercely protective of his wife and children, whom he loves deeply.', 'Killed and betrayed on the orders of King Joffrey Baratheon.', 'images/stark.jpg'),
(20, 'Khal Drogo', 'http://www.billboard.com/files/media/jason-momoa-khal-drogo-game-of-thrones-650-430.jpg', 'Drogos father was Khal Bharbo. Cohollo was pledged to the khalakka, or prince, while he was still a child, and saved young Drogos life from sellswords on one occasion. From an early age Drogo was an extraordinarily gifted warrior even among the fierce Dothraki; before the age of thirty he led a khalasar forty thousand strong, the largest on the Dothraki sea. He has never been defeated in battle. Cohollo, Qotho and Haggo serve him as bloodriders.', 'Betrayed by Mirri Maz Duur who used her blood magic to preserve his life and the ritual only returned Drogo to a catatonic vegetable state. Later Daenerys smothered him out of mercy.', 'images/dothraki.jpg'),
(21, 'Stannis Baratheon', 'http://www.billboard.com/files/media/stephen-dillane-stannis-baratheon-game-of-thrones-650-430.jpg', 'Stannis is the second born son of Steffon Baratheon and Cassana Baratheon, the younger brother of the late King Robert Baratheon and older brother of Renly Baratheon. Steffon was the head of House Baratheon and Lord Paramount of the Stormlands. The Stormlands are one of the constituent regions of the Seven Kingdoms and House Baratheon is one of the Great Houses of the realm. Steffon died when the boys were young and Robert inherited his titles. Stannis is a serious and severe man.', 'Apparently killed at the hands of Brienne Of Tarth, though similar to the Hound his death was not witnessed.', 'images/baratheon2.jpg'),
(22, 'Renly Baratheon', 'http://www.billboard.com/files/media/gethin-anthony-renly-baratheon-game-of-thrones-650-430.jpg', 'Born in 277 AC, Renly was the youngest of the three sons of Lord Steffon Baratheon and Lady Cassana Estermont. Renly grew up at Storms End. Only a boy of six at the time of Roberts Rebellion, he spent the war under siege in Storms End, together with his older brother, Stannis, where he was witness to the desperation of the starving garrison. As a boy, Renly loved bright colors and fabrics. He loved games as well, and would run laughing through the halls of Storms End.', 'Killed by a dark shadow, spawned from the witch Melisandra.', 'images/baratheon2.jpg'),
(23, 'Brienne of Tarth', 'http://www.billboard.com/files/media/gwendoline-christie-brienne-of-tarth-game-of-thrones-650-430.jpg', 'Brienne is the only daughter of Lord Selwyn Tarth, Lord of Evenfall Hall, on the island of Tarth. Her mother died when Brienne was a child. She had a single older brother, Galladon, who drowned when she was eight, and two younger sisters both of whom died in infancy. Her father tried to find Brienne a suitor to wed, however, this was not easy, owing to Briennes resistance and her ungainly appearance; consequently several offers of her hand in marriage were unsuccessful.', 'Still Playing the Game Of Thrones.', 'images/tarth.jpg'),
(24, 'Robert Baratheon', 'http://www.billboard.com/files/media/mark-addy-robert-baratheon-game-of-thrones-650-430.jpg', 'King Robert I Baratheon is the Lord of the Seven Kingdoms of Westeros and the head of House Baratheon of Kings Landing. Robert was crowned king after winning the rebellion which was named after him and taking the Iron Throne from King Aerys II Targaryen, his first cousin once removed. Robert fought the war to win back his betrothed, Lyanna Stark, with the aid of her brother, his close friend, Lord Eddard Stark. Due to Lyannas death, however, Robert married Cersei Lannister after the wars end to ensure political stability. Robert has three children with Cersei named Joffrey, Myrcella, and Tommen.', 'Killed by a wild boar during a hunting accident, though foul play is suspected.', 'images/baratheon2.jpg'),
(25, 'Viserys Targaryen', 'http://www.billboard.com/files/media/harry-lloyd-viserys-targaryen-game-of-thrones-650-430.jpg', 'King Viserys III Targaryen is the heir of his father Aerys II Targaryen and brother Rhaegar after their deaths during Roberts Rebellion. The war, however, turned him into an exile who can only plot to regain control of the Iron Throne. He styles himself as Viserys Targaryen, the Third of His Name, King of the Andals, the Rhoynar and the First Men, Lord of the Seven Kingdoms and Protector of the Realm, as he had been declared king by his mother Rhaella Targaryen on Dragonstone early in his exile, but to the rest of the world he is known as The Beggar King.', 'Killed at the hands of Khal Drogo, for being a twat.', 'images/targaryen.jpg'),
(26, 'Ygritte', 'http://www.billboard.com/files/media/rose-leslie-ygritte-game-of-thrones-650-430.jpg', 'Ygritte was a quick witted and courageous young spearwife. She had red hair and displayed great skill as an archer. Living north of the Wall, she was well skilled in survival and was staunchly loyal to the cause of Mance Rayder. She valued her status as a free woman, and disparaged those living south of the Wall as kneelers, who blindly followed hereditary leaders instead of choosing a king.', 'Killed by a young boy at a battle in castle black. I miss Ygritte.', 'images/ygritte.jpg'),
(27, 'Jaqen Hghar', 'http://i.lv3.hbo.com/assets/images/series/game-of-thrones/character/s5/jaqen-hghar-1024.jpg', 'In reality, Jaqen Hghar is just an assumed identity of one of the Faceless Men of Braavos, a feared order of mysterious assassins with the ability to change their appearance at will. After the Jaqen persona is of no more use to him, the Faceless Man shapeshifts into a new appearance and tells Arya he will train her to be a Faceless Man if she goes with him. Eventually, Arya travels to Bravos to look for Jaqen and finds him, and he trains her.', 'Still Playing the Game Of Thrones.', 'images/valar.jpg'),
(28, 'Gregor Clegane', 'http://static.businessinsider.com/image/537cef39eab8ea873cdd357f-1200/image.jpg', 'Ser Gregor Clegane is the Knight of Cleganes Keep and is the head of House Clegane, which are landed knights and bannermen to House Lannister. Gregor is a freakishly large man and for this he is often called The Mountain That Rides or simply The Mountain. His soldiers are known as the Mountains men.', 'Alive, though that may be a matter of opinion.', 'images/clegane.jpg'),
(29, 'Lord Varys', 'http://cdn.hbowatch.com/wp-content/uploads/2012/09/game-of-thrones-Varys-300x169.jpg', 'Varys, called the Spider, is a eunuch and courtier who serves as Master of Whisperers, the spymaster for the king of the Seven Kingdoms at the royal court in Kings Landing. As Master of Whisperers he is on the privy council. He is feared by nobles and common people alike. He is described as bald and fat, and he usually affects a fawning, effeminate manner. He knows all of the secret passages in the royal castle and his spies are found everywhere.', 'Still Playing the Game Of Thrones.', 'images/varys.jpg'),
(30, 'Davos Seaworth', 'http://img2.tvtome.com/i/u/4a914a17eac94fcfcfafd4e997210a67.jpg', 'The Onion Knight might be the second most just man after Ned Stark. Hes a good friend to Stannis, too, letting his lovelorn buddy know that the woman Stannis is shacking up with is a witch, literally. An honest and dutiful man, Davos should never be killed. Which means he will probably die before I finish typing this sentence.', 'Still Playing the Game Of Thrones.', 'images/seaworth.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;