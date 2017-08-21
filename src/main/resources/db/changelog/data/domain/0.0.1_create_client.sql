CREATE TABLE pedidovenda.client (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `doc` varchar(14) NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(80) NOT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `type` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;


