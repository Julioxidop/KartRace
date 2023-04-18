# KartRace
Datapack que integra un sistema de carrera lineal, con detección de pisiciones.

## Caracteristicas
- Totalmente configurable a tus necesidades con unos pocos comandos.
- Al ser vanilla no se necesita tener conocimientos avanzados en programación para modificarlo a tu gusto.
- Funciones listas para que lo puedas personalizar y dar tu toque único.

## Descargar e instalar
Primero necesitaremos [***descargar***](https://github.com/Julioxidop/KartRace/releases/tag/2.0 "aquí")  el datapack, después lo descomprimimos en la carpeta **datapacks** de nuestro mundo y ejercutaremos el comando **/reload** para que esté listo para funcionar.
### Resourcepack
Recomiendo al momento de crear la pista, usar el resourcepack Bounding para tener una mejor visualización al momento de colocar los markers.

## Funcionamiento y configuración
Los parametros que tenemos que configurar para que el juego funcione correctamente son los siguientes.
### Jugadores iniciales
Es la cantidad de jugadores que habrá al iniciar el juego. Es necesario configurarlo correctamente para el sistema de posiciones.

**EL DATAPACK SOLO TOMA EN CUENTA A JUGADORES QUE ESTÉN EN MODO SURVIVAL O MODO AVENTURA, ASÍ QUE LA CANTIDAD QUE DEBES DE COLOCAR AQUÍ ES LA CANTIDAD DE JUGADORES QUE VAYAN A JUGAR QUE ESTÉN EN SURVIVAL O EN AVENTURA.**

Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando:
```
/scoreboard players set .b _players JUGADORES_INICIALES
```
Donde solo cambiaremos la palabra JUGADORES_INICIALES a la cantidad de jugadores iniciales.

### Máximo de ganadores
Esta es la cantidad máxima de ganadores que habrá en la carrera. Sobre estos jugadores se ejecutará una función especial al momento de llegar al checkpoint de llegada.
Para configurarlo dentro del juego necesitaremos ejecutar el siguiente comando:
```
/scoreboard players set .b _max_winners MAXIMO_GANADORES
```
Donde solo cambiaremos la palabra MAXIMO_GANADORES a la cantidad de jugadores finales.
### Configurar la pista.
Primero necesitaremos ya tener la pista creada, tiene que ser líneal, este datapack no está pensando para carreras que se desenvuelvan en un circuito.
Ahora una persona será la encarga de configurarla, está persona deberá de ejecutar el siguiente comando:
```
/function kart:_marker
```
Esto le dará 2 spawn eggs, uno llamado **MARKER** y otro llamado **CHECKPOINT**
- El marker sirve para ir actualizando las posiciones, estos se deben de poner a lo largo de todo el trayecto, siempre intentando dejar un mínimo de un bloque entre bounding y bounding (Usar el resourcepack para poder visualizarlos)
- El checkpoint sirve para especificar un marcador especial, cuando alguien cruce alguno, se ejecutará una función especial (Solo podremos poner 5 checkpoints). Tambien un checkpoint se puede establecer como la linea de meta. Esto lo veremos en el siguiente apartado.

### Establecer la línea de meta
De los 5 checkpoints, deberemos de especificar cual será nuestra línea de meta, para ello dentro de las funciones del datapack, en la carpeta **modify** tendremos los siguientes 5 archivos: c1.mcfunction     c2.mcfunction      c3.mcfunction      c4.mcfunction      c5.mcfunction
Dentro del que será la línea de meta colocaremos esta función para establecerlo:
```
function kart:_winner
```

## Como usar el datapack
- Después de haber configurado todos los parámetros, ya con nuestro jugadores posicionados, para iniciar el sistema, necesitaremos ejecutar el siguiente comando:
```
/function kart:_start
```
- Si queremos resetear la carrera:
```
/function kart:_players_reset
```
- Si queremos resetear TODO, carrera y marcardores, ejecutaremos:
```
/function kart:_reset
```
### Debug
Hay varios comandos que nos pueden ser de ayuda cuando estemos colocando los marcadores:
- Para ver las boundings:
```
/function kart:_show_bounding
```
- Para ocultar los boundings:
```
/function kart:_hide_bounding
```
- Para ver las particulas de los marcadores:
```
/scoreboard players set .b _k_particle 1
```
- Para ocultar las particulas de los marcadores:
```
/scoreboard players set .b _k_particle 0
```


## Personalización
Este datapack está planeada para la personalización de eventos específicos, las funciones para ajustar estan en `p22kartv2/data/kart/functions/modify/` aqui tenemos 13 funciones listas para 13 eventos diferentes.
### start.mcfunction
Esta función se ejecuta cuando se empieza el sistema después de usar el comando `/function kart:_start`
### cX.mcfunction
Donde X es un número del 1 al 5. Estas funciones representan los checkpoints y el comportamiento sobre los jugadores cuando los crucen.
### arrived.mcfunction
Esta función se ejecuta sobre cada persona que cruce el checkpoint que establecimos como línea de meta
### winner.mcfunction
Esta función se ejecuta sobre el jugador o jugadores ganadores que crucen la linea de meta. (Se puede ejecutar sobre más de un jugador si establecemos _max_winners mayor a 1)
### max_winners.mcfunction
Esta función se ejecuta cuando se alcanza el número máximo de ganadores.
### actionbar/primer.mcfunction
Esta función se ejecuta constantemente sobre el jugador que va en primer posición.
### actionbar/segundo.mcfunction
Esta función se ejecuta constantemente sobre el jugador que va en segundo lugar
### actionbar/tercer.mcfunction
Esta función se ejecuta constantemente sobre el jugador que va en tercer lugar
### actionbar/demas.mcfunction
Esta función se ejecuta constantemente sobre los jugadores que no van en primer, segundo o tercer lugar.



Sientete libre de modificar las demás funciones si necesitas mayor personalización.
## Notas
- Si encuentras algun fallo, tienes alguna duda o quieres contactar conmigo, mi user de discord es: **hugme#8792**

