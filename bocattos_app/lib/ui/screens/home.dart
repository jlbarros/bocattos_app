import 'package:bocattos_app/ui/widgets/recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:bocattos_app/model/recipe.dart';
import 'package:bocattos_app/utils/store.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<Recipe> recipes = getRecipes();
  List<String> userFavorites = getFavoritesIDs();

  // Los widgets inactivos llamarán a este método
  // para avisarle al widget padre HomeScreen que
  // debe refrescar el ListView.
  void _handleFavoritesListChanged(String recipeID) {
    // Establece el estado y refresca el widget.
    setState(() {
      if (userFavorites.contains(recipeID)) {
        userFavorites.remove(recipeID);
      } else {
        userFavorites.add(recipeID);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Padding _buildRecipes(List<Recipe> recipeList) {
      return Padding(
        // Padding antes y después del ListView
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Column(
          children: <Widget>[
            Expanded(
            child: ListView.builder(
              itemCount: recipeList.length,
              itemBuilder: (BuildContext context, int index) {
                return new RecipeCard(
                  recipe: recipeList[index],
                  inFavorites: userFavorites.contains(recipeList[index].id),
                  onFavoriteButtonPressed: _handleFavoritesListChanged,
                );
              },
            ),
            ),
          ],
        ),
      );
    }

    double _iconSize = 20.0;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            elevation: 2.0,
            bottom: TabBar(
              labelColor: Theme.of(context).indicatorColor,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.restaurant, size: _iconSize)),
                Tab(icon: Icon(Icons.local_drink, size: _iconSize)),
                Tab(icon: Icon(Icons.favorite, size: _iconSize)),
                Tab(icon: Icon(Icons.settings, size: _iconSize)),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(5.0),
          child: TabBarView(
            //Marcadores de posición para el contenido de las pestañas:
            children: <Widget>[
              // Despliega recetas de tipo food:
              _buildRecipes(recipes
                .where((recipe) => recipe.type == RecipeType.food)
                .toList()),
              // Despliega recetas de tipo drink:
              _buildRecipes(recipes
                .where((recipe) => recipe.type == RecipeType.drink)
                .toList()),
              // Despliega recetas favoritas:
              _buildRecipes(recipes
                .where((recipe) => userFavorites.contains(recipe.id))
                .toList()),
              Center(child: Icon(Icons.settings)),
            ],
          ),
        ),
      ),
    );
  }
}