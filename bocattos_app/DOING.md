# ID003 Crea un tema para la aplicación

El texto que presenta la aplicación no luce elegante.
Este commit crea un tema para aplicarlo a la aplicación.

# Nuevo
## lib/ui/theme.dart
- En este archivo se crea el tema que usaremos en la aplicación.
  Define un tipo de letra que es retornado como tema.

## fonts/Merriweather-Regular.ttf
- Fuente a utilizar en el tema creado en `theme.dart`.

# Modificado
## app.dart
- Importa el package `theme.dart` y en el constructor de la clase
  se aplica el tema `buildTheme()` en la propiedad `theme`. 
  De esta manera, los estilos que creemos en el tema estarán
  disponibles para toda la aplicación.

## login.dart
- Modifica `_buildText()` para aplicar el estilo `headline` del
  tema antes creado al texto del título de la aplicación.

## pubspec.yaml
- Declara el recurso de la nueva fuente `Merriweather`.