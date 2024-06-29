# POLYBAR-MODULES
Unos modulos de polybar para mpd

Es un modulo, que se conecta a tu servidor mpd y te muestra la cancion que se esta reproduciendo (solo la cancion, no el artista), 

**Para meter su modulo en su polybar**
instale este repositorio

1`git clone https://github.com/samitorresoficial/POLYBAR-MODULES.git`

2 `chmod +x mpd_module.sh`

3 ahora modifique su archivo de configuracion en `.config/polybar`, regularmente esta registrado como `config.ini` o `current.ini`, debe de configurar su nuevo modulo, y modifica label a la ruta, le debe de quedar mas o menos asi:

```
[module/mpd]
type = custom/script
exec = /ruta/a/tu/archivo/mpd_module.sh
interval = 5
label = %output%
```
En la seccion donde estan configurados tus modulos, ajustas el width, el ofset-x y el foreground, y solo queda reiniciar la polybar.
