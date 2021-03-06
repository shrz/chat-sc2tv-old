CREATE TABLE 'chat_anon' (
  'ip_address' bigint(20) NOT NULL DEFAULT '0',
  'date' datetime NOT NULL,
  'uri' varchar(1024) NOT NULL,
  'referer' varchar(1024) DEFAULT NULL,
  'user_agent' varchar(1024) DEFAULT NULL,
  'cookie' varchar(1024) DEFAULT NULL,
  PRIMARY KEY ('ip_address'),
  KEY 'date' ('date'),
  KEY 'uri' ('uri'(255)),
  KEY 'referrer' ('referer'(255)),
  KEY 'user_agent' ('user_agent'(255))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE 'chat_ban' (
  'id' int(11) NOT NULL AUTO_INCREMENT,
  'uid' int(11) NOT NULL,
  'moderatorId' int(11) NOT NULL,
  'banExpirationTime' int(10) unsigned DEFAULT NULL,
  'banMessageId' int(10) unsigned DEFAULT NULL,
  'banTime' int(10) unsigned DEFAULT NULL,
  'banDuration' int(10) unsigned DEFAULT NULL,
  'status' tinyint(1) NOT NULL DEFAULT '1',
  'banModificationReason' varchar(255) NOT NULL,
  'banModificationUserId' int(11) NOT NULL,
  'banReasonId' int(2) unsigned DEFAULT NULL,
  PRIMARY KEY ('id'),
  KEY 'status' ('status'),
  KEY 'moderatorId' ('moderatorId'),
  KEY 'uid' ('uid'),
  KEY 'banReasonId' ('banReasonId'),
  KEY 'banExpirationTime' ('banExpirationTime'),
  KEY 'banTime' ('banTime'),
  KEY 'banModificationUserId' ('banModificationUserId')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS 'chat_message';
CREATE TABLE 'chat_message' (
  'id' int(11) NOT NULL AUTO_INCREMENT,
  'uid' int(11) NOT NULL,
  'message' varchar(1024) NOT NULL,
  'date' datetime NOT NULL,
  'channelId' int(8) unsigned DEFAULT '0',
  'deletedBy' int(10) unsigned DEFAULT NULL,
  PRIMARY KEY ('id'),
  KEY 'uid' ('uid'),
  KEY 'date' ('date'),
  KEY 'channelId' ('channelId'),
  KEY 'deletedBy' ('deletedBy')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE chat_smile' (
  'sid' int(11) NOT NULL AUTO_INCREMENT,
  'code' varchar(128) NOT NULL,
  'img' varchar(256) NOT NULL,
  'width' int(11) NOT NULL,
  'height' int(11) NOT NULL,
  PRIMARY KEY ('sid')
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO 'chat_smile' ('sid', 'code', 'img', 'width', 'height') VALUES
(6,	':happy:',	'a.png?1',	30,	30),
(7,	':aws:',	'awesome.png?1',	30,	30),
(8,	':nc:',	'nocomments.png?1',	30,	30),
(9,	':manul:',	'manul.png?1',	30,	30),
(10,	':crazy:',	'crazy.png?1',	30,	30),
(11,	':cry:',	'cry.png?1',	30,	30),
(12,	':glory:',	'glory.png?1',	30,	30),
(13,	':kawai:',	'kawai.png?1',	30,	30),
(14,	':mee:',	'mee.png?1',	30,	30),
(15,	':omg:',	'omg.png?1',	30,	30),
(16,	':whut:',	'mhu.png?1',	30,	30),
(17,	':sad:',	'sad.png?1',	30,	30),
(18,	':spk:',	'slowpoke.png?1',	29,	30),
(19,	':hmhm:',	'2.png?1',	30,	30),
(20,	':mad:',	'mad.png?1',	30,	30),
(21,	':angry:',	'aangry.png?1',	30,	30),
(22,	':xd:',	'ii.png?1',	31,	30),
(23,	':huh:',	'huh.png?1',	31,	30),
(24,	':tears:',	'happycry.png?1',	30,	30),
(25,	':notch:',	'notch.png?1',	30,	30),
(26,	':vaga:',	'vaganych.png?1',	30,	30),
(27,	':ra:',	'ra.png?1',	31,	34),
(28,	':fp:',	'facepalm.png?1',	30,	30),
(29,	':neo:',	'smith.png?1',	30,	30),
(30,	':peka:',	'mini-happy.png?3',	30,	30),
(31,	':trf:',	'trollface.png?2',	31,	25),
(32,	':fu:',	'fuuuu.png?3',	28,	30),
(33,	':why:',	'why.png?1',	34,	30),
(34,	':yao:',	'yao.png?1',	23,	30),
(35,	':fyeah:',	'fyeah.png?1',	30,	30),
(36,	':lucky:',	'lol.png?3',	28,	30),
(37,	':okay:',	'okay.png?2',	23,	30),
(38,	':alone:',	'alone.png?2',	31,	30),
(39,	':joyful:',	'ewbte.png?3',	28,	30),
(40,	':wtf:',	'wtf.png?1',	30,	30),
(41,	':danu:',	'daladno.png?1',	30,	30),
(42,	':gusta:',	'megusta.png?1',	30,	30),
(43,	':bm:',	'bm.png?4',	52,	29),
(44,	':lol:',	'loool.png?1',	25,	30),
(45,	':notbad:',	'notbad.png?1',	30,	30),
(46,	':rly:',	'really.png?1',	30,	30),
(47,	':ban:',	'banan.png?1',	21,	30),
(48,	':cap:',	'cap.png?1',	35,	25),
(49,	':br:',	'br.png?1',	27,	30),
(50,	':fpl:',	'leefacepalm.png?1',	26,	30),
(51,	':ht:',	'heart.png?1',	30,	30),
(52,	':adolf:',	'adolf.png?2',	27,	33),
(53,	':bratok:',	'bratok.png?1',	27,	33),
(54,	':strelok:',	'strelok.png?1',	27,	30),
(55,	':white-ra:',	'white-ra.png?1',	27,	33),
(56,	':dimaga:',	'dimaga.png?1',	27,	33),
(57,	':bruce:',	'bruce.png?1',	30,	33),
(58,	':jae:',	'jaedong.png?1',	28,	33),
(59,	':flash:',	'flash1.png?1',	28,	33),
(60,	':bisu:',	'bisu.png?1',	26,	33),
(61,	':jangbi:',	'jangbi.png?1',	27,	31),
(62,	':idra:',	'idra.png?1',	28,	33),
(63,	':vdv:',	'vitya.png?1',	23,	33),
(64,	':imba:',	'djigurda.png?1',	30,	33),
(65,	':chuck:',	'chan.png?1',	30,	30),
(66,	':tgirl:',	'brucelove.png?1',	26,	29),
(67,	':top1sng:',	'happy.png?1',	23,	30),
(68,	':slavik:',	'slavik.png?1',	25,	33),
(69,	':olsilove:',	'olsilove.png?1',	26,	30),
(70,	':kas:',	'kas.png?1',	24,	30),
(71,	':pool:',	'pool.png?1',	30,	30),
(72,	':ej:',	'ejik.png?1',	30,	30),
(73,	':mario:',	'mario.png?1',	33,	30),
(74,	':tort:',	'tort.png?1',	30,	30),
(75,	':arni:',	'terminator.png?1',	20,	30),
(76,	':crab:',	'crab.png?1',	34,	30),
(77,	':hero:',	'heroes3.png?1',	24,	28),
(78,	':mc:',	'mine.png?1',	25,	25),
(79,	':osu:',	'osu.png?1',	30,	30),
(80,	':q3:',	'q3.png?1',	30,	30),
(81,	':tigra:',	'tigrica.png?1',	30,	30),
(82,	':volck:',	'voOlchik1.png?1',	31,	31),
(83,	':hpeka:',	'harupeka.png?1',	30,	30),
(84,	':slow:',	'spok.png?1',	29,	32),
(85,	':alex:',	'alfi.png?1',	30,	30),
(86,	':panda:',	'panda.png?1',	30,	30),
(87,	':sun:',	'sunl.png?1',	30,	30),
(88,	':cou:',	'cougar.png?2',	30,	30),
(89,	':wb:',	'wormban.png?1',	30,	30),
(90,	':dobro:',	'dobre.png?1',	30,	30),
(91,	':theweedle:',	'weedle.png?1',	30,	30),
(92,	':apc:',	'apochai.png?1',	26,	30),
(93,	':globus:',	'globus.png?1',	30,	36),
(94,	':cow:',	'cow.png?1',	30,	23),
(95,	':nook:',	'no-okay.png?1',	30,	30),
(96,	':noj:',	'knife.png?1',	30,	15),
(97,	':fpd:',	'fp.png?1',	43,	30),
(98,	':hg:',	'hg.png?1',	30,	30),
(99,	':yoko:',	'yoko.png?1',	41,	30),
(100,	':miku:',	'miku.png?1',	23,	30),
(101,	':winry:',	'winry.png?1',	20,	30),
(102,	':asuka:',	'asuka.png?1',	25,	30),
(103,	':konata:',	'konata.png?1',	30,	30),
(104,	':reimu:',	'reimu.png?1',	30,	30),
(105,	':sex:',	'sex.png?1',	30,	30),
(106,	':mimo:',	'mimo.png?1',	23,	33),
(107,	':fire:',	'fire.png?1',	30,	30),
(108,	':mandarin:',	'mandarin.png?1',	30,	30),
(109,	':grafon:',	'grafon.png?1',	23,	30),
(110,	':epeka:',	'epeka.png?1',	30,	30),
(111,	':opeka:',	'opeka.png?1',	30,	30),
(112,	':ocry:',	'ocry.png?1',	30,	30),
(113,	':neponi:',	'neponi.png?1',	30,	30),
(114,	':moon:',	'moon.png?1',	23,	30),
(115,	':ghost:',	'gay.png?1',	30,	30),
(116,	':omsk:',	'omsk.png?2',	30,	30),
(117,	':grumpy:',	'grumpy.png?2',	30,	30),
(118,	':bobr:',	'bobr.png?1',	30,	30);
