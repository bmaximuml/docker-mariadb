CREATE OR REPLACE USER 'benjilevinecom'@'%' IDENTIFIED BY '&9spEZMk3NJTRbx&mY?B';
CREATE OR REPLACE USER 'wikiuser'@'%' IDENTIFIED BY 'Psylocke1';
GRANT SELECT ON `benjilevine.com`.* TO 'benjilevinecom'@'%';
GRANT ALL PRIVILEGES ON wikidb.* TO 'wikiuser'@'%'; 
