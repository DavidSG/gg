
-- insert admin (username a, password aa)
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (1, TRUE, 'ADMIN,USER', 'a',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (2, TRUE, 'USER', 'b',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');

-- start id numbering from a value that is larger than any assigned above
ALTER SEQUENCE 'PUBLIC'.'GEN' RESTART WITH 1024;


INSERT INTO Guia (id, titulo, autor, fecha, puntuacion, campeon, posiciones, etiquetas, elo, hechizos, items, texto) VALUES 
(1, 'Gu�a suspicaz', 'David Alfonso', '2024-01-02', 9.8, 'aatrox', 'top', 'campeon', 'diamante', 'flash ignite', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(2, 'Gu�a excelente', 'Laura Lopez', '2021-05-01', 9.0, 'jhin', 'bot', 'campeon', 'platino', 'flash ignite', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(3, 'Gu�a vers�til', 'Carlos Rodriguez', '2023-12-02', 8.5, 'leona', 'sup', 'campeon', 'oro', 'flash teleport', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(4, 'Gu�a t�ctica para principiantes', 'a', '2023-05-02', 8.7, 'Annie', 'mid', 'campeon',  'plata', 'Teleport Flash', '6333 6698 3161 3302 6610 3748', 'Consejos y estrategias esenciales para jugadores novatos.'),
(5, 'Dominando el juego con Jinx', 'b', '2023-10-15', 9.5, 'Jinx', 'bot', 'campeon', 'diamante', 'Flash Heal', '6333 6698 3161 3302 6610 3748', 'Aprende a jugar como un profesional con la campeona Jinx.'),
(6, 'Gu�a suspicaz', 'b', '2023-12-12', 9.8, 'aatrox', 'top', 'campeon', 'diamante', 'flash', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(7, 'Gu�a excelente', 'b', '2023-12-15', 9.0, 'jhin', 'bot', 'campeon', 'platino', 'ignite', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(8, 'Gu�a vers�til', 'a', '2023-12-15', 8.5, 'leona', 'sup','campeon', 'oro', 'teleport', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(9, 'Gu�a furra', 'a', '2024-04-23', 10, 'yuumi', 'sup','campeon', 'bronce', 'teleport', '6333 6698 3161 3302 6610 3748', 'texto generico');



INSERT INTO Campeon (nombre, posiciones) VALUES 
('aatrox', 'top'),
('ahri', 'mid'),
('akali', 'mid'),
('akshan', 'top mid'),
('alistar', 'sup'),
('amumu', 'jgl sup'),
('anivia', 'mid'),
('annie', 'mid sup'),
('aphelios', 'bot'),
('ashe', 'bot sup'),
('aurelionsol', 'mid'),
('azir', 'mid'),
('bard', 'sup'),
('belveth', 'jgl'),
('blitzcrank', 'sup'),
('brand', 'jgl sup'),
('braum', 'sup'),
('briar', 'jgl'),
('caitlyn', 'bot'),
('camille', 'top'),
('cassiopeia', 'mid'),
('chogath', 'top jgl mid bot sup'),
('corki', 'mid'),
('darius', 'top'),
('diana', 'jgl mid'),
('drmundo', 'top'),
('draven', 'bot'),
('ekko', 'mid'),
('elise', 'jgl'),
('evelynn', 'jgl'),
('ezreal', 'bot'),
('fiddlesticks', 'jgl'),
('fiora', 'top'),
('fizz', 'mid'),
('galio', 'mid sup'),
('gangplank', 'top'),
('garen', 'top'),
('gnar', 'top'),
('gragas', 'top jgl mid sup'),
('graves', 'top jgl'),
('gwen', 'top jgl'),
('hecarim', 'jgl'),
('heimerdinger', 'mid sup'),
('hwei', 'mid sup'),
('illaoi', 'top'),
('irelia', 'top mid'),
('ivern', 'jgl'),
('janna', 'sup'),
('jarvaniv', 'top jgl'),
('jax', 'top jgl'),
('jayce', 'top mid'),
('jhin', 'bot'),
('jinx', 'bot'),
('kaisa', 'bot'),
('kalista', 'bot'),
('karma', 'top mid sup'),
('karthus', 'jgl bot'),
('kassadin', 'mid'),
('katarina', 'mid'),
('kayle', 'top mid'),
('kayn', 'jgl'),
('kennen', 'top'),
('khazix', 'jgl'),
('kindred', 'jgl'),
('kled', 'top'),
('kogmaw', 'bot'),
('ksante', 'top'),
('leblanc', 'mid'),
('leesin', 'jgl'),
('leona', 'sup'),
('lillia', 'jgl'),
('lissandra', 'mid'),
('lucian', 'bot'),
('lulu', 'sup'),
('lux', 'mid'),
('malphite', 'top'),
('malzahar', 'mid'),
('maokai', 'jgl sup'),
('masteryi', 'jgl'),
('milio', 'sup'),
('missfortune', 'bot'),
('mordekaiser', 'top'),
('morgana', 'sup'),
('naafiri', 'jgl'),
('nami', 'sup'),
('nasus', 'top'),
('nautilus', 'sup'),
('neeko', 'jgl mid'),
('nidalee', 'jgl'),
('nilah', 'bot'),
('nocturne', 'jgl'),
('nunu', 'jgl'),
('olaf', 'top jgl'),
('orianna', 'mid'),
('ornn', 'top'),
('pantheon', 'top jgl mid sup'),
('poppy', 'top jgl sup'),
('pyke', 'sup'),
('qiyana', 'jgl mid'),
('quinn', 'top'),
('rakan', 'sup'),
('rammus', 'jgl'),
('reksai', 'jgl'),
('rell', 'jgl sup'),
('renata', 'sup'),
('renekton', 'top'),
('rengar', 'top jgl'),
('riven', 'top'),
('rumble', 'top jgl'),
('ryze', 'mid'),
('samira', 'bot'),
('sejuani', 'jgl'),
('senna', 'bot sup'),
('seraphine', 'mid sup'),
('sett', 'top sup'),
('shaco', 'jgl'),
('shen', 'top'),
('shyvana', 'jgl'),
('singed', 'top'),
('sion', 'top'),
('sivir', 'bot'),
('skarner', 'jgl'),
('smolder', 'bot'),
('sona', 'sup'),
('soraka', 'sup'),
('swain', 'mid bot sup'),
('sylas', 'jgl mid'),
('syndra', 'mid'),
('tahmkench', 'top sup'),
('taliyah', 'jgl mid'),
('talon', 'jgl mid'),
('taric', 'sup'),
('teemo', 'top'),
('thresh', 'sup'),
('tristana', 'bot'),
('trundle', 'top jgl'),
('tryndamere', 'top'),
('twistedfate', 'mid'),
('twitch', 'bot'),
('udyr', 'jgl'),
('urgot', 'top'),
('varus', 'bot'),
('vayne', 'bot'),
('veigar', 'mid bot'),
('velkoz', 'mid'),
('vex', 'mid'),
('vi', 'jgl'),
('viego', 'jgl'),
('viktor', 'mid'),
('vladimir', 'mid'),
('volibear', 'top jgl'),
('warwick', 'top jgl'),
('monkeyking', 'top jgl'),
('xayah', 'bot'),
('xerath', 'sup'),
('xinzhao', 'jgl'),
('yasuo', 'top mid bot'),
('yone', 'top mid'),
('yorick', 'top'),
('yuumi', 'sup'),
('zac', 'jgl'),
('zed', 'jgl mid'),
('zeri', 'bot'),
('ziggs', 'mid bot'),
('zilean', 'sup'),
('zoe', 'mid'),
('zyra', 'sup');

INSERT INTO Hechizo (nombre) VALUES 
('flash'),
('ghost'),
('ignite'),
('teleport'),
('heal'),
('exhaust'),
('barrier'),
('clarity'),
('cleanse'),
('snowball'),
('smite'),
('red-smite'),
('green-smite'),
('blue-smite');


INSERT INTO Item (id, nombre, etiquetas) VALUES 
('1083', 'Preferencia',''),
('1055', 'Espada de Doran',''),
('1056', 'Anillo de Doran',''),
('1054', 'Escudo de Doran',''),
('1102', 'Cria de caminabrisas',''),
('1103', 'Brote de Brincamontes',''),
('4015', 'Perplejidad',''),
('1101', 'Cachorro de carga ignea',''),
('3070', 'Lagrima de la diosa',''),
('3865', 'Atlas Mundial',''),
('2055', 'Guardian de control',''),
('2033', 'Pocion de corrupcion',''),
('2138', 'Elixir de hierro',''),
('2139', 'Elixir de Brujeria',''),
('2140', 'Elixir de Colera',''),
('2003', 'Pocion de Vida',''),
('2031', 'Pocion reutilizable',''),
('3363', 'Vision lejana modificada',''),
('3364', 'Lente de Oraculo',''),
('3340', 'Guardian de Vision',''),
('3006', 'Grebas de berserker',''),
('3009', 'Botas de rapidez',''),
('1001', 'Botas',''),
('3158', 'Botas Jonias de la lucidez',''),
('3111', 'Botas de Mercurio',''),
('3117', 'Botas de Movilidad',''),
('3047', 'Botas Blindadas',''),
('3020', 'Botas de Hechicero',''),
('1052', 'Tomo Amplificador',''),
('1038', 'Espadon',''),
('1026', 'Vara Explosiva',''),
('1018', 'Capa de Agilidad',''),
('1029', 'Armadura de tela',''),
('1042', 'Daga',''),
('1082', 'Sello oscuro',''),
('1004', 'Amuleto de las hadas',''),
('2022', 'Mota Brillante',''),
('1036', 'Espada larga',''),
('1058', 'Vara Innecesariamente Grande',''),
('1033', 'Manto de anulacion de magia',''),
('1037', 'Pico',''),
('1006', 'Perla de rejuvenecimiento',''),
('1028', 'Cristal de rubi',''),
('1027', 'Cristal de Zafiro',''),
('3113', 'Brisa de eter',''),
('6660', 'Rescoldo de Bami',''),
('4642', 'Espejo de cristal de Bandle',''),
('4630', 'Joya de la plaga',''),
('3076', 'chaleco de zarzas',''),
('3803', 'Catalizador de eones',''),
('3133', 'Martillo de guerra de Caulfield',''),
('1031', 'Chaleco de cadenas',''),
('3801', 'Brazal cristalino',''),
('3123', 'Llamada del verdugo',''),
('3108', 'Codice diabolico',''),
('3114', 'Idolo prohibido',''),
('1011', 'Cinturon del gigante',''),
('3024', 'Broquel glacial',''),
('3147', 'Disfraz encantado',''),
('3051', 'Hacha hogare�a',''),
('3155', 'Sorbemaleficios',''),
('3145', 'Alternador hextech',''),
('3067', 'Gema avivadora',''),
('2015', 'Fragmento de kircheis',''),
('3035', 'Ultimas palabras',''),
('4003', 'Salvavidas',''),
('3802', 'Capitulo perdido',''),
('1057', 'Capa negatron',''),
('6670', 'Carcaj del mediodia',''),
('3916', 'Orbe del olvido',''),
('3044', 'Bacteriofago',''),
('3140', 'Cinturon negro',''),
('6690', 'Rectrice',''),
('1043', 'Arco curvo',''),
('2420', 'brazalete de la buscadora',''),
('3134', 'Daga dentada',''),
('3057', 'Brillo',''),
('3211', 'Habito del espectro',''),
('2019', 'Sello de acero',''),
('2020', 'Embrutecedor',''),
('3077', 'Tiamat',''),
('2021', 'Tuneladora',''),
('1053', 'Cetro vampirico',''),
('4632', 'Barrera Frondosa',''),
('3082', 'Malla del guardian',''),
('4638', 'Piedra de guardianes atenta',''),
('3066', 'Armadura lunar alada',''),
('3086', 'Fervor',''),
('8020', 'Mascara Abisal','Tanque'),
('8001', 'Cadenas de Anatema','Tanque'),
('3003', 'Baston del arcangel','Mago'),
('3504', 'Incensario ardiente','Soporte'),
('6696', 'Arco axiomatico','Asesino'),
('3102', 'Amuleto de las hadas','Mago'),
('3071', 'Cuchilla obsidiana','Bruiser'),
('3153', 'Hoja del rey arruinado','Bruiser'),
('3877', 'Tonada sanguina','Soporte'),
('3072', 'Sanguinaria','Tirador'),
('3869', 'Detraccion Celestial','Soporte'),
('6609', 'Mecanoespada punki','Tirador'),
('4629', 'Impulso cosmico','Mago'),
('3137', 'Florescencia sepulcral','Mago'),
('6621', 'Al alba','Mago'),
('3742', 'Coraza del muerto','Tanque'),
('6333', 'Baile de la muerte','Bruiser'),
('3128', 'Tenaza de la muerte ignea','Mago'),
('3870', 'Tejesue�os','Soporte'),
('6620', 'Gritos de la ciudad agonica','Soporte'),
('6692', 'Eclipse','Asesino'),
('3814', 'Filo de la noche','Asesino'),
('3508', 'Segador de esencia','Tirador'),
('3073', 'Experimento de hexarmadura','Bruiser'),
('3121', 'Armadura de General invierno','Tanque'),
('4401', 'Fuerza de la naturaleza','Tanque'),
('3110', 'Corazon de hielo','Tanque'),
('3026', 'Angel de la guarda','Tirador'),
('3124', 'Espada de Guinsoo','Tirador'),
('3084', 'Corazon de acero','Tanque'),
('3146', 'Sable-pistola Hextech','Bruiser'),
('3152', 'Cinturon hextech','Mago'),
('6664', 'Fulgor vano','Tanque'),
('4628', 'Precision infalible','Mago'),
('6697', 'Soberbia','Asesino'),
('3181', 'Rompecascos','Bruiser'),
('6662', 'Guantelete de hielo','Tanque'),
('6673', 'Arcoescudo Inmortal','Bruiser'),
('4005', 'Mandato imperial','Soporte'),
('3031', 'Filo Infinito','Tirador'),
('6665', 'JakSho, el Proteico','Tanque'),
('2504', 'Rookern kaenico','Tanque'),
('3109', 'Promesa del caballero','Soporte'),
('6672', 'Matador de Krakens','Tirador'),
('6653', 'Tormento de Liandry','Mago'),
('3100', 'Perdicion de Liche','Mago'),
('3190', 'Medallon de Solari','Soporte'),
('3036', 'Recuerdos de Lord Dominik','Tirador'),
('6655', 'Compa�ero de Luudens','Mago'),
('3118', 'Malignidad','Mago'),
('3004', 'Manamune','Tirador'),
('3156', 'Fauces del Malmortius','Tirador'),
('3041', 'Robaalmas de Mejai','Mago'),
('3139', 'Cimitarra mercurial','Tirador'),
('3222', 'Bendicion del Mikael','Soporte'),
('6617', 'Renovacion de piedra lunar','Soporte'),
('3165', 'Morellonomicon','Mago'),
('3033', 'Recordatorio Letal','Tirador'),
('3042', 'Muramana','Tirador'),
('3115', 'Diente de Nashor','Tirador'),
('6675', 'Filo veloz de Navori','Tirador'),
('6701', 'Certeza','Asesino'),
('3046', 'Bailarin espectral','Tirador'),
('6698', 'Hidra profana','Bruiser'),
('3089', 'Sombrero Mortal de Rabadon','Mago'),
('3143', 'Presagio de Randuin','Tanque'),
('3094', 'Ca�on de fuego rapido','Tirador'),
('3074', 'Hidra voraz','Bruiser'),
('3107', 'Redencion','Soporte'),
('4633', 'Creagrietas','Mago'),
('6657', 'Vara de las edades','Mago'),
('3085', 'Huracan de Runaan','Tirador'),
('3116', 'Cetro de cristal de Rylai','Mago'),
('6695', 'Colmillo de serpiente','Asesino'),
('6694', 'Rencor de Serylda','Asesino'),
('4645', 'Llamasombria','Mago'),
('2065', 'Cancion de batalla de Shurelia','Soporte'),
('3876', 'Trineo del solsticio','Soporte'),
('3161', 'Determinacion de Shojin','Bruiser'),
('3065', 'Rostro espiritual','Tanque'),
('6616', 'Baston de aguas fluidas','Soporte'),
('3087', 'Pu�al de static','Tirador'),
('3053', 'Calibrador de Sterak','Tanque'),
('3095', 'Navaja de asalto','Tirador'),
('4646', 'Sobrecarga tormentosa','Mago'),
('6631', 'Cortasendas','Bruiser'),
('6610', 'Caida celestial','Bruiser'),
('3068', 'Egida de fuego solar','Tanque'),
('3131', 'Espada de los dioses','Bruiser'),
('3302', 'El final','Bruiser'),
('6676', 'Recaudadora','Asesino'),
('3075', 'Malla de espinas','Tanque'),
('3748', 'Hidra titanica','Bruiser'),
('3002', 'Marcasendas','Soporte'),
('3078', 'Trinidad','Bruiser'),
('3179', 'Guja sombria','Asesino'),
('2502', 'Desesperanza eterna','Tanque'),
('4643', 'Piedra de vision vigilante','Soporte'),
('3135', 'Baston del vacio','Mago'),
('6699', 'Espada voltaica','Asesino'),
('3083', 'Armadura de Warmog','Tanque'),
('3119', 'Llegada del invierno','Tanque'),
('3091', 'Final del ingenio','Bruiser'),
('3142', 'Filo fantasmal de Youmuu','Asesino'),
('3871', 'Perforaplanos de ZacZac','Soporte'),
('3050', 'Convergencia de Zeke','Soporte'),
('3172', 'Cefiro','Bruiser'),
('3157', 'Reloj de arena de Zhonias','Mago');
