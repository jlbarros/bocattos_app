import 'package:flutter/material.dart';
import 'package:bocattos_app/model/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final bool inFavorites;
  final Function onFavoriteButtonPressed;

  RecipeCard({
    @required this.recipe,
    @required this.inFavorites,
    @required this.onFavoriteButtonPressed
    }
  );

  Widget build(BuildContext context) {
    RawMaterialButton _buildFavoriteButton() {
      return RawMaterialButton(
        constraints: const BoxConstraints(minWidth: 40.0, minHeight: 40.0),
        onPressed: () => onFavoriteButtonPressed(recipe.id),
        child: Icon(
          inFavorites == true ? Icons.favorite : Icons.favorite_border,
        ),
        elevation: 2.0,
        fillColor: Theme.of(context).buttonColor,
        shape: CircleBorder(),
      );
    }

    Padding _buildTitleSection() {
      return Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          // El valor por defecto de crossAsixAligment es
          // CrossAxisAligment.center. Queremos alinear el
          // título y la descripción a la izquierda de la receta
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              recipe.name,
              style: Theme.of(context).textTheme.title,
            ),
            // Espacio vacío
            SizedBox(height: 10.0),
            Row(
              children: <Widget>[
                Icon(Icons.timer, size: 20.0),
                SizedBox(width: 5.0),
                Text(
                  recipe.getDurationString,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return GestureDetector(
      onTap: () => print("Tapped!"),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Superponemos la imagen y el botón 
              // creando un objeto Stack:
              Stack(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 16.0 / 9.0,
                    child: Image.network(
                      recipe.imageURL,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    child: _buildFavoriteButton(),
                    top: 2.0,
                    right: 2.0,
                  ),
                ],
              ),
              _buildTitleSection(),
            ],
          ),
        ),
      ),
    );
  }
}