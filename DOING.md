# ID008 Mejoramiento del tema de la aplicación

Extiende el tema de la aplicación agregando estilos y colores de
texto para que esta luzca más elegante.

## Modificado
### lib/ui/theme.dart
- Crea el estilo de los títulos de las recetas.

- Crea el estilo de la cadena de duración de las recetas.

- Cambiamos los colores por defecto del tema.

### lib/ui/screens/home.dart
- Elimina en `DefaultTabController` la especificación del color
  de `backgroundColor` para que se aplique el color definido en 
  el tema de la aplicación.

### lib/ui/widgets/recipe_card.dart
- Cambiamos el color por defecto del icono de favorito.
  Antes era blanco, ahora toma un color definido en el tema.

- Se aplican igualmente colores del tema al nombre de la receta
  y a la duración de la misma.