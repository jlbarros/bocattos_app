# ID007 Crea el widget RecipeCard 

El widget `RecipeCard` será el encargado de presentar una vista
preliminar de cada receta. Muestra una imagen de la receta, su
nombre, duración y el ícono de favorito.

El widget `ListView` hace una lista de `RecipeCard` para presentar
una lista de vistas previas de las recetas existentes.

# Nuevo
## lib/ui/widgets/recipe_card.dart
- Crea el widget `RecipeCard`.

# Modificado
## lib/ui/screens/home.dart
- Reemplaza en el `ListView` el `ListTile` por un `RecipeCard`.
  Es decir, en vez de presentar una simple lista de títulos
  de recetas, presentamos las vistas previas de las recetas.