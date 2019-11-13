# ID002 Cambio de imagen de fondo

Cambia el fondo de la aplicación colocando una imagen.
Hasta la versión anterior el fondo de la aplicación era sólo un
color azul. 

# Modificado
## pubspec.yaml
- En la sección `flutter` crea un apartado `assets` donde establece
  el path a la imagen que queremos poner de fondo.


## lib/ui/screen/login.dart
- Crea el widget `_builBackground()` de tipo `BoxDecoration` el 
  cual contendrá la imagen de fondo.

- En el `Scafold` en la propiedad `body` coloca un `Container`
  en cuya propiedad `decoration` relaciona el widget
  `buildBackground()` creado anteriormente.