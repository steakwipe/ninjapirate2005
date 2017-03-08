-- phpMyAdmin SQL Dump
-- version 2.6.3-pl1
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Dec 05, 2005 at 12:58 AM
-- Server version: 3.23.58
-- PHP Version: 5.0.4
-- 
-- NInjapirate Networks!
-- 
-- 
-- Database: `npn`
-- 
CREATE DATABASE `npn`;
USE npn;

-- --------------------------------------------------------

-- 
-- Table structure for table `access`
-- 

CREATE TABLE `access` (
  `aid` tinyint(10) NOT NULL auto_increment,
  `mask` varchar(255) NOT NULL default '',
  `type` varchar(255) NOT NULL default '',
  `status` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`aid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `access`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `accesslog`
-- 

CREATE TABLE `accesslog` (
  `aid` int(10) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `path` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `hostname` varchar(128) default NULL,
  `uid` int(10) unsigned default '0',
  `timestamp` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`aid`),
  KEY `accesslog_timestamp` (`timestamp`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `accesslog`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `aggregator_category`
-- 

CREATE TABLE `aggregator_category` (
  `cid` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `description` longtext NOT NULL,
  `block` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`cid`),
  UNIQUE KEY `title` (`title`)
) TYPE=MyISAM AUTO_INCREMENT=2 ;

-- 
-- Dumping data for table `aggregator_category`
-- 

INSERT INTO `aggregator_category` VALUES (1, 'Technology', 'Technology Related News', 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `aggregator_category_feed`
-- 

CREATE TABLE `aggregator_category_feed` (
  `fid` int(10) NOT NULL default '0',
  `cid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`fid`,`cid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `aggregator_category_feed`
-- 

INSERT INTO `aggregator_category_feed` VALUES (4, 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `aggregator_category_item`
-- 

CREATE TABLE `aggregator_category_item` (
  `iid` int(10) NOT NULL default '0',
  `cid` int(10) NOT NULL default '0',
  PRIMARY KEY  (`iid`,`cid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `aggregator_category_item`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `aggregator_feed`
-- 

CREATE TABLE `aggregator_feed` (
  `fid` int(10) NOT NULL auto_increment,
  `title` varchar(255) NOT NULL default '',
  `url` varchar(255) NOT NULL default '',
  `refresh` int(10) NOT NULL default '0',
  `checked` int(10) NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `description` longtext NOT NULL,
  `image` longtext NOT NULL,
  `etag` varchar(255) NOT NULL default '',
  `modified` int(10) NOT NULL default '0',
  `block` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`fid`),
  UNIQUE KEY `title` (`title`),
  UNIQUE KEY `link` (`url`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `aggregator_feed`
-- 

INSERT INTO `aggregator_feed` VALUES (1, 'Google News', 'http://news.google.com/news?ned=us&output=rss', 3600, 1129717815, 'http://news.google.com/news?ned=us', 'Google News', '<a href="http://news.google.com/"><img src="http://news.google.com/images/news_res.gif" alt="Google News" /></a>', '', 0, 5);
INSERT INTO `aggregator_feed` VALUES (2, 'The Onion.com', 'http://www.theonion.com/content/feeds/daily', 3600, 1129717957, 'http://www.theonion.com/content', 'Content updated daily from The Onion -- America''s Finest News Source', '', '"1144a0dab29095e58d7860502e10fbc6"', 1129699597, 5);
INSERT INTO `aggregator_feed` VALUES (3, 'Source Forge Project News', 'http://sourceforge.net/export/rss2_sfnews.php?group_id=1&rss_fulltext=1', 3600, 1129718040, 'http://sourceforge.net/', 'Recent news from SF.net-hosted projects', '<a href="http://sourceforge.net/"><img src="http://images.sourceforge.net/images/sflogo-88-1.png" alt="SourceForge.net logo" /></a>', 'ieKCpE47nLSK/TFtN0q7DvNfJY4', 1129716860, 5);
INSERT INTO `aggregator_feed` VALUES (4, 'Slashdot', 'http://rss.slashdot.org/Slashdot/slashdot', 3600, 1129718079, 'http://slashdot.org/', 'News for nerds, stuff that matters', '<a href="http://slashdot.org/"><img src="http://images.slashdot.org/topics/topicslashdot.gif" alt="Slashdot" /></a>', 'oY/XvrsLeev5yLHmqkNwg6tWlfg', 1129717637, 5);

-- --------------------------------------------------------

-- 
-- Table structure for table `aggregator_item`
-- 

CREATE TABLE `aggregator_item` (
  `iid` int(10) NOT NULL auto_increment,
  `fid` int(10) NOT NULL default '0',
  `title` varchar(255) NOT NULL default '',
  `link` varchar(255) NOT NULL default '',
  `author` varchar(255) NOT NULL default '',
  `description` longtext NOT NULL,
  `timestamp` int(11) default NULL,
  PRIMARY KEY  (`iid`)
) TYPE=MyISAM AUTO_INCREMENT=53 ;

-- 
-- Dumping data for table `aggregator_item`
-- 

INSERT INTO `aggregator_item` VALUES (1, 1, 'Temporary Worker Program Is Explained - Washington Post', 'http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801613.html', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/8-2i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801613.html&cid=1101830313"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/8-2-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801613.html&cid=1101830313"><b>Temporary Worker Program Is Explained</b></a><br><b>Washington Post - 4 hours ago</b><br>By Darryl Fears and Michael A. Fletcher. President Bush, seeking to deal with what critics inside and outside of Washington say is out-of-control illegal immigration, yesterday promised tough action to secure <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/8-2-1&fd=R&url=http://www.chron.com/cs/CDA/ssistory.mpl/nation/3402779&cid=1101830313">President urges Congress to act on immigration bill</a> Houston Chronicle<br><a href="http://news.google.com/url?sa=T&ct=us/8-2-2&fd=R&url=http://today.reuters.com/news/newsArticle.aspx%3Ftype%3DdomesticNews%26storyID%3D2005-10-18T184848Z_01_ROB867672_RTRUKOC_0_US-USA-CONGRESS-IMMIGRATION.xml&cid=1101830313">Guest worker program needed, Bush official says</a> Reuters<br><a href="http://news.google.com/url?sa=T&ct=us/8-2-3&fd=R&url=http://www.foxnews.com/story/0,2933,172660,00.html&cid=1101830313">FOX News</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-2-4&fd=R&url=http://www.sfgate.com/cgi-bin/article.cgi%3Ff%3D/n/a/2005/10/18/national/w091916D38.DTL&cid=1101830313">San Francisco Chronicle</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-2-5&fd=R&url=http://www.latimes.com/news/nationworld/nation/la-na-immig19oct19,0,5246682.story%3Fcoll%3Dla-home-nation&cid=1101830313">Los Angeles Times</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-2-6&fd=R&url=http://news.xinhuanet.com/english/2005-10/19/content_3643986.htm&cid=1101830313">Xinhua</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801613.html&hl=en><b>all 340 related</b></a><br clear=all>', 1129701420);
INSERT INTO `aggregator_item` VALUES (2, 1, 'Foreign Minister Snubs Japan - Korea Times', 'http://times.hankooki.com/lpage/200510/kt2005101917325810220.htm', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/8-1i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/16/AR2005101600948.html&cid=1101794799"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/8-1-0&fd=R&url=http://times.hankooki.com/lpage/200510/kt2005101917325810220.htm&cid=1101794799"><b>Foreign Minister Snubs Japan</b></a><br><b>Korea Times - 1 hour ago</b><br>By Park Song-wu. Minister of Foreign Affairs and Trade Ban Ki-moon said Wednesday that a visit by him to Japan is not appropriate ``at the moment.’’ Ban had been expected to visit Japan later this month. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/8-1-1&fd=R&url=http://news.xinhuanet.com/english/2005-10/19/content_3647403.htm&cid=1101794799">Macao newspaper flays Koizumi''s shrine visits</a> Xinhua<br><a href="http://news.google.com/url?sa=T&ct=us/8-1-2&fd=R&url=http://english.people.com.cn/200510/19/eng20051019_215333.html&cid=1101794799">Koizumi''s explanations self-contradictory: Opinion</a> People''s Daily Online<br><a href="http://news.google.com/url?sa=T&ct=us/8-1-3&fd=R&url=http://www.khaleejtimes.com/Displayarticle.asp%3Fxfile%3Ddata/editorial/2005/October/editorial_October53.xml%26section%3Deditorial%26subsection%3Deditorial&cid=1101794799">Khaleej Times</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-1-4&fd=R&url=http://www.forbes.com/finance/feeds/afx/2005/10/18/afx2285187.html&cid=1101794799">Forbes</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-1-5&fd=R&url=http://mdn.mainichi-msn.co.jp/international/news/20051019p2g00m0in023000c.html&cid=1101794799">Mainichi Daily News</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-1-6&fd=R&url=http://news.bbc.co.uk/1/hi/world/asia-pacific/4355592.stm&cid=1101794799">BBC News</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://times.hankooki.com/lpage/200510/kt2005101917325810220.htm&hl=en><b>all 773 related</b></a><br clear=all>', 1129710900);
INSERT INTO `aggregator_item` VALUES (3, 1, 'Falconio''s girlfriend points finger of guilt - Independent', 'http://news.independent.co.uk/world/australasia/article320569.ece', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/8-0i-0&fd=R&url=http://www.guardian.co.uk/australia/story/0,12070,1594882,00.html%3Fgusrc%3Drss&cid=1101678893"><br>The Observer</a><a href="http://news.google.com/url?sa=T&ct=us/8-0-0&fd=R&url=http://news.independent.co.uk/world/australasia/article320569.ece&cid=1101678893"><b>Falconio''s girlfriend points finger of guilt</b></a><br><b>Independent - 11 hours ago</b><br>By Matthew Beard. The girlfriend of the missing backpacker Peter Falconio stared directly at his alleged killer in court yesterday and accused him of murder. The court in Darwin, Australia, fell silent as Joanne <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/8-0-1&fd=R&url=http://www.news24.com/News24/World/News/0,,2-10-1462_1819521,00.html&cid=1101678893">Tearful witness cross-examined</a> News24<br><a href="http://news.google.com/url?sa=T&ct=us/8-0-2&fd=R&url=http://www.smh.com.au/news/national/lees-admits-to-doubts-over-parts-of-her-story/2005/10/19/1129401312735.html&cid=1101678893">Lees admits to doubts over parts of her story</a> Sydney Morning Herald (subscription)<br><a href="http://news.google.com/url?sa=T&ct=us/8-0-3&fd=R&url=http://today.reuters.co.uk/news/newsArticle.aspx%3Ftype%3DtopNews%26storyID%3D2005-10-19T050650Z_01_KNE918270_RTRUKOC_0_UK-CRIME-AUSTRALIA-BRITON.xml&cid=1101678893">Reuters.uk</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-0-4&fd=R&url=http://www.telegraph.co.uk/news/main.jhtml%3Fxml%3D/news/2005/10/19/wfalc19.xml%26sSheet%3D/news/2005/10/19/ixworld.html&cid=1101678893">Telegraph.co.uk</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-0-5&fd=R&url=http://www9.sbs.com.au/theworldnews/region.php%3Fid%3D123350%26region%3D7&cid=1101678893">Special Broadcasting Service</a> - <a href="http://news.google.com/url?sa=T&ct=us/8-0-6&fd=R&url=http://www.heraldsun.news.com.au/common/story_page/0,5478,16966807%25255E1702,00.html&cid=1101678893">Melbourne Herald Sun</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://news.independent.co.uk/world/australasia/article320569.ece&hl=en><b>all 435 related</b></a><br clear=all>', 1129676820);
INSERT INTO `aggregator_item` VALUES (4, 1, 'Death''s fat chance - New York Daily News', 'http://www.nydailynews.com/front/story/357217p-304286c.html', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/7-2i-0&fd=R&url=http://www.wfmynews2.com/news/article.aspx%3Fstoryid%3D50433&cid=1101831401"><br>WFMY News 2</a><a href="http://news.google.com/url?sa=T&ct=us/7-2-0&fd=R&url=http://www.nydailynews.com/front/story/357217p-304286c.html&cid=1101831401"><b>Death''s fat chance</b></a><br><b>New York Daily News - 2 hours ago</b><br>By PAUL HB SHIN. The number of stomach-shrinking operations for the severely obese has skyrocketed in recent years, partly fueled by extreme makeovers of once-portly celebrities such as weatherman Al Roker, singer <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/7-2-1&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801222.html&cid=1101831401">Study Says Stomach Surgery Riskier Than Once Thought</a> Washington Post<br><a href="http://news.google.com/url?sa=T&ct=us/7-2-2&fd=R&url=http://www.theglobeandmail.com/servlet/story/RTGAM.20051018.wsurg1018/BNStory/specialScienceandHealth/&cid=1101831401">Obesity surgery death rates studied</a> Globe and Mail<br><a href="http://news.google.com/url?sa=T&ct=us/7-2-3&fd=R&url=http://www.forbes.com/lifestyle/health/feeds/hscout/2005/10/18/hscout528605.html&cid=1101831401">Forbes</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-2-4&fd=R&url=http://www.medpagetoday.com/PrimaryCare/WeightManagement/tb/1958&cid=1101831401">MedPage Today</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-2-5&fd=R&url=http://www.miami.com/mld/miamiherald/12937229.htm&cid=1101831401">Miami Herald</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-2-6&fd=R&url=http://www.indystar.com/apps/pbcs.dll/article%3FAID%3D/20051019/NEWS06/510190475/1012/NEWS06&cid=1101831401">Indianapolis Star</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.nydailynews.com/front/story/357217p-304286c.html&hl=en><b>all 360 related</b></a><br clear=all>', 1129709640);
INSERT INTO `aggregator_item` VALUES (5, 1, 'International stem cell bank open - BBC News', 'http://news.bbc.co.uk/1/hi/health/4355722.stm', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/7-1i-0&fd=R&url=http://www.ctv.ca/servlet/ArticleNews/story/CTVNews/20051017/stemcell_strides_051017/20051017%3Fhub%3DHealth&cid=1101787746"><br>CTV.ca</a><a href="http://news.google.com/url?sa=T&ct=us/7-1-0&fd=R&url=http://news.bbc.co.uk/1/hi/health/4355722.stm&cid=1101787746"><b>International stem cell bank open</b></a><br><b>BBC News - 32 minutes ago</b><br>A bank that will create and supply new lines of embryonic stem cells for research around the world has been opened in Seoul, South Korea. The project is being led by cloning expert Dr Woo Suk Hwang, who has <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/7-1-1&fd=R&url=http://www.theglobeandmail.com/servlet/story/RTGAM.20051019.wxstemcells19/BNStory/National/&cid=1101787746">Canada shut out of stem-cell group</a> Globe and Mail<br><a href="http://news.google.com/url?sa=T&ct=us/7-1-2&fd=R&url=http://abcnews.go.com/Health/wireStory%3Fid%3D1228355&cid=1101787746">Bank That Will Make Stem Cell Lines Open</a> ABC News<br><a href="http://news.google.com/url?sa=T&ct=us/7-1-3&fd=R&url=http://www.christiannewstoday.com/CWN_925.html&cid=1101787746">ChristianNewsToday.com</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-1-4&fd=R&url=http://www.miami.com/mld/miamiherald/business/national/12938453.htm&cid=1101787746">Miami Herald</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-1-5&fd=R&url=http://www.iht.com/articles/2005/10/18/opinion/edstem.php&cid=1101787746">International Herald Tribune</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-1-6&fd=R&url=http://www.canada.com/health/story.html%3Fid%3D6a7d0bab-96b3-41e2-9a0f-07e332d06387&cid=1101787746">Canada.com</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://news.bbc.co.uk/1/hi/health/4355722.stm&hl=en><b>all 532 related</b></a><br clear=all>', 1129715460);
INSERT INTO `aggregator_item` VALUES (6, 1, 'Roche sales boosted by demand for flu remedy - Guardian Unlimited', 'http://www.guardian.co.uk/business/story/0,3604,1595653,00.html', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/7-0i-0&fd=R&url=http://news.bbc.co.uk/1/hi/business/4352414.stm&cid=1101617158"><br>BBC News</a><a href="http://news.google.com/url?sa=T&ct=us/7-0-0&fd=R&url=http://www.guardian.co.uk/business/story/0,3604,1595653,00.html&cid=1101617158"><b>Roche sales boosted by demand for flu remedy</b></a><br><b>Guardian Unlimited - 34 minutes ago</b><br>The Swiss drug maker Roche today announced a 20% rise in third quarter sales as increasing fears over bird flu boosted demand for its flu remedy, Tamiflu. Roche said Tamiflu sales more than doubled in the <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/7-0-1&fd=R&url=http://sify.com/finance/fullstory.php%3Fid%3D13966764&cid=1101617158">Cipla to talk to Roche on anti-flu drug</a> Sify<br><a href="http://news.google.com/url?sa=T&ct=us/7-0-2&fd=R&url=http://www.nytimes.com/2005/10/19/business/worldbusiness/19roche.html&cid=1101617158">Roche Offers to Negotiate on Flu Drug</a> New York Times<br><a href="http://news.google.com/url?sa=T&ct=us/7-0-3&fd=R&url=http://news.bbc.co.uk/2/hi/business/4355636.stm&cid=1101617158">BBC News</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-0-4&fd=R&url=http://quote.bloomberg.com/apps/news%3Fpid%3D10000006%26sid%3Daemuzc.ULTKM%26refer%3Dhome&cid=1101617158">Bloomberg</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-0-5&fd=R&url=http://moneycentral.msn.com/inc/news/providerredir.asp%3Ffeed%3DAP%26Date%3D20051019%26ID%3D5202606&cid=1101617158">MSN Money</a> - <a href="http://news.google.com/url?sa=T&ct=us/7-0-6&fd=R&url=http://informationweek.com/story/showArticle.jhtml%3FarticleID%3D172302143&cid=1101617158">InformationWeek</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.guardian.co.uk/business/story/0,3604,1595653,00.html&hl=en><b>all 594 related</b></a><br clear=all>', 1129715340);
INSERT INTO `aggregator_item` VALUES (7, 1, '"Rocky" Returns! - E! Online', 'http://www.eonline.com/News/Items/0,1,17590,00.html?tnews', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/6-2i-0&fd=R&url=http://www.ctv.ca/servlet/ArticleNews/story/CTVNews/20051017/stallone_rockey_051017/20051017%3Fhub%3DEntertainment&cid=1101701350"><br>CTV.ca</a><a href="http://news.google.com/url?sa=T&ct=us/6-2-0&fd=R&url=http://www.eonline.com/News/Items/0,1,17590,00.html%3Ftnews&cid=1101701350"><b>"Rocky" Returns!</b></a><br><b>E! Online - Oct 17, 2005</b><br>by Josh Grossberg. Cue "Eye of the Tiger"--the Italian Stallion is coming out of retirement for more one shot. Sylvester Stallone has signed on to reprise his role as the boxing champ for a sixth installment in the once mighty franchise. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/6-2-1&fd=R&url=http://www.suntimes.com/output/movies/cst-ftr-rocky18.html&cid=1101701350">Stallone tries to regain eye of tiger</a> Chicago Sun-Times<br><a href="http://news.google.com/url?sa=T&ct=us/6-2-2&fd=R&url=http://www.philly.com/mld/dailynews/news/local/12929753.htm&cid=1101701350">Can Rocky still throw a punch?</a> Philadelphia Daily News<br><a href="http://news.google.com/url?sa=T&ct=us/6-2-3&fd=R&url=http://www.ruggedelegantliving.com/a/003782.html&cid=1101701350">The Rugged Elegance</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-2-4&fd=R&url=http://www.nydailynews.com/front/story/356859p-304056c.html&cid=1101701350">New York Daily News</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-2-5&fd=R&url=http://comingsoon.net/news/topnews.php%3Fid%3D11604&cid=1101701350">Comingsoon.net</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-2-6&fd=R&url=http://www.variety.com/article/VR1117931054%3Fcategoryid%3D13%26cs%3D1&cid=1101701350">Variety (subscription)</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.eonline.com/News/Items/0,1,17590,00.html%3Ftnews&hl=en><b>all 292 related</b></a><br clear=all>', 1129574520);
INSERT INTO `aggregator_item` VALUES (8, 1, 'Family life inspires Kutcher role - BBC News', 'http://news.bbc.co.uk/1/hi/entertainment/tv_and_radio/4355676.stm', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/6-1i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801336.html&cid=1101809916"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/6-1-0&fd=R&url=http://news.bbc.co.uk/1/hi/entertainment/tv_and_radio/4355676.stm&cid=1101809916"><b>Family life inspires Kutcher role</b></a><br><b>BBC News - 2 hours ago</b><br>The real-life romance between Ashton Kutcher and his new wife Demi Moore has inspired a new sitcom, which he has co-produced. The show is said to be "loosely based" on Kutcher''s new family life, with some <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/6-1-1&fd=R&url=http://www.eonline.com/News/Items/0,1,17605,00.html&cid=1101809916">Ashton''s Art Imitates Life</a> E! Online<br><a href="http://news.google.com/url?sa=T&ct=us/6-1-2&fd=R&url=http://news.scotsman.com/latest.cfm%3Fid%3D2112562005&cid=1101809916">Ashton puts together ''Demi'' sitcom</a> Scotsman<br><a href="http://news.google.com/url?sa=T&ct=us/6-1-3&fd=R&url=http://today.reuters.com/news/newsArticle.aspx%3Ftype%3DtelevisionNews%26storyID%3D2005-10-18T221636Z_01_SCH880075_RTRIDST_0_TELEVISION-LEISURE-KUTCHER-DC.XML&cid=1101809916">Reuters</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-1-4&fd=R&url=http://www.mercurynews.com/mld/mercurynews/news/breaking_news/12934635.htm&cid=1101809916">San Jose Mercury News</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-1-5&fd=R&url=http://thetrack.bostonherald.com/starTracks/view.bg%3Farticleid%3D107744&cid=1101809916">Boston Herald</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-1-6&fd=R&url=http://www.nydailynews.com/entertainment/story/357022p-304259c.html&cid=1101809916">New York Daily News</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://news.bbc.co.uk/1/hi/entertainment/tv_and_radio/4355676.stm&hl=en><b>all 170 related</b></a><br clear=all>', 1129708800);
INSERT INTO `aggregator_item` VALUES (9, 1, 'Brand and Beckhams on true-love trial - Calcutta Telegraph', 'http://www.telegraphindia.com/1051019/asp/atleisure/story_5371765.asp', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/6-0i-0&fd=R&url=http://www.usatoday.com/life/people/2005-10-18-beckhams_x.htm%3FPOE%3DLIFISVA&cid=1101811298"><br>USA Today</a><a href="http://news.google.com/url?sa=T&ct=us/6-0-0&fd=R&url=http://www.telegraphindia.com/1051019/asp/atleisure/story_5371765.asp&cid=1101811298"><b>Brand and Beckhams on true-love trial</b></a><br><b>Calcutta Telegraph - 4 hours ago</b><br>London, Oct. 18: David and Victoria Beckham will face a high court jury to deny allegations that they are “cynically and hypocritically” trying to present a false image of their marriage to the public to protect “Brand Beckham”. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/6-0-1&fd=R&url=http://www.boston.com/ae/celebrity/articles/2005/10/19/beckhams_in_court&cid=1101811298">Beckhams in court</a> Boston Globe<br><a href="http://news.google.com/url?sa=T&ct=us/6-0-2&fd=R&url=http://www.eonline.com/News/Items/0,1,17602,00.html%3Ftnews&cid=1101811298">Posh & Becks: Happy or Rocky?</a> E! Online<br><a href="http://news.google.com/url?sa=T&ct=us/6-0-3&fd=R&url=http://www.telegraph.co.uk/health/main.jhtml%3Fxml%3D/health/2005/10/19/hweds19.xml&cid=1101811298">Telegraph.co.uk</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-0-4&fd=R&url=http://www.mirror.co.uk/news/tm_objectid%3D16265581%26method%3Dfull%26siteid%3D94762%26headline%3Dfightback-frocks--name_page.html&cid=1101811298">Mirror.co.uk</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-0-5&fd=R&url=http://www.upi.com/NewsTrack/view.php%3FStoryID%3D20051018-101911-6092r&cid=1101811298">United Press International</a> - <a href="http://news.google.com/url?sa=T&ct=us/6-0-6&fd=R&url=http://abcnews.go.com/Entertainment/wireStory%3Fid%3D1225676&cid=1101811298">ABC News</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.telegraphindia.com/1051019/asp/atleisure/story_5371765.asp&hl=en><b>all 207 related</b></a><br clear=all>', 1129702440);
INSERT INTO `aggregator_item` VALUES (10, 1, 'Was BALCO probe worth all the time, money and trouble? - USA Today', 'http://usatoday.com/sports/2005-10-18-was-balco-case-worth-it_x.htm', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/5-2i-0&fd=R&url=http://www.canada.com/calgary/calgaryherald/news/sports/story.html%3Fid%3Db184e650-2448-42ab-a6f1-cb8a2dfb3847&cid=1101804844"><br>Calgary Herald</a><a href="http://news.google.com/url?sa=T&ct=us/5-2-0&fd=R&url=http://usatoday.com/sports/2005-10-18-was-balco-case-worth-it_x.htm&cid=1101804844"><b>Was BALCO probe worth all the time, money and trouble?</b></a><br><b>USA Today - 5 hours ago</b><br>By Edward Iwata, USA TODAY. SAN FRANCISCO — With three kingpins in the BALCO doping scandal sentenced Tuesday to a few months in prison or probation, attorneys and steroid experts questioned whether the lengthy <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/5-2-1&fd=R&url=http://edition.cnn.com/2005/SPORT/10/18/drugs.balco/&cid=1101804844">BALCO mastermind gets eight months</a> CNN International<br><a href="http://news.google.com/url?sa=T&ct=us/5-2-2&fd=R&url=http://www.signonsandiego.com/sports/20051018-1623-ca-athletes-steroids.html&cid=1101804844">BALCO founder Conte gets eight-month sentence</a> San Diego Union Tribune<br><a href="http://news.google.com/url?sa=T&ct=us/5-2-3&fd=R&url=http://www.insidebayarea.com/argus/localnews/ci_3130310&cid=1101804844">The Argus</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-2-4&fd=R&url=http://www.sportsnetwork.com/default.asp%3Fc%3Dsportsnetwork%26page%3D/mlb/news/AAN3985110.htm&cid=1101804844">Sports Network</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-2-5&fd=R&url=http://sfgate.com/cgi-bin/article.cgi%3Ff%3D/c/a/2005/10/19/KNAPP.TMP&cid=1101804844">San Francisco Chronicle</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-2-6&fd=R&url=http://slam.canoe.ca/Slam/Baseball/MLB/2005/10/18/1267898-ap.html&cid=1101804844">SLAM! Sports</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://usatoday.com/sports/2005-10-18-was-balco-case-worth-it_x.htm&hl=en><b>all 690 related</b></a><br clear=all>', 1129698240);
INSERT INTO `aggregator_item` VALUES (11, 1, 'Buccaneers act fast to fill void - Toronto Star', 'http://www.thestar.com/NASApp/cs/ContentServer?pagename=thestar/Layout/Article_Type1&c=Article&cid=1129672214330&call_pageid=972053291757&col=972053257289', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/5-1i-0&fd=R&url=http://www.cbc.ca/story/sports/national/2005/10/18/Sports/rattay051018.html&cid=1101790598"><br>CBC News</a><a href="http://news.google.com/url?sa=T&ct=us/5-1-0&fd=R&url=http://www.thestar.com/NASApp/cs/ContentServer%3Fpagename%3Dthestar/Layout/Article_Type1%26c%3DArticle%26cid%3D1129672214330%26call_pageid%3D972053291757%26col%3D972053257289&cid=1101790598"><b>Buccaneers act fast to fill void</b></a><br><b>Toronto Star - 2 hours ago</b><br>The Tampa Bay Buccaneers, bracing for the possibility of being without Brian Griese for a lengthy period, acquired Tim Rattay from the San Francisco 49ers yesterday to back up young quarterbacks Chris Simms and Luke McCown. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/5-1-1&fd=R&url=http://abcnews.go.com/Sports/ESPNSports/story%3Fid%3D1228072&cid=1101790598">Bucs deal for Niners QB Rattay</a> ABC News<br><a href="http://news.google.com/url?sa=T&ct=us/5-1-2&fd=R&url=http://sfgate.com/cgi-bin/article.cgi%3Ff%3D/c/a/2005/10/19/ONTHENFL.TMP&cid=1101790598">Trade shows Nolan is realistic about his team</a> San Francisco Chronicle<br><a href="http://news.google.com/url?sa=T&ct=us/5-1-3&fd=R&url=http://www.mercurynews.com/mld/mercurynews/sports/12937390.htm&cid=1101790598">San Jose Mercury News</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-1-4&fd=R&url=http://www.boston.com/sports/football/articles/2005/10/19/bulgers_status_is_in_doubt&cid=1101790598">Boston Globe</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-1-5&fd=R&url=http://www.nytimes.com/2005/10/19/sports/football/19nfl.html&cid=1101790598">New York Times</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-1-6&fd=R&url=http://msn.foxsports.com/fantasy/story/5004442&cid=1101790598">FOXSports.com</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.thestar.com/NASApp/cs/ContentServer%3Fpagename%3Dthestar/Layout/Article_Type1%26c%3DArticle%26cid%3D1129672214330%26call_pageid%3D972053291757%26col%3D972053257289&hl=en><b>all 320 related</b></a><br clear=all>', 1129707780);
INSERT INTO `aggregator_item` VALUES (12, 1, 'Astros get another kick at can - Globe and Mail', 'http://www.theglobeandmail.com/servlet/story/RTGAM.20051019.wxnlcs19/BNStory/Sports/', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/5-0i-0&fd=R&url=http://www.canada.com/victoria/timescolonist/news/sports/story.html%3Fid%3D868dc091-d0e0-4105-a6d5-0b6a1430a4aa&cid=1101788756"><br>CHEK TV News</a><a href="http://news.google.com/url?sa=T&ct=us/5-0-0&fd=R&url=http://www.theglobeandmail.com/servlet/story/RTGAM.20051019.wxnlcs19/BNStory/Sports/&cid=1101788756"><b>Astros get another kick at can</b></a><br><b>Globe and Mail - 1 hour ago</b><br>By JEFF BLAIR. St. Louis, Mo. — Forty-four years of playing major-league baseball in Houston and there is no fancy name for it, no Curse of This or Curse of That. Not even a real, defined starting point. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/5-0-1&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801876.html&cid=1101788756">Slaying The Percentages</a> Washington Post<br><a href="http://news.google.com/url?sa=T&ct=us/5-0-2&fd=R&url=http://sfgate.com/cgi-bin/article.cgi%3Ff%3D/n/a/2005/10/18/sports/s230436D27.DTL&cid=1101788756">Pujols Ready for Another Highlight Hit</a> San Francisco Chronicle<br><a href="http://news.google.com/url?sa=T&ct=us/5-0-3&fd=R&url=http://www.sportsnetwork.com/default.asp%3Fc%3Dsportsnetwork%26page%3D/mlb/news/AAN3985116.htm&cid=1101788756">Sports Network</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-0-4&fd=R&url=http://www.boston.com/sports/baseball/articles/2005/10/19/astros_stretch_for_elusive_finish_line&cid=1101788756">Boston Globe</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-0-5&fd=R&url=http://www.nytimes.com/2005/10/19/sports/baseball/19chass.html&cid=1101788756">New York Times</a> - <a href="http://news.google.com/url?sa=T&ct=us/5-0-6&fd=R&url=http://www.mercurynews.com/mld/mercurynews/sports/12938459.htm&cid=1101788756">San Jose Mercury News</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.theglobeandmail.com/servlet/story/RTGAM.20051019.wxnlcs19/BNStory/Sports/&hl=en><b>all 2,478 related</b></a><br clear=all>', 1129712100);
INSERT INTO `aggregator_item` VALUES (13, 1, 'IPod''s Video Is Sharp but Not Much Is On - Los Angeles Times', 'http://www.latimes.com/technology/la-fi-technopolis19oct19,0,19770.column?coll=la-home-headlines&track=hppromobox', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/4-2i-0&fd=R&url=http://www.dexigner.com/product/news-g5504.html&cid=1101537884"><br>Dexigner</a><a href="http://news.google.com/url?sa=T&ct=us/4-2-0&fd=R&url=http://www.latimes.com/technology/la-fi-technopolis19oct19,0,19770.column%3Fcoll%3Dla-home-headlines%26track%3Dhppromobox&cid=1101537884"><b>IPod''s Video Is Sharp but Not Much Is On</b></a><br><b>Los Angeles Times - 2 hours ago</b><br>The 21/2-inch screen on the Apple device shows a vibrant image. But for now there''s little content to choose from. Who could be desperate enough to watch "Desperate Housewives" on a 2 1/2 -inch screen? Or <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/4-2-1&fd=R&url=http://online.wsj.com/public/article/SB112967377359572414-4j7zOUjbOjQdxG7_kC_cAFgA4VM_20061019.html%3Fmod%3Dtff_main_tff_top&cid=1101537884">Christopher Walken Dances</a> Wall Street Journal<br><a href="http://news.google.com/url?sa=T&ct=us/4-2-2&fd=R&url=http://www.nytimes.com/2005/10/18/technology/circuits/19web-pogue.html&cid=1101537884">An iPod Worth Keeping an Eye On</a> New York Times<br><a href="http://news.google.com/url?sa=T&ct=us/4-2-3&fd=R&url=http://www.informationweek.com/story/showArticle.jhtml%3FarticleID%3D172301858%26tid%3D13692&cid=1101537884">InformationWeek</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-2-4&fd=R&url=http://news.com.com/2061-11199_3-5900387.html&cid=1101537884">CNET News.com</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-2-5&fd=R&url=http://www.argusleader.com/apps/pbcs.dll/article%3FAID%3D/20051019/BUSINESS/510190315/1003&cid=1101537884">Sioux Falls Argus Leader</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-2-6&fd=R&url=http://www.fortune.com/fortune/technology/articles/0,15114,1119074,00.html&cid=1101537884">Fortune</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.latimes.com/technology/la-fi-technopolis19oct19,0,19770.column%3Fcoll%3Dla-home-headlines%26track%3Dhppromobox&hl=en><b>all 82 related</b></a><br clear=all>', 1129709400);
INSERT INTO `aggregator_item` VALUES (14, 1, 'IBM acquires DataPower - Xinhua', 'http://news.xinhuanet.com/english/2005-10/19/content_3647241.htm', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/4-1i-0&fd=R&url=http://www.cxotoday.com/cxo/jsp/article.jsp%3Farticle_id%3D68711%26cat_id%3D908&cid=1101828747"><br>CXOToday.com</a><a href="http://news.google.com/url?sa=T&ct=us/4-1-0&fd=R&url=http://news.xinhuanet.com/english/2005-10/19/content_3647241.htm&cid=1101828747"><b>IBM acquires DataPower</b></a><br><b>Xinhua - 1 hour ago</b><br>BEIJING, Oct. 19 -- IBM announced on Tuesday that it has acquired DataPower, a company specialized in tools for XML message processing. The acquisition addresses the need to make previously siloed data and <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/4-1-1&fd=R&url=http://informationweek.com/story/showArticle.jhtml%3FarticleID%3D172302047&cid=1101828747">IBM Acquires DataPower To Speed XML And SOA Adoption</a> InformationWeek<br><a href="http://news.google.com/url?sa=T&ct=us/4-1-2&fd=R&url=http://www.redherring.com/Article.aspx%3Fa%3D14039%26hed%3DIBM%2BBuys%2BDataPower%26sector%3DIndustries%26subsector%3DComputing&cid=1101828747">IBM Buys DataPower</a> Red Herring<br><a href="http://news.google.com/url?sa=T&ct=us/4-1-3&fd=R&url=http://www.eweek.com/article2/0,1895,1872556,00.asp&cid=1101828747">eWeek</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-1-4&fd=R&url=http://news.zdnet.com/2100-9584_22-5899716.html&cid=1101828747">ZDNet</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-1-5&fd=R&url=http://www.channelregister.co.uk/2005/10/18/ibm_soa_datapower/&cid=1101828747">Register</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-1-6&fd=R&url=http://today.reuters.com/business/newsArticle.aspx%3Ftype%3Dousiv%26storyID%3D2005-10-18T175443Z_01_KWA864407_RTRIDST_0_BUSINESSPRO-DATAPOWER-IBM-DC.XML&cid=1101828747">Reuters</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://news.xinhuanet.com/english/2005-10/19/content_3647241.htm&hl=en><b>all 50 related</b></a><br clear=all>', 1129710720);
INSERT INTO `aggregator_item` VALUES (15, 1, 'Nintendo lands super-sized Wi-Fi deal - GameSpot', 'http://www.gamespot.com/news/6135992.html', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/4-0i-0&fd=R&url=http://www.pocket-lint.co.uk/news.php%3FnewsId%3D1810&cid=1101820258"><br>Pocket-lint.co.uk</a><a href="http://news.google.com/url?sa=T&ct=us/4-0-0&fd=R&url=http://www.gamespot.com/news/6135992.html&cid=1101820258"><b>Nintendo lands super-sized Wi-Fi deal</b></a><br><b>GameSpot - 16 hours ago</b><br>Big Mac, fries, and ownage: McDonald''s plays host to wireless ''Net for DS; nearly 6,000 burger joints will participate. Traditionally, the idea of seeing anything toad, turtle, or donkey related in a McDonald''s <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/4-0-1&fd=R&url=http://ve3d.ign.com/articles/659/659274p1.html&cid=1101820258">Free DS Wi-Fi Access At McDonald''s</a> Ve3d.com<br><a href="http://news.google.com/url?sa=T&ct=us/4-0-2&fd=R&url=http://www.nytimes.com/2005/10/18/technology/18nintendo.html&cid=1101820258">McDonald''s and Nintendo in Wi-Fi Deal</a> New York Times<br><a href="http://news.google.com/url?sa=T&ct=us/4-0-3&fd=R&url=http://ds.ign.com/articles/659/659005p1.html&cid=1101820258">IGN</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-0-4&fd=R&url=http://www.technewsworld.com/story/46797.html&cid=1101820258">TechNewsWorld</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-0-5&fd=R&url=http://money.cnn.com/2005/10/18/technology/personaltech/mcdonalds_nintendo/&cid=1101820258">CNN</a> - <a href="http://news.google.com/url?sa=T&ct=us/4-0-6&fd=R&url=http://www.theinquirer.net/%3Farticle%3D27022&cid=1101820258">Inquirer</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.gamespot.com/news/6135992.html&hl=en><b>all 104 related</b></a><br clear=all>', 1129659360);
INSERT INTO `aggregator_item` VALUES (16, 1, 'Wall Street braces for Refco fallout - Globe and Mail', 'http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/IBREFCO19/TPBusiness/International', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/3-2i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/17/AR2005101700246.html&cid=1101663056"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/3-2-0&fd=R&url=http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/IBREFCO19/TPBusiness/International&cid=1101663056"><b>Wall Street braces for Refco fallout</b></a><br><b>Globe and Mail - 2 hours ago</b><br>By SHAWN MCCARTHY. NEW YORK -- Just two months after going public in a successful share offering, commodities and futures broker Refco Inc. has crashed to earth in Wall Street''s latest corporate scandal. The <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/3-2-1&fd=R&url=http://today.reuters.co.uk/Funds/FundsArticle.aspx%3Ftype%3DfundsNews%26storyID%3D2005-10-19T070915Z_01_NOA925656_RTRUKOC_0_FINANCIAL-REFCO.xml&cid=1101663056">Refco files for bankruptcy</a> Reuters.uk<br><a href="http://news.google.com/url?sa=T&ct=us/3-2-2&fd=R&url=http://www.detnews.com/2005/business/0510/19/C03-353958.htm&cid=1101663056">Refco buyers hope to save it</a> DetNews.com<br><a href="http://news.google.com/url?sa=T&ct=us/3-2-3&fd=R&url=http://msnbc.msn.com/id/9743419/&cid=1101663056">MSNBC</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-2-4&fd=R&url=http://quote.bloomberg.com/apps/news%3Fpid%3D10000006%26sid%3DaLQ.R1MOE7Ok%26refer%3Dhome&cid=1101663056">Bloomberg</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-2-5&fd=R&url=http://news.independent.co.uk/business/news/article320585.ece&cid=1101663056">Independent</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-2-6&fd=R&url=http://today.reuters.com/investing/financeArticle.aspx%3Ftype%3DbondsNews%26storyID%3D2005-10-18T225215Z_01_N18323854_RTRIDST_0_FINANCIAL-REFCO-GOLDMAN.XML&cid=1101663056">Reuters</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/IBREFCO19/TPBusiness/International&hl=en><b>all 661 related</b></a><br clear=all>', 1129709040);
INSERT INTO `aggregator_item` VALUES (17, 1, 'Intel profit gains on notebook sales - BusinessWeek', 'http://www.businessweek.com/ap/financialnews/D8DATSD00.htm?campaign_id=apn_tech_down&chan=tc', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/3-1i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801142.html&cid=1101809220"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/3-1-0&fd=R&url=http://www.businessweek.com/ap/financialnews/D8DATSD00.htm%3Fcampaign_id%3Dapn_tech_down%26chan%3Dtc&cid=1101809220"><b>Intel profit gains on notebook sales</b></a><br><b>BusinessWeek - 4 hours ago</b><br>OCT. 19 1:48 AM ET Intel Corp. posted a slim increase of 5 percent in third-quarter profits and indicated fourth-quarter sales could be affected by continuing supply constraints and a build up of customer inventory. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/3-1-1&fd=R&url=http://news.zdnet.com/2100-9584_22-5900270.html&cid=1101809220">Intel profit rises on notebook demand</a> ZDNet<br><a href="http://news.google.com/url?sa=T&ct=us/3-1-2&fd=R&url=http://www.theinquirer.net/%3Farticle%3D27037&cid=1101809220">Intel posts record quarterly turnover</a> Inquirer<br><a href="http://news.google.com/url?sa=T&ct=us/3-1-3&fd=R&url=http://www.forbes.com/2005/10/18/intel-earnings-apple-cx_gl_1018autofacescan10.html&cid=1101809220">Forbes</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-1-4&fd=R&url=http://www.bloomberg.com/apps/news%3Fpid%3D10000087%26sid%3Da_MawPMmKTPw%26refer%3Dtop_world_news&cid=1101809220">Bloomberg</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-1-5&fd=R&url=http://www.azcentral.com/arizonarepublic/business/articles/1019techearns19.html&cid=1101809220">Arizona Republic</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-1-6&fd=R&url=http://msnbc.msn.com/id/9745491/&cid=1101809220">MSNBC</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.businessweek.com/ap/financialnews/D8DATSD00.htm%3Fcampaign_id%3Dapn_tech_down%26chan%3Dtc&hl=en><b>all 295 related</b></a><br clear=all>', 1129701120);
INSERT INTO `aggregator_item` VALUES (18, 1, 'Oil slips as traders watch storm - Reuters', 'http://today.reuters.com/news/newsArticle.aspx?type=businessNews&storyID=2005-10-19T090808Z_01_KNE915588_RTRUKOC_0_US-MARKETS-OIL.xml', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/3-0i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101800223.html&cid=1101829649"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/3-0-0&fd=R&url=http://today.reuters.com/news/newsArticle.aspx%3Ftype%3DbusinessNews%26storyID%3D2005-10-19T090808Z_01_KNE915588_RTRUKOC_0_US-MARKETS-OIL.xml&cid=1101829649"><b>Oil slips as traders watch storm</b></a><br><b>Reuters - 1 hour ago</b><br>By Neil Chatterjee. SINGAPORE (Reuters) - Oil eased to $63 on Wednesday after the previous day''s sharp losses, as a new deadly hurricane was expected to miss Gulf of Mexico oil facilities and traders weighed signs of weakening fuel demand. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/3-0-1&fd=R&url=http://quote.bloomberg.com/apps/news%3Fpid%3D10000086%26sid%3DaXlUReAUjjyA%26refer%3Dnews_index&cid=1101829649">Oil Falls as Hurricane Wilma Strengthens on Path to Florida</a> Bloomberg<br><a href="http://news.google.com/url?sa=T&ct=us/3-0-2&fd=R&url=http://www.forbes.com/markets/feeds/afx/2005/10/19/afx2285457.html&cid=1101829649">Oil prices drop as storm veers away from US Gulf region</a> Forbes<br><a href="http://news.google.com/url?sa=T&ct=us/3-0-3&fd=R&url=http://www.chronline.com/Main.asp%3FSectionID%3D16%26SubSectionID%3D101%26ArticleID%3D24417&cid=1101829649">Centralia Chronicle</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-0-4&fd=R&url=http://www.businessweek.com/ap/financialnews/D8DAVJN85.htm%3Fcampaign_id%3Dapn_home_down%26chan%3Ddb&cid=1101829649">BusinessWeek</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-0-5&fd=R&url=http://futures.fxstreet.com/Futures/news/afx/singleNew.asp%3Fmenu%3Dlatestnews%26pv_noticia%3D1129685160-105c0f08-02267&cid=1101829649">FXstreet.com</a> - <a href="http://news.google.com/url?sa=T&ct=us/3-0-6&fd=R&url=http://news.xinhuanet.com/english/2005-10/19/content_3644143.htm&cid=1101829649">Xinhua</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://today.reuters.com/news/newsArticle.aspx%3Ftype%3DbusinessNews%26storyID%3D2005-10-19T090808Z_01_KNE915588_RTRUKOC_0_US-MARKETS-OIL.xml&hl=en><b>all 845 related</b></a><br clear=all>', 1129713060);
INSERT INTO `aggregator_item` VALUES (19, 1, 'Town holds its breath as dam''s failure feared - Seattle Times', 'http://seattletimes.nwsource.com/html/nationworld/2002569720_dam19.html', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/2-2i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/19/AR2005101900276.html&cid=1101811387"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/2-2-0&fd=R&url=http://seattletimes.nwsource.com/html/nationworld/2002569720_dam19.html&cid=1101811387"><b>Town holds its breath as dam''s failure feared</b></a><br><b>Seattle Times - 2 hours ago</b><br>By David A. Fahrenthold. TAUNTON, Mass. — The Whittenton Pond Dam, a crib of crisscrossed logs that holds back the Mill River, helped make this faded manufacturing town what it was. Built 173 years ago, it <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/2-2-1&fd=R&url=http://www.latimes.com/news/nationworld/nation/la-101705dam_lat,0,6544650.story%3Fcoll%3Dla-tot-promo%26track%3Dmorenews&cid=1101811387">Massachusetts Dam Threatens to Burst</a> Los Angeles Times<br><a href="http://news.google.com/url?sa=T&ct=us/2-2-2&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/19/AR2005101900276.html&cid=1101811387">Situation at Taunton, Mass. Dam Stable</a> Washington Post<br><a href="http://news.google.com/url?sa=T&ct=us/2-2-3&fd=R&url=http://www.boston.com/news/local/massachusetts/articles/2005/10/19/empty_city_watches_aging_structure&cid=1101811387">Boston Globe</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-2-4&fd=R&url=http://www.nytimes.com/2005/10/19/national/19flood.html&cid=1101811387">New York Times</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-2-5&fd=R&url=http://www.chron.com/cs/CDA/ssistory.mpl/nation/3402761&cid=1101811387">Houston Chronicle</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-2-6&fd=R&url=http://news.bostonherald.com/localRegional/view.bg%3Farticleid%3D107705&cid=1101811387">Boston Herald</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://seattletimes.nwsource.com/html/nationworld/2002569720_dam19.html&hl=en><b>all 568 related</b></a><br clear=all>', 1129707540);
INSERT INTO `aggregator_item` VALUES (20, 1, 'Gridlock, but no bomb - Newsday', 'http://www.newsday.com/news/nationworld/nation/bal-tunnel1018,0,6274503.story?coll=ny-sports-print&track=mostemailedlink', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/2-1i-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/19/AR2005101900215.html&cid=1101828463"><br>Washington Post</a><a href="http://news.google.com/url?sa=T&ct=us/2-1-0&fd=R&url=http://www.newsday.com/news/nationworld/nation/bal-tunnel1018,0,6274503.story%3Fcoll%3Dny-sports-print%26track%3Dmostemailedlink&cid=1101828463"><b>Gridlock, but no bomb</b></a><br><b>Newsday - 7 hours ago</b><br>By Matthew Dolan. Investigating a tip that terrorists planned to blow up one of two tunnels running beneath Baltimore''s Harbor, authorities tem porarily shut down Interstate 95 -- the East Coast''s major north <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/2-1-1&fd=R&url=http://www.nytimes.com/2005/10/19/national/19baltimore.html&cid=1101828463">Terrorism Tip Closes Tunnels in Baltimore</a> New York Times<br><a href="http://news.google.com/url?sa=T&ct=us/2-1-2&fd=R&url=http://www.sptimes.com/2005/10/19/Worldandnation/Terror_threat_closes_.shtml&cid=1101828463">Terror threat closes Baltimore tunnel</a> St. Petersburg Times<br><a href="http://news.google.com/url?sa=T&ct=us/2-1-3&fd=R&url=http://www.guardian.co.uk/worldlatest/story/0,1280,-5353812,00.html&cid=1101828463">Guardian Unlimited</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-1-4&fd=R&url=http://www.signonsandiego.com/news/nation/20051018-1127-security-tunnel.html&cid=1101828463">San Diego Union Tribune</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-1-5&fd=R&url=http://www.cnn.com/2005/US/10/18/baltimore.tunnel/&cid=1101828463">CNN</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-1-6&fd=R&url=http://breakingnews.iol.ie/news/story.asp%3Fj%3D159600478%26p%3Dy596xyy84&cid=1101828463">Ireland Online</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.newsday.com/news/nationworld/nation/bal-tunnel1018,0,6274503.story%3Fcoll%3Dny-sports-print%26track%3Dmostemailedlink&hl=en><b>all 681 related</b></a><br clear=all>', 1129692180);
INSERT INTO `aggregator_item` VALUES (21, 1, 'Miers Backed Abortion Ban in 1989 Survey - Los Angeles Times', 'http://www.latimes.com/news/nationworld/nation/la-na-questions19oct19,0,1145548.story?coll=la-home-nation', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/2-0i-0&fd=R&url=http://seattletimes.nwsource.com/html/nationworld/2002569701_miers19.html&cid=1101522280"><br>Seattle Times</a><a href="http://news.google.com/url?sa=T&ct=us/2-0-0&fd=R&url=http://www.latimes.com/news/nationworld/nation/la-na-questions19oct19,0,1145548.story%3Fcoll%3Dla-home-nation&cid=1101522280"><b>Miers Backed Abortion Ban in 1989 Survey</b></a><br><b>Los Angeles Times - 3 hours ago</b><br>The Supreme Court nominee''s pledge, made while running for the Dallas City Council, pleases conservatives and troubles Democrats. By Richard A. Serrano, Times Staff Writer. WASHINGTON — Supreme Court nominee <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/2-0-1&fd=R&url=http://www.businessweek.com/bwdaily/dnflash/oct2005/nf20051019_3684_db038.htm&cid=1101522280">Miers: More Foes, but More Fans, Too</a> BusinessWeek<br><a href="http://news.google.com/url?sa=T&ct=us/2-0-2&fd=R&url=http://www.boston.com/news/nation/washington/articles/2005/10/19/miers_papers_reflect_antiabortion_view&cid=1101522280">Miers papers reflect antiabortion view</a> Boston Globe<br><a href="http://news.google.com/url?sa=T&ct=us/2-0-3&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/18/AR2005101801476.html&cid=1101522280">Washington Post</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-0-4&fd=R&url=http://abcnews.go.com/Politics/wireStory%3Fid%3D1228027&cid=1101522280">ABC News</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-0-5&fd=R&url=http://www.guardian.co.uk/worldlatest/story/0,1280,-5352930,00.html&cid=1101522280">Guardian Unlimited</a> - <a href="http://news.google.com/url?sa=T&ct=us/2-0-6&fd=R&url=http://www.bloomberg.com/apps/news%3Fpid%3D10000103%26sid%3Dan9uW2iA7wNU%26refer%3Dus&cid=1101522280">Bloomberg</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.latimes.com/news/nationworld/nation/la-na-questions19oct19,0,1145548.story%3Fcoll%3Dla-home-nation&hl=en><b>all 1,753 related</b></a><br clear=all>', 1129705980);
INSERT INTO `aggregator_item` VALUES (22, 1, 'Corruption watchdog issues warning on ''severe'' debt risk - Financial Times', 'http://news.ft.com/cms/s/f8962e48-403d-11da-8394-00000e2511c8.html', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/1-2i-0&fd=R&url=http://euronews.net/create_html.php%3Fpage%3Ddetail_eco%26article%3D314707%26lng%3D1&cid=1101820830"><br>Euronews.net</a><a href="http://news.google.com/url?sa=T&ct=us/1-2-0&fd=R&url=http://news.ft.com/cms/s/f8962e48-403d-11da-8394-00000e2511c8.html&cid=1101820830"><b>Corruption watchdog issues warning on ''severe'' debt risk</b></a><br><b>Financial Times - 7 hours ago</b><br>By Alison Maitland in London. There is a severe risk that money freed by debt relief for some of the world''s poorest countries will be lost to corruption, Transparency International, the anti-corruption watchdog, warned yesterday. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/1-2-1&fd=R&url=http://www.abs-cbnnews.com/topofthehour.aspx%3FStoryId%3D19511&cid=1101820830">RP 36th among world''s most corrupt nations</a> ABS CBN News<br><a href="http://news.google.com/url?sa=T&ct=us/1-2-2&fd=R&url=http://www.outlookindia.com/pti_news.asp%3Fid%3D329531&cid=1101820830">India''s ranking in corruption index declines</a> Outlook (subscription)<br><a href="http://news.google.com/url?sa=T&ct=us/1-2-3&fd=R&url=http://www.bloomberg.com/apps/news%3Fpid%3D10000087%26sid%3DaC.wbvACKoW4%26refer%3Dtop_world_news&cid=1101820830">Bloomberg</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-2-4&fd=R&url=http://today.reuters.co.uk/news/newsArticle.aspx%3Ftype%3DworldNews%26storyID%3D2005-10-18T131500Z_01_MCC847650_RTRUKOC_0_UK-CRIME-CORRUPTION.xml&cid=1101820830">Reuters.uk</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-2-5&fd=R&url=http://www.timesonline.co.uk/article/0,,3-1831223,00.html&cid=1101820830">Times Online</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-2-6&fd=R&url=http://news.inq7.net/nation/index.php%3Findex%3D1%26story_id%3D53787&cid=1101820830">INQ7 Interactive, Inc.</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://news.ft.com/cms/s/f8962e48-403d-11da-8394-00000e2511c8.html&hl=en><b>all 233 related</b></a><br clear=all>', 1129689420);
INSERT INTO `aggregator_item` VALUES (23, 1, 'Rumsfeld questions China''s openness - Aljazeera.net', 'http://english.aljazeera.net/NR/exeres/AA229B52-FBCB-4501-B521-AB8D64A4768E.htm', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/1-1i-0&fd=R&url=http://www.usatoday.com/news/world/2005-10-17-rumsfeld-china_x.htm&cid=1101754747"><br>USA Today</a><a href="http://news.google.com/url?sa=T&ct=us/1-1-0&fd=R&url=http://english.aljazeera.net/NR/exeres/AA229B52-FBCB-4501-B521-AB8D64A4768E.htm&cid=1101754747"><b>Rumsfeld questions China''s openness</b></a><br><b>Aljazeera.net - 2 hours ago</b><br>US Defence Secretary Donald Rumsfeld has questioned China''s openness and complained about the US being sidelined in Asia, which could affect the power balance in the region. China can dispel global worries <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/1-1-1&fd=R&url=http://www.dailytimes.com.pk/default.asp%3Fpage%3D2005%255C10%255C19%255Cstory_19-10-2005_pg4_4&cid=1101754747">Rumsfeld questions China’s secretive military intentions</a> Daily Times<br><a href="http://news.google.com/url?sa=T&ct=us/1-1-2&fd=R&url=http://www.nytimes.com/2005/10/19/international/asia/19rumsfeld.html&cid=1101754747">Rumsfeld Warns Young Chinese on Isolationism</a> New York Times<br><a href="http://news.google.com/url?sa=T&ct=us/1-1-3&fd=R&url=http://today.reuters.com/news/newsArticle.aspx%3Ftype%3DworldNews%26storyID%3D2005-10-19T051740Z_01_FOR908004_RTRUKOC_0_US-CHINA-USA-RUMSFELD.xml&cid=1101754747">Reuters</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-1-4&fd=R&url=http://news.bbc.co.uk/1/hi/world/asia-pacific/4355548.stm&cid=1101754747">BBC News</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-1-5&fd=R&url=http://www.iht.com/articles/2005/10/18/news/briefs.php&cid=1101754747">International Herald Tribune</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-1-6&fd=R&url=http://abcnews.go.com/Politics/wireStory%3Fid%3D1228435&cid=1101754747">ABC News</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://english.aljazeera.net/NR/exeres/AA229B52-FBCB-4501-B521-AB8D64A4768E.htm&hl=en><b>all 420 related</b></a><br clear=all>', 1129709940);
INSERT INTO `aggregator_item` VALUES (24, 1, 'Quake aid helping to reduce tensions - Globe and Mail', 'http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/QUAKEKAS18/TPInternational/Asia', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/1-0i-0&fd=R&url=http://www.gg2.net/viewnews.asp%3Fnid%3D822%26tid%3Dtop_headlines%26catid%3DTop%2520Headlines&cid=1101704649"><br>GG2.net</a><a href="http://news.google.com/url?sa=T&ct=us/1-0-0&fd=R&url=http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/QUAKEKAS18/TPInternational/Asia&cid=1101704649"><b>Quake aid helping to reduce tensions</b></a><br><b>Globe and Mail - 42 minutes ago</b><br>By SONYA FATAH. ISLAMABAD -- In an unusual and hopeful sign of warming relations between India and Pakistan, Pakistan''s President, General Pervez Musharraf, announced yesterday that he would open up the line <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/1-0-1&fd=R&url=http://news.scotsman.com/latest.cfm%3Fid%3D2110682005&cid=1101704649">Strong aftershock hits quake area</a> Scotsman<br><a href="http://news.google.com/url?sa=T&ct=us/1-0-2&fd=R&url=http://www.alertnet.org/thefacts/reliefresources/112971382078.htm&cid=1101704649">CRISIS PROFILE: What is the conflict in Kashmir about</a> Reuters AlertNet<br><a href="http://news.google.com/url?sa=T&ct=us/1-0-3&fd=R&url=http://www.latimes.com/news/nationworld/world/la-fg-indiapak19oct19,0,2551611.story%3Fcoll%3Dla-home-world&cid=1101704649">Los Angeles Times</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-0-4&fd=R&url=http://www9.sbs.com.au/theworldnews/region.php%3Fid%3D123354%26region%3D2&cid=1101704649">Special Broadcasting Service</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-0-5&fd=R&url=http://tvnz.co.nz/view/page/411366/620791&cid=1101704649">TVNZ</a> - <a href="http://news.google.com/url?sa=T&ct=us/1-0-6&fd=R&url=http://dailytelegraph.news.com.au/story/0,20281,16968699-5001028,00.html&cid=1101704649">Daily Telegraph</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/QUAKEKAS18/TPInternational/Asia&hl=en><b>all 360 related</b></a><br clear=all>', 1129714860);
INSERT INTO `aggregator_item` VALUES (25, 1, 'Wilma Strengthens to Category 5 Hurricane - Washington Post', 'http://www.washingtonpost.com/wp-dyn/content/article/2005/10/19/AR2005101900238.html', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/0-1i-0&fd=R&url=http://www.cbc.ca/cp/world/051018/w101814.html&cid=1101776164"><br>CBC News</a><a href="http://news.google.com/url?sa=T&ct=us/0-1-0&fd=R&url=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/19/AR2005101900238.html&cid=1101776164"><b>Wilma Strengthens to Category 5 Hurricane</b></a><br><b>Washington Post - 2 hours ago</b><br>By Fred Barbash. The National Hurricane Center upgraded Hurricane Wilma this morning to an "extremely dangerous" Category 5 and put the Florida Keys on notice that Wilma could be heading its way over the next five days. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/0-1-1&fd=R&url=http://www.telegraph.co.uk/news/main.jhtml%3Fxml%3D/news/2005/10/19/whurr19.xml%26sSheet%3D/news/2005/10/19/ixworld.html&cid=1101776164">Hurricane threatens Florida</a> Telegraph.co.uk<br><a href="http://news.google.com/url?sa=T&ct=us/0-1-2&fd=R&url=http://abcnews.go.com/International/wireStory%3Fid%3D1228449&cid=1101776164">Wilma Strengthens to Category 5 Hurricane</a> ABC News<br><a href="http://news.google.com/url?sa=T&ct=us/0-1-3&fd=R&url=http://www.smh.com.au/news/world/hurricane-wilma-turns-extremely-dangerous/2005/10/19/1129401300556.html&cid=1101776164">Sydney Morning Herald (subscription)</a> - <a href="http://news.google.com/url?sa=T&ct=us/0-1-4&fd=R&url=http://www.naplesnews.com/npdn/news/article/0,2071,NPDN_14940_4168532,00.html&cid=1101776164">Naples Daily News (subscription)</a> - <a href="http://news.google.com/url?sa=T&ct=us/0-1-5&fd=R&url=http://www.foxnews.com/story/0,2933,172680,00.html&cid=1101776164">FOX News</a> - <a href="http://news.google.com/url?sa=T&ct=us/0-1-6&fd=R&url=http://www.sptimes.com/2005/10/19/Weather/Wilma_builds_en_route.shtml&cid=1101776164">St. Petersburg Times</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.washingtonpost.com/wp-dyn/content/article/2005/10/19/AR2005101900238.html&hl=en><b>all 2,805 related</b></a><br clear=all>', 1129709520);
INSERT INTO `aggregator_item` VALUES (26, 1, 'Hussein''s trial opens under veil of secrecy - Globe and Mail', 'http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/SADDAM19/TPInternational/Africa', '', '<br><a href="http://news.google.com/url?sa=T&ct=us/0-0i-0&fd=R&url=http://www.ctv.ca/servlet/ArticleNews/story/CTVNews/20051018/hussein_trial_051018/20051018%3Fhub%3DCTVNewsAt11&cid=1101647894"><br>CTV.ca</a><a href="http://news.google.com/url?sa=T&ct=us/0-0-0&fd=R&url=http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/SADDAM19/TPInternational/Africa&cid=1101647894"><b>Hussein''s trial opens under veil of secrecy</b></a><br><b>Globe and Mail - 41 minutes ago</b><br>By ALAN FREEMAN. WASHINGTON -- Former Iraqi president Saddam Hussein goes on trial in Baghdad today, charged with crimes against humanity, almost two years after he was seized from an underground hiding place near his hometown of Tikrit. <b>...</b>  <br><a href="http://news.google.com/url?sa=T&ct=us/0-0-1&fd=R&url=http://www.smh.com.au/news/world/saddam-goes-on-trial/2005/10/19/1129401313130.html&cid=1101647894">Saddam goes on trial</a> Sydney Morning Herald (subscription)<br><a href="http://news.google.com/url?sa=T&ct=us/0-0-2&fd=R&url=http://www.timesonline.co.uk/article/0,,7374-1833183,00.html&cid=1101647894">Saddam trial starts in Baghdad</a> Times Online<br><a href="http://news.google.com/url?sa=T&ct=us/0-0-3&fd=R&url=http://cbs2chicago.com/seenon/topstories_story_291111710.html&cid=1101647894">CBS2 Chicago</a> - <a href="http://news.google.com/url?sa=T&ct=us/0-0-4&fd=R&url=http://www.mg.co.za/articlePage.aspx%3Farticleid%3D254128%26area%3D/breaking_news/breaking_news__international_news/&cid=1101647894">Mail & Guardian Online</a> - <a href="http://news.google.com/url?sa=T&ct=us/0-0-5&fd=R&url=http://www.ctv.ca/servlet/ArticleNews/story/CTVNews/20051018/hussein_trial_051018/20051018%3Fhub%3DCTVNewsAt11&cid=1101647894">CTV.ca</a> - <a href="http://news.google.com/url?sa=T&ct=us/0-0-6&fd=R&url=http://www.ynetnews.com/articles/0,7340,L-3156465,00.html&cid=1101647894">Ynetnews</a> - <a class=p href=http://news.google.com/news?ned=us&ncl=http://www.theglobeandmail.com/servlet/ArticleNews/TPStory/LAC/20051019/SADDAM19/TPInternational/Africa&hl=en><b>all 653 related</b></a><br clear=all>', 1129714920);
INSERT INTO `aggregator_item` VALUES (27, 2, 'Onion Daily Content', 'http://www.theonion.com/content/index&rss=1', '', 'Check out all the news updated daily on theonion.com', 1129699901);
INSERT INTO `aggregator_item` VALUES (28, 2, 'American Voices: Harriet Miers Nomination', 'http://www.theonion.com/content/node/41642&rss=1', '', '<p>Bush''s Supreme Court nomination of Harriet Miers, his longtime associate and current White House counsel, continues to draw criticism. What do <i>you</i> think?</p><p>"It just goes to show that, in America, anybody can grow up to be a lavishly rewarded sycophant of the president."</p>', 1129525305);
INSERT INTO `aggregator_item` VALUES (29, 2, 'Onion Radio News: Area Man Goaded Into Climbing Mt. Everest', 'http://www.theonion.com/content/node/41667&rss=1', '', 'files/radionews/05-185 mt. everest_T.mp3', 1129611687);
INSERT INTO `aggregator_item` VALUES (30, 2, 'American Voices: Bush''s Not-So-Candid Chat', 'http://www.theonion.com/content/node/41661&rss=1', '', '<p>A televised conversation between President Bush and American and Iraqi troops that was originally presented as a candid chat turned out to be carefully scripted to address Bush''s goals for the war and the new Iraqi constitution. What do <i>you</i> think?</p><p>"This would be a major problem for the president if anybody cared anymore about whether or not the things he did were fake."</p>', 1129611712);
INSERT INTO `aggregator_item` VALUES (31, 2, 'Onion Radio News: New Movie From Pixar To Totally Fuck With Kid''s Minds', 'http://www.theonion.com/content/node/41668&rss=1', '', 'files/radionews/05-183 pixar_W.mp3', 1129698076);
INSERT INTO `aggregator_item` VALUES (32, 2, 'American Voices: L.A. Catholic Priest Scandal', 'http://www.theonion.com/content/node/41845&rss=1', '', '<p>The Roman Catholic Archdiocese of Los Angeles released records showing that known child-molesting priests were often allowed to continue practicing their ministry, or simply transferred to other parishes in the diocese. What do <i>you</i> think?</p><p>"These priests really need to read the entirety of St. Augustine''s <i>Confessions</i> and not just the sex parts."</p>', 1129698076);
INSERT INTO `aggregator_item` VALUES (33, 3, 'Logisim 2.0 Beta 22 sports better documentation, options', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=89', 'carlburch@users.sourceforge.net (Carl Burch)', 'Logisim, an extensive Java-based educational tool for graphical design and simulation of digital logic circuits, has been updated to a new version, 2.0 Beta 22.', 1129203302);
INSERT INTO `aggregator_item` VALUES (34, 3, 'MetalMech 0.2.4 released', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=88', 'madbump@users.sourceforge.net (Dzmitry Haiduchonak)', 'Metal Mech is a Web-based mass multiplayer game of battle between robots and space exploration. It is a game of strategy, economics, role-playing, and combat. Each player can handle their own war robot and battle against other players to be the Emperor of the Universe. Players battle against each other for resources, energy, money, buildings, and more. They can build mines and buildings and produce robots, weapons, devices, etc. Players can also trade with each other.\n<p><a href="http://rss.sourceforge.net/~a/sourceforge/export/rss2_sfnews?a=Syvw0l"></a></p>', 1129203316);
INSERT INTO `aggregator_item` VALUES (35, 3, 'SvxLink version 051009 released', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=92', 'sm0svx@users.sourceforge.net (Tobias Blomberg)', 'SvxLink is a repeater controller and a general voice services system with features such as EchoLink and voice mail. For this release a nasty networking bug has been fixed and a voice mail system has been added. See the ChangLog for all the details.', 1129292835);
INSERT INTO `aggregator_item` VALUES (36, 3, 'iCodeGenerator 0.0.7 released', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=91', 'victoryoalli@users.sourceforge.net (Victor Y. Dominguez)', 'iCodeGenerator is a database centric template based code generator for any text based(ascii) programming language like C, PHP, C#, Java, Perl, Python... The supported databases are SQL Server, MySQL, and now Postgresql too.', 1129292816);
INSERT INTO `aggregator_item` VALUES (37, 3, 'Bygfoot Football Manager 1.9.2 available', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=94', 'gyboth@users.sourceforge.net (Gyözö Both)', 'Bygfoot is a small and simple graphical football (a.k.a. soccer) manager game featuring many international leagues & cups. You manage a team from one such league: you form the team, buy & sell players, get promoted or relegated and of course try to be successful.', 1129548676);
INSERT INTO `aggregator_item` VALUES (38, 3, 'Logisim 2.0 Beta 23 repairs bugs', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=93', 'carlburch@users.sourceforge.net (Carl Burch)', 'Logisim, an extensive Java-based educational tool for graphical design and simulation of digital logic circuits, has been updated to a new version, 2.0 Beta 23. The new version repairs a significant bug with configuring the behavior of a small number of built-in components (Constant, Clock), and it repairs a minor problem with some images in the beginner''s tutorial.', 1129548700);
INSERT INTO `aggregator_item` VALUES (39, 3, 'BricksViewer Version 0.0.7 Released', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=98', 'dan_malec@users.sourceforge.net (Dan Malec)', 'BricksViewer, a Java based viewer for LEGO (r) .lxf files, has released version 0.0.7.  .lxf files are used by the LEGO Group of Companies to distribute instructions for models built in LEGO Factory.\n<p><a href="http://rss.sourceforge.net/~a/sourceforge/export/rss2_sfnews?a=m2CCnR"></a></p>', 1129636634);
INSERT INTO `aggregator_item` VALUES (40, 3, 'JPPF goes beta with version 0.6.0', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=97', 'lolocohen@users.sourceforge.net (Laurent Cohen)', 'Java Parallel Processing Framework is a set of tools and APIs to facilitate the parallelization of CPU intensive applications, and distribute their execution over a network of heterogenous nodes.', 1129636655);
INSERT INTO `aggregator_item` VALUES (41, 3, 'ZGRViewer 0.5.0 released', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=96', 'epietrig@users.sourceforge.net (Emmanuel Pietriga)', 'ZGRViewer is a 2.5D graph visualizer implemented in Java and based upon the Zoomable Visual Transformation Machine. It is specifically aimed at displaying graphs expressed using the DOT language from AT&T GraphViz and processed by programs dot or neato.', 1129636697);
INSERT INTO `aggregator_item` VALUES (42, 3, 'NGrid.Core v0.5 and NGrid.Superfluid v0.1 released', 'http://rss.sourceforge.net/sourceforge/export/rss2_sfnews?m=95', 'joannes@users.sourceforge.net (Joannes Vermorel)', 'NGrid.Core is an abstraction layer for grid computing written in C#. The NGrid.Core framework provides a transparent multithreaded and garbage collected programming model. The version 0.5 includes a minimal-overhead physical grid called NGrid.Zero. With v0.5, NGrid-based applications can be run without any grid loader (note: in order to use any grid beside NGrid.Zero a loader is required nevertheless).', 1129636561);
INSERT INTO `aggregator_item` VALUES (43, 4, 'The Why of Space Program Races', 'http://rss.slashdot.org/Slashdot/slashdot?m=1273', '', 'Deinhard writes "USA Today is running a story about the "why" behind the newly rekindled international space race. From the article: ''The science of space raises levels in areas such as computers, space materials, manufacturing technology, electronic equipment, systems integration and testing.'' While it is a matter of national pride, China in specific also sees this as a way to increase the reputation of its high-tech exports."', 1129668780);
INSERT INTO `aggregator_item` VALUES (44, 4, 'Stopping Linux Desktop Adoption Sabotage', 'http://rss.slashdot.org/Slashdot/slashdot?m=1274', '', 'Mark Brunelli, News Editor writes "Outspoken IT consultant John H. Terpstra believes that Microsoft and electronics manufacturers are working together to hinder the adoption of Linux on the desktop. In a three part series, he tells a story about how two guys trying to buy Linux desktops found they were overpriced, and lacked certain tools. He then describes how Microsoft uses its considerable resources and the law to create such roadblocks. (Part 2, Part 3)"', 1129670700);
INSERT INTO `aggregator_item` VALUES (45, 4, 'Wikipedia Founder Sees Serious Quality Problems', 'http://rss.slashdot.org/Slashdot/slashdot?m=1275', '', 'Juha-Matti Laurio writes "The Wikipedia co-founder Jimmy Wales has acknowledged there are real quality problems with the online project. From the article: ''Meanwhile, criticism from outside the Wikipedia camp has been rebuffed with a ferocious blend of irrationality and vigor that''s almost unprecedented in our experience: if you thought Apple, Amiga, Mozilla or OS/2 fans were er, ... passionate, you haven''t met a wiki-fiddler.''"', 1129674060);
INSERT INTO `aggregator_item` VALUES (46, 4, 'Oracle and MySQL -- Good Move or Bad Bet?', 'http://rss.slashdot.org/Slashdot/slashdot?m=1276', '', 'sendai-X writes "With the recently announced purchase of Innobase, Oracle has shown it''s intention to further support open source. This is key as open source enters the mainstream in business and in light of the success IBM has had with the Eclipse project, and Sun recently looking at purchasing PostgresSQL. What do Slashdot users think about this merger? Is it beneficial to the market and database users by having the largest database vendor openly support MySQL and provide an upgrade path to Oracle? Or is it just another cog in the Oracle machine in their attempt to dominate the enterprise IT market? Will this change the database market landscape? Will it help or hurt IBM and Microsoft?"', 1129676520);
INSERT INTO `aggregator_item` VALUES (47, 4, 'Estonian Internet Voting Called a Success', 'http://rss.slashdot.org/Slashdot/slashdot?m=1277', '', 'composer314 writes "The Associated Press is reporting that the small European nation of Estonia has conducted large-scale voting over the internet. From the article: "Last week, Estonia became the first country in the world to hold an election allowing voters nationwide to cast ballots over the internet. Fewer than 10,000 people, or 1 percent of registered voters, participated online in elections for mayors and city councils across the country, but officials hailed the experiment as a success." The system is built on Linux." I guess it works well when the internet is considered a human right.', 1129679040);
INSERT INTO `aggregator_item` VALUES (48, 4, 'Federal Court Shuts Down Pay As You Go Wireless', 'http://rss.slashdot.org/Slashdot/slashdot?m=1278', '', 'self assembled struc writes "BCGI has been found guilty of infringing on pay-as-you-go wireless patents owned by Freedom Wireless. This means that cellular providers who use BCGI pay-as-you-go billing systems must immediately stop selling new service. For the next 90 days, as they wind down their service, they will have to pay Freedom Wireless 2.5 cents per airtime minute used PER CUSTOMER. This heralds a farewell to Cingular''s Go Phone and Sprint-Nextel''s Boost services, both powered by BCGI."', 1129681680);
INSERT INTO `aggregator_item` VALUES (49, 4, 'Original BeOS Developer Now at Trolltech', 'http://rss.slashdot.org/Slashdot/slashdot?m=1279', '', 'UltimaGuy writes "Benoit Schillings, co-creator of the Be operating system and former CTO of Openwave, has been appointed to the newly created position of chief technology officer (CTO) at Trolltech. In the meantime, Trolltech has also joined the new mobile OSDL initiative."', 1129689120);
INSERT INTO `aggregator_item` VALUES (50, 4, 'Cisco Updates Network Security Technology', 'http://rss.slashdot.org/Slashdot/slashdot?m=1280', '', '* * Beatles-Beatles writes to tell us that Cisco has announced an enhanced version of its Network Admission Control (NAC) technology. From the article: "Under its NAC initiative, Cisco is developing a range of tools that let companies permit, deny, quarantine or restrict admission to networks based on an end user''s security status."', 1129695960);
INSERT INTO `aggregator_item` VALUES (51, 4, 'RedHat Co-Founder Bob Young Resigns', 'http://rss.slashdot.org/Slashdot/slashdot?m=1281', '', 'Anonymous Coward''s Cousin writes "Yahoo news is reporting that Redhat co-founder Bob Young has resigned from the board. From the article: ''In a funny way, my resignation is perhaps the finest compliment I can pay to everyone associated with Red Hat today, I have complete confidence in the future of the company''"', 1129703640);
INSERT INTO `aggregator_item` VALUES (52, 4, 'Commission Suggests UK Should End Astronaut Ban', 'http://rss.slashdot.org/Slashdot/slashdot?m=1282', '', 'An anonymous reader writes "According to the BBC a British scientific panel has recommended that the British Government should end its ban on human space flight. The Royal Astronomical Society (RAS) Commission pursued a 9-month investigation into ''The Scientific Case for Human Space Flight''. Professor Frank Close, Chair of the Commission, said, ''We commenced this study without preconceived views and with no formal connection to planetary exploration. Our personal backgrounds made us lean towards an initial skepticism on the scientific value of human involvement in such research.'' The commission concluded that ''profound scientific questions relating to the history of the solar system and the existence of life beyond Earth can best - perhaps only - be achieved by human exploration on the Moon or Mars, supported by appropriate automated systems.''"', 1129710300);

-- --------------------------------------------------------

-- 
-- Table structure for table `authmap`
-- 

CREATE TABLE `authmap` (
  `aid` int(10) unsigned NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `authname` varchar(128) NOT NULL default '',
  `module` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`aid`),
  UNIQUE KEY `authname` (`authname`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `authmap`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `blocks`
-- 

CREATE TABLE `blocks` (
  `module` varchar(64) NOT NULL default '',
  `delta` varchar(32) NOT NULL default '0',
  `status` tinyint(2) NOT NULL default '0',
  `weight` tinyint(1) NOT NULL default '0',
  `region` tinyint(1) NOT NULL default '0',
  `custom` tinyint(2) NOT NULL default '0',
  `throttle` tinyint(1) NOT NULL default '0',
  `visibility` tinyint(1) NOT NULL default '0',
  `pages` text NOT NULL,
  `types` text NOT NULL
) TYPE=MyISAM;

-- 
-- Dumping data for table `blocks`
-- 

INSERT INTO `blocks` VALUES ('user', '2', 1, 0, 1, 0, 0, 0, '', '');
INSERT INTO `blocks` VALUES ('user', '1', 1, 0, 0, 0, 0, 0, '', '');
INSERT INTO `blocks` VALUES ('user', '0', 1, 0, 0, 0, 0, 0, '', '');
INSERT INTO `blocks` VALUES ('statistics', '0', 0, 0, 0, 0, 0, 0, '', '');
INSERT INTO `blocks` VALUES ('node', '0', 1, 0, 1, 0, 0, 0, '', '');
INSERT INTO `blocks` VALUES ('comment', '0', 1, 0, 1, 0, 0, 0, '', '');
INSERT INTO `blocks` VALUES ('blog', '0', 1, 0, 1, 0, 0, 0, '', '');
INSERT INTO `blocks` VALUES ('user', '3', 1, 0, 1, 0, 0, 0, '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `book`
-- 

CREATE TABLE `book` (
  `nid` int(10) unsigned NOT NULL default '0',
  `parent` int(10) NOT NULL default '0',
  `weight` tinyint(3) NOT NULL default '0',
  `log` longtext,
  PRIMARY KEY  (`nid`),
  KEY `parent` (`parent`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `book`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `boxes`
-- 

CREATE TABLE `boxes` (
  `bid` tinyint(4) NOT NULL auto_increment,
  `title` varchar(64) NOT NULL default '',
  `body` longtext,
  `info` varchar(128) NOT NULL default '',
  `format` int(4) NOT NULL default '0',
  PRIMARY KEY  (`bid`),
  UNIQUE KEY `info` (`info`),
  UNIQUE KEY `title` (`title`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `boxes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `cache`
-- 

CREATE TABLE `cache` (
  `cid` varchar(255) NOT NULL default '',
  `data` longtext,
  `expire` int(11) NOT NULL default '0',
  `created` int(11) NOT NULL default '0',
  `headers` text,
  PRIMARY KEY  (`cid`),
  KEY `expire` (`expire`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `cache`
-- 

INSERT INTO `cache` VALUES ('filter:3:f4b225152561896a56c44e348c8286b8', '<p>And you guys thought I was dead :D</p>\n<p>Small update to Neptune, and I''ve bumped it up to version 0.5. I redid the startup notify, since a snowflake has nothing to do with Neptune. I also did a cheesy theme-job on the battery and cpufreq modules, I didn''t redesign them entirely, mostly because I like how default has them.. just did a bit of coloring. Have fun!</p>\n<p><b>Updated again after sleeping some, ibar is now redesigned, but the follower looks lame.. it will change.</b><br />\n<a href="http://kingrayray.wallooza.org/neptune-0.5.edj">http://kingrayray.wallooza.org/neptune-0.5.edj</a></p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:3:3c2318dc9601ee3bb8c82a50ed3fd905', '<p>As suggested by misunderstruck, I''m changing my theme''s name (and idea base) to Neptune. I''m not entirely sure how I''m going to implement it, but as of right now I''m messing around in Gimp, scratching for ideas here. Any thoughts on how to implement such an idea are more than welcome. :)</p>\n<p>In summary, icetest-0.1 is now neptune-0.1. Filenames will be updated soon, along with new links once I get an update done.</p>\n<p><img src="http://kingrayray.wallooza.org/aboutbox.png"><br />\n<b>EDIT: LINK IS HERE:</b><br />\n<a href="http://kingrayray.wallooza.org/neptune-0.1.edj">http://kingrayray.wallooza.org/neptune-0.1.edj</a></p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:a29267c38195a55b0a72ac0eca71f120', '<p>Released today two new modules, mount and screenshot !! Get ''em while they''re hot at get-e.org</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:3:c3189c75e508c381fbdb560e82636388', '<p>I blame the stupid name on my location. </p>\n<p><b>But, I''ve updated the theme nonetheless! Changes include:</b></p>\n<ul>New menu graphic, along with windowlist and pager popup<br />\nSome minor font changes, bolding and white shadowing in the menu<br />\nTurned off the "shaped" flag in the border code, minor speed improvement</ul>\n<p>More changes are coming, slowly but surely.<br />\n<a href="http://kingrayray.wallooza.org/shot.png"><img src="http://kingrayray.wallooza.org/thumbshot.png"></a></p>\n<h2><a href="http://kingrayray.wallooza.org/icetest2.edj">Grab it!</a></h2>\n<p><b>If you''d like to help me out a bit, click read more.</b></p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:5dbd54679ed49cd01f54727fae78575c', '<p>After a long, long, long night of hacking at code the mount module is finally ready ! You can grab it at my site <a href="http://home.comcast.net/~devilhorns/e17modules/mount.tar.gz">here</a> . BE SURE TO CHECK THE README before you do anything !!</p>\n<p>Please test it thoroughly for me before I upload it to get-e.org .<br />\nLet me know if you have any problems (Hawkwind, I know about yours :-) ) .</p>\n<p>Enjoy !!</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:3ef692852e25b026623612a5a6b21d53', '<p>Finally. I got the motivation to work on my theme! Current version is not available for download, I''m only circulating it between trusted people at the moment. :P But here''s a teaser shot!</p>\n<p><a href="http://kingrayray.wallooza.org/2005-10-29-184524_1280x1024_scrot.png">Screenshot!</a></p>\n<p>Also, special thanks to CodeWarrior for giving me a bit of advice on Edje :)</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('variables', 'a:35:{s:12:"update_start";s:10:"2005-03-21";s:13:"filter_html_1";i:1;s:13:"theme_default";s:12:"ninjapirates";s:12:"clean_url_ok";i:1;s:9:"site_mail";s:21:"digital@dxdstudio.com";s:12:"site_mission";s:251:"<strong>Mission Statement:</strong><br>\r\nNinjapirate Networks is an organization of people working to develop modules and themes for the Enlightenment window manager for *nix. We also contribute to other open source projects, and graphic design ;)<br>";s:9:"anonymous";s:9:"Anonymous";s:14:"site_frontpage";s:4:"node";s:9:"clean_url";s:1:"0";s:8:"site_403";s:0:"";s:8:"site_404";s:0:"";s:11:"error_level";s:1:"1";s:14:"watchdog_clear";s:6:"604800";s:5:"cache";s:1:"0";s:19:"file_directory_path";s:5:"files";s:19:"file_directory_temp";s:4:"/tmp";s:14:"file_downloads";s:1:"1";s:21:"date_default_timezone";s:1:"0";s:22:"configurable_timezones";s:1:"1";s:17:"date_format_short";s:9:"Y-m-d H:i";s:18:"date_format_medium";s:12:"D, Y-m-d H:i";s:16:"date_format_long";s:15:"l, F j, Y - H:i";s:14:"date_first_day";s:1:"0";s:28:"statistics_enable_access_log";s:1:"0";s:32:"statistics_flush_accesslog_timer";s:6:"259200";s:30:"statistics_count_content_views";s:1:"1";s:26:"statistics_display_counter";s:1:"1";s:24:"theme_chameleon_settings";a:6:{s:12:"default_logo";s:1:"0";s:9:"logo_path";s:57:"http://www.dxdstudio.com/npn/themes/ninjapirates/logo.png";s:11:"toggle_name";s:1:"1";s:13:"toggle_slogan";s:1:"0";s:20:"toggle_primary_links";s:1:"1";s:22:"toggle_secondary_links";s:1:"1";}s:11:"site_slogan";s:33:"Ninja Pirates: Owning hella hard.";s:11:"site_footer";s:192:"twisted` is insane. Jas is a screenshot junkie. Ray''s a gui junkie. Chris (Devilhorns) is a turkey sandwich. Chris (dxd) is a ham sandwich. Psychos, junkies and sandwiches, thats how we roll. ";s:14:"theme_settings";a:16:{s:12:"default_logo";s:1:"0";s:9:"logo_path";s:57:"http://www.dxdstudio.com/npn/themes/ninjapirates/logo.png";s:13:"primary_links";s:398:"<a href="http://www.dxdstudio.com/npn"class="active">Home</a> | \r\n<a href="http://www.google.com" class="active">Google</a> |\r\n<a href="http://www.enlightenment.org" class="active">Enlightenment</a> |\r\n<a href="http://www.get-e.org" class="active">Get E</a> |\r\n<a href="http://www.dxdstudio.com" class="active">Dxdstudios</a> |\r\n<a href="http://www.sourceforge.net" class="active">Sourceforge</a>\r\n";s:15:"secondary_links";s:0:"";s:21:"toggle_node_info_blog";s:1:"1";s:21:"toggle_node_info_book";s:1:"1";s:21:"toggle_node_info_page";s:1:"1";s:22:"toggle_node_info_story";s:1:"1";s:11:"toggle_name";s:1:"0";s:13:"toggle_slogan";s:1:"0";s:14:"toggle_mission";s:1:"1";s:20:"toggle_primary_links";s:1:"1";s:22:"toggle_secondary_links";s:1:"0";s:24:"toggle_node_user_picture";s:1:"1";s:27:"toggle_comment_user_picture";s:1:"1";s:13:"toggle_search";s:1:"0";}s:9:"site_name";s:12:"Ninjapirates";s:24:"aggregator_summary_items";s:1:"3";s:16:"aggregator_clear";s:7:"4838400";s:28:"aggregator_category_selector";s:5:"check";}', 0, 1132266530, '');
INSERT INTO `cache` VALUES ('filter:1:c7a08bfba68cbce17c28dd3e110814dc', '<p>Perhaps completely unintentional, perhaps a quirk of fate, however it was brought to be; I''m now a ninjapirate.</p>\n<p>Anyway.  I''m useless in the area of C, due to the fact that the daunting task of learning enough to make myself useful is enough to make me cry like a little girl.  That doesn''t mean I can''t do other spiffy things, though.</p>\n<p>Right now I''m (lazily, but with a slowly improving pace) working on ninjabot for #ninjapirate.  I hard-coded a `fortune command so people can get the impression I''m actually doing something.  The actual core of the bot - which doesn''t include anything in hard-code - is modular and extremely flexible that will allow writing and loading of new modules on the fly with no restarts or hiccups.  It''s in PERL and uses Net::IRC rather than raw sockets, because I''m both lazy and lacking in the amount of time raw sockets would require.</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:41815d0d3ee4db8dd3a4179390a447fe', '<p>Been busy coding...</p>\n<p>Updated the rain module:<br />\n   * Allow Clicking On Clouds To Bring Up The E Main Menu<br />\n   * Change cloud image with one provided by our own Surtsey !!</p>\n<p>Updated the mount module:<br />\n   * Fixed the horizontal/vertical layouts on startup<br />\n   * Added a right-click config menu<br />\n   * Fixed E stalls when mounting a device</p>\n<p>The new rain module can be gotten from the Add-Ons->Modules page of get-e.org . The mount module is not quite ready for release yet. I still need to add icons for mounted/unmounted states, then I''ll probably release it.</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:597eee66b436a7aba04453800fb4c575', '<p>ok i nuked sourcemage and installe gentoo, just thought i''d put that out there.</p>\n<p>and to provoke a flamewar, i''ve been booting windows periodically to play CS:Source and Anarchy Online</p>\n<p>let the flaming begin :)</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:9cee04f2b4fdf155e706f7c1a816b65d', '<p>Well, Shadoi approached me regarding the new re-skin of edevelop.org to match the existing enlightenment community sites. Everyone has told me I should do it, but either way, I plan on doing it. So, soon enough edevelop.org will have a new drupal skin made by me :)</p>\n<p>(perhaps shadoi can sign up to the npn site :D)</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:153af8aecf0aa6fc8a69fe1e74a60a64', '<p>Here''s a quick preview of the upcoming mount module. Take a look in the Xnest of this screeny and you''ll see the mount module in edit mode.</p>\n<p>http://home.comcast.net/~devilhorns/images/mount.png</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:9a26d9d52b627b80663dbc438b86de4f', '<p>Just put up a google search bar and added some adsense content :)</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:b89929d4b6efc064ad4518beb5599546', '<p>[11:40] [+twisted`] ''n I really like rain man<br />\n[11:40] [+twisted`] it really really looks good<br />\n[11:40] [ kingrayray] thanks :)<br />\n[11:40] [+twisted`] and trust me<br />\n[11:40] [+twisted`] I''m not satisfied easy :)<br />\n[11:40] [ kingrayray] well i''m glad you like it<br />\n[11:40] [ kingrayray] i''m flattered :D<br />\n[11:40] [+twisted`] yeah<br />\n[11:40] [+twisted`] not many people can say twisted likes something they made :P<br />\n[11:41] * twisted` puts twisted stamp of aproval on it</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('filter:1:5f84de07e6d73c1fc51a50cc04cab26b', '<p>Hey guys. If you''re working on something, or planning to work on something, please keep us updated. Use the blog function, and just put up a tidbit about your plans and progress. Ninjapirate is a team effort, so we need to keep each other updated. Not everybody can be on IRC at all times ;P</p>\n', 1133757416, 1133671016, '');
INSERT INTO `cache` VALUES ('filter:1:e7e8de8787e7ddf076758081bd15f6bb', '<p>After like.. two days of downtime, I''m back. I got tired of Ubuntu and installed Sourcemage. Now i''m cool too. *coughjasanddevilhorns*</p>\n<p>It kicks ass. So far, it seems a bit faster than Gentoo. And instead of just *hoping* the optimizations you set in your cflags is good, it has a neat menu that tells you what each does. Little things like that. </p>\n<p>It also has spells for tons of CVS stuff. Like Gaim. Which is equally sweet. </p>\n<p>Anyway, I''m back now. Still in Fluxbox, getting my basic software installed first, before I cast Enlightenment.</p>\n', 1133808004, 1133721604, '');
INSERT INTO `cache` VALUES ('filter:1:ae916a5ce303ab94428c2574fafc3e13', '<p>well it looks like this site will come together well, i''ll be posting my themes and other various stuff here, so keep an ear.. er, eye out. :D</p>\n', 1133808004, 1133721604, '');
INSERT INTO `cache` VALUES ('filter:1:07fc0f3820133c82c67a22ac483da846', '<p>Perhaps completely unintentional, perhaps a quirk of fate, however it was brought to be; I''m now a ninjapirate.</p>\n<p>Anyway.  I''m useless in the area of C, due to the fact that the daunting task of learning enough to make myself useful is enough to make me cry like a little girl.  That doesn''t mean I can''t do other spiffy things, though.</p>\n<p>Right now I''m (lazily, but with a slowly improving pace) working on ninjabot for #ninjapirate.  I hard-coded a `fortune command so people can get the impression I''m actually doing something.  The actual core of the bot - which doesn''t include anything in hard-code - is modular and extremely flexible that will allow writing and loading of new modules on the fly with no restarts or hiccups.  It''s in PERL and uses Net::IRC rather than raw sockets, because I''m both lazy and lacking in the amount of time raw sockets would require.</p>\n<p>I''m also analyzing edje and the way current projects are constructed around it in an attempt to get a decent grasp of how to write themes.  Once I pick it up, you''ll see some snazzy stuff.</p>\n<p>And finally, devilhorns and I have been touching up the E17 rain module a little.  It''s super spiffy now - and will be about three times (hint hint) spiffier in the near future if all goes to plan.</p>\n<p><strong>Update:<br />\nI hate drupal</strong></p>\n', 1133808922, 1133722522, '');
INSERT INTO `cache` VALUES ('filter:1:ff7691e5c368d170a02a1eb75150ee92', '<p>After some initial coding with kingrayray on the new Rain module, I''m going to be getting back to the Mount module. I''ve done some updating to the get-e.org user guide to include the rain module and entropy. Now I can get back to coding the mount module...stay tuned !</p>\n', 1133819700, 1133733300, '');
INSERT INTO `cache` VALUES ('filter:1:9a53188044b151f7cab561f4cc9ad03a', '<p>Ok so after hearing Devilhorns and CodeWarrior talk about how great Sourcemage is, I finally broke down and installed it on my laptop. I''m still in the process of getting everything set back up/customized for me but so far it seems like a great distribution.  Comparing it to Gentoo is a little difficult because it seems almost exactly the same.  I will keep you posted on my findings.</p>\n', 1133819700, 1133733300, '');
INSERT INTO `cache` VALUES ('filter:1:20381aa36ba6d2759257928f76b7e342', '<p>I''m trying to wrap up work on Neptune now, to make way for another idea Digital and I have.</p>\n<p>So this is it. Anything that needs to be fixed, let me know ASAP.</p>\n', 1133750965, 1133664565, '');
INSERT INTO `cache` VALUES ('menu:0:en', 'a:3:{s:10:"path index";a:180:{s:16:"admin/aggregator";s:1:"2";s:26:"admin/aggregator/edit/feed";i:-2;s:30:"admin/aggregator/edit/category";i:-3;s:23:"admin/aggregator/remove";i:-4;s:23:"admin/aggregator/update";i:-5;s:21:"admin/aggregator/list";i:-6;s:25:"admin/aggregator/add/feed";i:-7;s:29:"admin/aggregator/add/category";i:-8;s:10:"aggregator";s:1:"3";s:18:"aggregator/sources";s:1:"4";s:21:"aggregator/categories";s:1:"5";s:20:"aggregator/sources/1";s:2:"46";s:25:"aggregator/sources/1/view";i:-13;s:31:"aggregator/sources/1/categorize";i:-14;s:30:"aggregator/sources/1/configure";i:-15;s:20:"aggregator/sources/4";s:2:"49";s:25:"aggregator/sources/4/view";i:-17;s:31:"aggregator/sources/4/categorize";i:-18;s:30:"aggregator/sources/4/configure";i:-19;s:20:"aggregator/sources/3";s:2:"48";s:25:"aggregator/sources/3/view";i:-21;s:31:"aggregator/sources/3/categorize";i:-22;s:30:"aggregator/sources/3/configure";i:-23;s:20:"aggregator/sources/2";s:2:"47";s:25:"aggregator/sources/2/view";i:-25;s:31:"aggregator/sources/2/categorize";i:-26;s:30:"aggregator/sources/2/configure";i:-27;s:23:"aggregator/categories/1";s:2:"50";s:28:"aggregator/categories/1/view";i:-29;s:34:"aggregator/categories/1/categorize";i:-30;s:33:"aggregator/categories/1/configure";i:-31;s:15:"aggregator/opml";i:-32;s:7:"archive";s:2:"35";s:11:"admin/block";s:1:"6";s:16:"admin/block/list";i:-35;s:21:"admin/block/configure";i:-36;s:18:"admin/block/delete";i:-37;s:15:"admin/block/add";i:-38;s:13:"node/add/blog";s:1:"7";s:4:"blog";s:1:"8";s:6:"blog/0";i:-41;s:7:"blogapi";i:-42;s:4:"book";s:2:"39";s:13:"node/add/book";s:2:"36";s:15:"admin/node/book";s:2:"37";s:22:"admin/node/book/orphan";s:2:"38";s:10:"book/print";i:-48;s:13:"admin/comment";s:1:"9";s:18:"admin/comment/edit";i:-50;s:20:"admin/comment/delete";i:-51;s:18:"admin/comment/list";i:-52;s:23:"admin/comment/configure";i:-53;s:22:"admin/comment/list/new";i:-54;s:27:"admin/comment/list/approval";i:-55;s:32:"admin/comment/configure/settings";i:-56;s:30:"admin/comment/configure/matrix";i:-57;s:34:"admin/comment/configure/thresholds";i:-58;s:29:"admin/comment/configure/roles";i:-59;s:29:"admin/comment/configure/votes";i:-60;s:12:"comment/edit";i:-61;s:7:"comment";i:-62;s:13:"admin/filters";s:2:"10";s:20:"admin/filters/delete";i:-64;s:11:"filter/tips";s:2:"11";s:10:"admin/help";s:2:"12";s:21:"admin/help/aggregator";i:-67;s:18:"admin/help/archive";i:-68;s:16:"admin/help/block";i:-69;s:15:"admin/help/blog";i:-70;s:18:"admin/help/blogapi";i:-71;s:15:"admin/help/book";i:-72;s:18:"admin/help/comment";i:-73;s:17:"admin/help/filter";i:-74;s:15:"admin/help/help";i:-75;s:17:"admin/help/locale";i:-76;s:15:"admin/help/menu";i:-77;s:15:"admin/help/node";i:-78;s:15:"admin/help/page";i:-79;s:15:"admin/help/ping";i:-80;s:18:"admin/help/profile";i:-81;s:17:"admin/help/search";i:-82;s:21:"admin/help/statistics";i:-83;s:16:"admin/help/story";i:-84;s:17:"admin/help/system";i:-85;s:19:"admin/help/taxonomy";i:-86;s:18:"admin/help/tracker";i:-87;s:15:"admin/help/user";i:-88;s:19:"admin/help/watchdog";i:-89;s:12:"admin/locale";s:2:"41";s:21:"admin/locale/language";i:-91;s:26:"admin/locale/string/search";i:-92;s:30:"admin/locale/language/overview";i:-93;s:25:"admin/locale/language/add";i:-94;s:28:"admin/locale/language/import";i:-95;s:28:"admin/locale/language/export";i:-96;s:28:"admin/locale/language/delete";i:-97;s:24:"admin/locale/string/edit";i:-98;s:26:"admin/locale/string/delete";i:-99;s:10:"admin/menu";s:2:"13";s:20:"admin/menu/item/edit";i:-101;s:21:"admin/menu/item/reset";i:-102;s:23:"admin/menu/item/disable";i:-103;s:22:"admin/menu/item/delete";i:-104;s:15:"admin/menu/list";i:-105;s:19:"admin/menu/menu/add";i:-106;s:19:"admin/menu/item/add";i:-107;s:16:"admin/menu/reset";i:-108;s:10:"admin/node";s:2:"14";s:17:"admin/node/action";i:-110;s:19:"admin/node/overview";i:-111;s:20:"admin/node/configure";i:-112;s:29:"admin/node/configure/settings";i:-113;s:26:"admin/node/configure/types";i:-114;s:17:"admin/node/search";i:-115;s:4:"node";s:2:"15";s:8:"node/add";s:2:"16";s:13:"node/add/page";s:2:"17";s:7:"profile";s:2:"42";s:22:"admin/settings/profile";s:2:"43";s:26:"admin/settings/profile/add";i:-121;s:27:"admin/settings/profile/edit";i:-122;s:29:"admin/settings/profile/delete";i:-123;s:6:"search";s:2:"44";s:21:"admin/settings/search";s:2:"45";s:15:"admin/logs/hits";s:2:"18";s:16:"admin/logs/pages";s:2:"19";s:16:"admin/logs/users";s:2:"20";s:20:"admin/logs/referrers";s:2:"21";s:17:"admin/logs/access";i:-130;s:14:"node/add/story";s:2:"22";s:12:"system/files";i:-132;s:11:"system/test";i:-133;s:5:"admin";s:2:"23";s:12:"admin/themes";s:2:"24";s:19:"admin/themes/select";i:-136;s:21:"admin/themes/settings";i:-137;s:28:"admin/themes/settings/global";i:-138;s:32:"admin/themes/settings/bluemarine";i:-139;s:31:"admin/themes/settings/chameleon";i:-140;s:28:"admin/themes/settings/marvin";i:-141;s:34:"admin/themes/settings/ninjapirates";i:-142;s:32:"admin/themes/settings/pushbutton";i:-143;s:14:"admin/settings";s:2:"25";s:25:"admin/settings/aggregator";s:2:"26";s:22:"admin/settings/blogapi";s:2:"34";s:25:"admin/settings/statistics";s:2:"27";s:13:"admin/modules";s:2:"28";s:14:"admin/taxonomy";s:2:"29";s:19:"admin/taxonomy/list";i:-150;s:29:"admin/taxonomy/add/vocabulary";i:-151;s:30:"admin/taxonomy/edit/vocabulary";i:-152;s:33:"admin/taxonomy/preview/vocabulary";i:-153;s:23:"admin/taxonomy/add/term";i:-154;s:24:"admin/taxonomy/edit/term";i:-155;s:13:"taxonomy/term";i:-156;s:7:"tracker";s:2:"40";s:4:"user";i:-158;s:10:"user/login";i:-159;s:13:"user/register";i:-160;s:13:"user/password";i:-161;s:9:"user/help";i:-162;s:10:"admin/user";s:2:"30";s:15:"admin/user/list";i:-164;s:17:"admin/user/create";i:-165;s:20:"admin/user/configure";i:-166;s:12:"admin/access";s:2:"31";s:24:"admin/access/permissions";i:-168;s:18:"admin/access/roles";i:-169;s:23:"admin/access/roles/edit";i:-170;s:18:"admin/access/rules";i:-171;s:23:"admin/access/rules/list";i:-172;s:22:"admin/access/rules/add";i:-173;s:24:"admin/access/rules/check";i:-174;s:23:"admin/access/rules/edit";i:-175;s:25:"admin/access/rules/delete";i:-176;s:17:"admin/user/search";i:-177;s:6:"logout";s:2:"32";s:10:"admin/logs";s:2:"33";s:16:"admin/logs/event";i:-180;s:37:"http://www.dxdstudio.com/npn/?q=about";s:2:"57";}s:5:"items";a:182:{i:0;a:5:{s:4:"path";s:0:"";s:5:"title";s:0:"";s:4:"type";i:1;s:3:"pid";i:1;s:8:"children";a:1:{i:0;i:1;}}i:1;a:7:{s:3:"pid";i:0;s:4:"path";s:0:"";s:5:"title";s:10:"Navigation";s:6:"weight";i:-50;s:6:"access";b:1;s:4:"type";i:3;s:8:"children";a:18:{i:0;i:-42;i:1;i:-62;i:2;i:-132;i:3;i:-133;i:4;i:-156;i:5;i:-158;i:6;i:3;i:7;i:8;i:8;i:11;i:9;i:15;i:10;i:23;i:11;i:32;i:12;i:35;i:13;i:39;i:14;i:40;i:15;i:42;i:16;i:44;i:17;i:57;}}i:-2;a:7:{s:4:"path";s:26:"admin/aggregator/edit/feed";s:5:"title";s:9:"edit feed";s:8:"callback";s:26:"aggregator_admin_edit_feed";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-3;a:7:{s:4:"path";s:30:"admin/aggregator/edit/category";s:5:"title";s:13:"edit category";s:8:"callback";s:30:"aggregator_admin_edit_category";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-4;a:7:{s:4:"path";s:23:"admin/aggregator/remove";s:5:"title";s:12:"remove items";s:8:"callback";s:28:"aggregator_admin_remove_feed";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-5;a:7:{s:4:"path";s:23:"admin/aggregator/update";s:5:"title";s:12:"update items";s:8:"callback";s:29:"aggregator_admin_refresh_feed";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-6;a:5:{s:4:"path";s:21:"admin/aggregator/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:1:"2";}i:-7;a:7:{s:4:"path";s:25:"admin/aggregator/add/feed";s:5:"title";s:8:"add feed";s:8:"callback";s:26:"aggregator_admin_edit_feed";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-8;a:7:{s:4:"path";s:29:"admin/aggregator/add/category";s:5:"title";s:12:"add category";s:8:"callback";s:30:"aggregator_admin_edit_category";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-13;a:5:{s:4:"path";s:25:"aggregator/sources/1/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"46";}i:-14;a:7:{s:4:"path";s:31:"aggregator/sources/1/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"46";}i:-15;a:7:{s:4:"path";s:30:"aggregator/sources/1/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"46";}i:-17;a:5:{s:4:"path";s:25:"aggregator/sources/4/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"49";}i:-18;a:7:{s:4:"path";s:31:"aggregator/sources/4/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"49";}i:-19;a:7:{s:4:"path";s:30:"aggregator/sources/4/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"49";}i:-21;a:5:{s:4:"path";s:25:"aggregator/sources/3/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"48";}i:-22;a:7:{s:4:"path";s:31:"aggregator/sources/3/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"48";}i:-23;a:7:{s:4:"path";s:30:"aggregator/sources/3/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"48";}i:-25;a:5:{s:4:"path";s:25:"aggregator/sources/2/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"47";}i:-26;a:7:{s:4:"path";s:31:"aggregator/sources/2/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"47";}i:-27;a:7:{s:4:"path";s:30:"aggregator/sources/2/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"47";}i:-29;a:5:{s:4:"path";s:28:"aggregator/categories/1/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"50";}i:-30;a:7:{s:4:"path";s:34:"aggregator/categories/1/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:24:"aggregator_page_category";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"50";}i:-31;a:7:{s:4:"path";s:33:"aggregator/categories/1/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"50";}i:-32;a:7:{s:4:"path";s:15:"aggregator/opml";s:5:"title";s:4:"opml";s:8:"callback";s:20:"aggregator_page_opml";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"3";}i:-35;a:5:{s:4:"path";s:16:"admin/block/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:1:"6";}i:-36;a:7:{s:4:"path";s:21:"admin/block/configure";s:5:"title";s:15:"configure block";s:6:"access";b:0;s:8:"callback";s:21:"block_admin_configure";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"6";}i:-37;a:7:{s:4:"path";s:18:"admin/block/delete";s:5:"title";s:12:"delete block";s:6:"access";b:0;s:8:"callback";s:16:"block_box_delete";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"6";}i:-38;a:7:{s:4:"path";s:15:"admin/block/add";s:5:"title";s:9:"add block";s:6:"access";b:0;s:8:"callback";s:13:"block_box_add";s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"6";}i:-41;a:6:{s:4:"path";s:6:"blog/0";s:5:"title";s:7:"my blog";s:6:"access";b:0;s:4:"type";i:6;s:6:"weight";i:0;s:3:"pid";s:1:"8";}i:-42;a:7:{s:4:"path";s:7:"blogapi";s:5:"title";s:3:"RSD";s:8:"callback";s:15:"blogapi_blogapi";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-48;a:7:{s:4:"path";s:10:"book/print";s:5:"title";s:24:"printer-friendly version";s:8:"callback";s:10:"book_print";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"39";}i:-50;a:7:{s:4:"path";s:18:"admin/comment/edit";s:5:"title";s:12:"edit comment";s:8:"callback";s:18:"comment_admin_edit";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"9";}i:-51;a:7:{s:4:"path";s:20:"admin/comment/delete";s:5:"title";s:14:"delete comment";s:8:"callback";s:14:"comment_delete";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"9";}i:-52;a:6:{s:4:"path";s:18:"admin/comment/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:1:"9";s:8:"children";a:2:{i:0;i:-54;i:1;i:-55;}}i:-53;a:8:{s:4:"path";s:23:"admin/comment/configure";s:5:"title";s:9:"configure";s:8:"callback";s:17:"comment_configure";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"9";s:8:"children";a:5:{i:0;i:-56;i:1;i:-57;i:2;i:-58;i:3;i:-59;i:4;i:-60;}}i:-54;a:5:{s:4:"path";s:22:"admin/comment/list/new";s:5:"title";s:12:"new comments";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-52;}i:-55;a:8:{s:4:"path";s:27:"admin/comment/list/approval";s:5:"title";s:14:"approval queue";s:8:"callback";s:22:"comment_admin_overview";s:6:"access";b:0;s:18:"callback arguments";s:8:"approval";s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-52;}i:-56;a:5:{s:4:"path";s:32:"admin/comment/configure/settings";s:5:"title";s:8:"settings";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-53;}i:-57;a:7:{s:4:"path";s:30:"admin/comment/configure/matrix";s:5:"title";s:17:"moderation matrix";s:8:"callback";s:23:"comment_matrix_settings";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-58;a:7:{s:4:"path";s:34:"admin/comment/configure/thresholds";s:5:"title";s:21:"moderation thresholds";s:8:"callback";s:26:"comment_threshold_settings";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-59;a:7:{s:4:"path";s:29:"admin/comment/configure/roles";s:5:"title";s:16:"moderation roles";s:8:"callback";s:21:"comment_role_settings";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-60;a:7:{s:4:"path";s:29:"admin/comment/configure/votes";s:5:"title";s:16:"moderation votes";s:8:"callback";s:21:"comment_vote_settings";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-61;a:7:{s:4:"path";s:12:"comment/edit";s:5:"title";s:12:"edit comment";s:8:"callback";s:12:"comment_edit";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-62;}i:-62;a:8:{s:4:"path";s:7:"comment";s:5:"title";s:16:"reply to comment";s:8:"callback";s:21:"comment_save_settings";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:8:"children";a:1:{i:0;i:-61;}s:3:"pid";i:1;}i:-64;a:7:{s:4:"path";s:20:"admin/filters/delete";s:5:"title";s:19:"delete input format";s:8:"callback";s:19:"filter_admin_delete";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"10";}i:-67;a:7:{s:4:"path";s:21:"admin/help/aggregator";s:5:"title";s:10:"aggregator";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-68;a:7:{s:4:"path";s:18:"admin/help/archive";s:5:"title";s:7:"archive";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-69;a:7:{s:4:"path";s:16:"admin/help/block";s:5:"title";s:5:"block";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-70;a:7:{s:4:"path";s:15:"admin/help/blog";s:5:"title";s:4:"blog";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-71;a:7:{s:4:"path";s:18:"admin/help/blogapi";s:5:"title";s:7:"blogapi";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-72;a:7:{s:4:"path";s:15:"admin/help/book";s:5:"title";s:4:"book";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-73;a:7:{s:4:"path";s:18:"admin/help/comment";s:5:"title";s:7:"comment";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-74;a:7:{s:4:"path";s:17:"admin/help/filter";s:5:"title";s:6:"filter";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-75;a:7:{s:4:"path";s:15:"admin/help/help";s:5:"title";s:4:"help";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-76;a:7:{s:4:"path";s:17:"admin/help/locale";s:5:"title";s:6:"locale";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-77;a:7:{s:4:"path";s:15:"admin/help/menu";s:5:"title";s:4:"menu";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-78;a:7:{s:4:"path";s:15:"admin/help/node";s:5:"title";s:4:"node";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-79;a:7:{s:4:"path";s:15:"admin/help/page";s:5:"title";s:4:"page";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-80;a:7:{s:4:"path";s:15:"admin/help/ping";s:5:"title";s:4:"ping";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-81;a:7:{s:4:"path";s:18:"admin/help/profile";s:5:"title";s:7:"profile";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-82;a:7:{s:4:"path";s:17:"admin/help/search";s:5:"title";s:6:"search";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-83;a:7:{s:4:"path";s:21:"admin/help/statistics";s:5:"title";s:10:"statistics";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-84;a:7:{s:4:"path";s:16:"admin/help/story";s:5:"title";s:5:"story";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-85;a:7:{s:4:"path";s:17:"admin/help/system";s:5:"title";s:6:"system";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-86;a:7:{s:4:"path";s:19:"admin/help/taxonomy";s:5:"title";s:8:"taxonomy";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-87;a:7:{s:4:"path";s:18:"admin/help/tracker";s:5:"title";s:7:"tracker";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-88;a:7:{s:4:"path";s:15:"admin/help/user";s:5:"title";s:4:"user";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-89;a:7:{s:4:"path";s:19:"admin/help/watchdog";s:5:"title";s:8:"watchdog";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-91;a:7:{s:4:"path";s:21:"admin/locale/language";s:5:"title";s:16:"manage languages";s:6:"access";b:0;s:6:"weight";i:-10;s:4:"type";i:640;s:3:"pid";s:2:"41";s:8:"children";a:5:{i:0;i:-93;i:1;i:-94;i:2;i:-95;i:3;i:-96;i:4;i:-97;}}i:-92;a:7:{s:4:"path";s:26:"admin/locale/string/search";s:5:"title";s:14:"manage strings";s:8:"callback";s:19:"locale_admin_string";s:6:"access";b:0;s:6:"weight";i:10;s:4:"type";i:128;s:3:"pid";s:2:"41";}i:-93;a:7:{s:4:"path";s:30:"admin/locale/language/overview";s:5:"title";s:4:"list";s:8:"callback";s:19:"locale_admin_manage";s:6:"access";b:0;s:6:"weight";i:0;s:4:"type";i:640;s:3:"pid";i:-91;}i:-94;a:7:{s:4:"path";s:25:"admin/locale/language/add";s:5:"title";s:12:"add language";s:8:"callback";s:23:"locale_admin_manage_add";s:6:"access";b:0;s:6:"weight";i:5;s:4:"type";i:128;s:3:"pid";i:-91;}i:-95;a:7:{s:4:"path";s:28:"admin/locale/language/import";s:5:"title";s:6:"import";s:8:"callback";s:19:"locale_admin_import";s:6:"access";b:0;s:6:"weight";i:10;s:4:"type";i:128;s:3:"pid";i:-91;}i:-96;a:7:{s:4:"path";s:28:"admin/locale/language/export";s:5:"title";s:6:"export";s:8:"callback";s:19:"locale_admin_export";s:6:"access";b:0;s:6:"weight";i:20;s:4:"type";i:128;s:3:"pid";i:-91;}i:-97;a:7:{s:4:"path";s:28:"admin/locale/language/delete";s:5:"title";s:7:"confirm";s:8:"callback";s:33:"locale_admin_manage_delete_screen";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-91;}i:-98;a:7:{s:4:"path";s:24:"admin/locale/string/edit";s:5:"title";s:4:"edit";s:8:"callback";s:19:"locale_admin_string";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"41";}i:-99;a:7:{s:4:"path";s:26:"admin/locale/string/delete";s:5:"title";s:6:"delete";s:8:"callback";s:19:"locale_admin_string";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"41";}i:-101;a:7:{s:4:"path";s:20:"admin/menu/item/edit";s:5:"title";s:14:"edit menu item";s:8:"callback";s:14:"menu_edit_item";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-102;a:7:{s:4:"path";s:21:"admin/menu/item/reset";s:5:"title";s:15:"reset menu item";s:8:"callback";s:15:"menu_reset_item";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-103;a:7:{s:4:"path";s:23:"admin/menu/item/disable";s:5:"title";s:17:"disable menu item";s:8:"callback";s:17:"menu_disable_item";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-104;a:7:{s:4:"path";s:22:"admin/menu/item/delete";s:5:"title";s:16:"delete menu item";s:8:"callback";s:16:"menu_delete_item";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-105;a:5:{s:4:"path";s:15:"admin/menu/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"13";}i:-106;a:7:{s:4:"path";s:19:"admin/menu/menu/add";s:5:"title";s:8:"add menu";s:8:"callback";s:13:"menu_add_menu";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-107;a:7:{s:4:"path";s:19:"admin/menu/item/add";s:5:"title";s:13:"add menu item";s:8:"callback";s:14:"menu_edit_item";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-108;a:7:{s:4:"path";s:16:"admin/menu/reset";s:5:"title";s:11:"reset menus";s:8:"callback";s:10:"menu_reset";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-110;a:5:{s:4:"path";s:17:"admin/node/action";s:5:"title";s:7:"content";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"14";}i:-111;a:5:{s:4:"path";s:19:"admin/node/overview";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"14";}i:-112;a:8:{s:4:"path";s:20:"admin/node/configure";s:5:"title";s:9:"configure";s:8:"callback";s:14:"node_configure";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"14";s:8:"children";a:2:{i:0;i:-113;i:1;i:-114;}}i:-113;a:5:{s:4:"path";s:29:"admin/node/configure/settings";s:5:"title";s:8:"settings";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-112;}i:-114;a:7:{s:4:"path";s:26:"admin/node/configure/types";s:5:"title";s:13:"content types";s:8:"callback";s:20:"node_types_configure";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-112;}i:-115;a:7:{s:4:"path";s:17:"admin/node/search";s:5:"title";s:6:"search";s:8:"callback";s:10:"node_admin";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"14";}i:-121;a:7:{s:4:"path";s:26:"admin/settings/profile/add";s:5:"title";s:9:"add field";s:8:"callback";s:17:"profile_admin_add";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"43";}i:-122;a:7:{s:4:"path";s:27:"admin/settings/profile/edit";s:5:"title";s:10:"edit field";s:8:"callback";s:18:"profile_admin_edit";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"43";}i:-123;a:7:{s:4:"path";s:29:"admin/settings/profile/delete";s:5:"title";s:12:"delete field";s:8:"callback";s:20:"profile_admin_delete";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"43";}i:-130;a:7:{s:4:"path";s:17:"admin/logs/access";s:5:"title";s:7:"details";s:8:"callback";s:21:"statistics_access_log";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"33";}i:-132;a:7:{s:4:"path";s:12:"system/files";s:5:"title";s:13:"file download";s:8:"callback";s:13:"file_download";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-133;a:6:{s:4:"path";s:11:"system/test";s:8:"callback";s:11:"system_test";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-136;a:7:{s:4:"path";s:19:"admin/themes/select";s:5:"title";s:4:"list";s:8:"callback";s:13:"system_themes";s:6:"access";b:0;s:4:"type";i:640;s:6:"weight";i:-1;s:3:"pid";s:2:"24";}i:-137;a:8:{s:4:"path";s:21:"admin/themes/settings";s:5:"title";s:9:"configure";s:8:"callback";s:21:"system_theme_settings";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"24";s:8:"children";a:6:{i:0;i:-138;i:1;i:-139;i:2;i:-140;i:3;i:-141;i:4;i:-142;i:5;i:-143;}}i:-138;a:7:{s:4:"path";s:28:"admin/themes/settings/global";s:5:"title";s:15:"global settings";s:8:"callback";s:21:"system_theme_settings";s:6:"access";b:0;s:4:"type";i:640;s:6:"weight";i:-1;s:3:"pid";i:-137;}i:-139;a:8:{s:4:"path";s:32:"admin/themes/settings/bluemarine";s:5:"title";s:10:"bluemarine";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:10:"bluemarine";}s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-140;a:8:{s:4:"path";s:31:"admin/themes/settings/chameleon";s:5:"title";s:9:"chameleon";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:9:"chameleon";}s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-141;a:8:{s:4:"path";s:28:"admin/themes/settings/marvin";s:5:"title";s:6:"marvin";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:6:"marvin";}s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-142;a:8:{s:4:"path";s:34:"admin/themes/settings/ninjapirates";s:5:"title";s:12:"ninjapirates";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:12:"ninjapirates";}s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-143;a:8:{s:4:"path";s:32:"admin/themes/settings/pushbutton";s:5:"title";s:10:"pushbutton";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:10:"pushbutton";}s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-150;a:5:{s:4:"path";s:19:"admin/taxonomy/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"29";}i:-151;a:7:{s:4:"path";s:29:"admin/taxonomy/add/vocabulary";s:5:"title";s:14:"add vocabulary";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-152;a:7:{s:4:"path";s:30:"admin/taxonomy/edit/vocabulary";s:5:"title";s:15:"edit vocabulary";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-153;a:7:{s:4:"path";s:33:"admin/taxonomy/preview/vocabulary";s:5:"title";s:18:"preview vocabulary";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-154;a:7:{s:4:"path";s:23:"admin/taxonomy/add/term";s:5:"title";s:8:"add term";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-155;a:7:{s:4:"path";s:24:"admin/taxonomy/edit/term";s:5:"title";s:9:"edit term";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-156;a:7:{s:4:"path";s:13:"taxonomy/term";s:5:"title";s:13:"taxonomy term";s:8:"callback";s:18:"taxonomy_term_page";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-158;a:8:{s:4:"path";s:4:"user";s:5:"title";s:12:"user account";s:8:"callback";s:9:"user_page";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;s:8:"children";a:4:{i:0;i:-159;i:1;i:-160;i:2;i:-161;i:3;i:-162;}}i:-159;a:5:{s:4:"path";s:10:"user/login";s:5:"title";s:6:"log in";s:4:"type";i:640;s:6:"weight";i:0;s:3:"pid";i:-158;}i:-160;a:7:{s:4:"path";s:13:"user/register";s:5:"title";s:8:"register";s:8:"callback";s:9:"user_page";s:6:"access";b:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-158;}i:-161;a:7:{s:4:"path";s:13:"user/password";s:5:"title";s:20:"request new password";s:8:"callback";s:9:"user_pass";s:6:"access";b:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-158;}i:-162;a:6:{s:4:"path";s:9:"user/help";s:5:"title";s:4:"help";s:8:"callback";s:14:"user_help_page";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-158;}i:-164;a:5:{s:4:"path";s:15:"admin/user/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"30";}i:-165;a:7:{s:4:"path";s:17:"admin/user/create";s:5:"title";s:8:"add user";s:8:"callback";s:10:"user_admin";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"30";}i:-166;a:7:{s:4:"path";s:20:"admin/user/configure";s:5:"title";s:9:"configure";s:8:"callback";s:14:"user_configure";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"30";}i:-168;a:7:{s:4:"path";s:24:"admin/access/permissions";s:5:"title";s:11:"permissions";s:8:"callback";s:15:"user_admin_perm";s:6:"access";b:0;s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"31";}i:-169;a:8:{s:4:"path";s:18:"admin/access/roles";s:5:"title";s:5:"roles";s:8:"callback";s:15:"user_admin_role";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"31";s:8:"children";a:1:{i:0;i:-170;}}i:-170;a:7:{s:4:"path";s:23:"admin/access/roles/edit";s:5:"title";s:9:"edit role";s:8:"callback";s:15:"user_admin_role";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-169;}i:-171;a:8:{s:4:"path";s:18:"admin/access/rules";s:5:"title";s:13:"account rules";s:8:"callback";s:17:"user_admin_access";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:10;s:3:"pid";s:2:"31";s:8:"children";a:5:{i:0;i:-172;i:1;i:-173;i:2;i:-174;i:3;i:-175;i:4;i:-176;}}i:-172;a:6:{s:4:"path";s:23:"admin/access/rules/list";s:5:"title";s:4:"list";s:6:"access";b:0;s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-171;}i:-173;a:7:{s:4:"path";s:22:"admin/access/rules/add";s:5:"title";s:8:"add rule";s:8:"callback";s:21:"user_admin_access_add";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-171;}i:-174;a:7:{s:4:"path";s:24:"admin/access/rules/check";s:5:"title";s:11:"check rules";s:8:"callback";s:23:"user_admin_access_check";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-171;}i:-175;a:7:{s:4:"path";s:23:"admin/access/rules/edit";s:5:"title";s:9:"edit rule";s:8:"callback";s:22:"user_admin_access_edit";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-171;}i:-176;a:7:{s:4:"path";s:25:"admin/access/rules/delete";s:5:"title";s:11:"delete rule";s:8:"callback";s:24:"user_admin_access_delete";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-171;}i:-177;a:7:{s:4:"path";s:17:"admin/user/search";s:5:"title";s:6:"search";s:8:"callback";s:10:"user_admin";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"30";}i:-180;a:7:{s:4:"path";s:16:"admin/logs/event";s:5:"title";s:7:"details";s:8:"callback";s:14:"watchdog_event";s:6:"access";b:0;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"33";}i:2;a:8:{s:4:"path";s:16:"admin/aggregator";s:5:"title";s:10:"aggregator";s:8:"callback";s:25:"aggregator_admin_overview";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:7:{i:0;i:-2;i:1;i:-3;i:2;i:-4;i:3;i:-5;i:4;i:-6;i:5;i:-7;i:6;i:-8;}s:3:"pid";s:2:"23";}i:3;a:8:{s:4:"path";s:10:"aggregator";s:5:"title";s:15:"news aggregator";s:8:"callback";s:20:"aggregator_page_last";s:6:"access";b:0;s:6:"weight";i:5;s:4:"type";i:22;s:8:"children";a:3:{i:0;i:-32;i:1;i:4;i:2;i:5;}s:3:"pid";i:1;}i:4;a:8:{s:4:"path";s:18:"aggregator/sources";s:5:"title";s:7:"sources";s:8:"callback";s:23:"aggregator_page_sources";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:1:"3";s:8:"children";a:4:{i:0;i:46;i:1;i:47;i:2;i:48;i:3;i:49;}}i:5;a:8:{s:4:"path";s:21:"aggregator/categories";s:5:"title";s:10:"categories";s:8:"callback";s:26:"aggregator_page_categories";s:6:"access";b:0;s:4:"type";i:28;s:6:"weight";i:0;s:3:"pid";s:1:"3";s:8:"children";a:1:{i:0;i:50;}}i:6;a:8:{s:4:"path";s:11:"admin/block";s:5:"title";s:6:"blocks";s:6:"access";b:0;s:8:"callback";s:11:"block_admin";s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-35;i:1;i:-36;i:2;i:-37;i:3;i:-38;}s:3:"pid";s:2:"23";}i:7;a:6:{s:4:"path";s:13:"node/add/blog";s:5:"title";s:10:"blog entry";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:8;a:9:{s:4:"path";s:4:"blog";s:5:"title";s:5:"Blogs";s:8:"callback";s:9:"blog_page";s:6:"access";b:1;s:4:"type";s:2:"54";s:6:"weight";s:1:"0";s:11:"description";s:9:"blogggg!!";s:3:"pid";s:1:"1";s:8:"children";a:1:{i:0;i:-41;}}i:9;a:8:{s:4:"path";s:13:"admin/comment";s:5:"title";s:8:"comments";s:8:"callback";s:22:"comment_admin_overview";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-50;i:1;i:-51;i:2;i:-52;i:3;i:-53;}s:3:"pid";s:2:"23";}i:10;a:8:{s:4:"path";s:13:"admin/filters";s:5:"title";s:13:"input formats";s:8:"callback";s:21:"filter_admin_overview";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:1:{i:0;i:-64;}s:3:"pid";s:2:"23";}i:11;a:7:{s:4:"path";s:11:"filter/tips";s:5:"title";s:12:"compose tips";s:8:"callback";s:16:"filter_tips_long";s:6:"access";b:1;s:4:"type";i:16;s:6:"weight";i:0;s:3:"pid";i:1;}i:12;a:8:{s:4:"path";s:10:"admin/help";s:5:"title";s:4:"help";s:8:"callback";s:9:"help_main";s:6:"access";b:0;s:6:"weight";i:9;s:4:"type";i:22;s:8:"children";a:23:{i:0;i:-67;i:1;i:-68;i:2;i:-69;i:3;i:-70;i:4;i:-71;i:5;i:-72;i:6;i:-73;i:7;i:-74;i:8;i:-75;i:9;i:-76;i:10;i:-77;i:11;i:-78;i:12;i:-79;i:13;i:-80;i:14;i:-81;i:15;i:-82;i:16;i:-83;i:17;i:-84;i:18;i:-85;i:19;i:-86;i:20;i:-87;i:21;i:-88;i:22;i:-89;}s:3:"pid";s:2:"23";}i:13;a:8:{s:4:"path";s:10:"admin/menu";s:5:"title";s:5:"menus";s:8:"callback";s:13:"menu_overview";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:8:{i:0;i:-101;i:1;i:-102;i:2;i:-103;i:3;i:-104;i:4;i:-105;i:5;i:-106;i:6;i:-107;i:7;i:-108;}s:3:"pid";s:2:"23";}i:14;a:8:{s:4:"path";s:10:"admin/node";s:5:"title";s:7:"content";s:8:"callback";s:10:"node_admin";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:5:{i:0;i:-110;i:1;i:-111;i:2;i:-112;i:3;i:-115;i:4;i:37;}s:3:"pid";s:2:"23";}i:15;a:8:{s:4:"path";s:4:"node";s:5:"title";s:7:"content";s:8:"callback";s:9:"node_page";s:6:"access";b:1;s:4:"type";i:16;s:6:"weight";i:0;s:3:"pid";i:1;s:8:"children";a:1:{i:0;i:16;}}i:16;a:8:{s:4:"path";s:8:"node/add";s:5:"title";s:14:"create content";s:8:"callback";s:9:"node_page";s:6:"access";b:1;s:4:"type";i:28;s:6:"weight";i:1;s:8:"children";a:4:{i:0;i:7;i:1;i:17;i:2;i:22;i:3;i:36;}s:3:"pid";s:2:"15";}i:17;a:6:{s:4:"path";s:13:"node/add/page";s:5:"title";s:4:"page";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:18;a:7:{s:4:"path";s:15:"admin/logs/hits";s:5:"title";s:11:"recent hits";s:8:"callback";s:22:"statistics_recent_hits";s:6:"access";b:0;s:6:"weight";i:3;s:4:"type";i:22;s:3:"pid";s:2:"33";}i:19;a:7:{s:4:"path";s:16:"admin/logs/pages";s:5:"title";s:9:"top pages";s:8:"callback";s:20:"statistics_top_pages";s:6:"access";b:0;s:6:"weight";i:1;s:4:"type";i:22;s:3:"pid";s:2:"33";}i:20;a:7:{s:4:"path";s:16:"admin/logs/users";s:5:"title";s:9:"top users";s:8:"callback";s:20:"statistics_top_users";s:6:"access";b:0;s:6:"weight";i:2;s:4:"type";i:22;s:3:"pid";s:2:"33";}i:21;a:7:{s:4:"path";s:20:"admin/logs/referrers";s:5:"title";s:9:"referrers";s:8:"callback";s:24:"statistics_top_referrers";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"33";}i:22;a:6:{s:4:"path";s:14:"node/add/story";s:5:"title";s:5:"story";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:23;a:8:{s:4:"path";s:5:"admin";s:5:"title";s:10:"administer";s:6:"access";b:0;s:8:"callback";s:17:"system_admin_page";s:6:"weight";i:9;s:4:"type";i:22;s:8:"children";a:15:{i:0;i:2;i:1;i:6;i:2;i:9;i:3;i:10;i:4;i:12;i:5;i:13;i:6;i:14;i:7;i:24;i:8;i:25;i:9;i:28;i:10;i:29;i:11;i:30;i:12;i:31;i:13;i:33;i:14;i:41;}s:3:"pid";i:1;}i:24;a:8:{s:4:"path";s:12:"admin/themes";s:5:"title";s:6:"themes";s:8:"callback";s:13:"system_themes";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:2:{i:0;i:-136;i:1;i:-137;}s:3:"pid";s:2:"23";}i:25;a:8:{s:4:"path";s:14:"admin/settings";s:5:"title";s:8:"settings";s:8:"callback";s:20:"system_site_settings";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"23";s:8:"children";a:5:{i:0;i:26;i:1;i:27;i:2;i:34;i:3;i:43;i:4;i:45;}}i:26;a:5:{s:4:"path";s:25:"admin/settings/aggregator";s:5:"title";s:10:"aggregator";s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:27;a:5:{s:4:"path";s:25:"admin/settings/statistics";s:5:"title";s:10:"statistics";s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:28;a:7:{s:4:"path";s:13:"admin/modules";s:5:"title";s:7:"modules";s:8:"callback";s:14:"system_modules";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"23";}i:29;a:8:{s:4:"path";s:14:"admin/taxonomy";s:5:"title";s:10:"categories";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:6:{i:0;i:-150;i:1;i:-151;i:2;i:-152;i:3;i:-153;i:4;i:-154;i:5;i:-155;}s:3:"pid";s:2:"23";}i:30;a:8:{s:4:"path";s:10:"admin/user";s:5:"title";s:5:"users";s:8:"callback";s:10:"user_admin";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-164;i:1;i:-165;i:2;i:-166;i:3;i:-177;}s:3:"pid";s:2:"23";}i:31;a:8:{s:4:"path";s:12:"admin/access";s:5:"title";s:14:"access control";s:8:"callback";s:15:"user_admin_perm";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-168;i:1;i:-169;i:2;i:-171;}s:3:"pid";s:2:"23";}i:32;a:7:{s:4:"path";s:6:"logout";s:5:"title";s:7:"log out";s:6:"access";b:0;s:8:"callback";s:11:"user_logout";s:6:"weight";i:10;s:4:"type";i:22;s:3:"pid";i:1;}i:33;a:8:{s:4:"path";s:10:"admin/logs";s:5:"title";s:4:"logs";s:8:"callback";s:17:"watchdog_overview";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:6:{i:0;i:-130;i:1;i:-180;i:2;i:18;i:3;i:19;i:4;i:20;i:5;i:21;}s:3:"pid";s:2:"23";}i:34;a:5:{s:4:"path";s:22:"admin/settings/blogapi";s:5:"title";s:7:"blogapi";s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:35;a:8:{s:4:"path";s:7:"archive";s:5:"title";s:8:"archives";s:6:"access";b:1;s:8:"callback";s:12:"archive_page";s:4:"type";s:2:"54";s:6:"weight";s:1:"0";s:11:"description";s:12:"old archives";s:3:"pid";s:1:"1";}i:36;a:6:{s:4:"path";s:13:"node/add/book";s:5:"title";s:9:"book page";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:37;a:8:{s:4:"path";s:15:"admin/node/book";s:5:"title";s:5:"books";s:8:"callback";s:10:"book_admin";s:6:"access";b:0;s:6:"weight";i:4;s:4:"type";i:22;s:3:"pid";s:2:"14";s:8:"children";a:1:{i:0;i:38;}}i:38;a:7:{s:4:"path";s:22:"admin/node/book/orphan";s:5:"title";s:12:"orphan pages";s:8:"callback";s:17:"book_admin_orphan";s:6:"access";b:0;s:6:"weight";i:8;s:4:"type";i:22;s:3:"pid";s:2:"37";}i:39;a:8:{s:4:"path";s:4:"book";s:5:"title";s:5:"books";s:8:"callback";s:11:"book_render";s:6:"access";b:1;s:4:"type";i:16;s:6:"weight";i:0;s:8:"children";a:1:{i:0;i:-48;}s:3:"pid";i:1;}i:40;a:7:{s:4:"path";s:7:"tracker";s:5:"title";s:12:"recent posts";s:8:"callback";s:12:"tracker_page";s:6:"access";b:1;s:6:"weight";i:1;s:4:"type";i:22;s:3:"pid";i:1;}i:41;a:8:{s:4:"path";s:12:"admin/locale";s:5:"title";s:12:"localization";s:8:"callback";s:19:"locale_admin_manage";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-91;i:1;i:-92;i:2;i:-98;i:3;i:-99;}s:3:"pid";s:2:"23";}i:42;a:7:{s:4:"path";s:7:"profile";s:5:"title";s:9:"user list";s:8:"callback";s:14:"profile_browse";s:6:"access";b:0;s:4:"type";i:16;s:6:"weight";i:0;s:3:"pid";i:1;}i:43;a:8:{s:4:"path";s:22:"admin/settings/profile";s:5:"title";s:8:"profiles";s:8:"callback";s:22:"profile_admin_overview";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-121;i:1;i:-122;i:2;i:-123;}s:3:"pid";s:2:"25";}i:44;a:8:{s:4:"path";s:6:"search";s:5:"title";s:6:"search";s:8:"callback";s:11:"search_view";s:6:"access";b:0;s:4:"type";s:2:"54";s:6:"weight";s:1:"0";s:11:"description";s:18:"search for an item";s:3:"pid";s:1:"1";}i:45;a:7:{s:4:"path";s:21:"admin/settings/search";s:5:"title";s:6:"search";s:8:"callback";s:12:"search_admin";s:4:"type";i:22;s:6:"access";b:0;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:46;a:8:{s:4:"path";s:20:"aggregator/sources/1";s:5:"title";s:11:"Google News";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-13;i:1;i:-14;i:2;i:-15;}s:3:"pid";s:1:"4";}i:47;a:8:{s:4:"path";s:20:"aggregator/sources/2";s:5:"title";s:13:"The Onion.com";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-25;i:1;i:-26;i:2;i:-27;}s:3:"pid";s:1:"4";}i:48;a:8:{s:4:"path";s:20:"aggregator/sources/3";s:5:"title";s:25:"Source Forge Project News";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-21;i:1;i:-22;i:2;i:-23;}s:3:"pid";s:1:"4";}i:49;a:8:{s:4:"path";s:20:"aggregator/sources/4";s:5:"title";s:8:"Slashdot";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-17;i:1;i:-18;i:2;i:-19;}s:3:"pid";s:1:"4";}i:50;a:8:{s:4:"path";s:23:"aggregator/categories/1";s:5:"title";s:10:"Technology";s:8:"callback";s:24:"aggregator_page_category";s:6:"access";b:0;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-29;i:1;i:-30;i:2;i:-31;}s:3:"pid";s:1:"5";}i:57;a:8:{s:4:"path";s:37:"http://www.dxdstudio.com/npn/?q=about";s:6:"access";b:1;s:8:"callback";s:0:"";s:5:"title";s:5:"About";s:11:"description";s:68:"About Enlightenment, modules and the crew that helps mantain it all.";s:3:"pid";s:1:"1";s:6:"weight";s:1:"0";s:4:"type";s:3:"118";}}s:7:"visible";a:6:{i:57;a:5:{s:5:"title";s:5:"About";s:4:"path";s:37:"http://www.dxdstudio.com/npn/?q=about";s:8:"children";a:0:{}s:4:"type";s:3:"118";s:3:"pid";i:1;}i:8;a:5:{s:5:"title";s:5:"Blogs";s:4:"path";s:4:"blog";s:8:"children";a:0:{}s:4:"type";s:2:"54";s:3:"pid";i:1;}i:35;a:5:{s:5:"title";s:8:"archives";s:4:"path";s:7:"archive";s:8:"children";a:0:{}s:4:"type";s:2:"54";s:3:"pid";i:1;}i:40;a:5:{s:5:"title";s:12:"recent posts";s:4:"path";s:7:"tracker";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:1;}i:1;a:5:{s:5:"title";s:10:"Navigation";s:4:"path";s:0:"";s:8:"children";a:4:{i:0;i:57;i:1;i:8;i:2;i:35;i:3;i:40;}s:4:"type";i:3;s:3:"pid";i:0;}i:0;a:4:{s:5:"title";s:0:"";s:4:"path";s:0:"";s:8:"children";a:1:{i:0;i:1;}s:4:"type";i:1;}}}', 1133748533, 1133662133, '');
INSERT INTO `cache` VALUES ('menu:1:en', 'a:3:{s:10:"path index";a:183:{s:16:"admin/aggregator";s:1:"2";s:26:"admin/aggregator/edit/feed";i:-2;s:30:"admin/aggregator/edit/category";i:-3;s:23:"admin/aggregator/remove";i:-4;s:23:"admin/aggregator/update";i:-5;s:21:"admin/aggregator/list";i:-6;s:25:"admin/aggregator/add/feed";i:-7;s:29:"admin/aggregator/add/category";i:-8;s:10:"aggregator";s:1:"3";s:18:"aggregator/sources";s:1:"4";s:21:"aggregator/categories";s:1:"5";s:20:"aggregator/sources/1";s:2:"46";s:25:"aggregator/sources/1/view";i:-13;s:31:"aggregator/sources/1/categorize";i:-14;s:30:"aggregator/sources/1/configure";i:-15;s:20:"aggregator/sources/4";s:2:"49";s:25:"aggregator/sources/4/view";i:-17;s:31:"aggregator/sources/4/categorize";i:-18;s:30:"aggregator/sources/4/configure";i:-19;s:20:"aggregator/sources/3";s:2:"48";s:25:"aggregator/sources/3/view";i:-21;s:31:"aggregator/sources/3/categorize";i:-22;s:30:"aggregator/sources/3/configure";i:-23;s:20:"aggregator/sources/2";s:2:"47";s:25:"aggregator/sources/2/view";i:-25;s:31:"aggregator/sources/2/categorize";i:-26;s:30:"aggregator/sources/2/configure";i:-27;s:23:"aggregator/categories/1";s:2:"50";s:28:"aggregator/categories/1/view";i:-29;s:34:"aggregator/categories/1/categorize";i:-30;s:33:"aggregator/categories/1/configure";i:-31;s:15:"aggregator/opml";i:-32;s:7:"archive";s:2:"35";s:11:"admin/block";s:1:"6";s:16:"admin/block/list";i:-35;s:21:"admin/block/configure";i:-36;s:18:"admin/block/delete";i:-37;s:15:"admin/block/add";i:-38;s:13:"node/add/blog";s:1:"7";s:4:"blog";s:1:"8";s:6:"blog/1";i:-41;s:7:"blogapi";i:-42;s:4:"book";s:2:"39";s:13:"node/add/book";s:2:"36";s:15:"admin/node/book";s:2:"37";s:22:"admin/node/book/orphan";s:2:"38";s:10:"book/print";i:-48;s:13:"admin/comment";s:1:"9";s:18:"admin/comment/edit";i:-50;s:20:"admin/comment/delete";i:-51;s:18:"admin/comment/list";i:-52;s:23:"admin/comment/configure";i:-53;s:22:"admin/comment/list/new";i:-54;s:27:"admin/comment/list/approval";i:-55;s:32:"admin/comment/configure/settings";i:-56;s:30:"admin/comment/configure/matrix";i:-57;s:34:"admin/comment/configure/thresholds";i:-58;s:29:"admin/comment/configure/roles";i:-59;s:29:"admin/comment/configure/votes";i:-60;s:12:"comment/edit";i:-61;s:7:"comment";i:-62;s:13:"admin/filters";s:2:"10";s:20:"admin/filters/delete";i:-64;s:11:"filter/tips";s:2:"11";s:10:"admin/help";s:2:"12";s:21:"admin/help/aggregator";i:-67;s:18:"admin/help/archive";i:-68;s:16:"admin/help/block";i:-69;s:15:"admin/help/blog";i:-70;s:18:"admin/help/blogapi";i:-71;s:15:"admin/help/book";i:-72;s:18:"admin/help/comment";i:-73;s:17:"admin/help/filter";i:-74;s:15:"admin/help/help";i:-75;s:17:"admin/help/locale";i:-76;s:15:"admin/help/menu";i:-77;s:15:"admin/help/node";i:-78;s:15:"admin/help/page";i:-79;s:15:"admin/help/ping";i:-80;s:18:"admin/help/profile";i:-81;s:17:"admin/help/search";i:-82;s:21:"admin/help/statistics";i:-83;s:16:"admin/help/story";i:-84;s:17:"admin/help/system";i:-85;s:19:"admin/help/taxonomy";i:-86;s:18:"admin/help/tracker";i:-87;s:15:"admin/help/user";i:-88;s:19:"admin/help/watchdog";i:-89;s:12:"admin/locale";s:2:"41";s:21:"admin/locale/language";i:-91;s:26:"admin/locale/string/search";i:-92;s:30:"admin/locale/language/overview";i:-93;s:25:"admin/locale/language/add";i:-94;s:28:"admin/locale/language/import";i:-95;s:28:"admin/locale/language/export";i:-96;s:28:"admin/locale/language/delete";i:-97;s:24:"admin/locale/string/edit";i:-98;s:26:"admin/locale/string/delete";i:-99;s:10:"admin/menu";s:2:"13";s:20:"admin/menu/item/edit";i:-101;s:21:"admin/menu/item/reset";i:-102;s:23:"admin/menu/item/disable";i:-103;s:22:"admin/menu/item/delete";i:-104;s:15:"admin/menu/list";i:-105;s:19:"admin/menu/menu/add";i:-106;s:19:"admin/menu/item/add";i:-107;s:16:"admin/menu/reset";i:-108;s:10:"admin/node";s:2:"14";s:17:"admin/node/action";i:-110;s:19:"admin/node/overview";i:-111;s:20:"admin/node/configure";i:-112;s:29:"admin/node/configure/settings";i:-113;s:26:"admin/node/configure/types";i:-114;s:17:"admin/node/search";i:-115;s:4:"node";s:2:"15";s:8:"node/add";s:2:"16";s:13:"node/add/page";s:2:"17";s:7:"profile";s:2:"42";s:22:"admin/settings/profile";s:2:"43";s:26:"admin/settings/profile/add";i:-121;s:27:"admin/settings/profile/edit";i:-122;s:29:"admin/settings/profile/delete";i:-123;s:6:"search";s:2:"44";s:21:"admin/settings/search";s:2:"45";s:15:"admin/logs/hits";s:2:"18";s:16:"admin/logs/pages";s:2:"19";s:16:"admin/logs/users";s:2:"20";s:20:"admin/logs/referrers";s:2:"21";s:17:"admin/logs/access";i:-130;s:14:"node/add/story";s:2:"22";s:12:"system/files";i:-132;s:11:"system/test";i:-133;s:5:"admin";s:2:"23";s:12:"admin/themes";s:2:"24";s:19:"admin/themes/select";i:-136;s:21:"admin/themes/settings";i:-137;s:28:"admin/themes/settings/global";i:-138;s:32:"admin/themes/settings/bluemarine";i:-139;s:31:"admin/themes/settings/chameleon";i:-140;s:28:"admin/themes/settings/marvin";i:-141;s:34:"admin/themes/settings/ninjapirates";i:-142;s:32:"admin/themes/settings/pushbutton";i:-143;s:14:"admin/settings";s:2:"25";s:25:"admin/settings/aggregator";s:2:"26";s:22:"admin/settings/blogapi";s:2:"34";s:25:"admin/settings/statistics";s:2:"27";s:13:"admin/modules";s:2:"28";s:14:"admin/taxonomy";s:2:"29";s:19:"admin/taxonomy/list";i:-150;s:29:"admin/taxonomy/add/vocabulary";i:-151;s:30:"admin/taxonomy/edit/vocabulary";i:-152;s:33:"admin/taxonomy/preview/vocabulary";i:-153;s:23:"admin/taxonomy/add/term";i:-154;s:24:"admin/taxonomy/edit/term";i:-155;s:13:"taxonomy/term";i:-156;s:7:"tracker";s:2:"40";s:11:"tracker/all";i:-158;s:9:"tracker/1";i:-159;s:4:"user";i:-160;s:10:"user/login";i:-161;s:13:"user/register";i:-162;s:13:"user/password";i:-163;s:9:"user/help";i:-164;s:10:"admin/user";s:2:"30";s:15:"admin/user/list";i:-166;s:17:"admin/user/create";i:-167;s:20:"admin/user/configure";i:-168;s:12:"admin/access";s:2:"31";s:24:"admin/access/permissions";i:-170;s:18:"admin/access/roles";i:-171;s:23:"admin/access/roles/edit";i:-172;s:18:"admin/access/rules";i:-173;s:23:"admin/access/rules/list";i:-174;s:22:"admin/access/rules/add";i:-175;s:24:"admin/access/rules/check";i:-176;s:23:"admin/access/rules/edit";i:-177;s:25:"admin/access/rules/delete";i:-178;s:17:"admin/user/search";i:-179;s:6:"user/1";i:-180;s:6:"logout";s:2:"32";s:10:"admin/logs";s:2:"33";s:16:"admin/logs/event";i:-183;s:37:"http://www.dxdstudio.com/npn/?q=about";s:2:"57";}s:5:"items";a:185:{i:0;a:5:{s:4:"path";s:0:"";s:5:"title";s:0:"";s:4:"type";i:1;s:3:"pid";i:1;s:8:"children";a:1:{i:0;i:1;}}i:1;a:7:{s:3:"pid";i:0;s:4:"path";s:0:"";s:5:"title";s:10:"Navigation";s:6:"weight";i:-50;s:6:"access";b:1;s:4:"type";i:3;s:8:"children";a:18:{i:0;i:-42;i:1;i:-62;i:2;i:-132;i:3;i:-133;i:4;i:-156;i:5;i:-160;i:6;i:3;i:7;i:8;i:8;i:11;i:9;i:15;i:10;i:23;i:11;i:32;i:12;i:35;i:13;i:39;i:14;i:40;i:15;i:42;i:16;i:44;i:17;i:57;}}i:-2;a:7:{s:4:"path";s:26:"admin/aggregator/edit/feed";s:5:"title";s:9:"edit feed";s:8:"callback";s:26:"aggregator_admin_edit_feed";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-3;a:7:{s:4:"path";s:30:"admin/aggregator/edit/category";s:5:"title";s:13:"edit category";s:8:"callback";s:30:"aggregator_admin_edit_category";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-4;a:7:{s:4:"path";s:23:"admin/aggregator/remove";s:5:"title";s:12:"remove items";s:8:"callback";s:28:"aggregator_admin_remove_feed";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-5;a:7:{s:4:"path";s:23:"admin/aggregator/update";s:5:"title";s:12:"update items";s:8:"callback";s:29:"aggregator_admin_refresh_feed";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-6;a:5:{s:4:"path";s:21:"admin/aggregator/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:1:"2";}i:-7;a:7:{s:4:"path";s:25:"admin/aggregator/add/feed";s:5:"title";s:8:"add feed";s:8:"callback";s:26:"aggregator_admin_edit_feed";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-8;a:7:{s:4:"path";s:29:"admin/aggregator/add/category";s:5:"title";s:12:"add category";s:8:"callback";s:30:"aggregator_admin_edit_category";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"2";}i:-13;a:5:{s:4:"path";s:25:"aggregator/sources/1/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"46";}i:-14;a:7:{s:4:"path";s:31:"aggregator/sources/1/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"46";}i:-15;a:7:{s:4:"path";s:30:"aggregator/sources/1/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"46";}i:-17;a:5:{s:4:"path";s:25:"aggregator/sources/4/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"49";}i:-18;a:7:{s:4:"path";s:31:"aggregator/sources/4/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"49";}i:-19;a:7:{s:4:"path";s:30:"aggregator/sources/4/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"49";}i:-21;a:5:{s:4:"path";s:25:"aggregator/sources/3/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"48";}i:-22;a:7:{s:4:"path";s:31:"aggregator/sources/3/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"48";}i:-23;a:7:{s:4:"path";s:30:"aggregator/sources/3/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"48";}i:-25;a:5:{s:4:"path";s:25:"aggregator/sources/2/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"47";}i:-26;a:7:{s:4:"path";s:31:"aggregator/sources/2/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"47";}i:-27;a:7:{s:4:"path";s:30:"aggregator/sources/2/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"47";}i:-29;a:5:{s:4:"path";s:28:"aggregator/categories/1/view";s:5:"title";s:4:"view";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"50";}i:-30;a:7:{s:4:"path";s:34:"aggregator/categories/1/categorize";s:5:"title";s:10:"categorize";s:8:"callback";s:24:"aggregator_page_category";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"50";}i:-31;a:7:{s:4:"path";s:33:"aggregator/categories/1/configure";s:5:"title";s:9:"configure";s:8:"callback";s:15:"aggregator_edit";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:1;s:3:"pid";s:2:"50";}i:-32;a:7:{s:4:"path";s:15:"aggregator/opml";s:5:"title";s:4:"opml";s:8:"callback";s:20:"aggregator_page_opml";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"3";}i:-35;a:5:{s:4:"path";s:16:"admin/block/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:1:"6";}i:-36;a:7:{s:4:"path";s:21:"admin/block/configure";s:5:"title";s:15:"configure block";s:6:"access";i:1;s:8:"callback";s:21:"block_admin_configure";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"6";}i:-37;a:7:{s:4:"path";s:18:"admin/block/delete";s:5:"title";s:12:"delete block";s:6:"access";i:1;s:8:"callback";s:16:"block_box_delete";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"6";}i:-38;a:7:{s:4:"path";s:15:"admin/block/add";s:5:"title";s:9:"add block";s:6:"access";i:1;s:8:"callback";s:13:"block_box_add";s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"6";}i:-41;a:6:{s:4:"path";s:6:"blog/1";s:5:"title";s:7:"my blog";s:6:"access";i:1;s:4:"type";i:6;s:6:"weight";i:0;s:3:"pid";s:1:"8";}i:-42;a:7:{s:4:"path";s:7:"blogapi";s:5:"title";s:3:"RSD";s:8:"callback";s:15:"blogapi_blogapi";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-48;a:7:{s:4:"path";s:10:"book/print";s:5:"title";s:24:"printer-friendly version";s:8:"callback";s:10:"book_print";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"39";}i:-50;a:7:{s:4:"path";s:18:"admin/comment/edit";s:5:"title";s:12:"edit comment";s:8:"callback";s:18:"comment_admin_edit";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"9";}i:-51;a:7:{s:4:"path";s:20:"admin/comment/delete";s:5:"title";s:14:"delete comment";s:8:"callback";s:14:"comment_delete";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:1:"9";}i:-52;a:6:{s:4:"path";s:18:"admin/comment/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:1:"9";s:8:"children";a:2:{i:0;i:-54;i:1;i:-55;}}i:-53;a:8:{s:4:"path";s:23:"admin/comment/configure";s:5:"title";s:9:"configure";s:8:"callback";s:17:"comment_configure";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:1:"9";s:8:"children";a:5:{i:0;i:-56;i:1;i:-57;i:2;i:-58;i:3;i:-59;i:4;i:-60;}}i:-54;a:5:{s:4:"path";s:22:"admin/comment/list/new";s:5:"title";s:12:"new comments";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-52;}i:-55;a:8:{s:4:"path";s:27:"admin/comment/list/approval";s:5:"title";s:14:"approval queue";s:8:"callback";s:22:"comment_admin_overview";s:6:"access";i:1;s:18:"callback arguments";s:8:"approval";s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-52;}i:-56;a:5:{s:4:"path";s:32:"admin/comment/configure/settings";s:5:"title";s:8:"settings";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-53;}i:-57;a:7:{s:4:"path";s:30:"admin/comment/configure/matrix";s:5:"title";s:17:"moderation matrix";s:8:"callback";s:23:"comment_matrix_settings";s:6:"access";b:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-58;a:7:{s:4:"path";s:34:"admin/comment/configure/thresholds";s:5:"title";s:21:"moderation thresholds";s:8:"callback";s:26:"comment_threshold_settings";s:6:"access";b:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-59;a:7:{s:4:"path";s:29:"admin/comment/configure/roles";s:5:"title";s:16:"moderation roles";s:8:"callback";s:21:"comment_role_settings";s:6:"access";b:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-60;a:7:{s:4:"path";s:29:"admin/comment/configure/votes";s:5:"title";s:16:"moderation votes";s:8:"callback";s:21:"comment_vote_settings";s:6:"access";b:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-53;}i:-61;a:7:{s:4:"path";s:12:"comment/edit";s:5:"title";s:12:"edit comment";s:8:"callback";s:12:"comment_edit";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-62;}i:-62;a:8:{s:4:"path";s:7:"comment";s:5:"title";s:16:"reply to comment";s:8:"callback";s:21:"comment_save_settings";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:8:"children";a:1:{i:0;i:-61;}s:3:"pid";i:1;}i:-64;a:7:{s:4:"path";s:20:"admin/filters/delete";s:5:"title";s:19:"delete input format";s:8:"callback";s:19:"filter_admin_delete";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"10";}i:-67;a:7:{s:4:"path";s:21:"admin/help/aggregator";s:5:"title";s:10:"aggregator";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-68;a:7:{s:4:"path";s:18:"admin/help/archive";s:5:"title";s:7:"archive";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-69;a:7:{s:4:"path";s:16:"admin/help/block";s:5:"title";s:5:"block";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-70;a:7:{s:4:"path";s:15:"admin/help/blog";s:5:"title";s:4:"blog";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-71;a:7:{s:4:"path";s:18:"admin/help/blogapi";s:5:"title";s:7:"blogapi";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-72;a:7:{s:4:"path";s:15:"admin/help/book";s:5:"title";s:4:"book";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-73;a:7:{s:4:"path";s:18:"admin/help/comment";s:5:"title";s:7:"comment";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-74;a:7:{s:4:"path";s:17:"admin/help/filter";s:5:"title";s:6:"filter";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-75;a:7:{s:4:"path";s:15:"admin/help/help";s:5:"title";s:4:"help";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-76;a:7:{s:4:"path";s:17:"admin/help/locale";s:5:"title";s:6:"locale";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-77;a:7:{s:4:"path";s:15:"admin/help/menu";s:5:"title";s:4:"menu";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-78;a:7:{s:4:"path";s:15:"admin/help/node";s:5:"title";s:4:"node";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-79;a:7:{s:4:"path";s:15:"admin/help/page";s:5:"title";s:4:"page";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-80;a:7:{s:4:"path";s:15:"admin/help/ping";s:5:"title";s:4:"ping";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-81;a:7:{s:4:"path";s:18:"admin/help/profile";s:5:"title";s:7:"profile";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-82;a:7:{s:4:"path";s:17:"admin/help/search";s:5:"title";s:6:"search";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-83;a:7:{s:4:"path";s:21:"admin/help/statistics";s:5:"title";s:10:"statistics";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-84;a:7:{s:4:"path";s:16:"admin/help/story";s:5:"title";s:5:"story";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-85;a:7:{s:4:"path";s:17:"admin/help/system";s:5:"title";s:6:"system";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-86;a:7:{s:4:"path";s:19:"admin/help/taxonomy";s:5:"title";s:8:"taxonomy";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-87;a:7:{s:4:"path";s:18:"admin/help/tracker";s:5:"title";s:7:"tracker";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-88;a:7:{s:4:"path";s:15:"admin/help/user";s:5:"title";s:4:"user";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-89;a:7:{s:4:"path";s:19:"admin/help/watchdog";s:5:"title";s:8:"watchdog";s:8:"callback";s:9:"help_page";s:4:"type";i:4;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"12";}i:-91;a:7:{s:4:"path";s:21:"admin/locale/language";s:5:"title";s:16:"manage languages";s:6:"access";i:1;s:6:"weight";i:-10;s:4:"type";i:640;s:3:"pid";s:2:"41";s:8:"children";a:5:{i:0;i:-93;i:1;i:-94;i:2;i:-95;i:3;i:-96;i:4;i:-97;}}i:-92;a:7:{s:4:"path";s:26:"admin/locale/string/search";s:5:"title";s:14:"manage strings";s:8:"callback";s:19:"locale_admin_string";s:6:"access";i:1;s:6:"weight";i:10;s:4:"type";i:128;s:3:"pid";s:2:"41";}i:-93;a:7:{s:4:"path";s:30:"admin/locale/language/overview";s:5:"title";s:4:"list";s:8:"callback";s:19:"locale_admin_manage";s:6:"access";i:1;s:6:"weight";i:0;s:4:"type";i:640;s:3:"pid";i:-91;}i:-94;a:7:{s:4:"path";s:25:"admin/locale/language/add";s:5:"title";s:12:"add language";s:8:"callback";s:23:"locale_admin_manage_add";s:6:"access";i:1;s:6:"weight";i:5;s:4:"type";i:128;s:3:"pid";i:-91;}i:-95;a:7:{s:4:"path";s:28:"admin/locale/language/import";s:5:"title";s:6:"import";s:8:"callback";s:19:"locale_admin_import";s:6:"access";i:1;s:6:"weight";i:10;s:4:"type";i:128;s:3:"pid";i:-91;}i:-96;a:7:{s:4:"path";s:28:"admin/locale/language/export";s:5:"title";s:6:"export";s:8:"callback";s:19:"locale_admin_export";s:6:"access";i:1;s:6:"weight";i:20;s:4:"type";i:128;s:3:"pid";i:-91;}i:-97;a:7:{s:4:"path";s:28:"admin/locale/language/delete";s:5:"title";s:7:"confirm";s:8:"callback";s:33:"locale_admin_manage_delete_screen";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-91;}i:-98;a:7:{s:4:"path";s:24:"admin/locale/string/edit";s:5:"title";s:4:"edit";s:8:"callback";s:19:"locale_admin_string";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"41";}i:-99;a:7:{s:4:"path";s:26:"admin/locale/string/delete";s:5:"title";s:6:"delete";s:8:"callback";s:19:"locale_admin_string";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"41";}i:-101;a:7:{s:4:"path";s:20:"admin/menu/item/edit";s:5:"title";s:14:"edit menu item";s:8:"callback";s:14:"menu_edit_item";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-102;a:7:{s:4:"path";s:21:"admin/menu/item/reset";s:5:"title";s:15:"reset menu item";s:8:"callback";s:15:"menu_reset_item";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-103;a:7:{s:4:"path";s:23:"admin/menu/item/disable";s:5:"title";s:17:"disable menu item";s:8:"callback";s:17:"menu_disable_item";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-104;a:7:{s:4:"path";s:22:"admin/menu/item/delete";s:5:"title";s:16:"delete menu item";s:8:"callback";s:16:"menu_delete_item";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-105;a:5:{s:4:"path";s:15:"admin/menu/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"13";}i:-106;a:7:{s:4:"path";s:19:"admin/menu/menu/add";s:5:"title";s:8:"add menu";s:8:"callback";s:13:"menu_add_menu";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-107;a:7:{s:4:"path";s:19:"admin/menu/item/add";s:5:"title";s:13:"add menu item";s:8:"callback";s:14:"menu_edit_item";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-108;a:7:{s:4:"path";s:16:"admin/menu/reset";s:5:"title";s:11:"reset menus";s:8:"callback";s:10:"menu_reset";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"13";}i:-110;a:5:{s:4:"path";s:17:"admin/node/action";s:5:"title";s:7:"content";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"14";}i:-111;a:5:{s:4:"path";s:19:"admin/node/overview";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"14";}i:-112;a:8:{s:4:"path";s:20:"admin/node/configure";s:5:"title";s:9:"configure";s:8:"callback";s:14:"node_configure";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"14";s:8:"children";a:2:{i:0;i:-113;i:1;i:-114;}}i:-113;a:5:{s:4:"path";s:29:"admin/node/configure/settings";s:5:"title";s:8:"settings";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-112;}i:-114;a:7:{s:4:"path";s:26:"admin/node/configure/types";s:5:"title";s:13:"content types";s:8:"callback";s:20:"node_types_configure";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-112;}i:-115;a:7:{s:4:"path";s:17:"admin/node/search";s:5:"title";s:6:"search";s:8:"callback";s:10:"node_admin";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"14";}i:-121;a:7:{s:4:"path";s:26:"admin/settings/profile/add";s:5:"title";s:9:"add field";s:8:"callback";s:17:"profile_admin_add";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"43";}i:-122;a:7:{s:4:"path";s:27:"admin/settings/profile/edit";s:5:"title";s:10:"edit field";s:8:"callback";s:18:"profile_admin_edit";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"43";}i:-123;a:7:{s:4:"path";s:29:"admin/settings/profile/delete";s:5:"title";s:12:"delete field";s:8:"callback";s:20:"profile_admin_delete";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"43";}i:-130;a:7:{s:4:"path";s:17:"admin/logs/access";s:5:"title";s:7:"details";s:8:"callback";s:21:"statistics_access_log";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"33";}i:-132;a:7:{s:4:"path";s:12:"system/files";s:5:"title";s:13:"file download";s:8:"callback";s:13:"file_download";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-133;a:6:{s:4:"path";s:11:"system/test";s:8:"callback";s:11:"system_test";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-136;a:7:{s:4:"path";s:19:"admin/themes/select";s:5:"title";s:4:"list";s:8:"callback";s:13:"system_themes";s:6:"access";i:1;s:4:"type";i:640;s:6:"weight";i:-1;s:3:"pid";s:2:"24";}i:-137;a:8:{s:4:"path";s:21:"admin/themes/settings";s:5:"title";s:9:"configure";s:8:"callback";s:21:"system_theme_settings";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"24";s:8:"children";a:6:{i:0;i:-138;i:1;i:-139;i:2;i:-140;i:3;i:-141;i:4;i:-142;i:5;i:-143;}}i:-138;a:7:{s:4:"path";s:28:"admin/themes/settings/global";s:5:"title";s:15:"global settings";s:8:"callback";s:21:"system_theme_settings";s:6:"access";i:1;s:4:"type";i:640;s:6:"weight";i:-1;s:3:"pid";i:-137;}i:-139;a:8:{s:4:"path";s:32:"admin/themes/settings/bluemarine";s:5:"title";s:10:"bluemarine";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:10:"bluemarine";}s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-140;a:8:{s:4:"path";s:31:"admin/themes/settings/chameleon";s:5:"title";s:9:"chameleon";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:9:"chameleon";}s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-141;a:8:{s:4:"path";s:28:"admin/themes/settings/marvin";s:5:"title";s:6:"marvin";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:6:"marvin";}s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-142;a:8:{s:4:"path";s:34:"admin/themes/settings/ninjapirates";s:5:"title";s:12:"ninjapirates";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:12:"ninjapirates";}s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-143;a:8:{s:4:"path";s:32:"admin/themes/settings/pushbutton";s:5:"title";s:10:"pushbutton";s:8:"callback";s:21:"system_theme_settings";s:18:"callback arguments";a:1:{i:0;s:10:"pushbutton";}s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-137;}i:-150;a:5:{s:4:"path";s:19:"admin/taxonomy/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"29";}i:-151;a:7:{s:4:"path";s:29:"admin/taxonomy/add/vocabulary";s:5:"title";s:14:"add vocabulary";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-152;a:7:{s:4:"path";s:30:"admin/taxonomy/edit/vocabulary";s:5:"title";s:15:"edit vocabulary";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-153;a:7:{s:4:"path";s:33:"admin/taxonomy/preview/vocabulary";s:5:"title";s:18:"preview vocabulary";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-154;a:7:{s:4:"path";s:23:"admin/taxonomy/add/term";s:5:"title";s:8:"add term";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-155;a:7:{s:4:"path";s:24:"admin/taxonomy/edit/term";s:5:"title";s:9:"edit term";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"29";}i:-156;a:7:{s:4:"path";s:13:"taxonomy/term";s:5:"title";s:13:"taxonomy term";s:8:"callback";s:18:"taxonomy_term_page";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;}i:-158;a:5:{s:4:"path";s:11:"tracker/all";s:5:"title";s:16:"all recent posts";s:4:"type";i:640;s:6:"weight";i:0;s:3:"pid";s:2:"40";}i:-159;a:5:{s:4:"path";s:9:"tracker/1";s:5:"title";s:15:"my recent posts";s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"40";}i:-160;a:8:{s:4:"path";s:4:"user";s:5:"title";s:12:"user account";s:8:"callback";s:9:"user_page";s:6:"access";b:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:1;s:8:"children";a:5:{i:0;i:-161;i:1;i:-162;i:2;i:-163;i:3;i:-164;i:4;i:-180;}}i:-161;a:5:{s:4:"path";s:10:"user/login";s:5:"title";s:6:"log in";s:4:"type";i:640;s:6:"weight";i:0;s:3:"pid";i:-160;}i:-162;a:7:{s:4:"path";s:13:"user/register";s:5:"title";s:8:"register";s:8:"callback";s:9:"user_page";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-160;}i:-163;a:7:{s:4:"path";s:13:"user/password";s:5:"title";s:20:"request new password";s:8:"callback";s:9:"user_pass";s:6:"access";b:0;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-160;}i:-164;a:6:{s:4:"path";s:9:"user/help";s:5:"title";s:4:"help";s:8:"callback";s:14:"user_help_page";s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-160;}i:-166;a:5:{s:4:"path";s:15:"admin/user/list";s:5:"title";s:4:"list";s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"30";}i:-167;a:7:{s:4:"path";s:17:"admin/user/create";s:5:"title";s:8:"add user";s:8:"callback";s:10:"user_admin";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"30";}i:-168;a:7:{s:4:"path";s:20:"admin/user/configure";s:5:"title";s:9:"configure";s:8:"callback";s:14:"user_configure";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"30";}i:-170;a:7:{s:4:"path";s:24:"admin/access/permissions";s:5:"title";s:11:"permissions";s:8:"callback";s:15:"user_admin_perm";s:6:"access";i:1;s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";s:2:"31";}i:-171;a:8:{s:4:"path";s:18:"admin/access/roles";s:5:"title";s:5:"roles";s:8:"callback";s:15:"user_admin_role";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"31";s:8:"children";a:1:{i:0;i:-172;}}i:-172;a:7:{s:4:"path";s:23:"admin/access/roles/edit";s:5:"title";s:9:"edit role";s:8:"callback";s:15:"user_admin_role";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-171;}i:-173;a:8:{s:4:"path";s:18:"admin/access/rules";s:5:"title";s:13:"account rules";s:8:"callback";s:17:"user_admin_access";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:10;s:3:"pid";s:2:"31";s:8:"children";a:5:{i:0;i:-174;i:1;i:-175;i:2;i:-176;i:3;i:-177;i:4;i:-178;}}i:-174;a:6:{s:4:"path";s:23:"admin/access/rules/list";s:5:"title";s:4:"list";s:6:"access";i:1;s:4:"type";i:640;s:6:"weight";i:-10;s:3:"pid";i:-173;}i:-175;a:7:{s:4:"path";s:22:"admin/access/rules/add";s:5:"title";s:8:"add rule";s:8:"callback";s:21:"user_admin_access_add";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-173;}i:-176;a:7:{s:4:"path";s:24:"admin/access/rules/check";s:5:"title";s:11:"check rules";s:8:"callback";s:23:"user_admin_access_check";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";i:-173;}i:-177;a:7:{s:4:"path";s:23:"admin/access/rules/edit";s:5:"title";s:9:"edit rule";s:8:"callback";s:22:"user_admin_access_edit";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-173;}i:-178;a:7:{s:4:"path";s:25:"admin/access/rules/delete";s:5:"title";s:11:"delete rule";s:8:"callback";s:24:"user_admin_access_delete";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";i:-173;}i:-179;a:7:{s:4:"path";s:17:"admin/user/search";s:5:"title";s:6:"search";s:8:"callback";s:10:"user_admin";s:6:"access";i:1;s:4:"type";i:128;s:6:"weight";i:0;s:3:"pid";s:2:"30";}i:-180;a:7:{s:4:"path";s:6:"user/1";s:5:"title";s:10:"my account";s:8:"callback";s:9:"user_page";s:6:"access";b:1;s:4:"type";i:6;s:6:"weight";i:0;s:3:"pid";i:-160;}i:-183;a:7:{s:4:"path";s:16:"admin/logs/event";s:5:"title";s:7:"details";s:8:"callback";s:14:"watchdog_event";s:6:"access";i:1;s:4:"type";i:4;s:6:"weight";i:0;s:3:"pid";s:2:"33";}i:2;a:8:{s:4:"path";s:16:"admin/aggregator";s:5:"title";s:10:"aggregator";s:8:"callback";s:25:"aggregator_admin_overview";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:7:{i:0;i:-2;i:1;i:-3;i:2;i:-4;i:3;i:-5;i:4;i:-6;i:5;i:-7;i:6;i:-8;}s:3:"pid";s:2:"23";}i:3;a:8:{s:4:"path";s:10:"aggregator";s:5:"title";s:15:"news aggregator";s:8:"callback";s:20:"aggregator_page_last";s:6:"access";i:1;s:6:"weight";i:5;s:4:"type";i:22;s:8:"children";a:3:{i:0;i:-32;i:1;i:4;i:2;i:5;}s:3:"pid";i:1;}i:4;a:8:{s:4:"path";s:18:"aggregator/sources";s:5:"title";s:7:"sources";s:8:"callback";s:23:"aggregator_page_sources";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:1:"3";s:8:"children";a:4:{i:0;i:46;i:1;i:47;i:2;i:48;i:3;i:49;}}i:5;a:8:{s:4:"path";s:21:"aggregator/categories";s:5:"title";s:10:"categories";s:8:"callback";s:26:"aggregator_page_categories";s:6:"access";i:1;s:4:"type";i:28;s:6:"weight";i:0;s:3:"pid";s:1:"3";s:8:"children";a:1:{i:0;i:50;}}i:6;a:8:{s:4:"path";s:11:"admin/block";s:5:"title";s:6:"blocks";s:6:"access";i:1;s:8:"callback";s:11:"block_admin";s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-35;i:1;i:-36;i:2;i:-37;i:3;i:-38;}s:3:"pid";s:2:"23";}i:7;a:6:{s:4:"path";s:13:"node/add/blog";s:5:"title";s:10:"blog entry";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:8;a:9:{s:4:"path";s:4:"blog";s:5:"title";s:5:"Blogs";s:8:"callback";s:9:"blog_page";s:6:"access";i:1;s:4:"type";s:2:"54";s:6:"weight";s:1:"0";s:11:"description";s:9:"blogggg!!";s:3:"pid";s:1:"1";s:8:"children";a:1:{i:0;i:-41;}}i:9;a:8:{s:4:"path";s:13:"admin/comment";s:5:"title";s:8:"comments";s:8:"callback";s:22:"comment_admin_overview";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-50;i:1;i:-51;i:2;i:-52;i:3;i:-53;}s:3:"pid";s:2:"23";}i:10;a:8:{s:4:"path";s:13:"admin/filters";s:5:"title";s:13:"input formats";s:8:"callback";s:21:"filter_admin_overview";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:1:{i:0;i:-64;}s:3:"pid";s:2:"23";}i:11;a:7:{s:4:"path";s:11:"filter/tips";s:5:"title";s:12:"compose tips";s:8:"callback";s:16:"filter_tips_long";s:6:"access";b:1;s:4:"type";i:16;s:6:"weight";i:0;s:3:"pid";i:1;}i:12;a:8:{s:4:"path";s:10:"admin/help";s:5:"title";s:4:"help";s:8:"callback";s:9:"help_main";s:6:"access";i:1;s:6:"weight";i:9;s:4:"type";i:22;s:8:"children";a:23:{i:0;i:-67;i:1;i:-68;i:2;i:-69;i:3;i:-70;i:4;i:-71;i:5;i:-72;i:6;i:-73;i:7;i:-74;i:8;i:-75;i:9;i:-76;i:10;i:-77;i:11;i:-78;i:12;i:-79;i:13;i:-80;i:14;i:-81;i:15;i:-82;i:16;i:-83;i:17;i:-84;i:18;i:-85;i:19;i:-86;i:20;i:-87;i:21;i:-88;i:22;i:-89;}s:3:"pid";s:2:"23";}i:13;a:8:{s:4:"path";s:10:"admin/menu";s:5:"title";s:5:"menus";s:8:"callback";s:13:"menu_overview";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:8:{i:0;i:-101;i:1;i:-102;i:2;i:-103;i:3;i:-104;i:4;i:-105;i:5;i:-106;i:6;i:-107;i:7;i:-108;}s:3:"pid";s:2:"23";}i:14;a:8:{s:4:"path";s:10:"admin/node";s:5:"title";s:7:"content";s:8:"callback";s:10:"node_admin";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:5:{i:0;i:-110;i:1;i:-111;i:2;i:-112;i:3;i:-115;i:4;i:37;}s:3:"pid";s:2:"23";}i:15;a:8:{s:4:"path";s:4:"node";s:5:"title";s:7:"content";s:8:"callback";s:9:"node_page";s:6:"access";i:1;s:4:"type";i:16;s:6:"weight";i:0;s:3:"pid";i:1;s:8:"children";a:1:{i:0;i:16;}}i:16;a:8:{s:4:"path";s:8:"node/add";s:5:"title";s:14:"create content";s:8:"callback";s:9:"node_page";s:6:"access";i:1;s:4:"type";i:28;s:6:"weight";i:1;s:8:"children";a:4:{i:0;i:7;i:1;i:17;i:2;i:22;i:3;i:36;}s:3:"pid";s:2:"15";}i:17;a:6:{s:4:"path";s:13:"node/add/page";s:5:"title";s:4:"page";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:18;a:7:{s:4:"path";s:15:"admin/logs/hits";s:5:"title";s:11:"recent hits";s:8:"callback";s:22:"statistics_recent_hits";s:6:"access";i:1;s:6:"weight";i:3;s:4:"type";i:22;s:3:"pid";s:2:"33";}i:19;a:7:{s:4:"path";s:16:"admin/logs/pages";s:5:"title";s:9:"top pages";s:8:"callback";s:20:"statistics_top_pages";s:6:"access";i:1;s:6:"weight";i:1;s:4:"type";i:22;s:3:"pid";s:2:"33";}i:20;a:7:{s:4:"path";s:16:"admin/logs/users";s:5:"title";s:9:"top users";s:8:"callback";s:20:"statistics_top_users";s:6:"access";i:1;s:6:"weight";i:2;s:4:"type";i:22;s:3:"pid";s:2:"33";}i:21;a:7:{s:4:"path";s:20:"admin/logs/referrers";s:5:"title";s:9:"referrers";s:8:"callback";s:24:"statistics_top_referrers";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"33";}i:22;a:6:{s:4:"path";s:14:"node/add/story";s:5:"title";s:5:"story";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:23;a:8:{s:4:"path";s:5:"admin";s:5:"title";s:10:"administer";s:6:"access";i:1;s:8:"callback";s:17:"system_admin_page";s:6:"weight";i:9;s:4:"type";i:22;s:8:"children";a:15:{i:0;i:2;i:1;i:6;i:2;i:9;i:3;i:10;i:4;i:12;i:5;i:13;i:6;i:14;i:7;i:24;i:8;i:25;i:9;i:28;i:10;i:29;i:11;i:30;i:12;i:31;i:13;i:33;i:14;i:41;}s:3:"pid";i:1;}i:24;a:8:{s:4:"path";s:12:"admin/themes";s:5:"title";s:6:"themes";s:8:"callback";s:13:"system_themes";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:2:{i:0;i:-136;i:1;i:-137;}s:3:"pid";s:2:"23";}i:25;a:8:{s:4:"path";s:14:"admin/settings";s:5:"title";s:8:"settings";s:8:"callback";s:20:"system_site_settings";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"23";s:8:"children";a:5:{i:0;i:26;i:1;i:27;i:2;i:34;i:3;i:43;i:4;i:45;}}i:26;a:5:{s:4:"path";s:25:"admin/settings/aggregator";s:5:"title";s:10:"aggregator";s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:27;a:5:{s:4:"path";s:25:"admin/settings/statistics";s:5:"title";s:10:"statistics";s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:28;a:7:{s:4:"path";s:13:"admin/modules";s:5:"title";s:7:"modules";s:8:"callback";s:14:"system_modules";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"23";}i:29;a:8:{s:4:"path";s:14:"admin/taxonomy";s:5:"title";s:10:"categories";s:8:"callback";s:14:"taxonomy_admin";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:6:{i:0;i:-150;i:1;i:-151;i:2;i:-152;i:3;i:-153;i:4;i:-154;i:5;i:-155;}s:3:"pid";s:2:"23";}i:30;a:8:{s:4:"path";s:10:"admin/user";s:5:"title";s:5:"users";s:8:"callback";s:10:"user_admin";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-166;i:1;i:-167;i:2;i:-168;i:3;i:-179;}s:3:"pid";s:2:"23";}i:31;a:8:{s:4:"path";s:12:"admin/access";s:5:"title";s:14:"access control";s:8:"callback";s:15:"user_admin_perm";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-170;i:1;i:-171;i:2;i:-173;}s:3:"pid";s:2:"23";}i:32;a:7:{s:4:"path";s:6:"logout";s:5:"title";s:7:"log out";s:6:"access";b:1;s:8:"callback";s:11:"user_logout";s:6:"weight";i:10;s:4:"type";i:22;s:3:"pid";i:1;}i:33;a:8:{s:4:"path";s:10:"admin/logs";s:5:"title";s:4:"logs";s:8:"callback";s:17:"watchdog_overview";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:6:{i:0;i:-130;i:1;i:-183;i:2;i:18;i:3;i:19;i:4;i:20;i:5;i:21;}s:3:"pid";s:2:"23";}i:34;a:5:{s:4:"path";s:22:"admin/settings/blogapi";s:5:"title";s:7:"blogapi";s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:35;a:8:{s:4:"path";s:7:"archive";s:5:"title";s:8:"archives";s:6:"access";i:1;s:8:"callback";s:12:"archive_page";s:4:"type";s:2:"54";s:6:"weight";s:1:"0";s:11:"description";s:12:"old archives";s:3:"pid";s:1:"1";}i:36;a:6:{s:4:"path";s:13:"node/add/book";s:5:"title";s:9:"book page";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:3:"pid";s:2:"16";}i:37;a:8:{s:4:"path";s:15:"admin/node/book";s:5:"title";s:5:"books";s:8:"callback";s:10:"book_admin";s:6:"access";i:1;s:6:"weight";i:4;s:4:"type";i:22;s:3:"pid";s:2:"14";s:8:"children";a:1:{i:0;i:38;}}i:38;a:7:{s:4:"path";s:22:"admin/node/book/orphan";s:5:"title";s:12:"orphan pages";s:8:"callback";s:17:"book_admin_orphan";s:6:"access";i:1;s:6:"weight";i:8;s:4:"type";i:22;s:3:"pid";s:2:"37";}i:39;a:8:{s:4:"path";s:4:"book";s:5:"title";s:5:"books";s:8:"callback";s:11:"book_render";s:6:"access";i:1;s:4:"type";i:16;s:6:"weight";i:0;s:8:"children";a:1:{i:0;i:-48;}s:3:"pid";i:1;}i:40;a:8:{s:4:"path";s:7:"tracker";s:5:"title";s:12:"recent posts";s:8:"callback";s:12:"tracker_page";s:6:"access";i:1;s:6:"weight";i:1;s:4:"type";i:22;s:8:"children";a:2:{i:0;i:-158;i:1;i:-159;}s:3:"pid";i:1;}i:41;a:8:{s:4:"path";s:12:"admin/locale";s:5:"title";s:12:"localization";s:8:"callback";s:19:"locale_admin_manage";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:4:{i:0;i:-91;i:1;i:-92;i:2;i:-98;i:3;i:-99;}s:3:"pid";s:2:"23";}i:42;a:7:{s:4:"path";s:7:"profile";s:5:"title";s:9:"user list";s:8:"callback";s:14:"profile_browse";s:6:"access";i:1;s:4:"type";i:16;s:6:"weight";i:0;s:3:"pid";i:1;}i:43;a:8:{s:4:"path";s:22:"admin/settings/profile";s:5:"title";s:8:"profiles";s:8:"callback";s:22:"profile_admin_overview";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-121;i:1;i:-122;i:2;i:-123;}s:3:"pid";s:2:"25";}i:44;a:8:{s:4:"path";s:6:"search";s:5:"title";s:6:"search";s:8:"callback";s:11:"search_view";s:6:"access";i:1;s:4:"type";s:2:"54";s:6:"weight";s:1:"0";s:11:"description";s:18:"search for an item";s:3:"pid";s:1:"1";}i:45;a:7:{s:4:"path";s:21:"admin/settings/search";s:5:"title";s:6:"search";s:8:"callback";s:12:"search_admin";s:4:"type";i:22;s:6:"access";i:1;s:6:"weight";i:0;s:3:"pid";s:2:"25";}i:46;a:8:{s:4:"path";s:20:"aggregator/sources/1";s:5:"title";s:11:"Google News";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-13;i:1;i:-14;i:2;i:-15;}s:3:"pid";s:1:"4";}i:47;a:8:{s:4:"path";s:20:"aggregator/sources/2";s:5:"title";s:13:"The Onion.com";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-25;i:1;i:-26;i:2;i:-27;}s:3:"pid";s:1:"4";}i:48;a:8:{s:4:"path";s:20:"aggregator/sources/3";s:5:"title";s:25:"Source Forge Project News";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-21;i:1;i:-22;i:2;i:-23;}s:3:"pid";s:1:"4";}i:49;a:8:{s:4:"path";s:20:"aggregator/sources/4";s:5:"title";s:8:"Slashdot";s:8:"callback";s:22:"aggregator_page_source";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-17;i:1;i:-18;i:2;i:-19;}s:3:"pid";s:1:"4";}i:50;a:8:{s:4:"path";s:23:"aggregator/categories/1";s:5:"title";s:10:"Technology";s:8:"callback";s:24:"aggregator_page_category";s:6:"access";i:1;s:4:"type";i:22;s:6:"weight";i:0;s:8:"children";a:3:{i:0;i:-29;i:1;i:-30;i:2;i:-31;}s:3:"pid";s:1:"5";}i:57;a:8:{s:4:"path";s:37:"http://www.dxdstudio.com/npn/?q=about";s:6:"access";b:1;s:8:"callback";s:0:"";s:5:"title";s:5:"About";s:11:"description";s:68:"About Enlightenment, modules and the crew that helps mantain it all.";s:3:"pid";s:1:"1";s:6:"weight";s:1:"0";s:4:"type";s:3:"118";}}s:7:"visible";a:50:{i:57;a:5:{s:5:"title";s:5:"About";s:4:"path";s:37:"http://www.dxdstudio.com/npn/?q=about";s:8:"children";a:0:{}s:4:"type";s:3:"118";s:3:"pid";i:1;}i:-41;a:5:{s:5:"title";s:7:"my blog";s:4:"path";s:6:"blog/1";s:8:"children";a:0:{}s:4:"type";i:6;s:3:"pid";i:8;}i:8;a:5:{s:5:"title";s:5:"Blogs";s:4:"path";s:4:"blog";s:8:"children";a:1:{i:0;i:-41;}s:4:"type";s:2:"54";s:3:"pid";i:1;}i:35;a:5:{s:5:"title";s:8:"archives";s:4:"path";s:7:"archive";s:8:"children";a:0:{}s:4:"type";s:2:"54";s:3:"pid";i:1;}i:7;a:5:{s:5:"title";s:10:"blog entry";s:4:"path";s:13:"node/add/blog";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:16;}i:36;a:5:{s:5:"title";s:9:"book page";s:4:"path";s:13:"node/add/book";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:16;}i:17;a:5:{s:5:"title";s:4:"page";s:4:"path";s:13:"node/add/page";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:16;}i:22;a:5:{s:5:"title";s:5:"story";s:4:"path";s:14:"node/add/story";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:16;}i:16;a:5:{s:5:"title";s:14:"create content";s:4:"path";s:8:"node/add";s:8:"children";a:4:{i:0;i:7;i:1;i:36;i:2;i:17;i:3;i:22;}s:4:"type";i:28;s:3:"pid";i:1;}i:44;a:5:{s:5:"title";s:6:"search";s:4:"path";s:6:"search";s:8:"children";a:0:{}s:4:"type";s:2:"54";s:3:"pid";i:1;}i:-180;a:5:{s:5:"title";s:10:"my account";s:4:"path";s:6:"user/1";s:8:"children";a:0:{}s:4:"type";i:6;s:3:"pid";i:1;}i:40;a:5:{s:5:"title";s:12:"recent posts";s:4:"path";s:7:"tracker";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:1;}i:50;a:5:{s:5:"title";s:10:"Technology";s:4:"path";s:23:"aggregator/categories/1";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:5;}i:5;a:5:{s:5:"title";s:10:"categories";s:4:"path";s:21:"aggregator/categories";s:8:"children";a:1:{i:0;i:50;}s:4:"type";i:28;s:3:"pid";i:3;}i:46;a:5:{s:5:"title";s:11:"Google News";s:4:"path";s:20:"aggregator/sources/1";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:4;}i:49;a:5:{s:5:"title";s:8:"Slashdot";s:4:"path";s:20:"aggregator/sources/4";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:4;}i:48;a:5:{s:5:"title";s:25:"Source Forge Project News";s:4:"path";s:20:"aggregator/sources/3";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:4;}i:47;a:5:{s:5:"title";s:13:"The Onion.com";s:4:"path";s:20:"aggregator/sources/2";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:4;}i:4;a:5:{s:5:"title";s:7:"sources";s:4:"path";s:18:"aggregator/sources";s:8:"children";a:4:{i:0;i:46;i:1;i:49;i:2;i:48;i:3;i:47;}s:4:"type";i:22;s:3:"pid";i:3;}i:3;a:5:{s:5:"title";s:15:"news aggregator";s:4:"path";s:10:"aggregator";s:8:"children";a:2:{i:0;i:5;i:1;i:4;}s:4:"type";i:22;s:3:"pid";i:1;}i:31;a:5:{s:5:"title";s:14:"access control";s:4:"path";s:12:"admin/access";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:2;a:5:{s:5:"title";s:10:"aggregator";s:4:"path";s:16:"admin/aggregator";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:6;a:5:{s:5:"title";s:6:"blocks";s:4:"path";s:11:"admin/block";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:29;a:5:{s:5:"title";s:10:"categories";s:4:"path";s:14:"admin/taxonomy";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:9;a:5:{s:5:"title";s:8:"comments";s:4:"path";s:13:"admin/comment";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:38;a:5:{s:5:"title";s:12:"orphan pages";s:4:"path";s:22:"admin/node/book/orphan";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:37;}i:37;a:5:{s:5:"title";s:5:"books";s:4:"path";s:15:"admin/node/book";s:8:"children";a:1:{i:0;i:38;}s:4:"type";i:22;s:3:"pid";i:14;}i:14;a:5:{s:5:"title";s:7:"content";s:4:"path";s:10:"admin/node";s:8:"children";a:1:{i:0;i:37;}s:4:"type";i:22;s:3:"pid";i:23;}i:10;a:5:{s:5:"title";s:13:"input formats";s:4:"path";s:13:"admin/filters";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:41;a:5:{s:5:"title";s:12:"localization";s:4:"path";s:12:"admin/locale";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:21;a:5:{s:5:"title";s:9:"referrers";s:4:"path";s:20:"admin/logs/referrers";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:33;}i:19;a:5:{s:5:"title";s:9:"top pages";s:4:"path";s:16:"admin/logs/pages";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:33;}i:20;a:5:{s:5:"title";s:9:"top users";s:4:"path";s:16:"admin/logs/users";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:33;}i:18;a:5:{s:5:"title";s:11:"recent hits";s:4:"path";s:15:"admin/logs/hits";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:33;}i:33;a:5:{s:5:"title";s:4:"logs";s:4:"path";s:10:"admin/logs";s:8:"children";a:4:{i:0;i:21;i:1;i:19;i:2;i:20;i:3;i:18;}s:4:"type";i:22;s:3:"pid";i:23;}i:13;a:5:{s:5:"title";s:5:"menus";s:4:"path";s:10:"admin/menu";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:28;a:5:{s:5:"title";s:7:"modules";s:4:"path";s:13:"admin/modules";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:26;a:5:{s:5:"title";s:10:"aggregator";s:4:"path";s:25:"admin/settings/aggregator";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:25;}i:34;a:5:{s:5:"title";s:7:"blogapi";s:4:"path";s:22:"admin/settings/blogapi";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:25;}i:43;a:5:{s:5:"title";s:8:"profiles";s:4:"path";s:22:"admin/settings/profile";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:25;}i:45;a:5:{s:5:"title";s:6:"search";s:4:"path";s:21:"admin/settings/search";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:25;}i:27;a:5:{s:5:"title";s:10:"statistics";s:4:"path";s:25:"admin/settings/statistics";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:25;}i:25;a:5:{s:5:"title";s:8:"settings";s:4:"path";s:14:"admin/settings";s:8:"children";a:5:{i:0;i:26;i:1;i:34;i:2;i:43;i:3;i:45;i:4;i:27;}s:4:"type";i:22;s:3:"pid";i:23;}i:24;a:5:{s:5:"title";s:6:"themes";s:4:"path";s:12:"admin/themes";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:30;a:5:{s:5:"title";s:5:"users";s:4:"path";s:10:"admin/user";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:12;a:5:{s:5:"title";s:4:"help";s:4:"path";s:10:"admin/help";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:23;}i:23;a:5:{s:5:"title";s:10:"administer";s:4:"path";s:5:"admin";s:8:"children";a:15:{i:0;i:31;i:1;i:2;i:2;i:6;i:3;i:29;i:4;i:9;i:5;i:14;i:6;i:10;i:7;i:41;i:8;i:33;i:9;i:13;i:10;i:28;i:11;i:25;i:12;i:24;i:13;i:30;i:14;i:12;}s:4:"type";i:22;s:3:"pid";i:1;}i:32;a:5:{s:5:"title";s:7:"log out";s:4:"path";s:6:"logout";s:8:"children";a:0:{}s:4:"type";i:22;s:3:"pid";i:1;}i:1;a:5:{s:5:"title";s:10:"Navigation";s:4:"path";s:0:"";s:8:"children";a:10:{i:0;i:57;i:1;i:8;i:2;i:35;i:3;i:16;i:4;i:44;i:5;i:-180;i:6;i:40;i:7;i:3;i:8;i:23;i:9;i:32;}s:4:"type";i:3;s:3:"pid";i:0;}i:0;a:4:{s:5:"title";s:0:"";s:4:"path";s:0:"";s:8:"children";a:1:{i:0;i:1;}s:4:"type";i:1;}}}', 1133748532, 1133662132, '');
INSERT INTO `cache` VALUES ('filter:3:0c8ac6f53d479da96c16bd8f7cebf7c7', '<p>I blame the stupid name on my location. </p>\n<p><b>But, I''ve updated the theme nonetheless! Changes include:</b></p>\n<ul>New menu graphic, along with windowlist and pager popup<br />\nSome minor font changes, bolding and white shadowing in the menu<br />\nTurned off the "shaped" flag in the border code, minor speed improvement</ul>\n<p>More changes are coming, slowly but surely.<br />\n<a href="http://kingrayray.wallooza.org/shot.png"><img src="http://kingrayray.wallooza.org/thumbshot.png"></a></p>\n<h2><a href="http://kingrayray.wallooza.org/icetest2.edj">Grab it!</a></h2>\n<p><b>If you''d like to help me out a bit, click read more.</b></p>\n<p><b>Here are some things I need:</b></p>\n<ul>NEW NAME. Suggestions welcome!<br />\nI''m considering making this theme in 2-3 <b>"flavors"</b>, new colors. Suggestions plz!<br />\nAnd any other ideas, suggestions, or critiques you may have regarding it.</ul>\n<p>And a small treat for those of you who read more! The first version of the wallpaper to match my theme. I plan to animate this someday, but for now, this''ll do. I like it, I hope you do too. Available in PNG and EDJ.</p>\n<p>(<a href="http://kingrayray.wallooza.org/try.png">PNG</a>|<a href="http://kingrayray.wallooza.org/try.edj">EDJ</a>)</p>\n', 1133698295, 1133611895, '');
INSERT INTO `cache` VALUES ('filter:3:ecd617d5aabfd7d89e93e8b138c0369f', '<p>here''s a little something i came up with when I decided I wanted a nice dark theme. special thanks to Gulivert foir doing the actual work. it''s based on simply-white, i more or less just redid some gfx and coloring. I''m not sure if i plan to actually put any work into it, I just wanted a theme to use when I have dark wallpapers.</p>\n<p><a href="http://kingrayray.wallooza.org/black.edj">black.edj [1.2MB]</a></p>\n', 1133748508, 1133662108, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `comments`
-- 

CREATE TABLE `comments` (
  `cid` int(10) NOT NULL auto_increment,
  `pid` int(10) NOT NULL default '0',
  `nid` int(10) NOT NULL default '0',
  `uid` int(10) NOT NULL default '0',
  `subject` varchar(64) NOT NULL default '',
  `comment` longtext NOT NULL,
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `score` mediumint(9) NOT NULL default '0',
  `status` tinyint(3) unsigned NOT NULL default '0',
  `format` int(4) NOT NULL default '0',
  `thread` varchar(255) NOT NULL default '',
  `users` longtext,
  `name` varchar(60) default NULL,
  `mail` varchar(64) default NULL,
  `homepage` varchar(255) default NULL,
  PRIMARY KEY  (`cid`),
  KEY `lid` (`nid`)
) TYPE=MyISAM AUTO_INCREMENT=14 ;

-- 
-- Dumping data for table `comments`
-- 

INSERT INTO `comments` VALUES (1, 0, 1, 1, 'grenades!', 'test yo face with one, biatch!\r\nbtw l33t hax\r\n\r\nNot quite an Edje Pimp', '24.18.48.80', 1129705247, 0, 0, 1, '1/', 'a:1:{i:0;i:0;}', 'kingrayray', '', '');
INSERT INTO `comments` VALUES (2, 0, 1, 3, 'testing', 'C-style comments do not need the extra * in front of the text\r\nIE:\r\n\r\n/*\r\nretesting\r\n*/\r\n\r\nworks !\r\n\r\n/*\r\n* retesting\r\n*/\r\n\r\nis not needed', '68.37.52.47', 1129879236, 0, 0, 1, '2/', 'a:1:{i:0;i:0;}', 'devilhorns', '', '');
INSERT INTO `comments` VALUES (3, 0, 13, 2, 'linux', 'linux linux linux, open source and linux. yay linux. linus torvalds is kew. linux (for google adsense)', '71.112.2.128', 1129966883, 0, 0, 1, '1/', 'a:1:{i:0;i:0;}', 'digitalxdefiant', '', '');
INSERT INTO `comments` VALUES (4, 0, 14, 1, 'can''t wait til i can test it', 'can''t wait til i can test it :)\r\n\r\n\r\nNot quite an Edje Pimp', '71.112.2.128', 1130106863, 0, 0, 1, '1/', 'a:1:{i:0;i:0;}', 'kingrayray', '', '');
INSERT INTO `comments` VALUES (5, 0, 16, 2, 'yay', 'its all good, because now u can come play AO which is the shit.', '71.113.115.105', 1130281317, 0, 0, 1, '1/', 'a:1:{i:0;i:0;}', 'digitalxdefiant', '', '');
INSERT INTO `comments` VALUES (6, 5, 16, 1, 'the flaming thing was a', 'the flaming thing was a reference to the title that was put in #ninjapirate when i told jas-nix; "Kingrayray is a windows bitch" \r\n\r\nlol :)', '24.16.51.49', 1130366472, 0, 0, 1, '1.1/', 'a:1:{i:0;i:0;}', 'kingrayray', '', '');
INSERT INTO `comments` VALUES (7, 0, 22, 9, 'I downloaded and installed', 'I downloaded and installed the module, loaded it with e_remote, but everytime I try to enable the module E segfaults, which is frustrating.\r\n\r\nI''m using Gentoo with the E17-CVS ebuilds, updated yesterday.\r\n\r\n', '24.184.143.240', 1130787354, 0, 0, 1, '1/', 'a:1:{i:0;i:0;}', 'misunderstruck', '', '');
INSERT INTO `comments` VALUES (8, 0, 23, 2, 'Name', '<strong>How about... \r\n</strong>\r\n\r\n<ul><li>Torrential thunderstorm</li>\r\n<li>Hurricane rayray (lmao?)</li>\r\n<li>Storm of the century</li>\r\n<li>Singing in the rain</li>\r\n<li>Enlightenment Tsunami 9000X</li>\r\n<li>Thundrous </li>\r\n<li>Thunderfall LightningCrackle</li>\r\n</ul>\r\n\r\n<strong>ok im all out..for now</strong>', '71.113.115.105', 1130972435, 0, 0, 1, '1/', 'a:1:{i:0;i:0;}', 'digitalxdefiant', '', '');
INSERT INTO `comments` VALUES (9, 7, 22, 3, 'Newer version', 'There is a newer version at get-e.org now that fixes this !!', '68.37.52.47', 1131212683, 0, 0, 1, '1.1/', 'a:1:{i:0;i:0;}', 'devilhorns', '', '');
INSERT INTO `comments` VALUES (10, 0, 25, 1, 'I looks like Hawkwind had to', 'It looks like Hawkwind had to let his cool off, I''ll wait a bit ;)', '24.16.50.41', 1131216712, 0, 0, 1, '1/', 'a:1:{i:0;i:0;}', 'kingrayray', '', '');
INSERT INTO `comments` VALUES (11, 10, 25, 3, 'No Worries', 'Should be all fixed now !!', '68.37.52.47', 1131242980, 0, 0, 1, '1.1/', 'a:1:{i:0;i:0;}', 'devilhorns', '', '');
INSERT INTO `comments` VALUES (12, 0, 23, 9, 'How about "Neptune"? \r\nThe', 'How about "Neptune"? \r\n\r\nThe colors and menu ring effects suggest it....', '24.184.143.240', 1131419812, 0, 0, 1, '2/', 'a:1:{i:0;i:0;}', 'misunderstruck', '', '');
INSERT INTO `comments` VALUES (13, 12, 23, 1, 'whoa. good idea dude :O i', 'whoa. good idea dude :O i just might use that..', '24.16.51.49', 1131947919, 0, 0, 1, '2.1/', 'a:1:{i:0;i:0;}', 'kingrayray', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `directory`
-- 

CREATE TABLE `directory` (
  `link` varchar(255) NOT NULL default '',
  `name` varchar(128) NOT NULL default '',
  `mail` varchar(128) NOT NULL default '',
  `slogan` longtext NOT NULL,
  `mission` longtext NOT NULL,
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`link`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `directory`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `files`
-- 

CREATE TABLE `files` (
  `fid` int(10) unsigned NOT NULL default '0',
  `nid` int(10) unsigned NOT NULL default '0',
  `filename` varchar(255) NOT NULL default '',
  `filepath` varchar(255) NOT NULL default '',
  `filemime` varchar(255) NOT NULL default '',
  `filesize` int(10) unsigned NOT NULL default '0',
  `list` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `files`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `filter_formats`
-- 

CREATE TABLE `filter_formats` (
  `format` int(4) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `roles` varchar(255) NOT NULL default '',
  `cache` tinyint(2) NOT NULL default '0',
  PRIMARY KEY  (`format`)
) TYPE=MyISAM AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `filter_formats`
-- 

INSERT INTO `filter_formats` VALUES (1, 'Filtered HTML', ',1,2,', 1);
INSERT INTO `filter_formats` VALUES (2, 'PHP code', '', 0);
INSERT INTO `filter_formats` VALUES (3, 'Full HTML', '', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `filters`
-- 

CREATE TABLE `filters` (
  `format` int(4) NOT NULL default '0',
  `module` varchar(64) NOT NULL default '',
  `delta` tinyint(2) NOT NULL default '0',
  `weight` tinyint(2) NOT NULL default '0',
  KEY `weight` (`weight`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `filters`
-- 

INSERT INTO `filters` VALUES (1, 'filter', 0, 0);
INSERT INTO `filters` VALUES (1, 'filter', 2, 1);
INSERT INTO `filters` VALUES (2, 'filter', 1, 0);
INSERT INTO `filters` VALUES (3, 'filter', 2, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `flood`
-- 

CREATE TABLE `flood` (
  `event` varchar(64) NOT NULL default '',
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0'
) TYPE=MyISAM;

-- 
-- Dumping data for table `flood`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `forum`
-- 

CREATE TABLE `forum` (
  `nid` int(10) unsigned NOT NULL default '0',
  `tid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  KEY `tid` (`tid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `forum`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `history`
-- 

CREATE TABLE `history` (
  `uid` int(10) NOT NULL default '0',
  `nid` int(10) NOT NULL default '0',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`uid`,`nid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `history`
-- 

INSERT INTO `history` VALUES (2, 1, 1130208016);
INSERT INTO `history` VALUES (1, 1, 1129923716);
INSERT INTO `history` VALUES (1, 2, 1129705983);
INSERT INTO `history` VALUES (2, 2, 1130208282);
INSERT INTO `history` VALUES (1, 3, 1129706746);
INSERT INTO `history` VALUES (2, 4, 1129709814);
INSERT INTO `history` VALUES (1, 5, 1129710097);
INSERT INTO `history` VALUES (2, 5, 1129776030);
INSERT INTO `history` VALUES (2, 6, 1129716544);
INSERT INTO `history` VALUES (2, 7, 1129716984);
INSERT INTO `history` VALUES (1, 8, 1129755016);
INSERT INTO `history` VALUES (3, 1, 1130550663);
INSERT INTO `history` VALUES (2, 8, 1129778749);
INSERT INTO `history` VALUES (5, 9, 1129822998);
INSERT INTO `history` VALUES (3, 10, 1129859271);
INSERT INTO `history` VALUES (2, 10, 1129861832);
INSERT INTO `history` VALUES (1, 11, 1129917576);
INSERT INTO `history` VALUES (1, 12, 1129920649);
INSERT INTO `history` VALUES (2, 13, 1130208285);
INSERT INTO `history` VALUES (3, 13, 1130094359);
INSERT INTO `history` VALUES (3, 14, 1131212713);
INSERT INTO `history` VALUES (1, 13, 1130106838);
INSERT INTO `history` VALUES (1, 14, 1130106863);
INSERT INTO `history` VALUES (2, 15, 1130208183);
INSERT INTO `history` VALUES (2, 14, 1130208220);
INSERT INTO `history` VALUES (1, 16, 1132738983);
INSERT INTO `history` VALUES (2, 16, 1130281318);
INSERT INTO `history` VALUES (1, 17, 1130367363);
INSERT INTO `history` VALUES (3, 16, 1131212766);
INSERT INTO `history` VALUES (3, 18, 1130552411);
INSERT INTO `history` VALUES (8, 16, 1130558842);
INSERT INTO `history` VALUES (8, 19, 1130559458);
INSERT INTO `history` VALUES (8, 20, 1131047890);
INSERT INTO `history` VALUES (1, 20, 1131217185);
INSERT INTO `history` VALUES (8, 13, 1130582328);
INSERT INTO `history` VALUES (1, 21, 1130636950);
INSERT INTO `history` VALUES (3, 22, 1131212684);
INSERT INTO `history` VALUES (9, 16, 1130787098);
INSERT INTO `history` VALUES (9, 22, 1131419613);
INSERT INTO `history` VALUES (9, 14, 1130815913);
INSERT INTO `history` VALUES (1, 22, 1131962832);
INSERT INTO `history` VALUES (1, 23, 1131962766);
INSERT INTO `history` VALUES (1, 24, 1130917219);
INSERT INTO `history` VALUES (3, 23, 1131212618);
INSERT INTO `history` VALUES (2, 23, 1131087041);
INSERT INTO `history` VALUES (2, 22, 1130972660);
INSERT INTO `history` VALUES (8, 23, 1131047844);
INSERT INTO `history` VALUES (3, 25, 1131336783);
INSERT INTO `history` VALUES (3, 21, 1131212696);
INSERT INTO `history` VALUES (3, 20, 1131212704);
INSERT INTO `history` VALUES (1, 25, 1132161949);
INSERT INTO `history` VALUES (9, 25, 1131419605);
INSERT INTO `history` VALUES (9, 23, 1133153106);
INSERT INTO `history` VALUES (1, 26, 1131977388);
INSERT INTO `history` VALUES (9, 5, 1132461891);
INSERT INTO `history` VALUES (1, 27, 1132766490);
INSERT INTO `history` VALUES (1, 28, 1133228521);
INSERT INTO `history` VALUES (1, 29, 1133662132);

-- --------------------------------------------------------

-- 
-- Table structure for table `locales_meta`
-- 

CREATE TABLE `locales_meta` (
  `locale` varchar(12) NOT NULL default '',
  `name` varchar(64) NOT NULL default '',
  `enabled` int(2) NOT NULL default '0',
  `isdefault` int(2) NOT NULL default '0',
  `plurals` int(1) NOT NULL default '0',
  `formula` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`locale`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `locales_meta`
-- 

INSERT INTO `locales_meta` VALUES ('en', 'English', 1, 1, 0, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `locales_source`
-- 

CREATE TABLE `locales_source` (
  `lid` int(11) NOT NULL auto_increment,
  `location` varchar(255) NOT NULL default '',
  `source` blob NOT NULL,
  PRIMARY KEY  (`lid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `locales_source`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `locales_target`
-- 

CREATE TABLE `locales_target` (
  `lid` int(11) NOT NULL default '0',
  `translation` blob NOT NULL,
  `locale` varchar(12) NOT NULL default '',
  `plid` int(11) NOT NULL default '0',
  `plural` int(1) NOT NULL default '0',
  KEY `lid` (`lid`),
  KEY `lang` (`locale`),
  KEY `plid` (`plid`),
  KEY `plural` (`plural`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `locales_target`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `menu`
-- 

CREATE TABLE `menu` (
  `mid` int(10) unsigned NOT NULL default '0',
  `pid` int(10) unsigned NOT NULL default '0',
  `path` varchar(255) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `weight` tinyint(4) NOT NULL default '0',
  `type` int(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`mid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `menu`
-- 

INSERT INTO `menu` VALUES (2, 23, 'admin/aggregator', 'aggregator', '', 0, 22);
INSERT INTO `menu` VALUES (3, 1, 'aggregator', 'news aggregator', '', 5, 22);
INSERT INTO `menu` VALUES (4, 3, 'aggregator/sources', 'sources', '', 0, 22);
INSERT INTO `menu` VALUES (5, 3, 'aggregator/categories', 'categories', '', 0, 28);
INSERT INTO `menu` VALUES (6, 23, 'admin/block', 'blocks', '', 0, 22);
INSERT INTO `menu` VALUES (7, 16, 'node/add/blog', 'blog entry', '', 0, 22);
INSERT INTO `menu` VALUES (8, 1, 'blog', 'Blogs', 'blogggg!!', 0, 54);
INSERT INTO `menu` VALUES (9, 23, 'admin/comment', 'comments', '', 0, 22);
INSERT INTO `menu` VALUES (10, 23, 'admin/filters', 'input formats', '', 0, 22);
INSERT INTO `menu` VALUES (11, 1, 'filter/tips', 'compose tips', '', 0, 16);
INSERT INTO `menu` VALUES (12, 23, 'admin/help', 'help', '', 9, 22);
INSERT INTO `menu` VALUES (13, 23, 'admin/menu', 'menus', '', 0, 22);
INSERT INTO `menu` VALUES (14, 23, 'admin/node', 'content', '', 0, 22);
INSERT INTO `menu` VALUES (15, 1, 'node', 'content', '', 0, 16);
INSERT INTO `menu` VALUES (16, 15, 'node/add', 'create content', '', 1, 28);
INSERT INTO `menu` VALUES (17, 16, 'node/add/page', 'page', '', 0, 22);
INSERT INTO `menu` VALUES (18, 33, 'admin/logs/hits', 'recent hits', '', 3, 22);
INSERT INTO `menu` VALUES (19, 33, 'admin/logs/pages', 'top pages', '', 1, 22);
INSERT INTO `menu` VALUES (20, 33, 'admin/logs/users', 'top users', '', 2, 22);
INSERT INTO `menu` VALUES (21, 33, 'admin/logs/referrers', 'referrers', '', 0, 22);
INSERT INTO `menu` VALUES (22, 16, 'node/add/story', 'story', '', 0, 22);
INSERT INTO `menu` VALUES (23, 1, 'admin', 'administer', '', 9, 22);
INSERT INTO `menu` VALUES (24, 23, 'admin/themes', 'themes', '', 0, 22);
INSERT INTO `menu` VALUES (25, 23, 'admin/settings', 'settings', '', 0, 22);
INSERT INTO `menu` VALUES (26, 25, 'admin/settings/aggregator', 'aggregator', '', 0, 22);
INSERT INTO `menu` VALUES (27, 25, 'admin/settings/statistics', 'statistics', '', 0, 22);
INSERT INTO `menu` VALUES (28, 23, 'admin/modules', 'modules', '', 0, 22);
INSERT INTO `menu` VALUES (29, 23, 'admin/taxonomy', 'categories', '', 0, 22);
INSERT INTO `menu` VALUES (30, 23, 'admin/user', 'users', '', 0, 22);
INSERT INTO `menu` VALUES (31, 23, 'admin/access', 'access control', '', 0, 22);
INSERT INTO `menu` VALUES (32, 1, 'logout', 'log out', '', 10, 22);
INSERT INTO `menu` VALUES (33, 23, 'admin/logs', 'logs', '', 0, 22);
INSERT INTO `menu` VALUES (34, 25, 'admin/settings/blogapi', 'blogapi', '', 0, 22);
INSERT INTO `menu` VALUES (35, 1, 'archive', 'archives', 'old archives', 0, 54);
INSERT INTO `menu` VALUES (36, 16, 'node/add/book', 'book page', '', 0, 22);
INSERT INTO `menu` VALUES (37, 14, 'admin/node/book', 'books', '', 4, 22);
INSERT INTO `menu` VALUES (38, 37, 'admin/node/book/orphan', 'orphan pages', '', 8, 22);
INSERT INTO `menu` VALUES (39, 1, 'book', 'books', '', 0, 16);
INSERT INTO `menu` VALUES (40, 1, 'tracker', 'recent posts', '', 1, 22);
INSERT INTO `menu` VALUES (41, 23, 'admin/locale', 'localization', '', 0, 22);
INSERT INTO `menu` VALUES (42, 1, 'profile', 'user list', '', 0, 16);
INSERT INTO `menu` VALUES (43, 25, 'admin/settings/profile', 'profiles', '', 0, 22);
INSERT INTO `menu` VALUES (44, 1, 'search', 'search', 'search for an item', 0, 54);
INSERT INTO `menu` VALUES (45, 25, 'admin/settings/search', 'search', '', 0, 22);
INSERT INTO `menu` VALUES (46, 4, 'aggregator/sources/1', 'Google News', '', 0, 22);
INSERT INTO `menu` VALUES (47, 4, 'aggregator/sources/2', 'The Onion.com', '', 0, 22);
INSERT INTO `menu` VALUES (48, 4, 'aggregator/sources/3', 'Source Forge Project News', '', 0, 22);
INSERT INTO `menu` VALUES (49, 4, 'aggregator/sources/4', 'Slashdot', '', 0, 22);
INSERT INTO `menu` VALUES (50, 5, 'aggregator/categories/1', 'Technology', '', 0, 22);
INSERT INTO `menu` VALUES (57, 1, 'http://www.dxdstudio.com/npn/?q=about', 'About', 'About Enlightenment, modules and the crew that helps mantain it all.', 0, 118);
INSERT INTO `menu` VALUES (59, 1, 'album', 'albums', '', 0, 22);
INSERT INTO `menu` VALUES (60, 25, 'admin/settings/album', 'album', '', 0, 22);

-- --------------------------------------------------------

-- 
-- Table structure for table `moderation_filters`
-- 

CREATE TABLE `moderation_filters` (
  `fid` int(10) unsigned NOT NULL auto_increment,
  `filter` varchar(255) NOT NULL default '',
  `minimum` smallint(6) NOT NULL default '0',
  PRIMARY KEY  (`fid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `moderation_filters`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `moderation_roles`
-- 

CREATE TABLE `moderation_roles` (
  `rid` int(10) unsigned NOT NULL default '0',
  `mid` int(10) unsigned NOT NULL default '0',
  `value` tinyint(4) NOT NULL default '0',
  KEY `idx_rid` (`rid`),
  KEY `idx_mid` (`mid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `moderation_roles`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `moderation_votes`
-- 

CREATE TABLE `moderation_votes` (
  `mid` int(10) unsigned NOT NULL auto_increment,
  `vote` varchar(255) default NULL,
  `weight` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`mid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `moderation_votes`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `node`
-- 

CREATE TABLE `node` (
  `nid` int(10) unsigned NOT NULL auto_increment,
  `type` varchar(16) NOT NULL default '',
  `title` varchar(128) NOT NULL default '',
  `uid` int(10) NOT NULL default '0',
  `status` int(4) NOT NULL default '1',
  `created` int(11) NOT NULL default '0',
  `changed` int(11) NOT NULL default '0',
  `comment` int(2) NOT NULL default '0',
  `promote` int(2) NOT NULL default '0',
  `moderate` int(2) NOT NULL default '0',
  `teaser` longtext NOT NULL,
  `body` longtext NOT NULL,
  `revisions` longtext NOT NULL,
  `sticky` int(2) NOT NULL default '0',
  `format` int(4) NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  KEY `node_type` (`type`(4)),
  KEY `node_title_type` (`title`,`type`(4)),
  KEY `status` (`status`),
  KEY `uid` (`uid`),
  KEY `node_moderate` (`moderate`),
  KEY `node_promote_status` (`promote`,`status`),
  KEY `node_created` (`created`),
  KEY `node_changed` (`changed`),
  KEY `node_status_type` (`status`,`type`,`nid`)
) TYPE=MyISAM AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `node`
-- 

INSERT INTO `node` VALUES (1, 'page', 'Testing testing', 2, 1, 1129705019, 1129705804, 2, 1, 0, 'just testing the page \r\n\r\n/*\r\n * and i''m re-testing it, bitch!\r\n * .. hehehee C style commenting!\r\n */', 'just testing the page \r\n\r\n/*\r\n * and i''m re-testing it, bitch!\r\n * .. hehehee C style commenting!\r\n */', '', 0, 1);
INSERT INTO `node` VALUES (2, 'blog', 'ooooh we have a site', 1, 1, 1129705944, 1129705982, 2, 1, 0, 'well it looks like this site will come together well, i''ll be posting my themes and other various stuff here, so keep an ear.. er, eye out. :D', 'well it looks like this site will come together well, i''ll be posting my themes and other various stuff here, so keep an ear.. er, eye out. :D', '', 0, 1);
INSERT INTO `node` VALUES (3, 'story', 'Rain module', 1, 1, 1129706349, 1129706746, 2, 1, 0, 'Spent most of the evening working on a module, with some help from devilhorns. It''ll be in E17 CVS soon, so everybody can have it. But here''s a sneak peek :)\r\n\r\n<a href="http://kingrayray.wallooza.org/2005-10-19-001757_1280x1024_scrot.png">CLICKY!!</a>', 'Spent most of the evening working on a module, with some help from devilhorns. It''ll be in E17 CVS soon, so everybody can have it. But here''s a sneak peek :)\r\n\r\n<a href="http://kingrayray.wallooza.org/2005-10-19-001757_1280x1024_scrot.png">CLICKY!!</a>', '', 0, 1);
INSERT INTO `node` VALUES (4, 'story', 'continuing changes..', 2, 1, 1129709774, 1129709814, 2, 1, 0, 'The site will continue to improve, im currently changing graphics and css, will work on the template files later. :)', 'The site will continue to improve, im currently changing graphics and css, will work on the template files later. :)', '', 0, 1);
INSERT INTO `node` VALUES (5, 'story', 'Rainy day.', 1, 1, 1129709361, 1129710096, 2, 1, 0, '<h1>Rainy Day 0.1</h1>\r\n\r\nThis is my first official release. Treat it as such. Bugs can be filed here as a comment, or mentioned on IRC.\r\n\r\nSame goes for suggestions. \r\n\r\n<a href="http://kingrayray.wallooza.org/2005-10-19-010554_1280x1024_scrot.png">Screenshot!</a>\r\n\r\n<a href="http://kingrayray.wallooza.org/rainyday-0.1.edj">Download it!!</a>', '<h1>Rainy Day 0.1</h1>\r\n\r\nThis is my first official release. Treat it as such. Bugs can be filed here as a comment, or mentioned on IRC.\r\n\r\nSame goes for suggestions. \r\n\r\n<a href="http://kingrayray.wallooza.org/2005-10-19-010554_1280x1024_scrot.png">Screenshot!</a>\r\n\r\n<a href="http://kingrayray.wallooza.org/rainyday-0.1.edj">Download it!!</a>', '', 0, 1);
INSERT INTO `node` VALUES (6, 'story', 'Propaganda', 2, 1, 1129716441, 1129716544, 2, 1, 0, 'just testing the images. Ninjapirates!!!111\r\n\r\n<img src="http://www.dxdstudio.com/npn/themes/ninjapirates/comingsoon.jpg">', 'just testing the images. Ninjapirates!!!111\r\n\r\n<img src="http://www.dxdstudio.com/npn/themes/ninjapirates/comingsoon.jpg">', '', 0, 3);
INSERT INTO `node` VALUES (8, 'story', 'Everything is coming together.', 1, 1, 1129754969, 1129755015, 2, 1, 0, 'And it''s all falling into place. If you have any issues let me know. User permissions should be set right.', 'And it''s all falling into place. If you have any issues let me know. User permissions should be set right.', '', 0, 1);
INSERT INTO `node` VALUES (9, 'blog', 'Trying new stuff.', 5, 1, 1129822817, 1129822998, 2, 1, 0, 'Ok so after hearing Devilhorns and CodeWarrior talk about how great Sourcemage is, I finally broke down and installed it on my laptop. I''m still in the process of getting everything set back up/customized for me but so far it seems like a great distribution.  Comparing it to Gentoo is a little difficult because it seems almost exactly the same.  I will keep you posted on my findings. ', 'Ok so after hearing Devilhorns and CodeWarrior talk about how great Sourcemage is, I finally broke down and installed it on my laptop. I''m still in the process of getting everything set back up/customized for me but so far it seems like a great distribution.  Comparing it to Gentoo is a little difficult because it seems almost exactly the same.  I will keep you posted on my findings. ', '', 0, 1);
INSERT INTO `node` VALUES (10, 'blog', 'More Coding', 3, 1, 1129859000, 1129859271, 2, 1, 0, 'After some initial coding with kingrayray on the new Rain module, I''m going to be getting back to the Mount module. I''ve done some updating to the get-e.org user guide to include the rain module and entropy. Now I can get back to coding the mount module...stay tuned !', 'After some initial coding with kingrayray on the new Rain module, I''m going to be getting back to the Mount module. I''ve done some updating to the get-e.org user guide to include the rain module and entropy. Now I can get back to coding the mount module...stay tuned !', '', 0, 1);
INSERT INTO `node` VALUES (11, 'blog', 'Ray''s back!', 1, 1, 1129917204, 1129917353, 2, 1, 0, 'After like.. two days of downtime, I''m back. I got tired of Ubuntu and installed Sourcemage. Now i''m cool too. *coughjasanddevilhorns*\r\n\r\nIt kicks ass. So far, it seems a bit faster than Gentoo. And instead of just *hoping* the optimizations you set in your cflags is good, it has a neat menu that tells you what each does. Little things like that. \r\n\r\nIt also has spells for tons of CVS stuff. Like Gaim. Which is equally sweet. \r\n\r\nAnyway, I''m back now. Still in Fluxbox, getting my basic software installed first, before I cast Enlightenment. ', 'After like.. two days of downtime, I''m back. I got tired of Ubuntu and installed Sourcemage. Now i''m cool too. *coughjasanddevilhorns*\r\n\r\nIt kicks ass. So far, it seems a bit faster than Gentoo. And instead of just *hoping* the optimizations you set in your cflags is good, it has a neat menu that tells you what each does. Little things like that. \r\n\r\nIt also has spells for tons of CVS stuff. Like Gaim. Which is equally sweet. \r\n\r\nAnyway, I''m back now. Still in Fluxbox, getting my basic software installed first, before I cast Enlightenment. ', '', 0, 1);
INSERT INTO `node` VALUES (12, 'blog', 'The Rain module, now Twisted(TM) approved!', 1, 1, 1129920489, 1129920649, 2, 1, 0, '[11:40] [+twisted`] ''n I really like rain man\r\n[11:40] [+twisted`] it really really looks good\r\n[11:40] [ kingrayray] thanks :)\r\n[11:40] [+twisted`] and trust me\r\n[11:40] [+twisted`] I''m not satisfied easy :)\r\n[11:40] [ kingrayray] well i''m glad you like it\r\n[11:40] [ kingrayray] i''m flattered :D\r\n[11:40] [+twisted`] yeah\r\n[11:40] [+twisted`] not many people can say twisted likes something they made :P\r\n[11:41] * twisted` puts twisted stamp of aproval on it\r\n', '[11:40] [+twisted`] ''n I really like rain man\r\n[11:40] [+twisted`] it really really looks good\r\n[11:40] [ kingrayray] thanks :)\r\n[11:40] [+twisted`] and trust me\r\n[11:40] [+twisted`] I''m not satisfied easy :)\r\n[11:40] [ kingrayray] well i''m glad you like it\r\n[11:40] [ kingrayray] i''m flattered :D\r\n[11:40] [+twisted`] yeah\r\n[11:40] [+twisted`] not many people can say twisted likes something they made :P\r\n[11:41] * twisted` puts twisted stamp of aproval on it\r\n', '', 0, 1);
INSERT INTO `node` VALUES (13, 'blog', 'Google adsense', 2, 1, 1129966186, 1129966230, 2, 1, 0, 'Just put up a google search bar and added some adsense content :)', 'Just put up a google search bar and added some adsense content :)', '', 0, 1);
INSERT INTO `node` VALUES (14, 'blog', 'Mount Module Preview', 3, 1, 1130102940, 1130103011, 2, 1, 0, 'Here''s a quick preview of the upcoming mount module. Take a look in the Xnest of this screeny and you''ll see the mount module in edit mode.\r\n\r\nhttp://home.comcast.net/~devilhorns/images/mount.png', 'Here''s a quick preview of the upcoming mount module. Take a look in the Xnest of this screeny and you''ll see the mount module in edit mode.\r\n\r\nhttp://home.comcast.net/~devilhorns/images/mount.png', '', 0, 1);
INSERT INTO `node` VALUES (15, 'blog', 'edevelop.org..', 2, 1, 1130208086, 1130208183, 2, 1, 0, 'Well, Shadoi approached me regarding the new re-skin of edevelop.org to match the existing enlightenment community sites. Everyone has told me I should do it, but either way, I plan on doing it. So, soon enough edevelop.org will have a new drupal skin made by me :)\r\n\r\n(perhaps shadoi can sign up to the npn site :D)', 'Well, Shadoi approached me regarding the new re-skin of edevelop.org to match the existing enlightenment community sites. Everyone has told me I should do it, but either way, I plan on doing it. So, soon enough edevelop.org will have a new drupal skin made by me :)\r\n\r\n(perhaps shadoi can sign up to the npn site :D)', '', 0, 1);
INSERT INTO `node` VALUES (16, 'blog', 'damn', 1, 1, 1130279082, 1130279124, 2, 1, 0, 'ok i nuked sourcemage and installe gentoo, just thought i''d put that out there.\r\n\r\nand to provoke a flamewar, i''ve been booting windows periodically to play CS:Source and Anarchy Online\r\n\r\nlet the flaming begin :)', 'ok i nuked sourcemage and installe gentoo, just thought i''d put that out there.\r\n\r\nand to provoke a flamewar, i''ve been booting windows periodically to play CS:Source and Anarchy Online\r\n\r\nlet the flaming begin :)', '', 0, 1);
INSERT INTO `node` VALUES (17, 'story', 'Participation', 1, 1, 1130367292, 1130367363, 2, 1, 0, 'Hey guys. If you''re working on something, or planning to work on something, please keep us updated. Use the blog function, and just put up a tidbit about your plans and progress. Ninjapirate is a team effort, so we need to keep each other updated. Not everybody can be on IRC at all times ;P', 'Hey guys. If you''re working on something, or planning to work on something, please keep us updated. Use the blog function, and just put up a tidbit about your plans and progress. Ninjapirate is a team effort, so we need to keep each other updated. Not everybody can be on IRC at all times ;P', '', 0, 1);
INSERT INTO `node` VALUES (18, 'blog', 'Code, Code, And More Code', 3, 1, 1130552106, 1130552411, 2, 1, 0, 'Been busy coding...\r\n\r\nUpdated the rain module:\r\n   * Allow Clicking On Clouds To Bring Up The E Main Menu\r\n   * Change cloud image with one provided by our own Surtsey !!\r\n\r\nUpdated the mount module:\r\n   * Fixed the horizontal/vertical layouts on startup\r\n   * Added a right-click config menu\r\n   * Fixed E stalls when mounting a device\r\n\r\nThe new rain module can be gotten from the Add-Ons->Modules page of get-e.org . The mount module is not quite ready for release yet. I still need to add icons for mounted/unmounted states, then I''ll probably release it.\r\n', 'Been busy coding...\r\n\r\nUpdated the rain module:\r\n   * Allow Clicking On Clouds To Bring Up The E Main Menu\r\n   * Change cloud image with one provided by our own Surtsey !!\r\n\r\nUpdated the mount module:\r\n   * Fixed the horizontal/vertical layouts on startup\r\n   * Added a right-click config menu\r\n   * Fixed E stalls when mounting a device\r\n\r\nThe new rain module can be gotten from the Add-Ons->Modules page of get-e.org . The mount module is not quite ready for release yet. I still need to add icons for mounted/unmounted states, then I''ll probably release it.\r\n', '', 0, 1);
INSERT INTO `node` VALUES (21, 'blog', 'Ok, I finally got around to it.', 1, 1, 1130636831, 1130636950, 2, 1, 0, 'Finally. I got the motivation to work on my theme! Current version is not available for download, I''m only circulating it between trusted people at the moment. :P But here''s a teaser shot!\r\n\r\n<a href="http://kingrayray.wallooza.org/2005-10-29-184524_1280x1024_scrot.png">Screenshot!</a>\r\n\r\nAlso, special thanks to CodeWarrior for giving me a bit of advice on Edje :)', 'Finally. I got the motivation to work on my theme! Current version is not available for download, I''m only circulating it between trusted people at the moment. :P But here''s a teaser shot!\r\n\r\n<a href="http://kingrayray.wallooza.org/2005-10-29-184524_1280x1024_scrot.png">Screenshot!</a>\r\n\r\nAlso, special thanks to CodeWarrior for giving me a bit of advice on Edje :)', '', 0, 1);
INSERT INTO `node` VALUES (22, 'blog', 'Mount Module Has Arrived !!', 3, 1, 1130682695, 1130682959, 2, 1, 0, 'After a long, long, long night of hacking at code the mount module is finally ready ! You can grab it at my site <a href="http://home.comcast.net/~devilhorns/e17modules/mount.tar.gz">here</a> . BE SURE TO CHECK THE README before you do anything !!\r\n\r\nPlease test it thoroughly for me before I upload it to get-e.org . \r\nLet me know if you have any problems (Hawkwind, I know about yours :-) ) .\r\n\r\nEnjoy !!\r\n', 'After a long, long, long night of hacking at code the mount module is finally ready ! You can grab it at my site <a href="http://home.comcast.net/~devilhorns/e17modules/mount.tar.gz">here</a> . BE SURE TO CHECK THE README before you do anything !!\r\n\r\nPlease test it thoroughly for me before I upload it to get-e.org . \r\nLet me know if you have any problems (Hawkwind, I know about yours :-) ) .\r\n\r\nEnjoy !!\r\n', '', 0, 1);
INSERT INTO `node` VALUES (23, 'blog', 'Rainy d... er that name sucks. BUT UPDATES!!', 1, 1, 1130916058, 1130918362, 2, 1, 0, 'I blame the stupid name on my location. \r\n\r\n<b>But, I''ve updated the theme nonetheless! Changes include:</b>\r\n<ul>New menu graphic, along with windowlist and pager popup\r\nSome minor font changes, bolding and white shadowing in the menu\r\nTurned off the "shaped" flag in the border code, minor speed improvement</ul>\r\n\r\nMore changes are coming, slowly but surely.\r\n<a href="http://kingrayray.wallooza.org/shot.png"><img src="http://kingrayray.wallooza.org/thumbshot.png"></a>\r\n<h2><a href="http://kingrayray.wallooza.org/icetest2.edj">Grab it!</a></h2>\r\n\r\n<b>If you''d like to help me out a bit, click read more.</b>\r\n', 'I blame the stupid name on my location. \r\n\r\n<b>But, I''ve updated the theme nonetheless! Changes include:</b>\r\n<ul>New menu graphic, along with windowlist and pager popup\r\nSome minor font changes, bolding and white shadowing in the menu\r\nTurned off the "shaped" flag in the border code, minor speed improvement</ul>\r\n\r\nMore changes are coming, slowly but surely.\r\n<a href="http://kingrayray.wallooza.org/shot.png"><img src="http://kingrayray.wallooza.org/thumbshot.png"></a>\r\n<h2><a href="http://kingrayray.wallooza.org/icetest2.edj">Grab it!</a></h2>\r\n\r\n<b>If you''d like to help me out a bit, click read more.</b>\r\n<!--break-->\r\n<b>Here are some things I need:</b>\r\n<ul>NEW NAME. Suggestions welcome!\r\nI''m considering making this theme in 2-3 <b>"flavors"</b>, new colors. Suggestions plz!\r\nAnd any other ideas, suggestions, or critiques you may have regarding it.</ul>\r\n\r\nAnd a small treat for those of you who read more! The first version of the wallpaper to match my theme. I plan to animate this someday, but for now, this''ll do. I like it, I hope you do too. Available in PNG and EDJ.\r\n\r\n(<a href="http://kingrayray.wallooza.org/try.png">PNG</a>|<a href="http://kingrayray.wallooza.org/try.edj">EDJ</a>)', '', 0, 3);
INSERT INTO `node` VALUES (20, 'blog', 'The horror!', 8, 1, 1130558124, 1130559631, 2, 1, 0, 'Perhaps completely unintentional, perhaps a quirk of fate, however it was brought to be; I''m now a ninjapirate.\r\n\r\nAnyway.  I''m useless in the area of C, due to the fact that the daunting task of learning enough to make myself useful is enough to make me cry like a little girl.  That doesn''t mean I can''t do other spiffy things, though.\r\n\r\nRight now I''m (lazily, but with a slowly improving pace) working on ninjabot for #ninjapirate.  I hard-coded a `fortune command so people can get the impression I''m actually doing something.  The actual core of the bot - which doesn''t include anything in hard-code - is modular and extremely flexible that will allow writing and loading of new modules on the fly with no restarts or hiccups.  It''s in PERL and uses Net::IRC rather than raw sockets, because I''m both lazy and lacking in the amount of time raw sockets would require.\r', 'Perhaps completely unintentional, perhaps a quirk of fate, however it was brought to be; I''m now a ninjapirate.\r\n\r\nAnyway.  I''m useless in the area of C, due to the fact that the daunting task of learning enough to make myself useful is enough to make me cry like a little girl.  That doesn''t mean I can''t do other spiffy things, though.\r\n\r\nRight now I''m (lazily, but with a slowly improving pace) working on ninjabot for #ninjapirate.  I hard-coded a `fortune command so people can get the impression I''m actually doing something.  The actual core of the bot - which doesn''t include anything in hard-code - is modular and extremely flexible that will allow writing and loading of new modules on the fly with no restarts or hiccups.  It''s in PERL and uses Net::IRC rather than raw sockets, because I''m both lazy and lacking in the amount of time raw sockets would require.\r\n\r\nI''m also analyzing edje and the way current projects are constructed around it in an attempt to get a decent grasp of how to write themes.  Once I pick it up, you''ll see some snazzy stuff.\r\n\r\nAnd finally, devilhorns and I have been touching up the E17 rain module a little.  It''s super spiffy now - and will be about three times (hint hint) spiffier in the near future if all goes to plan.\r\n\r\n<strong>Update:\r\nI hate drupal</strong>', '', 0, 1);
INSERT INTO `node` VALUES (24, 'page', 'About the Ninjapirates', 1, 1, 1130917140, 1130917219, 2, 0, 0, 'A lot of people seem to go "WTF?" when we are mentioned. So I''m starting this little ''about'' page. Edit it to your liking, guys.\r\n\r\nFirst, we are not some internet network thingy. We''re a social network. People!\r\n\r\n..er yeah add more :P', 'A lot of people seem to go "WTF?" when we are mentioned. So I''m starting this little ''about'' page. Edit it to your liking, guys.\r\n\r\nFirst, we are not some internet network thingy. We''re a social network. People!\r\n\r\n..er yeah add more :P', '', 0, 1);
INSERT INTO `node` VALUES (25, 'blog', 'Two new modules', 3, 1, 1131212566, 1131336782, 2, 1, 0, 'Released today two new modules, mount and screenshot !! Get ''em while they''re hot at get-e.org', 'Released today two new modules, mount and screenshot !! Get ''em while they''re hot at get-e.org', '', 0, 1);
INSERT INTO `node` VALUES (26, 'blog', 'Offical changes to my theme', 1, 1, 1131972126, 1131977386, 2, 1, 0, 'As suggested by misunderstruck, I''m changing my theme''s name (and idea base) to Neptune. I''m not entirely sure how I''m going to implement it, but as of right now I''m messing around in Gimp, scratching for ideas here. Any thoughts on how to implement such an idea are more than welcome. :)\r\n\r\nIn summary, icetest-0.1 is now neptune-0.1. Filenames will be updated soon, along with new links once I get an update done.\r\n\r\n<img src="http://kingrayray.wallooza.org/aboutbox.png">\r\n<b>EDIT: LINK IS HERE:</b>\r\n<a href="http://kingrayray.wallooza.org/neptune-0.1.edj">http://kingrayray.wallooza.org/neptune-0.1.edj</a>\r\n', 'As suggested by misunderstruck, I''m changing my theme''s name (and idea base) to Neptune. I''m not entirely sure how I''m going to implement it, but as of right now I''m messing around in Gimp, scratching for ideas here. Any thoughts on how to implement such an idea are more than welcome. :)\r\n\r\nIn summary, icetest-0.1 is now neptune-0.1. Filenames will be updated soon, along with new links once I get an update done.\r\n\r\n<img src="http://kingrayray.wallooza.org/aboutbox.png">\r\n<b>EDIT: LINK IS HERE:</b>\r\n<a href="http://kingrayray.wallooza.org/neptune-0.1.edj">http://kingrayray.wallooza.org/neptune-0.1.edj</a>\r\n<!--break-->', '', 0, 3);
INSERT INTO `node` VALUES (27, 'blog', 'Neptune!', 1, 1, 1132738734, 1132766490, 2, 1, 0, 'And you guys thought I was dead :D\r\n\r\nSmall update to Neptune, and I''ve bumped it up to version 0.5. I redid the startup notify, since a snowflake has nothing to do with Neptune. I also did a cheesy theme-job on the battery and cpufreq modules, I didn''t redesign them entirely, mostly because I like how default has them.. just did a bit of coloring. Have fun!\r\n\r\n<b>Updated again after sleeping some, ibar is now redesigned, but the follower looks lame.. it will change.</b>\r\n<a href="http://kingrayray.wallooza.org/neptune-0.5.edj">http://kingrayray.wallooza.org/neptune-0.5.edj</a>', 'And you guys thought I was dead :D\r\n\r\nSmall update to Neptune, and I''ve bumped it up to version 0.5. I redid the startup notify, since a snowflake has nothing to do with Neptune. I also did a cheesy theme-job on the battery and cpufreq modules, I didn''t redesign them entirely, mostly because I like how default has them.. just did a bit of coloring. Have fun!\r\n\r\n<b>Updated again after sleeping some, ibar is now redesigned, but the follower looks lame.. it will change.</b>\r\n<a href="http://kingrayray.wallooza.org/neptune-0.5.edj">http://kingrayray.wallooza.org/neptune-0.5.edj</a>', '', 0, 3);
INSERT INTO `node` VALUES (28, 'blog', 'Wrapping it up.', 1, 1, 1133228480, 1133228520, 2, 1, 0, 'I''m trying to wrap up work on Neptune now, to make way for another idea Digital and I have.\r\n\r\nSo this is it. Anything that needs to be fixed, let me know ASAP.', 'I''m trying to wrap up work on Neptune now, to make way for another idea Digital and I have.\r\n\r\nSo this is it. Anything that needs to be fixed, let me know ASAP.', '', 0, 1);
INSERT INTO `node` VALUES (29, 'blog', 'here..', 1, 1, 1133661734, 1133662132, 2, 1, 0, 'here''s a little something i came up with when I decided I wanted a nice dark theme. special thanks to Gulivert foir doing the actual work. it''s based on simply-white, i more or less just redid some gfx and coloring. I''m not sure if i plan to actually put any work into it, I just wanted a theme to use when I have dark wallpapers.\r\n\r\n<a href="http://kingrayray.wallooza.org/black.edj">black.edj [1.2MB]</a>', 'here''s a little something i came up with when I decided I wanted a nice dark theme. special thanks to Gulivert foir doing the actual work. it''s based on simply-white, i more or less just redid some gfx and coloring. I''m not sure if i plan to actually put any work into it, I just wanted a theme to use when I have dark wallpapers.\r\n\r\n<a href="http://kingrayray.wallooza.org/black.edj">black.edj [1.2MB]</a>', '', 0, 3);

-- --------------------------------------------------------

-- 
-- Table structure for table `node_access`
-- 

CREATE TABLE `node_access` (
  `nid` int(10) unsigned NOT NULL default '0',
  `gid` int(10) unsigned NOT NULL default '0',
  `realm` varchar(255) NOT NULL default '',
  `grant_view` tinyint(1) unsigned NOT NULL default '0',
  `grant_update` tinyint(1) unsigned NOT NULL default '0',
  `grant_delete` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`,`gid`,`realm`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `node_access`
-- 

INSERT INTO `node_access` VALUES (0, 0, 'all', 1, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `node_comment_statistics`
-- 

CREATE TABLE `node_comment_statistics` (
  `nid` int(10) unsigned NOT NULL auto_increment,
  `last_comment_timestamp` int(11) NOT NULL default '0',
  `last_comment_name` varchar(60) default NULL,
  `last_comment_uid` int(10) NOT NULL default '0',
  `comment_count` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  KEY `node_comment_timestamp` (`last_comment_timestamp`)
) TYPE=MyISAM AUTO_INCREMENT=30 ;

-- 
-- Dumping data for table `node_comment_statistics`
-- 

INSERT INTO `node_comment_statistics` VALUES (1, 1129879236, '', 3, 2);
INSERT INTO `node_comment_statistics` VALUES (2, 1129705944, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (3, 1129706349, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (4, 1129709774, NULL, 2, 0);
INSERT INTO `node_comment_statistics` VALUES (5, 1129709361, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (6, 1129716441, NULL, 2, 0);
INSERT INTO `node_comment_statistics` VALUES (8, 1129754969, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (9, 1129822817, NULL, 5, 0);
INSERT INTO `node_comment_statistics` VALUES (10, 1129859000, NULL, 3, 0);
INSERT INTO `node_comment_statistics` VALUES (11, 1129917204, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (12, 1129920489, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (13, 1129966883, '', 2, 1);
INSERT INTO `node_comment_statistics` VALUES (14, 1130106863, '', 1, 1);
INSERT INTO `node_comment_statistics` VALUES (15, 1130208086, NULL, 2, 0);
INSERT INTO `node_comment_statistics` VALUES (16, 1130366472, '', 1, 2);
INSERT INTO `node_comment_statistics` VALUES (17, 1130367292, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (18, 1130552106, NULL, 3, 0);
INSERT INTO `node_comment_statistics` VALUES (21, 1130636831, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (20, 1130558124, NULL, 8, 0);
INSERT INTO `node_comment_statistics` VALUES (22, 1131212683, '', 3, 2);
INSERT INTO `node_comment_statistics` VALUES (23, 1131947919, '', 1, 3);
INSERT INTO `node_comment_statistics` VALUES (24, 1130917140, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (25, 1131242980, '', 3, 2);
INSERT INTO `node_comment_statistics` VALUES (26, 1131972126, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (27, 1132738734, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (28, 1133228480, NULL, 1, 0);
INSERT INTO `node_comment_statistics` VALUES (29, 1133661734, NULL, 1, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `node_counter`
-- 

CREATE TABLE `node_counter` (
  `nid` int(11) NOT NULL default '0',
  `totalcount` bigint(20) unsigned NOT NULL default '0',
  `daycount` mediumint(8) unsigned NOT NULL default '0',
  `timestamp` int(11) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`),
  KEY `totalcount` (`totalcount`),
  KEY `daycount` (`daycount`),
  KEY `timestamp` (`timestamp`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `node_counter`
-- 

INSERT INTO `node_counter` VALUES (2, 19, 19, 1133460713);
INSERT INTO `node_counter` VALUES (0, 482, 482, 1133761742);
INSERT INTO `node_counter` VALUES (3, 12, 12, 1133448223);
INSERT INTO `node_counter` VALUES (4, 8, 8, 1133335584);
INSERT INTO `node_counter` VALUES (5, 14, 14, 1133448041);
INSERT INTO `node_counter` VALUES (6, 12, 12, 1133335767);
INSERT INTO `node_counter` VALUES (7, 1, 1, 1129717012);
INSERT INTO `node_counter` VALUES (8, 17, 17, 1133335948);
INSERT INTO `node_counter` VALUES (1, 18, 18, 1133448404);
INSERT INTO `node_counter` VALUES (9, 8, 8, 1133336317);
INSERT INTO `node_counter` VALUES (10, 10, 10, 1133336498);
INSERT INTO `node_counter` VALUES (11, 17, 17, 1133336679);
INSERT INTO `node_counter` VALUES (12, 26, 26, 1133733339);
INSERT INTO `node_counter` VALUES (13, 29, 29, 1133337043);
INSERT INTO `node_counter` VALUES (14, 37, 37, 1133351833);
INSERT INTO `node_counter` VALUES (15, 23, 23, 1133598847);
INSERT INTO `node_counter` VALUES (16, 51, 51, 1133735373);
INSERT INTO `node_counter` VALUES (17, 11, 11, 1133612252);
INSERT INTO `node_counter` VALUES (18, 22, 22, 1133733316);
INSERT INTO `node_counter` VALUES (19, 1, 1, 1130559485);
INSERT INTO `node_counter` VALUES (20, 55, 55, 1133722522);
INSERT INTO `node_counter` VALUES (21, 33, 33, 1133736988);
INSERT INTO `node_counter` VALUES (22, 49, 49, 1133736989);
INSERT INTO `node_counter` VALUES (23, 94, 94, 1133611895);
INSERT INTO `node_counter` VALUES (24, 6, 6, 1133068654);
INSERT INTO `node_counter` VALUES (25, 50, 50, 1133733278);
INSERT INTO `node_counter` VALUES (26, 57, 57, 1133729568);
INSERT INTO `node_counter` VALUES (27, 26, 26, 1133719827);
INSERT INTO `node_counter` VALUES (28, 18, 18, 1133719834);
INSERT INTO `node_counter` VALUES (29, 8, 8, 1133761904);

-- --------------------------------------------------------

-- 
-- Table structure for table `permission`
-- 

CREATE TABLE `permission` (
  `rid` int(10) unsigned NOT NULL default '0',
  `perm` longtext,
  `tid` int(10) unsigned NOT NULL default '0',
  KEY `rid` (`rid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `permission`
-- 

INSERT INTO `permission` VALUES (1, 'access content', 0);
INSERT INTO `permission` VALUES (2, 'access news feeds, administer news feeds, access comments, post comments, post comments without approval, access content', 0);
INSERT INTO `permission` VALUES (3, 'access news feeds, administer news feeds, administer blocks, edit own blog, create book pages, edit own book pages, maintain books, access comments, administer comments, administer moderation, moderate comments, post comments, post comments without approval, administer filters, administer locales, administer menu, access content, administer nodes, create pages, edit own pages, administer search, search content, access statistics, create stories, edit own stories, access administration pages, administer site configuration, bypass input data check, administer taxonomy, access user profiles, administer users, administer watchdog', 0);
INSERT INTO `permission` VALUES (4, 'access news feeds, administer news feeds, administer blocks, edit own blog, create book pages, edit own book pages, maintain books, access comments, administer comments, administer moderation, moderate comments, post comments, post comments without approval, administer filters, administer locales, administer menu, access content, administer nodes, create pages, edit own pages, administer search, search content, access statistics, create stories, edit own stories, access administration pages, administer site configuration, administer taxonomy, access user profiles, administer users, administer watchdog', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `poll`
-- 

CREATE TABLE `poll` (
  `nid` int(10) unsigned NOT NULL default '0',
  `runtime` int(10) NOT NULL default '0',
  `polled` longtext NOT NULL,
  `active` int(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`nid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `poll`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `poll_choices`
-- 

CREATE TABLE `poll_choices` (
  `chid` int(10) unsigned NOT NULL auto_increment,
  `nid` int(10) unsigned NOT NULL default '0',
  `chtext` varchar(128) NOT NULL default '',
  `chvotes` int(6) NOT NULL default '0',
  `chorder` int(2) NOT NULL default '0',
  PRIMARY KEY  (`chid`),
  KEY `nid` (`nid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `poll_choices`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `profile_fields`
-- 

CREATE TABLE `profile_fields` (
  `fid` int(10) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `name` varchar(128) default NULL,
  `explanation` text,
  `category` varchar(255) default NULL,
  `page` varchar(255) default NULL,
  `type` varchar(128) default NULL,
  `weight` tinyint(1) NOT NULL default '0',
  `required` tinyint(1) NOT NULL default '0',
  `register` tinyint(1) NOT NULL default '0',
  `visibility` tinyint(1) NOT NULL default '0',
  `options` text,
  PRIMARY KEY  (`fid`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `profile_fields`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `profile_values`
-- 

CREATE TABLE `profile_values` (
  `fid` int(10) unsigned default '0',
  `uid` int(10) unsigned default '0',
  `value` text,
  KEY `uid` (`uid`),
  KEY `fid` (`fid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `profile_values`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `queue`
-- 

CREATE TABLE `queue` (
  `nid` int(10) unsigned NOT NULL default '0',
  `uid` int(10) unsigned NOT NULL default '0',
  `vote` int(3) NOT NULL default '0',
  PRIMARY KEY  (`nid`,`uid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `queue`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `role`
-- 

CREATE TABLE `role` (
  `rid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  PRIMARY KEY  (`rid`),
  UNIQUE KEY `name` (`name`)
) TYPE=MyISAM AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `role`
-- 

INSERT INTO `role` VALUES (1, 'anonymous user');
INSERT INTO `role` VALUES (2, 'authenticated user');
INSERT INTO `role` VALUES (3, 'administrator');
INSERT INTO `role` VALUES (4, 'Ninjapirate');

-- --------------------------------------------------------

-- 
-- Table structure for table `search_index`
-- 

CREATE TABLE `search_index` (
  `word` varchar(50) NOT NULL default '',
  `sid` int(10) unsigned NOT NULL default '0',
  `type` varchar(16) default NULL,
  `fromsid` int(10) unsigned NOT NULL default '0',
  `fromtype` varchar(16) default NULL,
  `score` int(10) unsigned default NULL,
  KEY `sid` (`sid`),
  KEY `fromsid` (`fromsid`),
  KEY `word` (`word`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `search_index`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `search_total`
-- 

CREATE TABLE `search_total` (
  `word` varchar(50) NOT NULL default '',
  `count` int(10) unsigned default NULL,
  PRIMARY KEY  (`word`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `search_total`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `sequences`
-- 

CREATE TABLE `sequences` (
  `name` varchar(255) NOT NULL default '',
  `id` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`name`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `sequences`
-- 

INSERT INTO `sequences` VALUES ('menu_mid', 60);
INSERT INTO `sequences` VALUES ('users_uid', 11);
INSERT INTO `sequences` VALUES ('node_nid', 29);
INSERT INTO `sequences` VALUES ('comments_cid', 13);
INSERT INTO `sequences` VALUES ('vocabulary_vid', 2);
INSERT INTO `sequences` VALUES ('aggregator_feed_fid', 4);
INSERT INTO `sequences` VALUES ('aggregator_item_iid', 52);
INSERT INTO `sequences` VALUES ('aggregator_category_cid', 1);

-- --------------------------------------------------------

-- 
-- Table structure for table `sessions`
-- 

CREATE TABLE `sessions` (
  `uid` int(10) unsigned NOT NULL default '0',
  `sid` varchar(32) NOT NULL default '',
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  `session` longtext,
  PRIMARY KEY  (`sid`),
  KEY `uid` (`uid`),
  KEY `timestamp` (`timestamp`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `sessions`
-- 

INSERT INTO `sessions` VALUES (0, '1966377ad912f06528b41eb1a194ecdd', '72.14.199.10', 1133696965, '');
INSERT INTO `sessions` VALUES (0, 'b9536c415db2df9dd83705ee96db9c5a', '207.46.98.149', 1133696788, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'fd0b26df85049d9c73b5b6b7ae6972e3', '72.14.199.10', 1133693365, '');
INSERT INTO `sessions` VALUES (0, '6e841c6e70ea790d0efdf63ad1d9cae7', '72.14.199.10', 1133689765, '');
INSERT INTO `sessions` VALUES (0, 'd1444e422bef7d4873c29c6a4de1274a', '207.46.98.149', 1133686973, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'c9f7992f682259ba78410487a86c48d6', '72.14.199.10', 1133686165, '');
INSERT INTO `sessions` VALUES (0, '4b61ba914f3033a68d6d86c2768985ff', '72.14.199.10', 1133682565, '');
INSERT INTO `sessions` VALUES (0, '60aa0474953be3459a282402f9e5b2bb', '72.14.199.10', 1133678965, '');
INSERT INTO `sessions` VALUES (0, 'eadfd18a86fbae822e55520357864e62', '207.46.98.149', 1133677293, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '898713b20cea57c232dad42e72aa6e10', '72.14.199.10', 1133675365, '');
INSERT INTO `sessions` VALUES (0, '43936a63c73e4d1391ed308679e0ea21', '72.14.199.10', 1133671765, '');
INSERT INTO `sessions` VALUES (0, 'f9899426adf35c806bdbb932804a30c1', '72.131.21.129', 1133670451, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'f589b142bb02300b1b471ed176415af3', '72.14.199.10', 1133668165, '');
INSERT INTO `sessions` VALUES (0, '6c12be88ae8f018be9eb33ee7a3b3fb2', '66.249.65.195', 1133662133, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '22db0a6e93f400c6b2fe454485cc8fe5', '72.14.199.10', 1133664565, '');
INSERT INTO `sessions` VALUES (0, '2f803843294f1bd765440ee2ae5103f5', '66.249.65.195', 1133661740, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '936459989d3fecce11bb1b7e8ffa19f3', '66.249.65.195', 1133661733, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'df6d0784c67d940abab7c16264f49151', '66.249.65.195', 1133661012, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'b32f92be086f1ec0f9dc918db2d5b90f', '72.14.199.10', 1133660965, '');
INSERT INTO `sessions` VALUES (0, 'b886d046f49909a60a442ec2c99197e7', '207.46.98.149', 1133660500, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'b297eeb15c832f0c9b6d5cdd016fa036', '72.14.199.10', 1133657365, '');
INSERT INTO `sessions` VALUES (0, 'ea5a71e2f17a95ea69cc378d799a86a8', '72.14.199.10', 1133653765, '');
INSERT INTO `sessions` VALUES (0, '90ecc37b7ba0057d7d1538afe6ccf8da', '66.249.65.195', 1133652843, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '128a9cb184a63a02ac2db121b5a8b58c', '72.14.199.10', 1133642861, '');
INSERT INTO `sessions` VALUES (0, '0be9032b3e5bfe1ca92b7a9732dbf11e', '207.46.98.149', 1133642273, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e29bcbd77623df8e3aa5cf28f2aaae00', '207.46.98.149', 1133641529, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '0b9a84231a1b703dbadca65a4ce12241', '207.46.98.149', 1133641528, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'f7fc6ee878806493c0fb138bb6a4353a', '207.46.98.149', 1133641528, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '53c93238469744679bbe0b8f4d9d4c72', '207.46.98.149', 1133641527, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '226485a9937d06c64f91f983c858c048', '207.46.98.149', 1133641523, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'ab9461b64d0aeebd20de5a1c50516c08', '207.46.98.149', 1133641522, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '6f1e8fe745019da3baf85a9fd9ec552d', '72.14.199.10', 1133639263, '');
INSERT INTO `sessions` VALUES (0, '44cbe80629dac68b6cf81b61cdb8a1c7', '207.46.98.149', 1133639236, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '30a399615e76e1527234dd9697fbc71c', '207.46.98.149', 1133639213, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '894f9ca9bc986fc4bafd2396c3d69a81', '207.46.98.149', 1133638470, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '146eb62a65c2ffced887a416bbd97e3c', '207.46.98.149', 1133635185, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '46836c2c8100235e4032113b247f99cf', '207.46.98.149', 1133635179, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e25af22854e234ee5d8644aed13303cb', '207.46.98.149', 1133632468, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '1f41049acdb7d7b82cac588d322083b9', '207.46.98.149', 1133632449, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'c519d9060ca5b116fca930dd6d38f9ff', '207.46.98.149', 1133632214, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'd8c13f7f9bb6ff9fe7bcf57da4f07ecb', '207.46.98.149', 1133629348, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '89015b232c22a16969ee149ba1a1ec9e', '66.249.65.195', 1133629313, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'ba25eadb6f8fddb9034cad55e8c3e8cd', '207.46.98.149', 1133629282, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '18c9a1d0a6bfeab17ff47b738c36fffc', '207.46.98.149', 1133629272, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '5d3f45fe7767f0efba5f1be9e252aeb8', '72.14.199.10', 1133624042, '');
INSERT INTO `sessions` VALUES (0, 'd43953134922a5739dbec4139af7f3a1', '207.46.98.149', 1133621650, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '04dbf1a7aec72dfff29b330974d5f1d2', '72.14.199.10', 1133620444, '');
INSERT INTO `sessions` VALUES (0, '05d5178eb04dd81359542752f4c29031', '72.14.199.10', 1133616845, '');
INSERT INTO `sessions` VALUES (0, 'e7dd9fc062d46b7247b1e58e8d4866df', '72.14.199.10', 1133613246, '');
INSERT INTO `sessions` VALUES (0, '5e474ded2a6be6eb6d39baedbd55db13', '66.249.65.195', 1133612293, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'fe803301c1ba0e226867b89553066abf', '66.249.65.195', 1133612252, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'fe1facd85ebd836f4025051730d26d74', '66.249.65.195', 1133612199, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'a93524e365d910a853804c36ec0ef260', '66.249.65.195', 1133612153, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '94623be7c45de20f5a28a13bacae9e64', '66.249.65.195', 1133612115, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '54bb76b310755cc98f49392f9676e6df', '66.249.65.195', 1133612099, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'f1c95362835fad4e104927aabad79446', '66.249.65.195', 1133612048, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '2f4681e3bdee70dbb1059b50ddb02cfd', '66.249.65.195', 1133611983, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '5afdb008b9faf729e70e4c2bcc7006ca', '66.249.65.195', 1133611941, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '6d0c2216cbc82b9ce9083b542f9fb83d', '66.249.65.195', 1133611895, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '4e09b6fe7f66e1e5816b66cb047e6d2a', '66.249.65.195', 1133611731, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '60ee4aa046852d9bb993397d6af9df3e', '66.249.65.195', 1133611703, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '8df375254f0901c54906354492684142', '72.14.199.10', 1133609648, '');
INSERT INTO `sessions` VALUES (0, '3ba4757a971d7b204d02619e2945cc22', '66.249.65.195', 1133609535, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e605baa745788ce639e1f32c74089ee6', '66.249.65.195', 1133609276, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'baafcd35b69b46cf709398d259556ff4', '66.249.65.195', 1133609098, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'c16d38c11b1ad86520992b6c06ab6c94', '66.249.65.195', 1133609027, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '79685a602b91c05307f6a7bc3f24eb41', '66.249.65.195', 1133608895, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'c72f4b0fe08477c83653ff3989351c3d', '72.14.199.10', 1133606049, '');
INSERT INTO `sessions` VALUES (0, 'd5149e89ca1655d0ca5d73ab0580b843', '66.249.65.195', 1133608516, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '657531ec73d99c1d7cb66a4102a11241', '72.14.199.10', 1133602450, '');
INSERT INTO `sessions` VALUES (0, '11112908ffe3b8b85f14a7d0cfb46e76', '207.46.98.149', 1133600757, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '54642ae11329db86513e24f3a9109091', '72.14.199.10', 1133598851, '');
INSERT INTO `sessions` VALUES (0, 'b5fb4f3929b827a003431f5f003e2b48', '207.46.98.149', 1133598847, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e211ac1d5bd2a02a87eedc42038c6dd4', '72.14.199.10', 1133595253, '');
INSERT INTO `sessions` VALUES (0, '0abadf178a72606b25358cff31db0c47', '72.14.199.10', 1133591654, '');
INSERT INTO `sessions` VALUES (0, '8e437e2493e3343c83a4142ae57a4bab', '72.14.199.10', 1133588055, '');
INSERT INTO `sessions` VALUES (0, '6a6fa266064d9b0253c5f2f0bb2250d7', '72.14.199.10', 1133584304, '');
INSERT INTO `sessions` VALUES (0, 'be551b4329cbe7e3a0c9c2a5bcf410a9', '72.14.199.10', 1133580705, '');
INSERT INTO `sessions` VALUES (0, '19ee6ecefb252178ea63331fde2696bc', '72.14.199.10', 1133576195, '');
INSERT INTO `sessions` VALUES (0, '889bb02727e026a2cf413e0e8497d656', '72.14.199.10', 1133572596, '');
INSERT INTO `sessions` VALUES (0, 'd632c6b3dfc1c18e5634c7f0bb82b596', '72.14.199.10', 1133568997, '');
INSERT INTO `sessions` VALUES (0, '0745abe7a480e557d6a1bd7548fa976b', '71.112.124.195', 1133566484, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '6f98fef998c0765f02e22af073bc3d4a', '72.14.199.10', 1133565399, '');
INSERT INTO `sessions` VALUES (0, 'c496ab5f5546fc013980907fa7030979', '207.46.98.149', 1133561847, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'd0f9da34433d45d6f020422f344f037b', '66.249.65.195', 1133561809, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '02f3cfefd2d9cf0f4a779066eec453a9', '72.14.199.10', 1133561800, '');
INSERT INTO `sessions` VALUES (0, '0fe10374b8094e41ad156b2b98666868', '72.14.199.10', 1133558186, '');
INSERT INTO `sessions` VALUES (0, '460778771014f82c45f7dd22df1a0bfb', '207.46.98.149', 1133553569, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '882ff9b7a22584d0228124be13ad66f0', '207.46.98.149', 1133553568, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '24947cb40b90cf07344dc1db50f4fffe', '207.46.98.149', 1133553568, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '8c6ba9faf4968bd96e4a4bc37d42d52f', '207.46.98.149', 1133553568, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '119a1dd20cb1a9a78726d6cb6208af9f', '207.46.98.149', 1133553567, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '92951b86ba8199f4729f9e35d7463a74', '207.46.98.149', 1133553358, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'a28e669e1f29ad3941dbae73976803b1', '207.46.98.149', 1133553356, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'a47ec1db35f3865c597747da80ec3484', '72.14.199.10', 1133546187, '');
INSERT INTO `sessions` VALUES (0, '347ddbf9cf1af2d361c61700e0c74835', '207.46.98.149', 1133545940, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '4be77396722366ac23781d6652769bde', '207.46.98.149', 1133545662, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '11f46f3b86c1fe2f89a635edcf7300ff', '207.46.98.149', 1133543586, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'b78fbd756a820e5fafc6f305a840cd63', '207.46.98.149', 1133542885, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'a80ffc63e042b53afc60aaecfb1ac170', '207.46.98.149', 1133542727, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '9bbce9c3a44061d6498b9b9358e4b8b8', '207.46.98.149', 1133539681, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'f77d9d90226ddc54be8ba74a7f5c20a1', '207.46.98.149', 1133539680, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '5c687b9bb6612f3113c0268c57209291', '207.46.98.149', 1133539679, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'af85f712c091b8627ef301e9c3804886', '72.14.199.10', 1133538457, '');
INSERT INTO `sessions` VALUES (0, '187b39fedf4832886df26b1171d3169d', '144.92.124.121', 1133537884, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e360e3e61fb73705af576ea364e94fa6', '207.46.98.149', 1133537385, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '377608aaa29b30d1fad2a1c547149ada', '207.46.98.149', 1133537385, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '5196468f8aa37daae48fdecb1c4404d7', '207.46.98.149', 1133537384, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'cea5abde68091c0b8d2424b981f8054f', '72.14.199.10', 1133532901, '');
INSERT INTO `sessions` VALUES (0, 'd305fa1c42e77d1fa3647f4928f3cc72', '72.14.199.10', 1133528681, '');
INSERT INTO `sessions` VALUES (0, 'e7c09e59f0c3fa236e276acdbb5e4a23', '82.123.223.197', 1133527944, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'c9d59ae165fc62997637094c90922d92', '207.46.98.149', 1133527233, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'f01217952ee3899732b2dd07dfdd2889', '72.14.199.10', 1133525081, '');
INSERT INTO `sessions` VALUES (0, 'adb5de30fa573d072cbd0a43bbab0331', '72.14.199.10', 1133521481, '');
INSERT INTO `sessions` VALUES (0, '0e3a9291129d0c815321fa344a8e31fb', '72.14.199.10', 1133517881, '');
INSERT INTO `sessions` VALUES (0, '6b91de41613ef8324642a1fa2855386b', '64.124.85.74', 1133515178, '');
INSERT INTO `sessions` VALUES (0, '0f16ec0121124c908899349510b74088', '72.14.199.10', 1133513655, '');
INSERT INTO `sessions` VALUES (0, 'be4186829a0f73c49a579a39a0651ac8', '72.14.199.10', 1133510055, '');
INSERT INTO `sessions` VALUES (0, 'f38c01ac3b3689362f1fd193bea2ad87', '207.46.98.149', 1133507654, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '21b6029b69248853736fa634f73cb39e', '66.249.65.195', 1133506869, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'a60e253557abc920fb8b35b5d7a6a9ec', '62.165.129.57', 1133506869, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e1cf4f6cf9c1a7d9fc4ec14588739d1e', '72.14.199.10', 1133506456, '');
INSERT INTO `sessions` VALUES (0, '268aedbf326bc963da40ef73d56919bb', '62.33.224.161', 1133741576, '');
INSERT INTO `sessions` VALUES (0, '32b51499b2a77e451ebb8494c48056be', '207.46.98.149', 1133736988, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '1fd9b5b56402801783a22943dc9b3e8a', '71.112.124.195', 1133761904, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e073282d964b2c2d272647089b3867d3', '207.46.98.149', 1133736988, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '5f52c0d1bde17c45624202644423f619', '24.17.170.67', 1133741714, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (1, 'c8ccf224e27681631e46c6362e2d7809', '24.17.170.67', 1133662132, 'messages|a:0:{}watchdog_overview_filter|s:3:"all";');
INSERT INTO `sessions` VALUES (0, '14fdf47980d43fc926d5a33d01be5474', '72.14.199.10', 1133762039, '');
INSERT INTO `sessions` VALUES (0, '2ed6f60cb2e1dc5beeac7507a47071b2', '72.14.199.10', 1133758440, '');
INSERT INTO `sessions` VALUES (0, '70535398ab7d905e3acb1154130792f3', '69.112.169.6', 1133755630, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '2a04f12b5efec6268c12280eb63ab402', '72.14.199.10', 1133747708, '');
INSERT INTO `sessions` VALUES (0, 'e818f68ece59e20bbc3565e387b39f13', '207.180.109.135', 1133741853, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '7cdf6ae9be3f516ef499b9d55774c2f1', '207.180.109.135', 1133741701, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '1f98f18b86b683010e686ac82f12eb84', '62.21.10.1', 1133738885, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '96452966352322611fa5e2364afc3c02', '69.112.169.6', 1133737576, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'c7887a528bc8ef9a2b6231569d53370a', '207.46.98.149', 1133736989, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'b16eafa8edd96292c608a0246e5ff808', '66.249.65.195', 1133735880, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '368db10865a57f4c6e6de958053aa3a7', '207.46.98.149', 1133735385, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '7fd21b6a68d698c5949517eb65eac6f9', '207.46.98.149', 1133735383, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '6d87f9c0731674f450f35f08d256a1db', '207.46.98.149', 1133735377, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'b9679ed6ade487749402d8307bb08fb5', '207.46.98.149', 1133735373, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '24ed27e2c2f08287f134f9480c0d93ae', '66.249.65.195', 1133733366, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'c8d7f0fb6b3af7d926010498ed8d2633', '66.249.65.195', 1133733339, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '007a7081048d9bda8ecf371ea8f19c73', '66.249.65.195', 1133733302, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'cba94f5461587f123d5a9df75ad57f7d', '66.249.65.195', 1133733302, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'd341d7680a6d1559a376c3ba0ef457df', '66.249.65.195', 1133733267, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '9c70eb3bed95ca08b78fa2591a9b8210', '82.141.51.160', 1133733490, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '6ff85fa07ae18e5d1a6ab97e883e0f08', '207.46.98.149', 1133729924, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '6d9ef4ee584e7203e649078b5d93bd4f', '66.249.65.195', 1133729581, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '22f2172a48d1709699372ef2ed4ce4fa', '66.249.65.195', 1133729547, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'fc34fd13915361026ef5c12aba0c6698', '66.249.65.195', 1133729546, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '5bda61a0c5a0355ab6d238c6ea4aa8ef', '195.14.59.186', 1133729579, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '5efed25073873ee152f7ad53249ad3fb', '72.14.199.10', 1133723656, '');
INSERT INTO `sessions` VALUES (0, 'a8eaeacd0e0b7e053071d66c30e9f8a0', '207.46.98.149', 1133723534, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'b5ab3d86ca28cd847f92d1dbfe3d39d4', '207.46.98.149', 1133723523, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '6e820f659ed108a4df79371e2f4b5479', '207.46.98.149', 1133722523, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '1fc7e247f9007cffe78d12623943e7f5', '207.46.98.149', 1133722522, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '4189180d3bce30e6b28fc625e166de12', '207.46.98.149', 1133722344, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '517eb725ec577dfbd76c1a7a459d4cdc', '207.46.98.149', 1133721604, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, 'e7318b523731199615896b25b139e3cf', '72.14.199.10', 1133720057, '');
INSERT INTO `sessions` VALUES (0, '5f6f87f28015b2ace09a32fc6b16ef0e', '207.46.98.149', 1133719834, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '22bdb73bc04cc1bd842795fe32ca2e92', '72.14.199.10', 1133715851, '');
INSERT INTO `sessions` VALUES (0, '2756e8e1581853167ecb487e3c6159bf', '207.46.98.149', 1133719827, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '173c4a81cc9276cc5bcaa5b2c3b02022', '207.46.98.149', 1133715206, 'messages|a:0:{}');
INSERT INTO `sessions` VALUES (0, '09d132470fb1ba9a3af1af9d367ce398', '72.14.199.10', 1133712251, '');
INSERT INTO `sessions` VALUES (0, '06547d0bccc7517b4b0317cc436923d1', '72.14.199.10', 1133708652, '');
INSERT INTO `sessions` VALUES (0, '52a43db794ae9f936c6106213b374701', '72.14.199.10', 1133704908, '');
INSERT INTO `sessions` VALUES (0, '0a797f5938d6832c6aeabcdf1c2c8a4c', '72.14.199.10', 1133701309, '');

-- --------------------------------------------------------

-- 
-- Table structure for table `system`
-- 

CREATE TABLE `system` (
  `filename` varchar(255) NOT NULL default '',
  `name` varchar(255) NOT NULL default '',
  `type` varchar(255) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `status` int(2) NOT NULL default '0',
  `throttle` tinyint(1) NOT NULL default '0',
  `bootstrap` int(2) NOT NULL default '0',
  PRIMARY KEY  (`filename`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `system`
-- 

INSERT INTO `system` VALUES ('modules/block.module', 'block', 'module', 'Controls the boxes that are displayed around the main content.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/comment.module', 'comment', 'module', 'Allows users to comment on and discuss published content.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/filter.module', 'filter', 'module', 'Handles the filtering of content in preparation for display.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/help.module', 'help', 'module', 'Manages the display of online help.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/node.module', 'node', 'module', 'Allows content to be submitted to the site and displayed on pages.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/page.module', 'page', 'module', 'Enables the creation of pages that can be added to the navigation system.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/story.module', 'story', 'module', 'Allows users to submit stories, articles or similar content.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/system.module', 'system', 'module', 'Handles general site configuration for administrators.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/taxonomy.module', 'taxonomy', 'module', 'Enables the categorization of content.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/user.module', 'user', 'module', 'Manages the user registration and login system.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/archive.module', 'archive', 'module', 'Displays a calendar for navigating older content.', 1, 0, 0);
INSERT INTO `system` VALUES ('themes/engines/xtemplate/xtemplate.engine', 'xtemplate', 'theme_engine', '', 1, 0, 0);
INSERT INTO `system` VALUES ('themes/chameleon/marvin/style.css', 'marvin', 'theme', 'themes/chameleon/chameleon.theme', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/tracker.module', 'tracker', 'module', 'Enables tracking of recent posts for users.', 1, 0, 0);
INSERT INTO `system` VALUES ('themes/ninjapirates/xtemplate.xtmpl', 'ninjapirates', 'theme', 'themes/engines/xtemplate/xtemplate.engine', 1, 0, 0);
INSERT INTO `system` VALUES ('themes/pushbutton/xtemplate.xtmpl', 'pushbutton', 'theme', 'themes/engines/xtemplate/xtemplate.engine', 0, 0, 0);
INSERT INTO `system` VALUES ('themes/bluemarine/xtemplate.xtmpl', 'bluemarine', 'theme', 'themes/engines/xtemplate/xtemplate.engine', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/blogapi.module', 'blogapi', 'module', 'Allows users to post content using applications that support XML-RPC blog APIs.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/profile.module', 'profile', 'module', 'Supports configurable user profiles.', 1, 0, 0);
INSERT INTO `system` VALUES ('themes/chameleon/chameleon.theme', 'chameleon', 'theme', 'themes/chameleon/chameleon.theme', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/contact.module', 'contact', 'module', 'Enables the use of personal contact forms.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/drupal.module', 'drupal', 'module', 'Lets users log in using a Drupal ID and can notify a central server about your site.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/forum.module', 'forum', 'module', 'Enables threaded discussions about general topics.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/legacy.module', 'legacy', 'module', 'Provides legacy handlers for upgrades from older Drupal installations.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/path.module', 'path', 'module', 'Allows users to rename URLs.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/poll.module', 'poll', 'module', 'Allows your site to capture votes on different topics in the form of multiple choice questions.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/queue.module', 'queue', 'module', 'Allows content to be moderated by the community.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/throttle.module', 'throttle', 'module', 'Handles the auto-throttling mechanism, to control site congestion.', 0, 0, 1);
INSERT INTO `system` VALUES ('modules/upload.module', 'upload', 'module', 'Allows users to upload and attach files to content.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/watchdog.module', 'watchdog', 'module', 'Logs and records system events.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/folksonomy.module', 'folksonomy', 'module', 'Enable tag based categorization.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/statistics.module', 'statistics', 'module', 'Logs access statistics for your site.', 1, 0, 1);
INSERT INTO `system` VALUES ('modules/search.module', 'search', 'module', 'Enables site-wide keyword searching.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/album.module', 'album', 'module', 'Image albums', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/aggregator.module', 'aggregator', 'module', 'Aggregates syndicated content (RSS and RDF feeds).', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/image.module', 'image', 'module', 'Allows uploading of images and creating image galleries.', 0, 0, 0);
INSERT INTO `system` VALUES ('modules/ping.module', 'ping', 'module', 'Alerts other sites when your site has been updated.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/blog.module', 'blog', 'module', 'Enables keeping an easily and regularly updated web page or a blog.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/book.module', 'book', 'module', 'Allows users to collaboratively author a book.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/locale.module', 'locale', 'module', 'Enables the translation of the user interface to languages other than English.', 1, 0, 0);
INSERT INTO `system` VALUES ('modules/menu.module', 'menu', 'module', 'Allows administrators to customize the site navigation menu.', 1, 0, 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `term_data`
-- 

CREATE TABLE `term_data` (
  `tid` int(10) unsigned NOT NULL auto_increment,
  `vid` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  `description` longtext,
  `weight` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`tid`),
  KEY `vid` (`vid`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `term_data`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `term_hierarchy`
-- 

CREATE TABLE `term_hierarchy` (
  `tid` int(10) unsigned NOT NULL default '0',
  `parent` int(10) unsigned NOT NULL default '0',
  KEY `tid` (`tid`),
  KEY `parent` (`parent`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `term_hierarchy`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `term_node`
-- 

CREATE TABLE `term_node` (
  `nid` int(10) unsigned NOT NULL default '0',
  `tid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`tid`,`nid`),
  KEY `nid` (`nid`),
  KEY `tid` (`tid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `term_node`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `term_relation`
-- 

CREATE TABLE `term_relation` (
  `tid1` int(10) unsigned NOT NULL default '0',
  `tid2` int(10) unsigned NOT NULL default '0',
  KEY `tid1` (`tid1`),
  KEY `tid2` (`tid2`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `term_relation`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `term_synonym`
-- 

CREATE TABLE `term_synonym` (
  `tid` int(10) unsigned NOT NULL default '0',
  `name` varchar(255) NOT NULL default '',
  KEY `tid` (`tid`),
  KEY `name` (`name`(3))
) TYPE=MyISAM;

-- 
-- Dumping data for table `term_synonym`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `url_alias`
-- 

CREATE TABLE `url_alias` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `src` varchar(128) NOT NULL default '',
  `dst` varchar(128) NOT NULL default '',
  PRIMARY KEY  (`pid`),
  UNIQUE KEY `dst` (`dst`)
) TYPE=MyISAM AUTO_INCREMENT=1 ;

-- 
-- Dumping data for table `url_alias`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `users`
-- 

CREATE TABLE `users` (
  `uid` int(10) unsigned NOT NULL default '0',
  `name` varchar(60) NOT NULL default '',
  `pass` varchar(32) NOT NULL default '',
  `mail` varchar(64) default '',
  `mode` tinyint(1) NOT NULL default '0',
  `sort` tinyint(1) default '0',
  `threshold` tinyint(1) default '0',
  `theme` varchar(255) NOT NULL default '',
  `signature` varchar(255) NOT NULL default '',
  `created` int(11) NOT NULL default '0',
  `changed` int(11) NOT NULL default '0',
  `status` tinyint(4) NOT NULL default '0',
  `timezone` varchar(8) default NULL,
  `language` varchar(12) NOT NULL default '',
  `picture` varchar(255) NOT NULL default '',
  `init` varchar(64) default '',
  `data` longtext,
  PRIMARY KEY  (`uid`),
  UNIQUE KEY `name` (`name`),
  KEY `changed` (`changed`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `users`
-- 

INSERT INTO `users` VALUES (0, '', '', '', 0, 0, 0, '', '', 0, 0, 0, NULL, '', '', '', NULL);
INSERT INTO `users` VALUES (1, 'kingrayray', 'f951a46566a4e903c27931b18d5e16ef', 'synthesiz3d@gmail.com', 0, 0, 0, '', 'Not quite an Edje Pimp', 1129703451, 1132266210, 1, '-28800', '', '', 'synthesiz3d@gmail.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (2, 'digitalxdefiant', '8ecefc90351afae0a4b4daf8f61b666e', 'digital@dxdstudio.com', 0, 0, 0, '', 'Digital Defiant Studios\r\nVisual Communications', 1129703484, 1131087041, 1, '0', '', '', 'digital@dxdstudio.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (3, 'devilhorns', 'a925accf5f22d5736c2b5dbf02356342', 'devilhorns@comcast.net', 0, 0, 0, '', '', 1129703634, 1130102916, 1, '-14400', '', '', 'devilhorns@comcast.net', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (4, 'twisted', '9fbc6e7edaf1f1fc9d51046fe21b9fff', 'twisted@bastardoperatorfromhell.org', 0, 0, 0, '', '', 1129708915, 1129754697, 1, '0', '', '', 'twisted@bastardoperatorfromhell.org', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (5, 'Jas-Nix', '3bb1b5091934cb72eab4b390e1577afb', 'jason@smithss.com', 0, 0, 0, '', '', 1129742956, 1133123593, 1, '0', '', '', 'jason@smithss.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (6, 'Hawkwind', '13d84b6d200d5a6580163d10e6fb8447', 'hawkwind@gmail.com', 0, 0, 0, '', 'Sincere Regards,\r\n\r\nCliff Wade\r\n(Hawkwind)\r\n\r\nThe box said: Requires Windows 98 or better, So I installed Linux!\r\nRegistered Linux User #362532\r\nhttp://seerofsouls.com\r\nhttp://linuxfordummies.org\r\nhttp://doomsickle.com\r\nIRC Channels:\r\n#Mandriva Channel Op', 1129754361, 1129754494, 1, '-18000', '', '', 'hawkwind@gmail.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (7, 'spuhkewzi', 'ded2d69c69a934fe61b2153d70f1c7fc', 'spuhkwezi@gmail.com', 0, 0, 0, '', '', 1129956338, 1129956338, 1, NULL, '', '', 'spuhkwezi@gmail.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (8, 'Surtsey', 'a689048a861d574741533fa807429b76', 'surtsey@alkalinet.com', 0, 0, 0, '', '', 1130117865, 1130550249, 1, '0', '', '', 'surtsey@alkalinet.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (9, 'misunderstruck', 'f163e7dcafcef4bcc4a1a4b740b982fb', 'aboyandhis@gmail.com', 0, 0, 0, '', '', 1130786708, 1133488332, 1, '0', '', '', 'aboyandhis@gmail.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (10, 'cupcake', '36e6be4934d696279da36cf109a108bc', 'imipramine@gmail.com', 0, 0, 0, '', '', 1132124613, 1132124613, 1, NULL, '', '', 'imipramine@gmail.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');
INSERT INTO `users` VALUES (11, 'wallooza', 'e2fe7c4f7931110f92299f54a096cdfd', 'wallooza@gmail.com', 0, 0, 0, '', '__\r\n<a href="http://www.wallooza.org"> Teh Wallooza</a>', 1132329287, 1132329384, 1, '-25200', '', '', 'wallooza@gmail.com', 'a:1:{s:5:"roles";a:1:{i:0;s:1:"2";}}');

-- --------------------------------------------------------

-- 
-- Table structure for table `users_roles`
-- 

CREATE TABLE `users_roles` (
  `uid` int(10) unsigned NOT NULL default '0',
  `rid` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`uid`,`rid`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `users_roles`
-- 

INSERT INTO `users_roles` VALUES (0, 1);
INSERT INTO `users_roles` VALUES (1, 2);
INSERT INTO `users_roles` VALUES (1, 3);
INSERT INTO `users_roles` VALUES (1, 4);
INSERT INTO `users_roles` VALUES (2, 2);
INSERT INTO `users_roles` VALUES (2, 3);
INSERT INTO `users_roles` VALUES (2, 4);
INSERT INTO `users_roles` VALUES (3, 2);
INSERT INTO `users_roles` VALUES (3, 3);
INSERT INTO `users_roles` VALUES (3, 4);
INSERT INTO `users_roles` VALUES (4, 2);
INSERT INTO `users_roles` VALUES (4, 4);
INSERT INTO `users_roles` VALUES (5, 2);
INSERT INTO `users_roles` VALUES (5, 4);
INSERT INTO `users_roles` VALUES (6, 2);
INSERT INTO `users_roles` VALUES (6, 4);
INSERT INTO `users_roles` VALUES (7, 2);
INSERT INTO `users_roles` VALUES (8, 2);
INSERT INTO `users_roles` VALUES (8, 4);
INSERT INTO `users_roles` VALUES (9, 2);
INSERT INTO `users_roles` VALUES (10, 2);
INSERT INTO `users_roles` VALUES (11, 2);

-- --------------------------------------------------------

-- 
-- Table structure for table `variable`
-- 

CREATE TABLE `variable` (
  `name` varchar(48) NOT NULL default '',
  `value` longtext NOT NULL,
  PRIMARY KEY  (`name`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `variable`
-- 

INSERT INTO `variable` VALUES ('update_start', 's:10:"2005-03-21";');
INSERT INTO `variable` VALUES ('filter_html_1', 'i:1;');
INSERT INTO `variable` VALUES ('theme_default', 's:12:"ninjapirates";');
INSERT INTO `variable` VALUES ('clean_url_ok', 'i:1;');
INSERT INTO `variable` VALUES ('site_mail', 's:21:"digital@dxdstudio.com";');
INSERT INTO `variable` VALUES ('site_mission', 's:251:"<strong>Mission Statement:</strong><br>\r\nNinjapirate Networks is an organization of people working to develop modules and themes for the Enlightenment window manager for *nix. We also contribute to other open source projects, and graphic design ;)<br>";');
INSERT INTO `variable` VALUES ('anonymous', 's:9:"Anonymous";');
INSERT INTO `variable` VALUES ('site_frontpage', 's:4:"node";');
INSERT INTO `variable` VALUES ('clean_url', 's:1:"0";');
INSERT INTO `variable` VALUES ('site_403', 's:0:"";');
INSERT INTO `variable` VALUES ('site_404', 's:0:"";');
INSERT INTO `variable` VALUES ('error_level', 's:1:"1";');
INSERT INTO `variable` VALUES ('watchdog_clear', 's:6:"604800";');
INSERT INTO `variable` VALUES ('cache', 's:1:"0";');
INSERT INTO `variable` VALUES ('file_directory_path', 's:5:"files";');
INSERT INTO `variable` VALUES ('file_directory_temp', 's:4:"/tmp";');
INSERT INTO `variable` VALUES ('file_downloads', 's:1:"1";');
INSERT INTO `variable` VALUES ('date_default_timezone', 's:1:"0";');
INSERT INTO `variable` VALUES ('configurable_timezones', 's:1:"1";');
INSERT INTO `variable` VALUES ('date_format_short', 's:9:"Y-m-d H:i";');
INSERT INTO `variable` VALUES ('date_format_medium', 's:12:"D, Y-m-d H:i";');
INSERT INTO `variable` VALUES ('date_format_long', 's:15:"l, F j, Y - H:i";');
INSERT INTO `variable` VALUES ('date_first_day', 's:1:"0";');
INSERT INTO `variable` VALUES ('statistics_enable_access_log', 's:1:"0";');
INSERT INTO `variable` VALUES ('statistics_flush_accesslog_timer', 's:6:"259200";');
INSERT INTO `variable` VALUES ('statistics_count_content_views', 's:1:"1";');
INSERT INTO `variable` VALUES ('statistics_display_counter', 's:1:"1";');
INSERT INTO `variable` VALUES ('theme_chameleon_settings', 'a:6:{s:12:"default_logo";s:1:"0";s:9:"logo_path";s:57:"http://www.dxdstudio.com/npn/themes/ninjapirates/logo.png";s:11:"toggle_name";s:1:"1";s:13:"toggle_slogan";s:1:"0";s:20:"toggle_primary_links";s:1:"1";s:22:"toggle_secondary_links";s:1:"1";}');
INSERT INTO `variable` VALUES ('site_slogan', 's:33:"Ninja Pirates: Owning hella hard.";');
INSERT INTO `variable` VALUES ('site_footer', 's:192:"twisted` is insane. Jas is a screenshot junkie. Ray''s a gui junkie. Chris (Devilhorns) is a turkey sandwich. Chris (dxd) is a ham sandwich. Psychos, junkies and sandwiches, thats how we roll. ";');
INSERT INTO `variable` VALUES ('theme_settings', 'a:16:{s:12:"default_logo";s:1:"0";s:9:"logo_path";s:57:"http://www.dxdstudio.com/npn/themes/ninjapirates/logo.png";s:13:"primary_links";s:398:"<a href="http://www.dxdstudio.com/npn"class="active">Home</a> | \r\n<a href="http://www.google.com" class="active">Google</a> |\r\n<a href="http://www.enlightenment.org" class="active">Enlightenment</a> |\r\n<a href="http://www.get-e.org" class="active">Get E</a> |\r\n<a href="http://www.dxdstudio.com" class="active">Dxdstudios</a> |\r\n<a href="http://www.sourceforge.net" class="active">Sourceforge</a>\r\n";s:15:"secondary_links";s:0:"";s:21:"toggle_node_info_blog";s:1:"1";s:21:"toggle_node_info_book";s:1:"1";s:21:"toggle_node_info_page";s:1:"1";s:22:"toggle_node_info_story";s:1:"1";s:11:"toggle_name";s:1:"0";s:13:"toggle_slogan";s:1:"0";s:14:"toggle_mission";s:1:"1";s:20:"toggle_primary_links";s:1:"1";s:22:"toggle_secondary_links";s:1:"0";s:24:"toggle_node_user_picture";s:1:"1";s:27:"toggle_comment_user_picture";s:1:"1";s:13:"toggle_search";s:1:"0";}');
INSERT INTO `variable` VALUES ('site_name', 's:12:"Ninjapirates";');
INSERT INTO `variable` VALUES ('aggregator_summary_items', 's:1:"3";');
INSERT INTO `variable` VALUES ('aggregator_clear', 's:7:"4838400";');
INSERT INTO `variable` VALUES ('aggregator_category_selector', 's:5:"check";');

-- --------------------------------------------------------

-- 
-- Table structure for table `vocabulary`
-- 

CREATE TABLE `vocabulary` (
  `vid` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(255) NOT NULL default '',
  `description` longtext,
  `help` varchar(255) NOT NULL default '',
  `relations` tinyint(3) unsigned NOT NULL default '0',
  `hierarchy` tinyint(3) unsigned NOT NULL default '0',
  `multiple` tinyint(3) unsigned NOT NULL default '0',
  `required` tinyint(3) unsigned NOT NULL default '0',
  `module` varchar(255) NOT NULL default '',
  `weight` tinyint(4) NOT NULL default '0',
  PRIMARY KEY  (`vid`)
) TYPE=MyISAM AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `vocabulary`
-- 

INSERT INTO `vocabulary` VALUES (1, 'Releases', 'This is where all full releases should go :)', 'Finalized releases go here', 0, 0, 0, 0, 'taxonomy', 0);
INSERT INTO `vocabulary` VALUES (2, 'Wallpapers', 'All kinds of wallpapers can be put here :)', '', 1, 0, 0, 0, 'taxonomy', 0);

-- --------------------------------------------------------

-- 
-- Table structure for table `vocabulary_node_types`
-- 

CREATE TABLE `vocabulary_node_types` (
  `vid` int(10) unsigned NOT NULL default '0',
  `type` varchar(16) NOT NULL default '',
  PRIMARY KEY  (`vid`,`type`)
) TYPE=MyISAM;

-- 
-- Dumping data for table `vocabulary_node_types`
-- 


-- --------------------------------------------------------

-- 
-- Table structure for table `watchdog`
-- 

CREATE TABLE `watchdog` (
  `wid` int(5) NOT NULL auto_increment,
  `uid` int(10) NOT NULL default '0',
  `type` varchar(16) NOT NULL default '',
  `message` longtext NOT NULL,
  `severity` tinyint(3) unsigned NOT NULL default '0',
  `link` varchar(255) NOT NULL default '',
  `location` varchar(128) NOT NULL default '',
  `hostname` varchar(128) NOT NULL default '',
  `timestamp` int(11) NOT NULL default '0',
  PRIMARY KEY  (`wid`)
) TYPE=MyISAM AUTO_INCREMENT=490 ;

-- 
-- Dumping data for table `watchdog`
-- 

INSERT INTO `watchdog` VALUES (1, 0, 'page not found', '<em>default/settings.php</em> not found.', 1, '', '/npn/default/settings.php', '71.112.136.121', 1129703349);
INSERT INTO `watchdog` VALUES (2, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=default%2Fsettings.php', '71.112.136.121', 1129703380);
INSERT INTO `watchdog` VALUES (3, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.136.121', 1129703386);
INSERT INTO `watchdog` VALUES (4, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.136.121', 1129703392);
INSERT INTO `watchdog` VALUES (5, 0, 'access denied', '<em>admin/themes/settings</em> denied access.', 1, '<a href="?q=admin/themes/settings" class="active">view</a>', '/npn/?q=admin/themes/settings', '71.112.136.121', 1129703400);
INSERT INTO `watchdog` VALUES (6, 0, 'access denied', '<em>admin</em> denied access.', 1, '<a href="?q=admin" class="active">view</a>', '/npn/?q=admin', '71.112.136.121', 1129703405);
INSERT INTO `watchdog` VALUES (7, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=admin', '71.112.136.121', 1129703413);
INSERT INTO `watchdog` VALUES (8, 0, 'user', 'New user: <em>kingrayray</em> <em>&lt;synthesiz3d@gmail.com&gt;</em>.', 0, '<a href="?q=user/1/edit">edit</a>', '/npn/?q=user/register', '71.112.136.121', 1129703451);
INSERT INTO `watchdog` VALUES (9, 1, 'user', 'Session opened for <em>kingrayray</em>.', 0, '', '/npn/?q=user/register', '71.112.136.121', 1129703456);
INSERT INTO `watchdog` VALUES (10, 1, 'user', 'Session closed for <em>kingrayray</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129703472);
INSERT INTO `watchdog` VALUES (11, 0, 'user', 'New user: <em>digitalxdefiant</em> <em>&lt;digital@dxdstudio.com&gt;</em>.', 0, '<a href="?q=user/2/edit">edit</a>', '/npn/?q=user/register', '71.112.136.121', 1129703484);
INSERT INTO `watchdog` VALUES (12, 1, 'user', 'Session opened for <em>kingrayray</em>.', 0, '', '/npn/?q=user/login&destination=node', '24.18.48.80', 1129703536);
INSERT INTO `watchdog` VALUES (13, 0, 'user', 'Login attempt failed for <em>digitalxdefiant </em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user', '71.112.136.121', 1129703554);
INSERT INTO `watchdog` VALUES (14, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.136.121', 1129703563);
INSERT INTO `watchdog` VALUES (15, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129703588);
INSERT INTO `watchdog` VALUES (16, 0, 'access denied', '<em>admin</em> denied access.', 1, '<a href="?q=admin" class="active">view</a>', '/npn/admin', '71.112.136.121', 1129703594);
INSERT INTO `watchdog` VALUES (17, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=admin', '71.112.136.121', 1129703610);
INSERT INTO `watchdog` VALUES (18, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.136.121', 1129703623);
INSERT INTO `watchdog` VALUES (19, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.136.121', 1129703629);
INSERT INTO `watchdog` VALUES (20, 0, 'user', 'Login attempt failed for <em>db_admin</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.136.121', 1129703633);
INSERT INTO `watchdog` VALUES (21, 0, 'user', 'New user: <em>devilhorns</em> <em>&lt;devilhorns@comcast.net&gt;</em>.', 0, '<a href="?q=user/3/edit">edit</a>', '/npn/?q=user/register', '68.37.52.47', 1129703634);
INSERT INTO `watchdog` VALUES (22, 3, 'user', 'Session opened for <em>devilhorns</em>.', 0, '', '/npn/?q=user/login&destination=user', '68.37.52.47', 1129703683);
INSERT INTO `watchdog` VALUES (23, 0, 'user', 'Login attempt failed for <em>digitalxdefiant</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.136.121', 1129703693);
INSERT INTO `watchdog` VALUES (24, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.136.121', 1129703697);
INSERT INTO `watchdog` VALUES (25, 1, 'php', 'mkdir(files): Permission denied in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/file.inc on line 86.', 2, '', '/npn/?q=admin/themes/settings', '24.18.48.80', 1129704215);
INSERT INTO `watchdog` VALUES (26, 2, 'content', '<em>page</em>: added <em>Testing testing</em>.', 0, '<a href="?q=node/1">view</a>', '/npn/?q=node/add/page', '71.112.136.121', 1129705036);
INSERT INTO `watchdog` VALUES (27, 1, 'content', 'Comment: added <em>grenades!</em>.', 0, '<a href="?q=node/1#comment-1">view</a>', '/npn/?q=comment/reply/1', '24.18.48.80', 1129705247);
INSERT INTO `watchdog` VALUES (28, 1, 'content', '<em>page</em>: updated <em>Testing testing</em>.', 0, '<a href="?q=node/1">view</a>', '/npn/?q=node/1/edit&destination=admin%2Fnode', '24.18.48.80', 1129705804);
INSERT INTO `watchdog` VALUES (29, 1, 'content', '<em>blog</em>: added <em>ooooh we have a site</em>.', 0, '<a href="?q=node/2">view</a>', '/npn/?q=node/add/blog', '24.18.48.80', 1129705982);
INSERT INTO `watchdog` VALUES (30, 1, 'content', '<em>story</em>: added <em>Rain module</em>.', 0, '<a href="?q=node/3">view</a>', '/npn/?q=node/add/story', '24.18.48.80', 1129706746);
INSERT INTO `watchdog` VALUES (31, 2, 'page not found', '<em>themes/ninjapirates/linktest.png</em> not found.', 1, '', '/npn/themes/ninjapirates/linktest.png', '71.112.136.121', 1129708664);
INSERT INTO `watchdog` VALUES (32, 2, 'page not found', '<em>themes/ninjapirates/linktest.png</em> not found.', 1, '', '/npn/themes/ninjapirates/linktest.png', '71.112.136.121', 1129708679);
INSERT INTO `watchdog` VALUES (33, 0, 'user', 'New user: <em>twisted</em> <em>&lt;twisted@bastardoperatorfromhell.org&gt;</em>.', 0, '<a href="?q=user/4/edit">edit</a>', '/npn/?q=user/register', '213.84.144.245', 1129708915);
INSERT INTO `watchdog` VALUES (34, 0, 'access denied', '<em>user/4/edit</em> denied access.', 1, '<a href="?q=user/4/edit" class="active">view</a>', '/npn/?q=user/4/edit', '213.84.144.245', 1129708941);
INSERT INTO `watchdog` VALUES (35, 4, 'user', 'Session opened for <em>twisted</em>.', 0, '', '/npn/?q=user/login&destination=user%2F4%2Fedit', '213.84.144.245', 1129708967);
INSERT INTO `watchdog` VALUES (36, 0, 'page not found', '<em>themes/ninjapirates/missionbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/missionbg.png', '71.112.136.121', 1129709135);
INSERT INTO `watchdog` VALUES (37, 2, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '71.112.136.121', 1129709769);
INSERT INTO `watchdog` VALUES (38, 2, 'content', '<em>story</em>: added <em>continuing changes..</em>.', 0, '<a href="?q=node/4">view</a>', '/npn/?q=node/add/story', '71.112.136.121', 1129709814);
INSERT INTO `watchdog` VALUES (39, 1, 'content', '<em>story</em>: added <em>Rainy day.</em>.', 0, '<a href="?q=node/5">view</a>', '/npn/?q=node/add/story', '24.18.48.80', 1129710096);
INSERT INTO `watchdog` VALUES (40, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129710449);
INSERT INTO `watchdog` VALUES (41, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.136.121', 1129710537);
INSERT INTO `watchdog` VALUES (42, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129711253);
INSERT INTO `watchdog` VALUES (43, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.136.121', 1129712684);
INSERT INTO `watchdog` VALUES (44, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714409);
INSERT INTO `watchdog` VALUES (45, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714412);
INSERT INTO `watchdog` VALUES (46, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714422);
INSERT INTO `watchdog` VALUES (47, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714453);
INSERT INTO `watchdog` VALUES (48, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714521);
INSERT INTO `watchdog` VALUES (49, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714560);
INSERT INTO `watchdog` VALUES (50, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714592);
INSERT INTO `watchdog` VALUES (51, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714623);
INSERT INTO `watchdog` VALUES (52, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714675);
INSERT INTO `watchdog` VALUES (53, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714682);
INSERT INTO `watchdog` VALUES (54, 2, 'page not found', '<em>themes/ninjapirates/mainbg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/mainbg.png', '71.112.136.121', 1129714683);
INSERT INTO `watchdog` VALUES (55, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129715122);
INSERT INTO `watchdog` VALUES (56, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.136.121', 1129715128);
INSERT INTO `watchdog` VALUES (57, 2, 'page not found', '<em>themes/ninjapirates/comingsoon.jpg</em> not found.', 1, '', '/npn/themes/ninjapirates/comingsoon.jpg', '71.112.136.121', 1129716515);
INSERT INTO `watchdog` VALUES (58, 2, 'page not found', '<em>themes/ninjapirates/comingsoon.jpg</em> not found.', 1, '', '/npn/themes/ninjapirates/comingsoon.jpg', '71.112.136.121', 1129716528);
INSERT INTO `watchdog` VALUES (59, 2, 'content', '<em>story</em>: added <em>Propaganda</em>.', 0, '<a href="?q=node/6">view</a>', '/npn/?q=node/add/story', '71.112.136.121', 1129716544);
INSERT INTO `watchdog` VALUES (60, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129716861);
INSERT INTO `watchdog` VALUES (61, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.136.121', 1129716871);
INSERT INTO `watchdog` VALUES (62, 2, 'content', '<em>page</em>: added <em>Screenshots</em>.', 0, '<a href="?q=node/7">view</a>', '/npn/?q=node/add/page', '71.112.136.121', 1129716984);
INSERT INTO `watchdog` VALUES (63, 2, 'content', '<em>page</em>: deleted <em>Screenshots</em>.', 0, '', '/npn/?q=node/7/edit&destination=admin%2Fnode', '71.112.136.121', 1129717012);
INSERT INTO `watchdog` VALUES (64, 2, 'aggregator', 'Syndicated content from <em>Google News</em>.', 0, '', '/npn/?q=admin/aggregator/update/1', '71.112.136.121', 1129717815);
INSERT INTO `watchdog` VALUES (65, 2, 'aggregator', 'Syndicated content from <em>The Onion.com</em>.', 0, '', '/npn/?q=admin/aggregator/update/2', '71.112.136.121', 1129717957);
INSERT INTO `watchdog` VALUES (66, 2, 'aggregator', 'Syndicated content from <em>Source Forge Project News</em>.', 0, '', '/npn/?q=admin/aggregator/update/3', '71.112.136.121', 1129718040);
INSERT INTO `watchdog` VALUES (67, 2, 'aggregator', 'Syndicated content from <em>Slashdot</em>.', 0, '', '/npn/?q=admin/aggregator/update/4', '71.112.136.121', 1129718079);
INSERT INTO `watchdog` VALUES (68, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129718092);
INSERT INTO `watchdog` VALUES (69, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=tracker', '71.112.136.121', 1129718102);
INSERT INTO `watchdog` VALUES (70, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129718709);
INSERT INTO `watchdog` VALUES (71, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.136.121', 1129718853);
INSERT INTO `watchdog` VALUES (72, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.136.121', 1129718885);
INSERT INTO `watchdog` VALUES (73, 0, 'user', 'New user: <em>Jas-Nix</em> <em>&lt;jason@smithss.com&gt;</em>.', 0, '<a href="?q=user/5/edit">edit</a>', '/npn/?q=user/register', '65.116.112.101', 1129742956);
INSERT INTO `watchdog` VALUES (74, 5, 'user', 'Session opened for <em>Jas-Nix</em>.', 0, '', '/npn/?q=user/login&destination=user', '65.116.112.100', 1129743543);
INSERT INTO `watchdog` VALUES (75, 0, 'user', 'New user: <em>Hawkwind</em> <em>&lt;hawkwind@gmail.com&gt;</em>.', 0, '<a href="?q=user/6/edit">edit</a>', '/npn/?q=user/register', '70.120.222.153', 1129754361);
INSERT INTO `watchdog` VALUES (76, 6, 'user', 'Session opened for <em>Hawkwind</em>.', 0, '', '/npn/?q=user/login&destination=user', '70.120.222.153', 1129754400);
INSERT INTO `watchdog` VALUES (77, 1, 'content', '<em>story</em>: added <em>Everything is coming together.</em>.', 0, '<a href="?q=node/8">view</a>', '/npn/?q=node/add/story', '24.18.48.80', 1129755015);
INSERT INTO `watchdog` VALUES (78, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.125.116', 1129757740);
INSERT INTO `watchdog` VALUES (79, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.2.128', 1129774793);
INSERT INTO `watchdog` VALUES (80, 2, 'page not found', '<em>Navigation</em> not found.', 1, '', '/npn/?q=Navigation', '71.112.2.128', 1129775155);
INSERT INTO `watchdog` VALUES (81, 2, 'page not found', '<em>Navigation</em> not found.', 1, '', '/npn/?q=Navigation', '71.112.2.128', 1129775204);
INSERT INTO `watchdog` VALUES (82, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.2.128', 1129775207);
INSERT INTO `watchdog` VALUES (83, 0, 'access denied', '<em>admin/menu/item/edit/8</em> denied access.', 1, '<a href="?q=admin/menu/item/edit/8" class="active">view</a>', '/npn/?q=admin/menu/item/edit/8', '71.112.2.128', 1129775225);
INSERT INTO `watchdog` VALUES (84, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=admin%2Fmenu%2Fitem%2Fedit%2F8', '71.112.2.128', 1129775230);
INSERT INTO `watchdog` VALUES (85, 2, 'page not found', '<em>Wallpapers</em> not found.', 1, '', '/npn/?q=Wallpapers', '71.112.2.128', 1129775265);
INSERT INTO `watchdog` VALUES (86, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775348);
INSERT INTO `watchdog` VALUES (87, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775352);
INSERT INTO `watchdog` VALUES (88, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775380);
INSERT INTO `watchdog` VALUES (89, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775427);
INSERT INTO `watchdog` VALUES (90, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775446);
INSERT INTO `watchdog` VALUES (91, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775836);
INSERT INTO `watchdog` VALUES (92, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775893);
INSERT INTO `watchdog` VALUES (93, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=e17wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=e17wallpapers', '71.112.2.128', 1129775895);
INSERT INTO `watchdog` VALUES (94, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129775899);
INSERT INTO `watchdog` VALUES (95, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=e17wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=e17wallpapers', '71.112.2.128', 1129775950);
INSERT INTO `watchdog` VALUES (96, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129777574);
INSERT INTO `watchdog` VALUES (97, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129777576);
INSERT INTO `watchdog` VALUES (98, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129777652);
INSERT INTO `watchdog` VALUES (99, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129777776);
INSERT INTO `watchdog` VALUES (100, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129777861);
INSERT INTO `watchdog` VALUES (101, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129777863);
INSERT INTO `watchdog` VALUES (102, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.2.128', 1129778002);
INSERT INTO `watchdog` VALUES (103, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129778940);
INSERT INTO `watchdog` VALUES (104, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.2.128', 1129779123);
INSERT INTO `watchdog` VALUES (105, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.2.128', 1129779143);
INSERT INTO `watchdog` VALUES (106, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.2.128', 1129779437);
INSERT INTO `watchdog` VALUES (107, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=http%3A%2F%2Fwww.dxdstudio.com%2Fnpn%2F%3Fq%3Dabout', '71.112.2.128', 1129782014);
INSERT INTO `watchdog` VALUES (108, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.2.128', 1129782203);
INSERT INTO `watchdog` VALUES (109, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.2.128', 1129782392);
INSERT INTO `watchdog` VALUES (110, 2, 'page not found', '<em>themes/ninjapirates/bodybg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/bodybg.png', '71.112.2.128', 1129788248);
INSERT INTO `watchdog` VALUES (111, 2, 'page not found', '<em>themes/ninjapirates/bodybg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/bodybg.png', '71.112.2.128', 1129788250);
INSERT INTO `watchdog` VALUES (112, 0, 'page not found', '<em>themes/ninjapirates/bodybg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/bodybg.png', '71.112.2.128', 1129788316);
INSERT INTO `watchdog` VALUES (113, 0, 'page not found', '<em>themes/ninjapirates/bodybg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/bodybg.png', '71.112.2.128', 1129788363);
INSERT INTO `watchdog` VALUES (114, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129788375);
INSERT INTO `watchdog` VALUES (115, 0, 'page not found', '<em>themes/ninjapirates/bodybg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/bodybg.png', '71.112.2.128', 1129788375);
INSERT INTO `watchdog` VALUES (116, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129788381);
INSERT INTO `watchdog` VALUES (117, 0, 'page not found', '<em>themes/ninjapirates/bodybg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/bodybg.png', '71.112.2.128', 1129788381);
INSERT INTO `watchdog` VALUES (118, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129788387);
INSERT INTO `watchdog` VALUES (119, 0, 'page not found', '<em>themes/ninjapirates/bodybg.png</em> not found.', 1, '', '/npn/themes/ninjapirates/bodybg.png', '71.112.2.128', 1129788388);
INSERT INTO `watchdog` VALUES (120, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.2.128', 1129788828);
INSERT INTO `watchdog` VALUES (121, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.2.128', 1129788880);
INSERT INTO `watchdog` VALUES (122, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.2.128', 1129792769);
INSERT INTO `watchdog` VALUES (123, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793418);
INSERT INTO `watchdog` VALUES (124, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793418);
INSERT INTO `watchdog` VALUES (125, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793418);
INSERT INTO `watchdog` VALUES (126, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm = ''album_2'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793430);
INSERT INTO `watchdog` VALUES (127, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793430);
INSERT INTO `watchdog` VALUES (128, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name AS fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm = ''album_2'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793430);
INSERT INTO `watchdog` VALUES (129, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793432);
INSERT INTO `watchdog` VALUES (130, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793432);
INSERT INTO `watchdog` VALUES (131, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793432);
INSERT INTO `watchdog` VALUES (132, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793477);
INSERT INTO `watchdog` VALUES (133, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793477);
INSERT INTO `watchdog` VALUES (134, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793477);
INSERT INTO `watchdog` VALUES (135, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793480);
INSERT INTO `watchdog` VALUES (136, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793480);
INSERT INTO `watchdog` VALUES (137, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793480);
INSERT INTO `watchdog` VALUES (138, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm = ''album_2'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793495);
INSERT INTO `watchdog` VALUES (139, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793495);
INSERT INTO `watchdog` VALUES (140, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name AS fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm = ''album_2'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793495);
INSERT INTO `watchdog` VALUES (141, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm = ''album_2'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793513);
INSERT INTO `watchdog` VALUES (142, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793513);
INSERT INTO `watchdog` VALUES (143, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name AS fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm = ''album_2'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793513);
INSERT INTO `watchdog` VALUES (144, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album/2', '71.112.2.128', 1129793536);
INSERT INTO `watchdog` VALUES (145, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793571);
INSERT INTO `watchdog` VALUES (146, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793573);
INSERT INTO `watchdog` VALUES (147, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793579);
INSERT INTO `watchdog` VALUES (148, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793670);
INSERT INTO `watchdog` VALUES (149, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793670);
INSERT INTO `watchdog` VALUES (150, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793670);
INSERT INTO `watchdog` VALUES (151, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793746);
INSERT INTO `watchdog` VALUES (152, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793746);
INSERT INTO `watchdog` VALUES (153, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793746);
INSERT INTO `watchdog` VALUES (154, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793840);
INSERT INTO `watchdog` VALUES (155, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793840);
INSERT INTO `watchdog` VALUES (156, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793840);
INSERT INTO `watchdog` VALUES (157, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793844);
INSERT INTO `watchdog` VALUES (158, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793844);
INSERT INTO `watchdog` VALUES (159, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129793844);
INSERT INTO `watchdog` VALUES (160, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794014);
INSERT INTO `watchdog` VALUES (161, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794014);
INSERT INTO `watchdog` VALUES (162, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794014);
INSERT INTO `watchdog` VALUES (163, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT DISTINCT(name) FROM folksonomy WHERE realm LIKE ''album_%'' in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794124);
INSERT INTO `watchdog` VALUES (164, 2, 'php', 'You have an error in your SQL syntax near '''' at line 1\nquery: SELECT  in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794124);
INSERT INTO `watchdog` VALUES (165, 2, 'php', 'Table ''npn.folksonomy'' doesn''t exist\nquery: SELECT f.name as fname, realm, u.name, u.uid, COUNT(f.name) AS fcount FROM folksonomy f INNER JOIN node n ON f.id = n.nid INNER JOIN users u ON n.uid = u.uid WHERE realm LIKE ''album_%'' GROUP BY f.name, realm, u.name, u.uid ORDER BY id DESC LIMIT 0, 50 in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/database.mysql.inc on line 66.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794124);
INSERT INTO `watchdog` VALUES (166, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794525);
INSERT INTO `watchdog` VALUES (167, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129794532);
INSERT INTO `watchdog` VALUES (168, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '71.112.2.128', 1129795066);
INSERT INTO `watchdog` VALUES (169, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=e17wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=e17wallpapers', '71.112.2.128', 1129795068);
INSERT INTO `watchdog` VALUES (170, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129795070);
INSERT INTO `watchdog` VALUES (171, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129795099);
INSERT INTO `watchdog` VALUES (172, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129795100);
INSERT INTO `watchdog` VALUES (173, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=e17wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=e17wallpapers', '71.112.2.128', 1129795103);
INSERT INTO `watchdog` VALUES (174, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=e17wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=e17wallpapers', '71.112.2.128', 1129795105);
INSERT INTO `watchdog` VALUES (175, 2, 'php', 'call_user_func_array(): First argumented is expected to be a valid callback, ''album_page'' was given in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/menu.inc on line 354.', 2, '', '/npn/?q=album', '71.112.2.128', 1129795105);
INSERT INTO `watchdog` VALUES (176, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=e17wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=e17wallpapers', '71.112.2.128', 1129795106);
INSERT INTO `watchdog` VALUES (177, 2, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=e17wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=e17wallpapers', '71.112.2.128', 1129795114);
INSERT INTO `watchdog` VALUES (178, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.2.128', 1129795573);
INSERT INTO `watchdog` VALUES (179, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=wallpapers</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=wallpapers', '195.95.208.246', 1129797281);
INSERT INTO `watchdog` VALUES (180, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.2.128', 1129805603);
INSERT INTO `watchdog` VALUES (181, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '213.118.105.27', 1129817229);
INSERT INTO `watchdog` VALUES (182, 5, 'content', '<em>blog</em>: added <em>Trying new stuff.</em>.', 0, '<a href="?q=node/9">view</a>', '/npn/?q=node/add/blog', '65.116.112.101', 1129822998);
INSERT INTO `watchdog` VALUES (183, 3, 'content', '<em>blog</em>: added <em>More Coding</em>.', 0, '<a href="?q=node/10">view</a>', '/npn/?q=node/add/blog', '68.37.52.47', 1129859271);
INSERT INTO `watchdog` VALUES (184, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.2.128', 1129860869);
INSERT INTO `watchdog` VALUES (185, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.2.128', 1129861633);
INSERT INTO `watchdog` VALUES (186, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.2.128', 1129861892);
INSERT INTO `watchdog` VALUES (187, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.15', 1129868932);
INSERT INTO `watchdog` VALUES (188, 3, 'content', 'Comment: added <em>testing</em>.', 0, '<a href="?q=node/1#comment-2">view</a>', '/npn/?q=comment/reply/1', '68.37.52.47', 1129879236);
INSERT INTO `watchdog` VALUES (189, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.15', 1129886601);
INSERT INTO `watchdog` VALUES (190, 1, 'content', '<em>blog</em>: added <em>Ray&#039;s back!</em>.', 0, '<a href="?q=node/11">view</a>', '/npn/?q=node/add/blog', '24.18.48.80', 1129917353);
INSERT INTO `watchdog` VALUES (191, 1, 'content', '<em>blog</em>: added <em>The Rain module, now Twisted(TM) approved!</em>.', 0, '<a href="?q=node/12">view</a>', '/npn/?q=node/add/blog', '24.18.48.80', 1129920538);
INSERT INTO `watchdog` VALUES (192, 1, 'content', '<em>blog</em>: updated <em>The Rain module, now Twisted(TM) approved!</em>.', 0, '<a href="?q=node/12">view</a>', '/npn/?q=node/12/edit', '24.18.48.80', 1129920649);
INSERT INTO `watchdog` VALUES (193, 0, 'user', 'New user: <em>spuhkewzi</em> <em>&lt;spuhkwezi@gmail.com&gt;</em>.', 0, '<a href="?q=user/7/edit">edit</a>', '/npn/?q=user/register', '67.185.113.249', 1129956338);
INSERT INTO `watchdog` VALUES (194, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '67.185.113.249', 1129956383);
INSERT INTO `watchdog` VALUES (195, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '67.150.213.17', 1129957997);
INSERT INTO `watchdog` VALUES (196, 0, 'user', 'Login attempt failed for <em>digitalxdefiant</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.2.128', 1129965932);
INSERT INTO `watchdog` VALUES (197, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '71.112.2.128', 1129965936);
INSERT INTO `watchdog` VALUES (198, 0, 'access denied', '<em>user/2</em> denied access.', 1, '<a href="?q=user/2" class="active">view</a>', '/npn/?q=user/2', '66.249.66.177', 1129965937);
INSERT INTO `watchdog` VALUES (199, 0, 'access denied', '<em>admin</em> denied access.', 1, '<a href="?q=admin" class="active">view</a>', '/npn/?q=admin', '66.249.66.177', 1129965942);
INSERT INTO `watchdog` VALUES (200, 0, 'access denied', '<em>admin/themes</em> denied access.', 1, '<a href="?q=admin/themes" class="active">view</a>', '/npn/?q=admin/themes', '66.249.66.177', 1129965945);
INSERT INTO `watchdog` VALUES (201, 0, 'access denied', '<em>admin/themes/settings</em> denied access.', 1, '<a href="?q=admin/themes/settings" class="active">view</a>', '/npn/?q=admin/themes/settings', '66.249.66.177', 1129965947);
INSERT INTO `watchdog` VALUES (202, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.2.128', 1129966073);
INSERT INTO `watchdog` VALUES (203, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.112.2.128', 1129966175);
INSERT INTO `watchdog` VALUES (204, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.177', 1129966187);
INSERT INTO `watchdog` VALUES (205, 2, 'content', '<em>blog</em>: added <em>Google adsense</em>.', 0, '<a href="?q=node/13">view</a>', '/npn/?q=node/add/blog', '71.112.2.128', 1129966230);
INSERT INTO `watchdog` VALUES (206, 2, 'content', 'Comment: added <em>linux</em>.', 0, '<a href="?q=node/13#comment-3">view</a>', '/npn/?q=comment/reply/13', '71.112.2.128', 1129966883);
INSERT INTO `watchdog` VALUES (207, 2, 'user', 'Session closed for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=logout', '71.112.2.128', 1129967085);
INSERT INTO `watchdog` VALUES (208, 0, 'user', 'Login attempt failed for <em>devilhorns</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '68.45.124.41', 1130102908);
INSERT INTO `watchdog` VALUES (209, 3, 'user', 'Session opened for <em>devilhorns</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '68.45.124.41', 1130102916);
INSERT INTO `watchdog` VALUES (210, 0, 'access denied', '<em>user/3</em> denied access.', 1, '<a href="?q=user/3" class="active">view</a>', '/npn/?q=user/3', '66.249.66.177', 1130102917);
INSERT INTO `watchdog` VALUES (211, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.177', 1130102940);
INSERT INTO `watchdog` VALUES (212, 3, 'content', '<em>blog</em>: added <em>Mount Module Preview</em>.', 0, '<a href="?q=node/14">view</a>', '/npn/?q=node/add/blog', '68.45.124.41', 1130103011);
INSERT INTO `watchdog` VALUES (213, 1, 'content', 'Comment: added <em>can&#039;t wait til i can test it</em>.', 0, '<a href="?q=node/14#comment-4">view</a>', '/npn/?q=comment/reply/14', '71.112.2.128', 1130106863);
INSERT INTO `watchdog` VALUES (214, 0, 'user', 'New user: <em>Surtsey</em> <em>&lt;surtsey@alkalinet.com&gt;</em>.', 0, '<a href="?q=user/8/edit">edit</a>', '/npn/?q=user/register', '65.100.248.145', 1130117865);
INSERT INTO `watchdog` VALUES (215, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.8.242', 1130121337);
INSERT INTO `watchdog` VALUES (216, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.177', 1130121338);
INSERT INTO `watchdog` VALUES (217, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node', '71.113.115.105', 1130207100);
INSERT INTO `watchdog` VALUES (218, 0, 'access denied', '<em>user/8</em> denied access.', 1, '<a href="?q=user/8" class="active">view</a>', '/npn/?q=user/8', '66.249.66.17', 1130207106);
INSERT INTO `watchdog` VALUES (219, 0, 'access denied', '<em>user/8/edit</em> denied access.', 1, '<a href="?q=user/8/edit" class="active">view</a>', '/npn/?q=user/8/edit', '66.249.66.17', 1130207108);
INSERT INTO `watchdog` VALUES (220, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.17', 1130208087);
INSERT INTO `watchdog` VALUES (221, 2, 'content', '<em>blog</em>: added <em>edevelop.org..</em>.', 0, '<a href="?q=node/15">view</a>', '/npn/?q=node/add/blog', '71.113.115.105', 1130208183);
INSERT INTO `watchdog` VALUES (222, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.17', 1130279083);
INSERT INTO `watchdog` VALUES (223, 1, 'content', '<em>blog</em>: added <em>damn</em>.', 0, '<a href="?q=node/16">view</a>', '/npn/?q=node/add/blog', '24.16.51.49', 1130279124);
INSERT INTO `watchdog` VALUES (224, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=blog%2F1', '71.113.115.105', 1130281291);
INSERT INTO `watchdog` VALUES (225, 2, 'content', 'Comment: added <em>yay</em>.', 0, '<a href="?q=node/16#comment-5">view</a>', '/npn/?q=comment/reply/16', '71.113.115.105', 1130281317);
INSERT INTO `watchdog` VALUES (226, 0, 'access denied', '<em>user/8</em> denied access.', 1, '<a href="?q=user/8" class="active">view</a>', '/npn/?q=user/8', '66.249.66.17', 1130281352);
INSERT INTO `watchdog` VALUES (227, 0, 'access denied', '<em>user/7</em> denied access.', 1, '<a href="?q=user/7" class="active">view</a>', '/npn/?q=user/7', '66.249.66.17', 1130281355);
INSERT INTO `watchdog` VALUES (228, 0, 'access denied', '<em>user/7/edit</em> denied access.', 1, '<a href="?q=user/7/edit" class="active">view</a>', '/npn/?q=user/7/edit', '66.249.66.17', 1130281356);
INSERT INTO `watchdog` VALUES (229, 1, 'content', 'Comment: added <em>the flaming thing was a</em>.', 0, '<a href="?q=node/16#comment-6">view</a>', '/npn/?q=comment/reply/16', '24.16.51.49', 1130366472);
INSERT INTO `watchdog` VALUES (230, 0, 'access denied', '<em>node/add/story</em> denied access.', 1, '<a href="?q=node/add/story" class="active">view</a>', '/npn/?q=node/add/story', '66.249.65.112', 1130367293);
INSERT INTO `watchdog` VALUES (231, 1, 'content', '<em>story</em>: added <em>Participation</em>.', 0, '<a href="?q=node/17">view</a>', '/npn/?q=node/add/story', '24.16.51.49', 1130367363);
INSERT INTO `watchdog` VALUES (232, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.8.242', 1130386795);
INSERT INTO `watchdog` VALUES (233, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.65.228', 1130386795);
INSERT INTO `watchdog` VALUES (234, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.8.242', 1130386883);
INSERT INTO `watchdog` VALUES (235, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '69.88.117.148', 1130438168);
INSERT INTO `watchdog` VALUES (236, 8, 'user', 'Session opened for <em>Surtsey</em>.', 0, '', '/npn/?q=user/login&destination=node', '65.100.248.145', 1130549967);
INSERT INTO `watchdog` VALUES (237, 0, 'access denied', '<em>user/8</em> denied access.', 1, '<a href="?q=user/8" class="active">view</a>', '/npn/?q=user/8', '66.249.66.2', 1130549996);
INSERT INTO `watchdog` VALUES (238, 0, 'access denied', '<em>user/8</em> denied access.', 1, '<a href="?q=user/8" class="active">view</a>', '/npn/?q=user/8', '66.249.66.2', 1130549998);
INSERT INTO `watchdog` VALUES (239, 0, 'access denied', '<em>user/8/edit</em> denied access.', 1, '<a href="?q=user/8/edit" class="active">view</a>', '/npn/?q=user/8/edit', '66.249.66.2', 1130550000);
INSERT INTO `watchdog` VALUES (240, 8, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '65.100.248.145', 1130550171);
INSERT INTO `watchdog` VALUES (241, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.2', 1130550173);
INSERT INTO `watchdog` VALUES (242, 1, 'user', 'Session opened for <em>kingrayray</em>.', 0, '', '/npn/?q=user/login&destination=node', '24.16.58.187', 1130550227);
INSERT INTO `watchdog` VALUES (243, 0, 'access denied', '<em>admin</em> denied access.', 1, '<a href="?q=admin" class="active">view</a>', '/npn/?q=admin', '66.249.66.2', 1130550233);
INSERT INTO `watchdog` VALUES (244, 0, 'access denied', '<em>admin/user</em> denied access.', 1, '<a href="?q=admin/user" class="active">view</a>', '/npn/?q=admin/user', '66.249.66.2', 1130550238);
INSERT INTO `watchdog` VALUES (245, 0, 'access denied', '<em>user/8/edit</em> denied access.', 1, '<a href="?q=user/8/edit" class="active">view</a>', '/npn/?q=user/8/edit&destination=admin%2Fuser', '66.249.66.2', 1130550244);
INSERT INTO `watchdog` VALUES (246, 1, 'php', 'mkdir(files/pictures): Permission denied in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/includes/file.inc on line 86.', 2, '', '/npn/?q=admin/user/configure', '24.16.58.187', 1130551921);
INSERT INTO `watchdog` VALUES (247, 0, 'access denied', '<em>admin/user/configure</em> denied access.', 1, '<a href="?q=admin/user/configure" class="active">view</a>', '/npn/?q=admin/user/configure', '66.249.66.2', 1130551922);
INSERT INTO `watchdog` VALUES (248, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.2', 1130552107);
INSERT INTO `watchdog` VALUES (249, 3, 'content', '<em>blog</em>: added <em>Code, Code, And More Code</em>.', 0, '<a href="?q=node/18">view</a>', '/npn/?q=node/add/blog', '68.37.52.47', 1130552411);
INSERT INTO `watchdog` VALUES (250, 8, 'content', '<em>blog</em>: added <em>The horror!</em>.', 0, '<a href="?q=node/19">view</a>', '/npn/?q=node/add/blog', '65.100.248.145', 1130559316);
INSERT INTO `watchdog` VALUES (251, 8, 'content', '<em>blog</em>: added <em>The horror!</em>.', 0, '<a href="?q=node/20">view</a>', '/npn/?q=node/add/blog', '65.100.248.145', 1130559392);
INSERT INTO `watchdog` VALUES (252, 0, 'access denied', '<em>node/19/edit</em> denied access.', 1, '<a href="?q=node/19/edit" class="active">view</a>', '/npn/?q=node/19/edit', '66.249.66.2', 1130559475);
INSERT INTO `watchdog` VALUES (253, 8, 'content', '<em>blog</em>: deleted <em>The horror!</em>.', 0, '', '/npn/?q=node/19/edit', '65.100.248.145', 1130559485);
INSERT INTO `watchdog` VALUES (254, 0, 'access denied', '<em>admin/node</em> denied access.', 1, '<a href="?q=admin/node" class="active">view</a>', '/npn/?q=admin/node', '66.249.66.2', 1130559489);
INSERT INTO `watchdog` VALUES (255, 0, 'access denied', '<em>node/20/edit</em> denied access.', 1, '<a href="?q=node/20/edit" class="active">view</a>', '/npn/?q=node/20/edit', '66.249.66.2', 1130559592);
INSERT INTO `watchdog` VALUES (256, 8, 'content', '<em>blog</em>: updated <em>The horror!</em>.', 0, '<a href="?q=node/20">view</a>', '/npn/?q=node/20/edit', '65.100.248.145', 1130559631);
INSERT INTO `watchdog` VALUES (257, 0, 'access denied', '<em>admin/access</em> denied access.', 1, '<a href="?q=admin/access" class="active">view</a>', '/npn/?q=admin/access', '66.249.66.2', 1130559874);
INSERT INTO `watchdog` VALUES (258, 0, 'access denied', '<em>admin/themes</em> denied access.', 1, '<a href="?q=admin/themes" class="active">view</a>', '/npn/?q=admin/themes', '66.249.66.2', 1130560264);
INSERT INTO `watchdog` VALUES (259, 0, 'access denied', '<em>admin/menu</em> denied access.', 1, '<a href="?q=admin/menu" class="active">view</a>', '/npn/?q=admin/menu', '66.249.66.2', 1130560710);
INSERT INTO `watchdog` VALUES (260, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '202.7.166.169', 1130563079);
INSERT INTO `watchdog` VALUES (261, 8, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '65.100.248.145', 1130569588);
INSERT INTO `watchdog` VALUES (262, 8, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '65.100.248.145', 1130569594);
INSERT INTO `watchdog` VALUES (263, 0, 'access denied', '<em>admin/modules</em> denied access.', 1, '<a href="?q=admin/modules" class="active">view</a>', '/npn/?q=admin/modules', '66.249.66.2', 1130569788);
INSERT INTO `watchdog` VALUES (264, 0, 'access denied', '<em>admin/filters</em> denied access.', 1, '<a href="?q=admin/filters" class="active">view</a>', '/npn/?q=admin/filters', '66.249.66.2', 1130569906);
INSERT INTO `watchdog` VALUES (265, 0, 'access denied', '<em>admin/filters/2</em> denied access.', 1, '<a href="?q=admin/filters/2" class="active">view</a>', '/npn/?q=admin/filters/2', '66.249.66.2', 1130569914);
INSERT INTO `watchdog` VALUES (266, 0, 'access denied', '<em>admin/help</em> denied access.', 1, '<a href="?q=admin/help" class="active">view</a>', '/npn/?q=admin/help', '66.249.66.2', 1130569970);
INSERT INTO `watchdog` VALUES (267, 0, 'access denied', '<em>admin/help/node</em> denied access.', 1, '<a href="?q=admin/help/node" class="active">view</a>', '/npn/?q=admin/help/node', '66.249.66.2', 1130569977);
INSERT INTO `watchdog` VALUES (268, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '67.185.113.249', 1130574800);
INSERT INTO `watchdog` VALUES (269, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '80.186.33.185', 1130581911);
INSERT INTO `watchdog` VALUES (270, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '81.216.216.11', 1130621774);
INSERT INTO `watchdog` VALUES (271, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.2', 1130621776);
INSERT INTO `watchdog` VALUES (272, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.2', 1130636834);
INSERT INTO `watchdog` VALUES (273, 1, 'content', '<em>blog</em>: added <em>Ok, I finally got around to it.</em>.', 0, '<a href="?q=node/21">view</a>', '/npn/?q=node/add/blog', '24.16.51.49', 1130636950);
INSERT INTO `watchdog` VALUES (274, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.2', 1130682696);
INSERT INTO `watchdog` VALUES (275, 3, 'content', '<em>blog</em>: added <em>Mount Module Has Arrived !!</em>.', 0, '<a href="?q=node/22">view</a>', '/npn/?q=node/add/blog', '68.37.52.47', 1130682959);
INSERT INTO `watchdog` VALUES (276, 1, 'user', 'Session closed for <em>kingrayray</em>.', 0, '', '/npn/?q=logout', '24.16.51.49', 1130686882);
INSERT INTO `watchdog` VALUES (277, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '70.92.247.35', 1130732926);
INSERT INTO `watchdog` VALUES (278, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '80.131.153.183', 1130762827);
INSERT INTO `watchdog` VALUES (279, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.2', 1130762828);
INSERT INTO `watchdog` VALUES (280, 0, 'user', 'New user: <em>misunderstruck</em> <em>&lt;aboyandhis@gmail.com&gt;</em>.', 0, '<a href="?q=user/9/edit">edit</a>', '/npn/?q=user/register', '24.184.143.240', 1130786708);
INSERT INTO `watchdog` VALUES (281, 9, 'user', 'Session opened for <em>misunderstruck</em>.', 0, '', '/npn/?q=user/login&destination=user', '24.184.143.240', 1130787068);
INSERT INTO `watchdog` VALUES (282, 9, 'content', 'Comment: added <em>I downloaded and installed</em>.', 0, '<a href="?q=node/22#comment-7">view</a>', '/npn/?q=comment/reply/22', '24.184.143.240', 1130787354);
INSERT INTO `watchdog` VALUES (283, 9, 'user', 'Session opened for <em>misunderstruck</em>.', 0, '', '/npn/?q=user/login&destination=blog%2F3', '24.184.143.240', 1130815903);
INSERT INTO `watchdog` VALUES (284, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '67.185.114.250', 1130816387);
INSERT INTO `watchdog` VALUES (285, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.2', 1130816393);
INSERT INTO `watchdog` VALUES (286, 9, 'user', 'Session opened for <em>misunderstruck</em>.', 0, '', '/npn/?q=user/login&destination=blog%2F3', '24.184.143.240', 1130891273);
INSERT INTO `watchdog` VALUES (287, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1130897485);
INSERT INTO `watchdog` VALUES (288, 0, 'user', 'Login attempt failed for <em>kingrayray</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '24.16.51.49', 1130898268);
INSERT INTO `watchdog` VALUES (289, 1, 'user', 'Session opened for <em>kingrayray</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '24.16.51.49', 1130898282);
INSERT INTO `watchdog` VALUES (290, 0, 'access denied', '<em>user/1</em> denied access.', 1, '<a href="?q=user/1" class="active">view</a>', '/npn/?q=user/1', '66.249.66.2', 1130898284);
INSERT INTO `watchdog` VALUES (291, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.65.174', 1130916059);
INSERT INTO `watchdog` VALUES (292, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1130916117);
INSERT INTO `watchdog` VALUES (293, 1, 'content', '<em>blog</em>: added <em>Rainy d... er that name sucks. BUT UPDATES!!</em>.', 0, '<a href="?q=node/23">view</a>', '/npn/?q=node/add/blog', '24.16.51.49', 1130916538);
INSERT INTO `watchdog` VALUES (294, 0, 'access denied', '<em>node/23/edit</em> denied access.', 1, '<a href="?q=node/23/edit" class="active">view</a>', '/npn/?q=node/23/edit', '66.249.65.174', 1130916571);
INSERT INTO `watchdog` VALUES (295, 1, 'content', '<em>blog</em>: updated <em>Rainy d... er that name sucks. BUT UPDATES!!</em>.', 0, '<a href="?q=node/23">view</a>', '/npn/?q=node/23/edit', '24.16.51.49', 1130916682);
INSERT INTO `watchdog` VALUES (296, 1, 'content', '<em>blog</em>: updated <em>Rainy d... er that name sucks. BUT UPDATES!!</em>.', 0, '<a href="?q=node/23">view</a>', '/npn/?q=node/23/edit', '24.16.51.49', 1130917086);
INSERT INTO `watchdog` VALUES (297, 0, 'access denied', '<em>node/add/page</em> denied access.', 1, '<a href="?q=node/add/page" class="active">view</a>', '/npn/?q=node/add/page', '66.249.65.174', 1130917141);
INSERT INTO `watchdog` VALUES (298, 1, 'content', '<em>page</em>: added <em>About the Ninjapirates</em>.', 0, '<a href="?q=node/24">view</a>', '/npn/?q=node/add/page', '24.16.51.49', 1130917219);
INSERT INTO `watchdog` VALUES (299, 1, 'content', '<em>blog</em>: updated <em>Rainy d... er that name sucks. BUT UPDATES!!</em>.', 0, '<a href="?q=node/23">view</a>', '/npn/?q=node/23/edit', '24.16.51.49', 1130918362);
INSERT INTO `watchdog` VALUES (300, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1130933905);
INSERT INTO `watchdog` VALUES (301, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1130952294);
INSERT INTO `watchdog` VALUES (302, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1130971441);
INSERT INTO `watchdog` VALUES (303, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node%2F23', '71.113.115.105', 1130972109);
INSERT INTO `watchdog` VALUES (304, 2, 'content', 'Comment: added <em>Name </em>.', 0, '<a href="?q=node/23#comment-8">view</a>', '/npn/?q=comment/reply/23', '71.113.115.105', 1130972435);
INSERT INTO `watchdog` VALUES (305, 0, 'access denied', '<em>admin/comment/delete/7</em> denied access.', 1, '<a href="?q=admin/comment/delete/7" class="active">view</a>', '/npn/?q=admin/comment/delete/7', '66.249.65.174', 1130972634);
INSERT INTO `watchdog` VALUES (306, 0, 'access denied', '<em>user/9</em> denied access.', 1, '<a href="?q=user/9" class="active">view</a>', '/npn/?q=user/9', '66.249.65.174', 1130972639);
INSERT INTO `watchdog` VALUES (307, 0, 'access denied', '<em>user/9/edit</em> denied access.', 1, '<a href="?q=user/9/edit" class="active">view</a>', '/npn/?q=user/9/edit', '66.249.65.174', 1130972640);
INSERT INTO `watchdog` VALUES (308, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131034077);
INSERT INTO `watchdog` VALUES (309, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131051588);
INSERT INTO `watchdog` VALUES (310, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131075157);
INSERT INTO `watchdog` VALUES (311, 2, 'user', 'Session opened for <em>digitalxdefiant</em>.', 0, '', '/npn/?q=user/login&destination=node%2F23', '71.113.115.105', 1131087041);
INSERT INTO `watchdog` VALUES (312, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131094404);
INSERT INTO `watchdog` VALUES (313, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131113309);
INSERT INTO `watchdog` VALUES (314, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131140116);
INSERT INTO `watchdog` VALUES (315, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.113.115.105', 1131140378);
INSERT INTO `watchdog` VALUES (316, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.65.105', 1131140379);
INSERT INTO `watchdog` VALUES (317, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131159772);
INSERT INTO `watchdog` VALUES (318, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131177237);
INSERT INTO `watchdog` VALUES (319, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131197844);
INSERT INTO `watchdog` VALUES (320, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.65.105', 1131212568);
INSERT INTO `watchdog` VALUES (321, 3, 'content', '<em>blog</em>: added <em>Twp new modules</em>.', 0, '<a href="?q=node/25">view</a>', '/npn/?q=node/add/blog', '68.37.52.47', 1131212599);
INSERT INTO `watchdog` VALUES (322, 3, 'content', 'Comment: added <em>Newer version</em>.', 0, '<a href="?q=node/22#comment-9">view</a>', '/npn/?q=comment/reply/22', '68.37.52.47', 1131212683);
INSERT INTO `watchdog` VALUES (323, 0, 'access denied', '<em>user/9</em> denied access.', 1, '<a href="?q=user/9" class="active">view</a>', '/npn/?q=user/9', '66.249.65.105', 1131212688);
INSERT INTO `watchdog` VALUES (324, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131215379);
INSERT INTO `watchdog` VALUES (325, 1, 'php', 'Missing argument 1 for comment_admin_edit() in /home/httpd/vhosts/dxdstudio.com/httpdocs/npn/modules/comment.module on line 917.', 2, '', '/npn/?q=admin/comment/edit/', '24.16.50.41', 1131216693);
INSERT INTO `watchdog` VALUES (326, 0, 'access denied', '<em>admin/comment/edit</em> denied access.', 1, '<a href="?q=admin/comment/edit" class="active">view</a>', '/npn/?q=admin/comment/edit/', '66.249.65.105', 1131216694);
INSERT INTO `watchdog` VALUES (327, 1, 'content', 'Comment: added <em>I looks like Hawkwind had to</em>.', 0, '<a href="?q=node/25#comment-10">view</a>', '/npn/?q=comment/reply/25', '24.16.50.41', 1131216712);
INSERT INTO `watchdog` VALUES (328, 3, 'content', 'Comment: added <em>No Worries</em>.', 0, '<a href="?q=node/25#comment-11">view</a>', '/npn/?q=comment/reply/25', '68.37.52.47', 1131242980);
INSERT INTO `watchdog` VALUES (329, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131249601);
INSERT INTO `watchdog` VALUES (330, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131263067);
INSERT INTO `watchdog` VALUES (331, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131280108);
INSERT INTO `watchdog` VALUES (332, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131297570);
INSERT INTO `watchdog` VALUES (333, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131315435);
INSERT INTO `watchdog` VALUES (334, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131329502);
INSERT INTO `watchdog` VALUES (335, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '64.124.122.228', 1131335024);
INSERT INTO `watchdog` VALUES (336, 0, 'access denied', '<em>node/25/edit</em> denied access.', 1, '<a href="?q=node/25/edit" class="active">view</a>', '/npn/?q=node/25/edit', '66.249.65.105', 1131336774);
INSERT INTO `watchdog` VALUES (337, 3, 'content', '<em>blog</em>: updated <em>Two new modules</em>.', 0, '<a href="?q=node/25">view</a>', '/npn/?q=node/25/edit', '68.37.52.47', 1131336782);
INSERT INTO `watchdog` VALUES (338, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131355672);
INSERT INTO `watchdog` VALUES (339, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131375795);
INSERT INTO `watchdog` VALUES (340, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131394664);
INSERT INTO `watchdog` VALUES (341, 9, 'user', 'Session opened for <em>misunderstruck</em>.', 0, '', '/npn/?q=user/login&destination=blog%2F3', '24.184.143.240', 1131419586);
INSERT INTO `watchdog` VALUES (342, 9, 'content', 'Comment: added <em>How about &quot;Neptune&quot;? \r\nThe</em>.', 0, '<a href="?q=node/23#comment-12">view</a>', '/npn/?q=comment/reply/23', '24.184.143.240', 1131419812);
INSERT INTO `watchdog` VALUES (343, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131424236);
INSERT INTO `watchdog` VALUES (344, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131834119);
INSERT INTO `watchdog` VALUES (345, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131889447);
INSERT INTO `watchdog` VALUES (346, 0, 'page not found', '<em>node/26</em> not found.', 1, '', '/npn/?q=node/26', '207.46.98.149', 1131896472);
INSERT INTO `watchdog` VALUES (347, 0, 'page not found', '<em>node/26</em> not found.', 1, '', '/npn/?q=node/26', '207.46.98.149', 1131909320);
INSERT INTO `watchdog` VALUES (348, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131913035);
INSERT INTO `watchdog` VALUES (349, 0, 'page not found', '<em>node/26</em> not found.', 1, '', '/npn/?q=node/26', '207.46.98.149', 1131932132);
INSERT INTO `watchdog` VALUES (350, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131933891);
INSERT INTO `watchdog` VALUES (351, 0, 'user', 'Login attempt failed for <em>kingrayray</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '24.16.51.49', 1131947853);
INSERT INTO `watchdog` VALUES (352, 1, 'user', 'Session opened for <em>kingrayray</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '24.16.51.49', 1131947862);
INSERT INTO `watchdog` VALUES (353, 0, 'access denied', '<em>user/1</em> denied access.', 1, '<a href="?q=user/1" class="active">view</a>', '/npn/?q=user/1', '66.249.66.102', 1131947864);
INSERT INTO `watchdog` VALUES (354, 0, 'access denied', '<em>admin</em> denied access.', 1, '<a href="?q=admin" class="active">view</a>', '/npn/?q=admin', '66.249.66.102', 1131947868);
INSERT INTO `watchdog` VALUES (355, 0, 'access denied', '<em>admin</em> denied access.', 1, '<a href="?q=admin" class="active">view</a>', '/npn/?q=admin', '66.249.66.102', 1131947868);
INSERT INTO `watchdog` VALUES (356, 1, 'content', 'Comment: added <em>whoa. good idea dude :O i</em>.', 0, '<a href="?q=node/23#comment-13">view</a>', '/npn/?q=comment/reply/23', '24.16.51.49', 1131947919);
INSERT INTO `watchdog` VALUES (357, 0, 'page not found', '<em>node/26</em> not found.', 1, '', '/npn/?q=node/26', '207.46.98.149', 1131951317);
INSERT INTO `watchdog` VALUES (358, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1131956176);
INSERT INTO `watchdog` VALUES (359, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '62.2.198.242', 1131959485);
INSERT INTO `watchdog` VALUES (360, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.102', 1131959485);
INSERT INTO `watchdog` VALUES (361, 0, 'access denied', '<em>user/9</em> denied access.', 1, '<a href="?q=user/9" class="active">view</a>', '/npn/?q=user/9', '66.249.66.102', 1131962824);
INSERT INTO `watchdog` VALUES (362, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.102', 1131972126);
INSERT INTO `watchdog` VALUES (363, 1, 'content', '<em>blog</em>: added <em>Offical changes to my theme</em>.', 0, '<a href="?q=node/26">view</a>', '/npn/?q=node/add/blog', '24.16.51.49', 1131972247);
INSERT INTO `watchdog` VALUES (364, 0, 'access denied', '<em>node/26/edit</em> denied access.', 1, '<a href="?q=node/26/edit" class="active">view</a>', '/npn/?q=node/26/edit', '66.249.66.102', 1131974648);
INSERT INTO `watchdog` VALUES (365, 1, 'content', '<em>blog</em>: updated <em>Offical changes to my theme</em>.', 0, '<a href="?q=node/26">view</a>', '/npn/?q=node/26/edit', '24.16.51.49', 1131974701);
INSERT INTO `watchdog` VALUES (366, 1, 'content', '<em>blog</em>: updated <em>Offical changes to my theme</em>.', 0, '<a href="?q=node/26">view</a>', '/npn/?q=node/26/edit', '24.16.51.49', 1131977386);
INSERT INTO `watchdog` VALUES (367, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '68.94.218.243', 1132004403);
INSERT INTO `watchdog` VALUES (368, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '68.94.218.243', 1132004403);
INSERT INTO `watchdog` VALUES (369, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '212.64.4.72', 1132005061);
INSERT INTO `watchdog` VALUES (370, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '203.206.69.65', 1132007569);
INSERT INTO `watchdog` VALUES (371, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132019420);
INSERT INTO `watchdog` VALUES (372, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132041046);
INSERT INTO `watchdog` VALUES (373, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132061001);
INSERT INTO `watchdog` VALUES (374, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132081576);
INSERT INTO `watchdog` VALUES (375, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132100870);
INSERT INTO `watchdog` VALUES (376, 0, 'user', 'New user: <em>cupcake</em> <em>&lt;imipramine@gmail.com&gt;</em>.', 0, '<a href="?q=user/10/edit">edit</a>', '/npn/?q=user/register', '68.94.218.243', 1132124613);
INSERT INTO `watchdog` VALUES (377, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132162877);
INSERT INTO `watchdog` VALUES (378, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132181697);
INSERT INTO `watchdog` VALUES (379, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132240515);
INSERT INTO `watchdog` VALUES (380, 1, 'user', 'Session opened for <em>kingrayray</em>.', 0, '', '/npn/?q=user/login&destination=node', '24.17.170.67', 1132266189);
INSERT INTO `watchdog` VALUES (381, 1, 'user', 'Session closed for <em>kingrayray</em>.', 0, '', '/npn/?q=logout', '24.17.170.67', 1132266193);
INSERT INTO `watchdog` VALUES (382, 1, 'user', 'Session opened for <em>kingrayray</em>.', 0, '', '/npn/?q=user/login&destination=node', '24.17.170.67', 1132266210);
INSERT INTO `watchdog` VALUES (383, 0, 'access denied', '<em>admin</em> denied access.', 1, '<a href="?q=admin" class="active">view</a>', '/npn/?q=admin', '66.249.66.102', 1132266214);
INSERT INTO `watchdog` VALUES (384, 0, 'access denied', '<em>admin/settings</em> denied access.', 1, '<a href="?q=admin/settings" class="active">view</a>', '/npn/?q=admin/settings', '66.249.66.102', 1132266222);
INSERT INTO `watchdog` VALUES (385, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132281774);
INSERT INTO `watchdog` VALUES (386, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132302941);
INSERT INTO `watchdog` VALUES (387, 0, 'page not found', '<em>about</em> not found.', 1, '', '/npn/?q=about', '66.249.71.33', 1132312716);
INSERT INTO `watchdog` VALUES (388, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132320671);
INSERT INTO `watchdog` VALUES (389, 0, 'user', 'Login attempt failed for <em>wallooza</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '67.185.128.131', 1132328939);
INSERT INTO `watchdog` VALUES (390, 0, 'user', 'Login attempt failed for <em>wallooza</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '67.185.128.131', 1132329016);
INSERT INTO `watchdog` VALUES (391, 0, 'user', 'Login attempt failed for <em>wallooza</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '67.185.128.131', 1132329184);
INSERT INTO `watchdog` VALUES (392, 0, 'user', 'Login attempt failed for <em>wallooza</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '67.185.128.131', 1132329190);
INSERT INTO `watchdog` VALUES (393, 0, 'user', 'Login attempt failed for <em>wallooza</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '67.185.128.131', 1132329196);
INSERT INTO `watchdog` VALUES (394, 0, 'user', 'New user: <em>wallooza</em> <em>&lt;wallooza@gmail.com&gt;</em>.', 0, '<a href="?q=user/11/edit">edit</a>', '/npn/?q=user/register', '67.185.128.131', 1132329287);
INSERT INTO `watchdog` VALUES (395, 11, 'user', 'Session opened for <em>wallooza</em>.', 0, '', '/npn/?q=user/login&destination=user', '67.185.128.131', 1132329350);
INSERT INTO `watchdog` VALUES (396, 0, 'access denied', '<em>user/11</em> denied access.', 1, '<a href="?q=user/11" class="active">view</a>', '/npn/?q=user/11', '66.249.66.72', 1132329352);
INSERT INTO `watchdog` VALUES (397, 0, 'access denied', '<em>user/11/edit</em> denied access.', 1, '<a href="?q=user/11/edit" class="active">view</a>', '/npn/?q=user/11/edit', '66.249.66.72', 1132329356);
INSERT INTO `watchdog` VALUES (398, 0, 'access denied', '<em>aggregator</em> denied access.', 1, '<a href="?q=aggregator" class="active">view</a>', '/npn/?q=aggregator', '66.249.66.72', 1132329393);
INSERT INTO `watchdog` VALUES (399, 11, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '67.185.128.131', 1132329397);
INSERT INTO `watchdog` VALUES (400, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.72', 1132329398);
INSERT INTO `watchdog` VALUES (401, 11, 'user', 'Session closed for <em>wallooza</em>.', 0, '', '/npn/?q=logout', '67.185.128.131', 1132329428);
INSERT INTO `watchdog` VALUES (402, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132331965);
INSERT INTO `watchdog` VALUES (403, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132340197);
INSERT INTO `watchdog` VALUES (404, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132362723);
INSERT INTO `watchdog` VALUES (405, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '81.188.70.134', 1132403173);
INSERT INTO `watchdog` VALUES (406, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '84.17.231.132', 1132440544);
INSERT INTO `watchdog` VALUES (407, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.72', 1132440548);
INSERT INTO `watchdog` VALUES (408, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132459343);
INSERT INTO `watchdog` VALUES (409, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132476506);
INSERT INTO `watchdog` VALUES (410, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132507457);
INSERT INTO `watchdog` VALUES (411, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132524080);
INSERT INTO `watchdog` VALUES (412, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.66.72', 1132539582);
INSERT INTO `watchdog` VALUES (413, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132541911);
INSERT INTO `watchdog` VALUES (414, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132562685);
INSERT INTO `watchdog` VALUES (415, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132581450);
INSERT INTO `watchdog` VALUES (416, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132606265);
INSERT INTO `watchdog` VALUES (417, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132666648);
INSERT INTO `watchdog` VALUES (418, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132686570);
INSERT INTO `watchdog` VALUES (419, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132711306);
INSERT INTO `watchdog` VALUES (420, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132729052);
INSERT INTO `watchdog` VALUES (421, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.66.72', 1132738735);
INSERT INTO `watchdog` VALUES (422, 1, 'content', '<em>blog</em>: added <em>Neptune!</em>.', 0, '<a href="?q=node/27">view</a>', '/npn/?q=node/add/blog', '24.17.170.67', 1132738971);
INSERT INTO `watchdog` VALUES (423, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132746493);
INSERT INTO `watchdog` VALUES (424, 0, 'access denied', '<em>node/27/edit</em> denied access.', 1, '<a href="?q=node/27/edit" class="active">view</a>', '/npn/?q=node/27/edit', '66.249.66.72', 1132766446);
INSERT INTO `watchdog` VALUES (425, 1, 'content', '<em>blog</em>: updated <em>Neptune!</em>.', 0, '<a href="?q=node/27">view</a>', '/npn/?q=node/27/edit', '24.17.170.67', 1132766490);
INSERT INTO `watchdog` VALUES (426, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132821119);
INSERT INTO `watchdog` VALUES (427, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132839317);
INSERT INTO `watchdog` VALUES (428, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132858841);
INSERT INTO `watchdog` VALUES (429, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132878573);
INSERT INTO `watchdog` VALUES (430, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132899775);
INSERT INTO `watchdog` VALUES (431, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132917560);
INSERT INTO `watchdog` VALUES (432, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132929260);
INSERT INTO `watchdog` VALUES (433, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132937159);
INSERT INTO `watchdog` VALUES (434, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132949914);
INSERT INTO `watchdog` VALUES (435, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132954572);
INSERT INTO `watchdog` VALUES (436, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132967623);
INSERT INTO `watchdog` VALUES (437, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1132986783);
INSERT INTO `watchdog` VALUES (438, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '64.124.85.74', 1132990526);
INSERT INTO `watchdog` VALUES (439, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '147.88.200.230', 1132997242);
INSERT INTO `watchdog` VALUES (440, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.65.195', 1132997243);
INSERT INTO `watchdog` VALUES (441, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133004676);
INSERT INTO `watchdog` VALUES (442, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133040449);
INSERT INTO `watchdog` VALUES (443, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133061648);
INSERT INTO `watchdog` VALUES (444, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133079987);
INSERT INTO `watchdog` VALUES (445, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '71.112.0.227', 1133085534);
INSERT INTO `watchdog` VALUES (446, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.65.195', 1133085535);
INSERT INTO `watchdog` VALUES (447, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133097770);
INSERT INTO `watchdog` VALUES (448, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133116860);
INSERT INTO `watchdog` VALUES (449, 5, 'user', 'Session opened for <em>Jas-Nix</em>.', 0, '', '/npn/?q=user/login&destination=node', '65.204.194.67', 1133123593);
INSERT INTO `watchdog` VALUES (450, 0, 'page not found', '<em>about</em> not found.', 1, '', '/npn/?q=about', '66.249.71.33', 1133142437);
INSERT INTO `watchdog` VALUES (451, 0, 'user', 'Login attempt failed for <em>misunderstruck</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '69.112.169.6', 1133153086);
INSERT INTO `watchdog` VALUES (452, 9, 'user', 'Session opened for <em>misunderstruck</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '69.112.169.6', 1133153092);
INSERT INTO `watchdog` VALUES (453, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133163887);
INSERT INTO `watchdog` VALUES (454, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133181760);
INSERT INTO `watchdog` VALUES (455, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133198682);
INSERT INTO `watchdog` VALUES (456, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133225461);
INSERT INTO `watchdog` VALUES (457, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.65.195', 1133228482);
INSERT INTO `watchdog` VALUES (458, 1, 'content', '<em>blog</em>: added <em>Wrapping it up.</em>.', 0, '<a href="?q=node/28">view</a>', '/npn/?q=node/add/blog', '24.17.170.67', 1133228520);
INSERT INTO `watchdog` VALUES (459, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133244387);
INSERT INTO `watchdog` VALUES (460, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133264380);
INSERT INTO `watchdog` VALUES (461, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133282881);
INSERT INTO `watchdog` VALUES (462, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133302262);
INSERT INTO `watchdog` VALUES (463, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '65.95.246.92', 1133316709);
INSERT INTO `watchdog` VALUES (464, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133323259);
INSERT INTO `watchdog` VALUES (465, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133339772);
INSERT INTO `watchdog` VALUES (466, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133369653);
INSERT INTO `watchdog` VALUES (467, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133390811);
INSERT INTO `watchdog` VALUES (468, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133410044);
INSERT INTO `watchdog` VALUES (469, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133427929);
INSERT INTO `watchdog` VALUES (470, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.65.195', 1133429244);
INSERT INTO `watchdog` VALUES (471, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133446378);
INSERT INTO `watchdog` VALUES (472, 0, 'user', 'Login attempt failed for <em>misunderstruck</em>: <em>Sorry. Unrecognized username or password. &lt;a href=&quot;?q=user/password&quot;&gt;Have you forgotten your password?&lt;/a&gt;</em>.', 0, '', '/npn/?q=user/login&destination=node', '69.112.169.6', 1133488328);
INSERT INTO `watchdog` VALUES (473, 9, 'user', 'Session opened for <em>misunderstruck</em>.', 0, '', '/npn/?q=user/login&destination=user%2Flogin', '69.112.169.6', 1133488332);
INSERT INTO `watchdog` VALUES (474, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133489182);
INSERT INTO `watchdog` VALUES (475, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133507654);
INSERT INTO `watchdog` VALUES (476, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133527233);
INSERT INTO `watchdog` VALUES (477, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133543586);
INSERT INTO `watchdog` VALUES (478, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133561847);
INSERT INTO `watchdog` VALUES (479, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133600757);
INSERT INTO `watchdog` VALUES (480, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133621650);
INSERT INTO `watchdog` VALUES (481, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133639213);
INSERT INTO `watchdog` VALUES (482, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133660500);
INSERT INTO `watchdog` VALUES (483, 0, 'access denied', '<em>node/add/blog</em> denied access.', 1, '<a href="?q=node/add/blog" class="active">view</a>', '/npn/?q=node/add/blog', '66.249.65.195', 1133661740);
INSERT INTO `watchdog` VALUES (484, 1, 'content', '<em>blog</em>: added <em>here..</em>.', 0, '<a href="?q=node/29">view</a>', '/npn/?q=node/add/blog', '24.17.170.67', 1133662132);
INSERT INTO `watchdog` VALUES (485, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133677293);
INSERT INTO `watchdog` VALUES (486, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133696788);
INSERT INTO `watchdog` VALUES (487, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '207.46.98.149', 1133715206);
INSERT INTO `watchdog` VALUES (488, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '82.141.51.160', 1133733366);
INSERT INTO `watchdog` VALUES (489, 0, 'page not found', '<em>http://www.dxdstudio.com/npn/?q=about</em> not found.', 1, '', '/npn/?q=http://www.dxdstudio.com/npn/?q=about', '66.249.65.195', 1133733366);
