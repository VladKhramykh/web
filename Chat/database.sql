

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


CREATE TABLE IF NOT EXISTS `abuse` (
  `id` int(13) PRIMARY KEY  AUTO_INCREMENT NOT NULL,
  `user_id_from` int(13) NOT NULL COMMENT 'Потерпевший',
  `user_id_to` int(13) NOT NULL COMMENT 'Обвиняемый',
  `time` int(13) NOT NULL COMMENT 'Время поступления жалобы'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;



CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `read_time` int(11) NOT NULL DEFAULT '0',
  `message` text CHARACTER SET utf8 NOT NULL COMMENT 'Текст сообщения',
  `userAgent` varchar(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Содержит информацию из какого браузера сообщение отправлено'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `messages_translate` (
  `id` int(9)  PRIMARY KEY AUTO_INCREMENT NOT NULL,
  `message_id` int(8) UNIQUE NOT NULL,
  `language` varchar(2) NOT NULL,
  `text` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `users_relations` (
  `user_id` int(11) PRIMARY KEY NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL COMMENT 'Избран, Заблокирован, В контактах'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Отношения (чёрный список, избранное, список контактов)';


CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL PRIMARY KEY,
  `login` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL UNIQUE,
  `avatar_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `error` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



