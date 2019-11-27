# ID006 Modelo de datos y ListView

Al navegar a `HomeScreen` se presenta al usuario una lista de recetas
distribuidas en tres `ListViews`: Comidas, Bebidas y Favoritos.

Las recetas presentadas son datos estáticos de prueba.

# Nuevo
## lib/model/recipe.dart
- Crea la clase `Recipe`.

## lib/utils/store.dart
- Contiene instancias de la clase `Recipe`.

# Modificado
## lib/ui/screens/home.dart
- `HomeScreen` pasa ahora a ser una clase con estado que contiene
   dos listas, una de recetas y otra de recetas favoritas.

- Crea un `ListView` en cada `Tab`de la aplicación.

- En los `ListView` se presenta una lista de recetas de acuerdo
  al tipo de receta que debe mostrar cada tab.