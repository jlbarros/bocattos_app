# ID005 Navega a HomeScreen y Tab de aplicación

Haciendo clic en el botón de inicio de sesión la aplicación navega a
`HomeScreen`, donde se le presenta al usuario un tab de navegación
con las opciones de recetas de la aplicación: Comidas, Bebidas, 
Favoritos y Ajustes.

Por el momento sólo son las pantallas sin funcionalidad.

# Nuevo
## lib/ui/screens/home.dart
- Contiene el widget `HomeScreen` el cual es el encargado de
  presentar el tab de opciones de la aplicación.

# Modificado
## lib/app.dart
- Modifica la ruta `'\'` para que ahora apunte a `HomeScreen`.

## lib/ui/screens/login.dart
- El widget `GoogleSignInButton` ahora navega a `'\'`.