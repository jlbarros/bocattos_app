# ID07.1 Padding y formato de duración 

## Padding
El relleno vertical (padding) al principio y al final de la vista
de lista es demasiado pequeño.

El padding implementado (relación de píxeles del dispositivo) en
`RecipeCard` es 10.0 en el desplazamiento horizontal y 5.0 en el 
desplazamiento vertical. El resultado es que falta un relleno de
5.0 antes y después del widget `ListView` creado en `_buildRecipes`
en la clase `HomeScreen`. Este commit agrega el relleno que falta.

## Formato de la cadena de duración de la receta
El formato de la cadena de duración de las recetas que se muestra
en los widgets de `RecipeCard` no es bonita.

Para mejorar la visibilidad de la cadena de duración, este commit
agrega el paquete `duration` en la sección de dependencias del 
archivo `pubspec.yaml` para poder usar el paquete como una librería
en nuestro proyecto.

Luego se actualiza la clase `Recipe` en `Recipe.dart` para usar en
dicha clase el método `prettyDuration` ásignándole este a un método 
getter: `getDurationString`, lo que nos permite formatear de mejor
manera la cadena de duración.

## Modificado
### lib/ui/screens/home.dart
- Agrega el padding al `ListView` que presenta la lista de recetas.

### lib/ui/widgets/recipe_card.dart
- Modifica el texto que presenta la duración. Antes usaba
  `.toString` y ahora usa `.getDurationString`, propio del widget
  `RecipeCard`.