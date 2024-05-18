
-- insert admin (username a, password aa)
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (1, TRUE, 'ADMIN,USER', 'a',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (2, TRUE, 'USER', 'b',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');

ALTER TABLE Guia ALTER COLUMN texto VARCHAR(1000000000);

INSERT INTO Guia (id, titulo, autor_id, fecha, puntuacion, campeon, posiciones, etiquetas, elo, hechizos, items, texto) VALUES 
(100, 'Guia suspicaz', 2, '2024-01-02', 9.8, 'aatrox', 'top', 'campeon', 'diamante', 'flash ignite', '6333 6698 3161 3302 6610 3748', '
# Guia de Aatrox: El Segador Oscuro

?Bienvenido a la guia de Aatrox, el Segador Oscuro!

## Introduccion
Aatrox es un campeon de lucha cuerpo a cuerpo con gran potencial de daño y sostenibilidad en el juego. Su estilo de juego agresivo y su habilidad para regenerar vida lo convierten en una fuerza formidable en el campo de batalla.

## Habilidades

### Pasiva: **Sangre por Sangre**
Cada cierto tiempo, Aatrox restaura parte del daño de sus habilidades como salud y obtiene un aumento de velocidad de movimiento.

### Q: **Espada de la Oscuridad**
Aatrox golpea el suelo con su espada, infligiendo daño y ralentizando a los enemigos en un ?rea. Puede ser cargado para aumentar el rango y daño.

### W: **Carne a la Espada**
Aatrox inflige daño a los enemigos en un ?rea frente a ?l y se cura por un porcentaje del daño infligido. Cuanto mas daño cause, mas se curar?.

### E: **Ataque A?reo**
Aatrox se desplaza hacia un ?rea y lanza una explosi?n de energ?a al aterrizar, infligiendo daño y lanzando a los enemigos por el aire.

### R: **Masacre de los Oscuros**
Aatrox se transforma, ganando aumento de daño, aumenta su tama?o y obtiene un rango de ataque extendido. Al morir durante esta habilidad, Aatrox revive con una cantidad de salud dependiendo de la cantidad de daño que haya infligido durante la transformaci?n.

## Consejos de Juego

- Aprovecha el rango extendido de tu habilidad R para golpear a los enemigos desde una distancia segura.
- Utiliza tu Q para controlar a los enemigos y mantenerlos dentro de tu rango de ataque.
- No subestimes el poder de tu pasiva para mantener tu salud durante los enfrentamientos prolongados.
- Coordina tus habilidades con tu equipo para maximizar tu impacto en las peleas grupales.

Con esta guia, ?estar?s listo para destrozar a tus enemigos como Aatrox en el Nexo!'),
(101, 'Guia excelente', 2, '2021-05-01', 9.0, 'jhin', 'bot', 'campeon', 'platino', 'flash ignite', '6333 6698 3161 3302 6610 3748', '# Guia Avanzada de Jhin, el Virtuoso

![Jhin Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jhin_0.jpg)

En esta guia, exploraremos estrategias avanzadas y consejos profesionales para dominar a Jhin en League of Legends. Desde la fase de l?neas hasta las peleas de equipo, aprender?s c?mo maximizar el potencial de este maestro del arte mortal.

## Tabla de Contenidos

1. [Introduccion a Jhin](#introduccion-a-jhin)
2. [Habilidades de Jhin](#habilidades-de-jhin)
3. [Construccion de Objetos](#construccion-de-objetos)
4. [Fase de L?nea](#fase-de-l?nea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Avanzados](#consejos-avanzados)

## Introduccion a Jhin

Jhin es un tirador unico que canaliza el arte a traves de sus ataques. Con una jugabilidad centrada en la precision y el posicionamiento, es capaz de infligir daño masivo en un solo golpe.

## Habilidades de Jhin

### Pasiva - Susurro de la Pistola

La pasiva de Jhin, *Susurro de la Pistola*, le otorga un ataque cr?tico aumentado y daño adicional en funcion de la velocidad de ataque adicional.

**Consejo Profesional:** Aprovecha al m?ximo tu cuarto disparo, ya que inflige daño adicional basado en el porcentaje de vida faltante del objetivo.

### Q - Danza de Granada

*Jhin lanza una granada que inflige daño y rebota sobre los enemigos. Cada rebote inflige daño reducido.*

**Consejo Profesional:** Utiliza *Danza de Granada* para limpiar oleadas de s?bditos y aplicar presi?n en la l?nea.

### W - Florescencia Mortal

*Jhin lanza una trampa de ra?z que inflige daño y ralentiza al primer enemigo que la activa.*

**Consejo Profesional:** Coloca *Florescencia Mortal* en puntos estrat?gicos para atrapar a los enemigos desprevenidos o para asegurar escapadas.

### E - Visi?n de Flores

*Jhin despliega un florero que otorga visi?n del ?rea. Si es destruido por un campeon enemigo, explota y ralentiza a los enemigos cercanos.*

**Consejo Profesional:** Usa *Visi?n de Flores* para controlar ?reas importantes del mapa y proporcionar visi?n para tu equipo.

### R - Canon de Castigo

*Jhin despliega su rifle y realiza cuatro tiros de gran alcance, el ?ltimo de los cuales es una bala cr?tica que inflige daño masivo.*

**Consejo Profesional:** Usa *Canon de Castigo* para iniciar o asegurar peleas de equipo, o para eliminar objetivos de alto valor a distancia.

## Construccion de Objetos

La construccion de objetos es crucial para optimizar el desempe?o de Jhin en diferentes etapas del juego. Aqu? hay una construccion t?pica para Jhin:

1. **Espada del Rey Arruinado**
2. **Sombra de la Luchona**
3. **?dolo Prohibido**
4. **Hoja del Verdugo**
5. **Baile Mortal**
6. **?ltimo Suspiro**

**Consejo Profesional:** Adaptar tu construccion de objetos segun la composicion enemiga y la fase del juego es esencial para maximizar el impacto de Jhin.

## Fase de L?nea

Durante la fase de l?neas, Jhin debe enfocarse en farmear de manera segura mientras castiga a los enemigos con su alcance y habilidades.

**Consejo Profesional:** Utiliza *Danza de Granada* para castigar a los enemigos que se agrupan y para limpiar oleadas de s?bditos bajo la torre enemiga.

## Peleas de Equipo

En las peleas de equipo, Jhin debe posicionarse de manera segura mientras inflige daño desde la retaguardia con su *Canon de Castigo* y *Danza de Granada*.

**Consejo Profesional:** Manten una distancia segura y espera a que los enemigos utilicen sus habilidades antes de entrar en la pelea con tu *Canon de Castigo*.

## Consejos Avanzados

1. **Posicionamiento Consciente:** Siempre manten una distancia segura y utiliza el terreno a tu favor para evitar emboscadas enemigas.
2. **Coordinacion de Habilidades:** Coordina tus habilidades con tu equipo para asegurar objetivos importantes o para atrapar a los enemigos desprevenidos.
3. **Conocimiento del Mapa:** Manten una visi?n constante del mapa y anticipa los movimientos enemigos para evitar sorpresas desagradables.

Con esta guia avanzada, est?s preparado para dominar a Jhin y convertirte en el Virtuoso definitivo. ?Buena suerte en la Grieta del Invocador!
'),
(102, 'Guia versatil', 2, '2023-12-02', 8.5, 'leona', 'sup', 'campeon', 'oro', 'flash teleport', '6333 6698 3161 3302 6610 3748', '# Guia Emo de Leona, el Amanecer Radiante

![Leona Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Leona_0.jpg)

En esta guia, exploraremos el lado mas oscuro y dramatico de Leona, el Amanecer Radiante. Desde su estilo de juego hasta su construccion de objetos, te sumergir?s en la oscuridad de la noche y la luz del amanecer con esta guia "emo".

## Tabla de Contenidos

1. [Introduccion a Leona](#introduccion-a-leona)
2. [Habilidades de Leona](#habilidades-de-leona)
3. [Construccion de Objetos](#construccion-de-objetos)
4. [Fase de L?nea](#fase-de-l?nea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Emo](#consejos-emo)

## Introduccion a Leona

Leona es una guerrera imbuida de la luz del sol, pero en esta guia, exploraremos su lado mas oscuro y emocional. Con su armadura brillante y su actitud decidida, Leona puede llevar la desesperacion a sus enemigos con estilo.

## Habilidades de Leona

### Pasiva - Luz del Amanecer

La pasiva de Leona, *Luz del Amanecer*, inflige daño adicional a los enemigos cuando son alcanzados por sus habilidades. Este daño se beneficia de la resistencia magica de los enemigos.

**Consejo Profesional:** Combina *Luz del Amanecer* con tus habilidades para maximizar tu potencial de daño.

### Q - Golpe de Sol

*Leona golpea a un enemigo con su espada, infligiendo daño y otorgando un breve escudo de resistencia.*

**Consejo Profesional:** Utiliza *Golpe de Sol* para intercambios r?pidos y para mitigar el daño enemigo.

### W - Eclipse

*Leona se envuelve en un eclipse temporal, otorgando resistencia y desencadenando una explosi?n de energ?a alrededor de ella despu?s de un breve per?odo.*

**Consejo Profesional:** Activa *Eclipse* en momentos clave para absorber daño y desencadenar una explosi?n sorpresa en tus enemigos.

### E - Filo Solar

*Leona lanza su espada hacia un objetivo, infligiendo daño y ralentizando al enemigo alcanzado. Si el objetivo es un campeon, Leona puede teletransportarse hacia ?l.*

**Consejo Profesional:** Usa *Filo Solar* para iniciar peleas o para atrapar a los enemigos que intentan huir.

### R - C?rcel de Luz

*Leona invoca un haz de luz que se estrella en el suelo, da?ando y aturdieno a los enemigos dentro del ?rea.*

**Consejo Profesional:** Utiliza *C?rcel de Luz* para iniciar peleas de equipo o para interrumpir las habilidades enemigas clave.

## Construccion de Objetos

La construccion de objetos para Leona en esta guia "emo" se centra en resistencia y utilidad, con un toque de oscuridad. Aqu? tienes una construccion t?pica:

1. **Coraza del Solari de Hierro**
2. **Capa de Fuego Solar**
3. **Pergamino de las Edades Oscuras**
4. **Aguja de la Ruina**
5. **Guardi?n de las Sombras**
6. **Filo del Vac?o**

**Consejo Profesional:** Adaptar tu construccion de objetos segun la composicion enemiga y la fase del juego es esencial para maximizar el impacto de Leona.

## Fase de L?nea

Durante la fase de l?neas, Leona debe buscar oportunidades para iniciar peleas y proteger a su ADC con su presencia amenazadora.

**Consejo Profesional:** Coordina tus ataques con tu ADC y busca oportunidades para sorprender a los enemigos con tu capacidad de enganche.

## Peleas de Equipo

En las peleas de equipo, Leona brilla en su m?ximo esplendor, protegiendo a su equipo y sumergiendo a sus enemigos en la oscuridad de la desesperacion.

**Consejo Profesional:** Utiliza tu *C?rcel de Luz* de manera efectiva para iniciar peleas y proteger a tu equipo de las emboscadas enemigas.

## Consejos Emo

1. **Expresa tus Sentimientos:** Deja que la oscuridad y la luz se mezclen en tu juego, mostrando tu verdadero yo emocional.
2. **Adopta el Drama:** S? el centro de atenci?n en el campo de batalla, atrayendo a tus enemigos hacia tu aura de misterio y desesperacion.
3. **S? Intenso:** No tengas miedo de enfrentarte cara a cara con tus enemigos, mostrando tu verdadera fuerza emocional.

Con esta guia "emo", estar?s listo para llevar a Leona al siguiente nivel de expresi?n emocional en la Grieta del Invocador. ?Buena suerte, guerrero de la oscuridad!'),
(103, 'Guia tactica para principiantes', 1, '2023-05-02', 8.7, 'Annie', 'mid', 'campeon',  'plata', 'Teleport Flash', '6333 6698 3161 3302 6610 3748', '# Guia G?tica Culona de Annie, la Ni?a Oscura

![Annie Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Annie_0.jpg)

En esta guia, exploraremos el lado mas oscuro y encantador de Annie, la Ni?a Oscura. Desde su estilo de juego hasta su construccion de objetos, te sumergir?s en el poder del fuego y la magia negra con esta guia g?tica culona.

## Tabla de Contenidos

1. [Introduccion a Annie](#introduccion-a-annie)
2. [Habilidades de Annie](#habilidades-de-annie)
3. [Construccion de Objetos](#construccion-de-objetos)
4. [Fase de L?nea](#fase-de-l?nea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos G?ticos](#consejos-g?ticos)

## Introduccion a Annie

Annie es una peque?a pero poderosa hechicera que canaliza el poder del fuego y la magia oscura para destruir a sus enemigos. En esta guia, exploraremos su lado mas g?tico y cul?n, combinando estilo con poder destructivo.

## Habilidades de Annie

### Pasiva - Pirodesgracia

La pasiva de Annie, *Pirodesgracia*, inflige daño adicional con sus hechizos despu?s de lanzarlos varias veces.

**Consejo Profesional:** Manten un ojo en tu contador de *Pirodesgracia* para maximizar tu daño.

### Q - Desintegrar

*Annie lanza una bola de fuego que inflige daño a un enemigo objetivo. Si mata al enemigo, la mitad del costo de man? se devuelve y el enfriamiento se reduce a la mitad.*

**Consejo Profesional:** Usa *Desintegrar* para desgastar a tus oponentes y mantener la presi?n en la l?nea.

### W - Incinerar

*Annie libera un cono de fuego que inflige daño a los enemigos alcanzados.*

**Consejo Profesional:** Utiliza *Incinerar* para limpiar oleadas de s?bditos r?pidamente y para da?ar a m?ltiples enemigos en peleas de equipo.

### E - Escudo Fundido

*Annie envuelve a s? misma y a Tibbers en un escudo de fuego, reduciendo el daño recibido y da?ando a los enemigos que la atacan.*

**Consejo Profesional:** Activa *Escudo Fundido* para absorber daño y castigar a los enemigos que intentan enfocarte.

### R - Invocar: Tibbers

*Annie invoca a Tibbers, su oso de peluche en llamas, infligiendo daño a los enemigos cercanos y sigui?ndola como una mascota, atacando a sus enemigos.*

**Consejo Profesional:** Usa *Invocar: Tibbers* como una herramienta de iniciaci?n o para causar estragos en las peleas de equipo.

## Construccion de Objetos

La construccion de objetos para Annie en esta guia g?tica culona se centra en el poder m?gico y la supervivencia. Aqu? tienes una construccion t?pica:

1. **Sombrero Mort?fero de Rabadon**
2. **B?culo del Vac?o**
3. **Velo de la Banshee**
4. **Cetro Abisal**
5. **Botas de Hechicero**
6. **Cetro Rilay**

**Consejo Profesional:** Adaptar tu construccion de objetos segun la composicion enemiga y la fase del juego es esencial para maximizar el impacto de Annie.

## Fase de L?nea

Durante la fase de l?neas, Annie puede ser agresiva con su capacidad para infligir daño a corta distancia.

**Consejo Profesional:** Aprovecha tu daño temprano para mantener a raya a tus oponentes y buscar oportunidades para eliminarlos.

## Peleas de Equipo

En las peleas de equipo, Annie brilla como una estrella oscura, devastando a sus enemigos con su poder m?gico.

**Consejo Profesional:** Utiliza *Invocar: Tibbers* en momentos clave para causar confusi?n y desatar el caos entre tus enemigos.

## Consejos G?ticos

1. **Abraza la Oscuridad:** Deja que tu lado g?tico brille en el campo de batalla, mostrando tu poder m?gico y tu estilo unico.
2. **Juega con Estilo:** Adopta un estilo de juego agresivo pero elegante, combinando poder y gracia en tus movimientos.
3. **S? la Envidia de tus Enemigos:** Convi?rtete en el centro de atenci?n con tu estilo g?tico cul?n, dejando una impresi?n duradera en'),
(105, 'Dominando el juego con Jinx', 2, '2023-10-15', 9.5, 'Jinx', 'bot', 'campeon', 'diamante', 'Flash Heal', '6333 6698 3161 3302 6610 3748', '# Guia Profesional de Jinx, la Chica de los Ca?ones

![Jinx Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jinx_0.jpg)

En esta guia,aexploraremos las estrategias avanzadas y t?cticas profesionales para dominar a Jinx en League of Legends. Desde la fase de l?neas hasta las peleas de equipo, aprender?s a maximizar el potencial de esta ca?onera ca?tica.

## Tabla de Contenidos

1. [Introduccion a Jinx](#introduccion-a-jinx)
2. [Habilidades de Jinx](#habilidades-de-jinx)
3. [Construccion de Objetos](#construccion-de-objetos)
4. [Fase de L?nea](#fase-de-l?nea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Avanzados](#consejos-avanzados)

## Introduccion a Jinx

Jinx es una tiradora hiperactiva conocida por su capacidad para causar caos y destrucci?n en el campo de batalla. Con su arsenal de armas y su mentalidad impulsiva, puede cambiar el curso de una partida con su potencial de daño explosivo.

## Habilidades de Jinx

### Pasiva - ?Pow-Pow!

La pasiva de Jinx, *?Pow-Pow!*, aumenta su velocidad de ataque cada vez que ataca a un enemigo. Despu?s de acumular suficientes ataques, Jinx entra en un frenes? de ataque, aumentando a?n mas su velocidad de ataque.

**Consejo Profesional:** Administra tu velocidad de ataque para aprovechar al m?ximo el efecto de *?Pow-Pow!* y su transformaci?n.

### Q - Interruptor de Armas

*Jinx alterna entre su ametralladora minigun, *?Pow-Pow!*, que inflige daño r?pidamente a objetivos unicos, y su lanzacohetes, *?Zap!*, que inflige daño en ?rea y ralentiza a los enemigos.*

**Consejo Profesional:** Utiliza *Interruptor de Armas* en el momento adecuado para adaptarte a la situaci?n y maximizar tu daño.

### W - Lanzallamas Z

*Jinx dispara un cohete que explota al impactar, infligiendo daño y revelando a los enemigos golpeados.*

**Consejo Profesional:** Usa *Lanzallamas Z* para pokear a tus enemigos en la fase de l?neas y para proporcionar visi?n en ?reas clave del mapa.

### E - Encanto Mortal

*Jinx lanza un conjunto de granadas que se activan al contacto con un enemigo, infligiendo daño y aturdiendo a los enemigos dentro del ?rea de efecto.*

**Consejo Profesional:** Utiliza *Encanto Mortal* para controlar ?reas durante las peleas de equipo y para interrumpir las habilidades enemigas importantes.

### R - Mega Rayo Infernal

*Jinx dispara un misil s?per potente que atraviesa el mapa, infligiendo daño a todos los enemigos en su camino. El daño aumenta cuanto menos vida tenga el objetivo.*

**Consejo Profesional:** Utiliza *Mega Rayo Infernal* para asegurar eliminaciones desde lejos o para iniciar peleas de equipo con un golpe devastador.

## Construccion de Objetos

La construccion de objetos para Jinx se centra en maximizar su potencial de daño y supervivencia. Aqu? tienes una construccion t?pica:

1. **Espada del Rey Arruinado**
2. **Fervor de Batalla**
3. **?dolo Prohibido**
4. **Hoja del Verdugo**
5. **Baile Mortal**
6. **?ltimo Suspiro**

**Consejo Profesional:** Ajusta tu construccion de objetos segun la composicion enemiga y tu estilo de juego para maximizar tu eficacia en el juego.

## Fase de L?nea

Durante la fase de l?neas, Jinx debe enfocarse en farmear de manera segura y buscar oportunidades para comerciar con el enemigo.

**Consejo Profesional:** Utiliza tu rango para pokear a los enemigos con *Lanzallamas Z* y para castigarlos cuando se acerquen demasiado.

## Peleas de Equipo

En las peleas de equipo, Jinx brilla con su potencial de daño en equipo y su capacidad para asegurar eliminaciones a distancia.

**Consejo Profesional:** Manten una posici?n segura en la retaguardia y espera el momento adecuado para entrar en la pelea con *Mega Rayo Infernal*.

## Consejos Avanzados

1. **Posicionamiento Consciente:** Manten una distancia segura de los peligros y utiliza el terreno a tu favor durante las peleas.
2. **Coordinacion de Habilidades:** Coordina tus habilidades con tu equipo para asegurar eliminaciones y controlar ?reas importantes del mapa.
3. **Conocimianto del Mapa:** Manten una visi?n constante del mapa y utiliza la informaci?n para tomar decisiones t?cticas inteligentes durante la partida.

Con esta guia profesional, est?s preparado para dominar a Jinx y llevar a tu equipo a la victoria en la Grieta del Invocador. ?Buena suerte, y que los ca?ones siempre apunten hacia arriba!'),
(104, 'Guia suspicaz', 1, '2023-12-12', 9.8, 'aatrox', 'top', 'campeon', 'diamante', 'flash', '6333 6698 3161 3302 6610 3748', '# Guia Suspicaz de Aatrox, el Oscuro

![Aatrox Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Aatrox_0.jpg)

En esta guia, exploraremos las artes oscuras y misteriosas de Aatrox, el Oscuro. Desde sus habilidades hasta su construccion de objetos, aprender?s c?mo sembrar la discordia y el caos en el campo de batalla con este ser de antiguo poder.

## Tabla de Contenidos

1. [Introduccion a Aatrox](#introduccion-a-aatrox)
2. [Habilidades de Aatrox](#habilidades-de-aatrox)
3. [Construccion de Objetos](#construccion-de-objetos)
4. [Fase de L?nea](#fase-de-l?nea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Suspicaces](#consejos-suspicaces)

## Introduccion a Aatrox

Aatrox es un guerrero ca?do que emana un aura de misterio y poder oscuro. Con su habilidad para infligir daño masivo y su capacidad para resistir castigos, Aatrox es un adversario temible en el campo de batalla.

## Habilidades de Aatrox

### Pasiva - Sed de Sangre

La pasiva de Aatrox, *Sed de Sangre*, otorga vida adicional y daño de ataque aumentado basado en el porcentaje de vida que le falte.

**Consejo Profesional:** Aprovecha al m?ximo tu pasiva calculando cu?ndo entrar en combate para maximizar tu daño y supervivencia.

### Q - Espada de los Oscuros

*Aatrox golpea el suelo con su espada, infligiendo daño y creando una explosi?n que lanza a los enemigos por el aire.*

**Consejo Profesional:** Utiliza *Espada de los Oscuros* para iniciar peleas de equipo o para interrumpir las habilidades enemigas importantes.

### W - Masacre de los Malditos

*Aatrox inflige daño en ?rea con su espada, cur?ndose a s? mismo por una parte del daño infligido. Si est? por debajo del umbral de vida, se activa autom?ticamente.*

**Consejo Profesional:** Usa *Masacre de los Malditos* para mantener tu salud alta durante las peleas prolongadas y para sorprender a los enemigos con tu supervivencia.

### E - Profanar

*Aatrox dispara un proyectil que inflige daño y ralentiza a los enemigos alcanzados. Los enemigos en el centro del impacto quedan ralentizados durante mas tiempo.*

**Consejo Profesional:** Utiliza *Profanar* para controlar el espacio y la posici?n de los enemigos durante las peleas de equipo o para escapar de situaciones peligrosas.

### R - Ascenso de la Masacre

*Aatrox se transforma, ganando un aumento de tama?o, daño adicional y la capacidad de resucitar si acumula suficiente furia durante la duraci?n de la habilidad.*

**Consejo Profesional:** Activa *Ascenso de la Masacre* en el momento adecuado para aumentar tu daño y sobrevivir en las peleas mas intensas.

## Construccion de Objetos

La construccion de objetos para Aatrox se centra en maximizar su potencial de daño y supervivencia. Aqu? tienes una construccion t?pica:

1. **Espada del Rey Arruinado**
2. **Cuchilla Negra**
3. **Armadura Espinosa**
4. **Hidra Tit?nica**
5. **Yelmo Adaptativo**
6. **?ngel Guardi?n**

**Consejo Profesional:** Adaptar tu construccion de objetos segun la composicion enemiga y la fase del juego es esencial para maximizar tu eficacia en el juego.

## Fase de L?nea

Durante la fase de l?neas, Aatrox puede ser agresivo con su capacidad para infligir daño y curarse.

**Consejo Profesional:** Aprovecha tu sustain con *Masacre de los Malditos* para presionar a tus oponentes y buscar oportunidades de eliminarlos.

## Peleas de Equipo

En las peleas de equipo, Aatrox brilla con su capacidad para iniciar y absorber daño.

**Consejo Profesional:** Manten una posici?n delantera durante las peleas de equipo y busca oportunidades para desatar tu furia con *Ascenso de la Masacre*.

## Consejos Suspicaces

1. **Manten el Misterio:** Juega con un estilo impredecible, manteniendo a tus enemigos adivinando tus movimientos.
2. **S? Imponente:** Imp?n tu presencia en el campo de batalla, mostrando tu poder oscuro y tu determinaci?n implacable.
3. **Anticipa el Caos:** Prep?rate para cualquier eventualidad y adapta tu estrategia en consecuencia, siempre un paso adelante de tus enemigos.

Con esta guia suspicaz, estar?s preparado para sembrar la discordia y la destrucci?n como Aatrox, el Oscuro. ?Que la oscuridad siempre est? de tu lado!'),
(106, 'Guia excelente', 1, '2023-12-15', 9.0, 'jhin', 'bot', 'campeon', 'platino', 'ignite', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(107, 'Guia versatil', 2, '2023-12-15', 8.5, 'leona', 'sup','campeon', 'oro', 'teleport', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(108, 'Guia furra', 1, '2024-04-23', 10, 'yuumi', 'sup','campeon', 'bronce', 'teleport', '6333 6698 3161 3302 6610 3748', '### Yuumi, la Gata Magica: Guia Pijamastica

?Hola, invocadores! Si est?s buscando una experiencia de juego peluda y llena de diversi?n, Yuumi es la elecci?n perfecta. Con su estilo unico y su adorable dise?o, ?preparaos para una aventura magica y peluda en la Grieta del Invocador!

#### Habilidades de Yuumi

1. **Pasiva - Colega Curioso:**
   - Yuumi acumula Escudos cuando lanza habilidades. ?Es como si estuviera tejiendo un pijama protector para su aliado! Cuando sale de su aliado, pierde el escudo, pero ?no te preocupes! Se regenera con el tiempo, ?igual que una siesta de gato!

2. **Q - Disparo Pijama:**
   - Yuumi lanza un misil que da?a y marca a los enemigos. Si atrapas a un enemigo marcado, les haces cosquillas adicionales y los ralentizas. ?Hora de una fiesta de cosquillas!

3. **W - Atadura de Amistad:**
   - Yuumi se une a un aliado y se vuelve inalcanzable. ?Es como llevar tu propio compa?ero de peluche a todas partes! Mientras est?s unido, puedes lanzar todas tus habilidades desde la espalda de tu amigo.

4. **E - Refugio y Mascarada:**
   - Yuumi cura a su aliado y les da un impulso de velocidad. ?Es como una caja de galletas magicas para tu aliado! Si est?s unido a ellos, tambi?n te das un caprichito y te curas.

5. **R - ?Enfurecimiento Mastico!:**
   - Yuumi canaliza un ataque de onda expansiva que da?a y aturde a los enemigos. Cuanto mas tiempo canalices, mas daño haces y mas tiempo los aturdes. ?Es como un festival de purr-nes!

#### Estrategias de Juego Pijamasticas

- **Abraza a tu aliado:** Yuumi es mas feliz cuando est? pegada a un amigo. Elige un compa?ero que disfrute de tu compa??a y sepa c?mo sacarle el m?ximo provecho a tus abrazos peludos.

- **Escudos para todos:** Tus habilidades generan escudos, ?as? que ?salos sabiamente para proteger a tus amigos! Un gato feliz es un gato protegido.

- **Mu?vete como un gato ?gil:** Estar pegado a alguien no significa que no puedas moverte con gracia felina. Aprovecha tu movilidad para esquivar habilidades enemigas y seguir apoyando a tu equipo.

- **Comunicaci?n con estilo:** ?Atr?vete a comunicarte con tu equipo con purrs y maullidos! No solo ser? adorable, ?tambi?n mantendr? el ?nimo alto en el equipo!

- **Compra pijamas a juego:** Prioriza los ?tems de apoyo que resalten tu estilo pijamastico, ?como los que brillan en la oscuridad o tienen patrones de estrellas! Recuerda, ?el pijama es clave para la victoria!

Con esta guia pijamastica, ?est?s listo para abrazar a tus amigos y desatar el poder de Yuumi en la Grieta del Invocador! ?Buena suerte y que tus sue?os est?n llenos de dulces y cosquillas! ???');



INSERT INTO Vote (vote, autor_id, guia_id) VALUES 
(true, 1, 108);

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
('3051', 'Hacha hogare???a',''),
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
('3870', 'Tejesue???os','Soporte'),
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
('6655', 'Compa???ero de Luudens','Mago'),
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
('3094', 'Ca???on de fuego rapido','Tirador'),
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
('3087', 'Pu???al de static','Tirador'),
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

-- start id numbering from a value that is larger than any assigned above
ALTER SEQUENCE "PUBLIC"."GEN" RESTART WITH 1024;