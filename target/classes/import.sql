
-- insert admin (username a, password aa)
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (1, TRUE, 'ADMIN,USER', 'a',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (2, TRUE, 'USER', 'b',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');

-- start id numbering from a value that is larger than any assigned above
ALTER SEQUENCE "PUBLIC"."GEN" RESTART WITH 1024;

INSERT INTO Campeon (nombre, posiciones) VALUES 
('Aatrox', 'top'),
('Ahri', 'top'),
('Garen', 'top'),
('Swain', 'top'),
('Master yi', 'top');

INSERT INTO Item (id, nombre) VALUES 
('4010', 'angel'),
('2141', 'black cleaver'),
('1083', 'huracan de runan'),
('1055', 'liandrys'),
('1056', 'gargoyle');
