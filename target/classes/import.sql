
-- insert admin (username a, password aa)
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (1, TRUE, 'ADMIN,USER', 'a',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');
INSERT INTO IWUser (id, enabled, roles, username, password)
VALUES (2, TRUE, 'USER', 'b',
    '{bcrypt}$2a$10$2BpNTbrsarbHjNsUWgzfNubJqBRf.0Vz9924nRSHBqlbPKerkgX.W');


ALTER TABLE Guia ALTER COLUMN texto VARCHAR(1000000000);

INSERT INTO Guia (id, titulo, autor_id, fecha, puntuacion, campeon, posiciones, etiquetas, elo, hechizos, items, texto) VALUES 
(100, 'Guí­a suspicaz', 2, '2024-01-02', 9.8, 'aatrox', 'top', 'campeon', 'diamante', 'flash ignite', '6333 6698 3161 3302 6610 3748', '
# Guía de Aatrox: El Segador Oscuro

¡Bienvenido a la guía de Aatrox, el Segador Oscuro!

## Introducción
Aatrox es un campeón de lucha cuerpo a cuerpo con gran potencial de daño y sostenibilidad en el juego. Su estilo de juego agresivo y su habilidad para regenerar vida lo convierten en una fuerza formidable en el campo de batalla.

## Habilidades

### Pasiva: **Sangre por Sangre**
Cada cierto tiempo, Aatrox restaura parte del daño de sus habilidades como salud y obtiene un aumento de velocidad de movimiento.

### Q: **Espada de la Oscuridad**
Aatrox golpea el suelo con su espada, infligiendo daño y ralentizando a los enemigos en un área. Puede ser cargado para aumentar el rango y daño.

### W: **Carne a la Espada**
Aatrox inflige daño a los enemigos en un área frente a él y se cura por un porcentaje del daño infligido. Cuanto más daño cause, más se curará.

### E: **Ataque Aéreo**
Aatrox se desplaza hacia un área y lanza una explosión de energía al aterrizar, infligiendo daño y lanzando a los enemigos por el aire.

### R: **Masacre de los Oscuros**
Aatrox se transforma, ganando aumento de daño, aumenta su tamaño y obtiene un rango de ataque extendido. Al morir durante esta habilidad, Aatrox revive con una cantidad de salud dependiendo de la cantidad de daño que haya infligido durante la transformación.

## Consejos de Juego

- Aprovecha el rango extendido de tu habilidad R para golpear a los enemigos desde una distancia segura.
- Utiliza tu Q para controlar a los enemigos y mantenerlos dentro de tu rango de ataque.
- No subestimes el poder de tu pasiva para mantener tu salud durante los enfrentamientos prolongados.
- Coordina tus habilidades con tu equipo para maximizar tu impacto en las peleas grupales.

Con esta guía, ¡estarás listo para destrozar a tus enemigos como Aatrox en el Nexo!'),
(101, 'Guí­a excelente', 2, '2021-05-01', 9.0, 'jhin', 'bot', 'campeon', 'platino', 'flash ignite', '6333 6698 3161 3302 6610 3748', '# Guía Avanzada de Jhin, el Virtuoso

![Jhin Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jhin_0.jpg)

En esta guía, exploraremos estrategias avanzadas y consejos profesionales para dominar a Jhin en League of Legends. Desde la fase de líneas hasta las peleas de equipo, aprenderás cómo maximizar el potencial de este maestro del arte mortal.

## Tabla de Contenidos

1. [Introducción a Jhin](#introducción-a-jhin)
2. [Habilidades de Jhin](#habilidades-de-jhin)
3. [Construcción de Objetos](#construcción-de-objetos)
4. [Fase de Línea](#fase-de-línea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Avanzados](#consejos-avanzados)

## Introducción a Jhin

Jhin es un tirador único que canaliza el arte a través de sus ataques. Con una jugabilidad centrada en la precisión y el posicionamiento, es capaz de infligir daño masivo en un solo golpe.

## Habilidades de Jhin

### Pasiva - Susurro de la Pistola

La pasiva de Jhin, *Susurro de la Pistola*, le otorga un ataque crítico aumentado y daño adicional en función de la velocidad de ataque adicional.

**Consejo Profesional:** Aprovecha al máximo tu cuarto disparo, ya que inflige daño adicional basado en el porcentaje de vida faltante del objetivo.

### Q - Danza de Granada

*Jhin lanza una granada que inflige daño y rebota sobre los enemigos. Cada rebote inflige daño reducido.*

**Consejo Profesional:** Utiliza *Danza de Granada* para limpiar oleadas de súbditos y aplicar presión en la línea.

### W - Florescencia Mortal

*Jhin lanza una trampa de raíz que inflige daño y ralentiza al primer enemigo que la activa.*

**Consejo Profesional:** Coloca *Florescencia Mortal* en puntos estratégicos para atrapar a los enemigos desprevenidos o para asegurar escapadas.

### E - Visión de Flores

*Jhin despliega un florero que otorga visión del área. Si es destruido por un campeón enemigo, explota y ralentiza a los enemigos cercanos.*

**Consejo Profesional:** Usa *Visión de Flores* para controlar áreas importantes del mapa y proporcionar visión para tu equipo.

### R - Cánon de Castigo

*Jhin despliega su rifle y realiza cuatro tiros de gran alcance, el último de los cuales es una bala crítica que inflige daño masivo.*

**Consejo Profesional:** Usa *Cánon de Castigo* para iniciar o asegurar peleas de equipo, o para eliminar objetivos de alto valor a distancia.

## Construcción de Objetos

La construcción de objetos es crucial para optimizar el desempeño de Jhin en diferentes etapas del juego. Aquí hay una construcción típica para Jhin:

1. **Espada del Rey Arruinado**
2. **Sombra de la Luchona**
3. **Ídolo Prohibido**
4. **Hoja del Verdugo**
5. **Baile Mortal**
6. **Último Suspiro**

**Consejo Profesional:** Adaptar tu construcción de objetos según la composición enemiga y la fase del juego es esencial para maximizar el impacto de Jhin.

## Fase de Línea

Durante la fase de líneas, Jhin debe enfocarse en farmear de manera segura mientras castiga a los enemigos con su alcance y habilidades.

**Consejo Profesional:** Utiliza *Danza de Granada* para castigar a los enemigos que se agrupan y para limpiar oleadas de súbditos bajo la torre enemiga.

## Peleas de Equipo

En las peleas de equipo, Jhin debe posicionarse de manera segura mientras inflige daño desde la retaguardia con su *Cánon de Castigo* y *Danza de Granada*.

**Consejo Profesional:** Mantén una distancia segura y espera a que los enemigos utilicen sus habilidades antes de entrar en la pelea con tu *Cánon de Castigo*.

## Consejos Avanzados

1. **Posicionamiento Consciente:** Siempre mantén una distancia segura y utiliza el terreno a tu favor para evitar emboscadas enemigas.
2. **Coordinación de Habilidades:** Coordina tus habilidades con tu equipo para asegurar objetivos importantes o para atrapar a los enemigos desprevenidos.
3. **Conocimiento del Mapa:** Mantén una visión constante del mapa y anticipa los movimientos enemigos para evitar sorpresas desagradables.

Con esta guía avanzada, estás preparado para dominar a Jhin y convertirte en el Virtuoso definitivo. ¡Buena suerte en la Grieta del Invocador!
'),
(102, 'Guí­a versátil', 2, '2023-12-02', 8.5, 'leona', 'sup', 'campeon', 'oro', 'flash teleport', '6333 6698 3161 3302 6610 3748', '# Guía Emo de Leona, el Amanecer Radiante

![Leona Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Leona_0.jpg)

En esta guía, exploraremos el lado más oscuro y dramático de Leona, el Amanecer Radiante. Desde su estilo de juego hasta su construcción de objetos, te sumergirás en la oscuridad de la noche y la luz del amanecer con esta guía "emo".

## Tabla de Contenidos

1. [Introducción a Leona](#introducción-a-leona)
2. [Habilidades de Leona](#habilidades-de-leona)
3. [Construcción de Objetos](#construcción-de-objetos)
4. [Fase de Línea](#fase-de-línea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Emo](#consejos-emo)

## Introducción a Leona

Leona es una guerrera imbuida de la luz del sol, pero en esta guía, exploraremos su lado más oscuro y emocional. Con su armadura brillante y su actitud decidida, Leona puede llevar la desesperación a sus enemigos con estilo.

## Habilidades de Leona

### Pasiva - Luz del Amanecer

La pasiva de Leona, *Luz del Amanecer*, inflige daño adicional a los enemigos cuando son alcanzados por sus habilidades. Este daño se beneficia de la resistencia mágica de los enemigos.

**Consejo Profesional:** Combina *Luz del Amanecer* con tus habilidades para maximizar tu potencial de daño.

### Q - Golpe de Sol

*Leona golpea a un enemigo con su espada, infligiendo daño y otorgando un breve escudo de resistencia.*

**Consejo Profesional:** Utiliza *Golpe de Sol* para intercambios rápidos y para mitigar el daño enemigo.

### W - Eclipse

*Leona se envuelve en un eclipse temporal, otorgando resistencia y desencadenando una explosión de energía alrededor de ella después de un breve período.*

**Consejo Profesional:** Activa *Eclipse* en momentos clave para absorber daño y desencadenar una explosión sorpresa en tus enemigos.

### E - Filo Solar

*Leona lanza su espada hacia un objetivo, infligiendo daño y ralentizando al enemigo alcanzado. Si el objetivo es un campeón, Leona puede teletransportarse hacia él.*

**Consejo Profesional:** Usa *Filo Solar* para iniciar peleas o para atrapar a los enemigos que intentan huir.

### R - Cárcel de Luz

*Leona invoca un haz de luz que se estrella en el suelo, dañando y aturdieno a los enemigos dentro del área.*

**Consejo Profesional:** Utiliza *Cárcel de Luz* para iniciar peleas de equipo o para interrumpir las habilidades enemigas clave.

## Construcción de Objetos

La construcción de objetos para Leona en esta guía "emo" se centra en resistencia y utilidad, con un toque de oscuridad. Aquí tienes una construcción típica:

1. **Coraza del Solari de Hierro**
2. **Capa de Fuego Solar**
3. **Pergamino de las Edades Oscuras**
4. **Aguja de la Ruina**
5. **Guardián de las Sombras**
6. **Filo del Vacío**

**Consejo Profesional:** Adaptar tu construcción de objetos según la composición enemiga y la fase del juego es esencial para maximizar el impacto de Leona.

## Fase de Línea

Durante la fase de líneas, Leona debe buscar oportunidades para iniciar peleas y proteger a su ADC con su presencia amenazadora.

**Consejo Profesional:** Coordina tus ataques con tu ADC y busca oportunidades para sorprender a los enemigos con tu capacidad de enganche.

## Peleas de Equipo

En las peleas de equipo, Leona brilla en su máximo esplendor, protegiendo a su equipo y sumergiendo a sus enemigos en la oscuridad de la desesperación.

**Consejo Profesional:** Utiliza tu *Cárcel de Luz* de manera efectiva para iniciar peleas y proteger a tu equipo de las emboscadas enemigas.

## Consejos Emo

1. **Expresa tus Sentimientos:** Deja que la oscuridad y la luz se mezclen en tu juego, mostrando tu verdadero yo emocional.
2. **Adopta el Drama:** Sé el centro de atención en el campo de batalla, atrayendo a tus enemigos hacia tu aura de misterio y desesperación.
3. **Sé Intenso:** No tengas miedo de enfrentarte cara a cara con tus enemigos, mostrando tu verdadera fuerza emocional.

Con esta guía "emo", estarás listo para llevar a Leona al siguiente nivel de expresión emocional en la Grieta del Invocador. ¡Buena suerte, guerrero de la oscuridad!'),
(103, 'Guí­a táctica para principiantes', 1, '2023-05-02', 8.7, 'Annie', 'mid', 'campeon',  'plata', 'Teleport Flash', '6333 6698 3161 3302 6610 3748', '# Guía Gótica Culona de Annie, la Niña Oscura

![Annie Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Annie_0.jpg)

En esta guía, exploraremos el lado más oscuro y encantador de Annie, la Niña Oscura. Desde su estilo de juego hasta su construcción de objetos, te sumergirás en el poder del fuego y la magia negra con esta guía gótica culona.

## Tabla de Contenidos

1. [Introducción a Annie](#introducción-a-annie)
2. [Habilidades de Annie](#habilidades-de-annie)
3. [Construcción de Objetos](#construcción-de-objetos)
4. [Fase de Línea](#fase-de-línea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Góticos](#consejos-góticos)

## Introducción a Annie

Annie es una pequeña pero poderosa hechicera que canaliza el poder del fuego y la magia oscura para destruir a sus enemigos. En esta guía, exploraremos su lado más gótico y culón, combinando estilo con poder destructivo.

## Habilidades de Annie

### Pasiva - Pirodesgracia

La pasiva de Annie, *Pirodesgracia*, inflige daño adicional con sus hechizos después de lanzarlos varias veces.

**Consejo Profesional:** Mantén un ojo en tu contador de *Pirodesgracia* para maximizar tu daño.

### Q - Desintegrar

*Annie lanza una bola de fuego que inflige daño a un enemigo objetivo. Si mata al enemigo, la mitad del costo de maná se devuelve y el enfriamiento se reduce a la mitad.*

**Consejo Profesional:** Usa *Desintegrar* para desgastar a tus oponentes y mantener la presión en la línea.

### W - Incinerar

*Annie libera un cono de fuego que inflige daño a los enemigos alcanzados.*

**Consejo Profesional:** Utiliza *Incinerar* para limpiar oleadas de súbditos rápidamente y para dañar a múltiples enemigos en peleas de equipo.

### E - Escudo Fundido

*Annie envuelve a sí misma y a Tibbers en un escudo de fuego, reduciendo el daño recibido y dañando a los enemigos que la atacan.*

**Consejo Profesional:** Activa *Escudo Fundido* para absorber daño y castigar a los enemigos que intentan enfocarte.

### R - Invocar: Tibbers

*Annie invoca a Tibbers, su oso de peluche en llamas, infligiendo daño a los enemigos cercanos y siguiéndola como una mascota, atacando a sus enemigos.*

**Consejo Profesional:** Usa *Invocar: Tibbers* como una herramienta de iniciación o para causar estragos en las peleas de equipo.

## Construcción de Objetos

La construcción de objetos para Annie en esta guía gótica culona se centra en el poder mágico y la supervivencia. Aquí tienes una construcción típica:

1. **Sombrero Mortífero de Rabadon**
2. **Báculo del Vacío**
3. **Velo de la Banshee**
4. **Cetro Abisal**
5. **Botas de Hechicero**
6. **Cetro Rilay**

**Consejo Profesional:** Adaptar tu construcción de objetos según la composición enemiga y la fase del juego es esencial para maximizar el impacto de Annie.

## Fase de Línea

Durante la fase de líneas, Annie puede ser agresiva con su capacidad para infligir daño a corta distancia.

**Consejo Profesional:** Aprovecha tu daño temprano para mantener a raya a tus oponentes y buscar oportunidades para eliminarlos.

## Peleas de Equipo

En las peleas de equipo, Annie brilla como una estrella oscura, devastando a sus enemigos con su poder mágico.

**Consejo Profesional:** Utiliza *Invocar: Tibbers* en momentos clave para causar confusión y desatar el caos entre tus enemigos.

## Consejos Góticos

1. **Abraza la Oscuridad:** Deja que tu lado gótico brille en el campo de batalla, mostrando tu poder mágico y tu estilo único.
2. **Juega con Estilo:** Adopta un estilo de juego agresivo pero elegante, combinando poder y gracia en tus movimientos.
3. **Sé la Envidia de tus Enemigos:** Conviértete en el centro de atención con tu estilo gótico culón, dejando una impresión duradera en'),
(105, 'Dominando el juego con Jinx', 2, '2023-10-15', 9.5, 'Jinx', 'bot', 'campeon', 'diamante', 'Flash Heal', '6333 6698 3161 3302 6610 3748', '# Guía Profesional de Jinx, la Chica de los Cañones

![Jinx Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Jinx_0.jpg)

En esta guía, exploraremos las estrategias avanzadas y tácticas profesionales para dominar a Jinx en League of Legends. Desde la fase de líneas hasta las peleas de equipo, aprenderás a maximizar el potencial de esta cañonera caótica.

## Tabla de Contenidos

1. [Introducción a Jinx](#introducción-a-jinx)
2. [Habilidades de Jinx](#habilidades-de-jinx)
3. [Construcción de Objetos](#construcción-de-objetos)
4. [Fase de Línea](#fase-de-línea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Avanzados](#consejos-avanzados)

## Introducción a Jinx

Jinx es una tiradora hiperactiva conocida por su capacidad para causar caos y destrucción en el campo de batalla. Con su arsenal de armas y su mentalidad impulsiva, puede cambiar el curso de una partida con su potencial de daño explosivo.

## Habilidades de Jinx

### Pasiva - ¡Pow-Pow!

La pasiva de Jinx, *¡Pow-Pow!*, aumenta su velocidad de ataque cada vez que ataca a un enemigo. Después de acumular suficientes ataques, Jinx entra en un frenesí de ataque, aumentando aún más su velocidad de ataque.

**Consejo Profesional:** Administra tu velocidad de ataque para aprovechar al máximo el efecto de *¡Pow-Pow!* y su transformación.

### Q - Interruptor de Armas

*Jinx alterna entre su ametralladora minigun, *¡Pow-Pow!*, que inflige daño rápidamente a objetivos únicos, y su lanzacohetes, *¡Zap!*, que inflige daño en área y ralentiza a los enemigos.*

**Consejo Profesional:** Utiliza *Interruptor de Armas* en el momento adecuado para adaptarte a la situación y maximizar tu daño.

### W - Lanzallamas Z

*Jinx dispara un cohete que explota al impactar, infligiendo daño y revelando a los enemigos golpeados.*

**Consejo Profesional:** Usa *Lanzallamas Z* para pokear a tus enemigos en la fase de líneas y para proporcionar visión en áreas clave del mapa.

### E - Encanto Mortal

*Jinx lanza un conjunto de granadas que se activan al contacto con un enemigo, infligiendo daño y aturdiendo a los enemigos dentro del área de efecto.*

**Consejo Profesional:** Utiliza *Encanto Mortal* para controlar áreas durante las peleas de equipo y para interrumpir las habilidades enemigas importantes.

### R - Mega Rayo Infernal

*Jinx dispara un misil súper potente que atraviesa el mapa, infligiendo daño a todos los enemigos en su camino. El daño aumenta cuanto menos vida tenga el objetivo.*

**Consejo Profesional:** Utiliza *Mega Rayo Infernal* para asegurar eliminaciones desde lejos o para iniciar peleas de equipo con un golpe devastador.

## Construcción de Objetos

La construcción de objetos para Jinx se centra en maximizar su potencial de daño y supervivencia. Aquí tienes una construcción típica:

1. **Espada del Rey Arruinado**
2. **Fervor de Batalla**
3. **Ídolo Prohibido**
4. **Hoja del Verdugo**
5. **Baile Mortal**
6. **Último Suspiro**

**Consejo Profesional:** Ajusta tu construcción de objetos según la composición enemiga y tu estilo de juego para maximizar tu eficacia en el juego.

## Fase de Línea

Durante la fase de líneas, Jinx debe enfocarse en farmear de manera segura y buscar oportunidades para comerciar con el enemigo.

**Consejo Profesional:** Utiliza tu rango para pokear a los enemigos con *Lanzallamas Z* y para castigarlos cuando se acerquen demasiado.

## Peleas de Equipo

En las peleas de equipo, Jinx brilla con su potencial de daño en equipo y su capacidad para asegurar eliminaciones a distancia.

**Consejo Profesional:** Mantén una posición segura en la retaguardia y espera el momento adecuado para entrar en la pelea con *Mega Rayo Infernal*.

## Consejos Avanzados

1. **Posicionamiento Consciente:** Mantén una distancia segura de los peligros y utiliza el terreno a tu favor durante las peleas.
2. **Coordinación de Habilidades:** Coordina tus habilidades con tu equipo para asegurar eliminaciones y controlar áreas importantes del mapa.
3. **Conocimiento del Mapa:** Mantén una visión constante del mapa y utiliza la información para tomar decisiones tácticas inteligentes durante la partida.

Con esta guía profesional, estás preparado para dominar a Jinx y llevar a tu equipo a la victoria en la Grieta del Invocador. ¡Buena suerte, y que los cañones siempre apunten hacia arriba!'),
(104, 'Guí­a suspicaz', 1, '2023-12-12', 9.8, 'aatrox', 'top', 'campeon', 'diamante', 'flash', '6333 6698 3161 3302 6610 3748', '# Guía Suspicaz de Aatrox, el Oscuro

![Aatrox Splash Art](https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Aatrox_0.jpg)

En esta guía, exploraremos las artes oscuras y misteriosas de Aatrox, el Oscuro. Desde sus habilidades hasta su construcción de objetos, aprenderás cómo sembrar la discordia y el caos en el campo de batalla con este ser de antiguo poder.

## Tabla de Contenidos

1. [Introducción a Aatrox](#introducción-a-aatrox)
2. [Habilidades de Aatrox](#habilidades-de-aatrox)
3. [Construcción de Objetos](#construcción-de-objetos)
4. [Fase de Línea](#fase-de-línea)
5. [Peleas de Equipo](#peleas-de-equipo)
6. [Consejos Suspicaces](#consejos-suspicaces)

## Introducción a Aatrox

Aatrox es un guerrero caído que emana un aura de misterio y poder oscuro. Con su habilidad para infligir daño masivo y su capacidad para resistir castigos, Aatrox es un adversario temible en el campo de batalla.

## Habilidades de Aatrox

### Pasiva - Sed de Sangre

La pasiva de Aatrox, *Sed de Sangre*, otorga vida adicional y daño de ataque aumentado basado en el porcentaje de vida que le falte.

**Consejo Profesional:** Aprovecha al máximo tu pasiva calculando cuándo entrar en combate para maximizar tu daño y supervivencia.

### Q - Espada de los Oscuros

*Aatrox golpea el suelo con su espada, infligiendo daño y creando una explosión que lanza a los enemigos por el aire.*

**Consejo Profesional:** Utiliza *Espada de los Oscuros* para iniciar peleas de equipo o para interrumpir las habilidades enemigas importantes.

### W - Masacre de los Malditos

*Aatrox inflige daño en área con su espada, curándose a sí mismo por una parte del daño infligido. Si está por debajo del umbral de vida, se activa automáticamente.*

**Consejo Profesional:** Usa *Masacre de los Malditos* para mantener tu salud alta durante las peleas prolongadas y para sorprender a los enemigos con tu supervivencia.

### E - Profanar

*Aatrox dispara un proyectil que inflige daño y ralentiza a los enemigos alcanzados. Los enemigos en el centro del impacto quedan ralentizados durante más tiempo.*

**Consejo Profesional:** Utiliza *Profanar* para controlar el espacio y la posición de los enemigos durante las peleas de equipo o para escapar de situaciones peligrosas.

### R - Ascenso de la Masacre

*Aatrox se transforma, ganando un aumento de tamaño, daño adicional y la capacidad de resucitar si acumula suficiente furia durante la duración de la habilidad.*

**Consejo Profesional:** Activa *Ascenso de la Masacre* en el momento adecuado para aumentar tu daño y sobrevivir en las peleas más intensas.

## Construcción de Objetos

La construcción de objetos para Aatrox se centra en maximizar su potencial de daño y supervivencia. Aquí tienes una construcción típica:

1. **Espada del Rey Arruinado**
2. **Cuchilla Negra**
3. **Armadura Espinosa**
4. **Hidra Titánica**
5. **Yelmo Adaptativo**
6. **Ángel Guardián**

**Consejo Profesional:** Adaptar tu construcción de objetos según la composición enemiga y la fase del juego es esencial para maximizar tu eficacia en el juego.

## Fase de Línea

Durante la fase de líneas, Aatrox puede ser agresivo con su capacidad para infligir daño y curarse.

**Consejo Profesional:** Aprovecha tu sustain con *Masacre de los Malditos* para presionar a tus oponentes y buscar oportunidades de eliminarlos.

## Peleas de Equipo

En las peleas de equipo, Aatrox brilla con su capacidad para iniciar y absorber daño.

**Consejo Profesional:** Mantén una posición delantera durante las peleas de equipo y busca oportunidades para desatar tu furia con *Ascenso de la Masacre*.

## Consejos Suspicaces

1. **Mantén el Misterio:** Juega con un estilo impredecible, manteniendo a tus enemigos adivinando tus movimientos.
2. **Sé Imponente:** Impón tu presencia en el campo de batalla, mostrando tu poder oscuro y tu determinación implacable.
3. **Anticipa el Caos:** Prepárate para cualquier eventualidad y adapta tu estrategia en consecuencia, siempre un paso adelante de tus enemigos.

Con esta guía suspicaz, estarás preparado para sembrar la discordia y la destrucción como Aatrox, el Oscuro. ¡Que la oscuridad siempre esté de tu lado!'),
(106, 'Guí­a excelente', 1, '2023-12-15', 9.0, 'jhin', 'bot', 'campeon', 'platino', 'ignite', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(107, 'Guía versátil', 2, '2023-12-15', 8.5, 'leona', 'sup','campeon', 'oro', 'teleport', '6333 6698 3161 3302 6610 3748', 'texto generico'),
(108, 'Guí­a furra', 1, '2024-04-23', 10, 'yuumi', 'sup','campeon', 'bronce', 'teleport', '6333 6698 3161 3302 6610 3748', '### Yuumi, la Gata Mágica: Guía Pijamística

¡Hola, invocadores! Si estás buscando una experiencia de juego peluda y llena de diversión, Yuumi es la elección perfecta. Con su estilo único y su adorable diseño, ¡preparaos para una aventura mágica y peluda en la Grieta del Invocador!

#### Habilidades de Yuumi

1. **Pasiva - Colega Curioso:**
   - Yuumi acumula Escudos cuando lanza habilidades. ¡Es como si estuviera tejiendo un pijama protector para su aliado! Cuando sale de su aliado, pierde el escudo, pero ¡no te preocupes! Se regenera con el tiempo, ¡igual que una siesta de gato!

2. **Q - Disparo Pijama:**
   - Yuumi lanza un misil que daña y marca a los enemigos. Si atrapas a un enemigo marcado, les haces cosquillas adicionales y los ralentizas. ¡Hora de una fiesta de cosquillas!

3. **W - Atadura de Amistad:**
   - Yuumi se une a un aliado y se vuelve inalcanzable. ¡Es como llevar tu propio compañero de peluche a todas partes! Mientras estás unido, puedes lanzar todas tus habilidades desde la espalda de tu amigo.

4. **E - Refugio y Mascarada:**
   - Yuumi cura a su aliado y les da un impulso de velocidad. ¡Es como una caja de galletas mágicas para tu aliado! Si estás unido a ellos, también te das un caprichito y te curas.

5. **R - ¡Enfurecimiento Místico!:**
   - Yuumi canaliza un ataque de onda expansiva que daña y aturde a los enemigos. Cuanto más tiempo canalices, más daño haces y más tiempo los aturdes. ¡Es como un festival de purr-nes!

#### Estrategias de Juego Pijamísticas

- **Abraza a tu aliado:** Yuumi es más feliz cuando está pegada a un amigo. Elige un compañero que disfrute de tu compañía y sepa cómo sacarle el máximo provecho a tus abrazos peludos.

- **Escudos para todos:** Tus habilidades generan escudos, ¡así que úsalos sabiamente para proteger a tus amigos! Un gato feliz es un gato protegido.

- **Muévete como un gato ágil:** Estar pegado a alguien no significa que no puedas moverte con gracia felina. Aprovecha tu movilidad para esquivar habilidades enemigas y seguir apoyando a tu equipo.

- **Comunicación con estilo:** ¡Atrévete a comunicarte con tu equipo con purrs y maullidos! No solo será adorable, ¡también mantendrá el ánimo alto en el equipo!

- **Compra pijamas a juego:** Prioriza los ítems de apoyo que resalten tu estilo pijamístico, ¡como los que brillan en la oscuridad o tienen patrones de estrellas! Recuerda, ¡el pijama es clave para la victoria!

Con esta guía pijamística, ¡estás listo para abrazar a tus amigos y desatar el poder de Yuumi en la Grieta del Invocador! ¡Buena suerte y que tus sueños estén llenos de dulces y cosquillas! ???');



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
('3051', 'Hacha hogareï??a',''),
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
('3870', 'Tejesueï??os','Soporte'),
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
('6655', 'Compaï??ero de Luudens','Mago'),
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
('3094', 'Caï??on de fuego rapido','Tirador'),
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
('3087', 'Puï??al de static','Tirador'),
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