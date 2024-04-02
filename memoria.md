# GG - Avance Post-Semana Santa

* **Resumen**

En esta semana santa nos hemos centrado en una de las funcionalidades principales de la aplicación web, la información de partidas a través de la api.
Las barras de busqueda son totalmente funcionales. Al entrar, en el index podrá buscar cualquier jugador, por ejemplo 'DavidSG45', y la aplicación mostrará tanto el historial como los detalles tanto del jugador como de la partida. Además se puede clickear y ver el historial de los otros jugadores de la partida. La clave de la api hay que regenerarla cada 24h y tiene 200 peticiones por minuto.
También se ha arreglado el cómo crear una guía, solo falta poder subirla, el muestreo de los campeones y su busqueda es totalmente funcional y eficaz y mis guias muestra solo las guías del usuario, falta que muestre las del session.u.username.

* **Falta por implementar**

En el proyecto faltan por implementar que se puedan subir guias, comentarios (websockets), likes y dislikes, actualmente estamos enfocados en esa parte.
Por parte de los campeones, falta añadir cuantas guías existen de cada campeón y que al hacer click se muestren.
Una vez terminada, nos centraremos en arreglar el login, ajustes y funciones tanto de admin como usuario y los test de la aplicación.
Por último, si hay tiempo, se arreglará el apartado visual para que sea más apetecible a la vista y más sencillo de comprender cambiando el index, por unos menús más sencillos y explicando que es cada objeto o función de la aplicación.