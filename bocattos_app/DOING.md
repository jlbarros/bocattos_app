# ID001 Creación del proyecto

Creación de la aplicación y archivos `README.md`, `CHANGELOG.md`.

# Modificado
## lib/main.dart
Se importa el paquete `app.dart` y en el main sólo deja la creación
de una instancia de `BocattosApp`.

# Creado
## lib/app.dart
- Se importa el paquete `login.dart`.
- Se crea la clase `BocattosApp`. En el constructor de esta clase
  se establecen las rutas básicas de la aplicación.

## lib/ui/screen/login.dart
- Se crea la clase `LoginScreen`. La pantalla inicial en esta versión sólo presenta el nombre de la aplicación y un botón para registrarse con Google. Al hacer click en dicho botón sólo se mostrará un mensaje de "Botón presionado en la consola.".