import 'package:bocattos_app/model/recipe.dart';

List<Recipe> getRecipes() {
  return [
    Recipe(
      id: '0',
      type: RecipeType.food,
      name: 'Avena con frutas',
      duration: Duration(minutes: 15),
      ingredients: [
        '100 gr de avena',
        '100 ml de leche',
        'Frutas de su elección',
        'Miel',
        'Canela',
      ],
      preparation: [
        'Paso 1',
        'Paso 2',
        'Paso 3',
      ],
      imageURL: 'https://images.unsplash.com/photo-1517673400267-0251440c45dc?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f197f4922b3f26ed3f4e3e66a113b67b&auto=format&fit=crop&w=1050&q=80'
    ),
    Recipe(
      id: '1',
      type: RecipeType.food,
      name: 'Panqueques con Sirope de Arce',
      duration: Duration(minutes: 20),
      ingredients: [
        '2 huevos',
        '100 ml of leche',
        '50 gr of harina',
        '10 gr of mantequilla',
        'Levadura en polvo',
        'Sirope de arce',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
          'https://images.unsplash.com/photo-1517741991040-91338b176129?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f65c4032c1b3131f829d464fb979f5e8&auto=format&fit=crop&w=675&q=80',
    ),
    Recipe(
      id: '2',
      type: RecipeType.drink,
      name: 'Jugo de fresa',
      duration: Duration(minutes: 10),
      ingredients: [
        '100 gr of fresas',
        '500 ml of agua',
        '2 cucharaditas de azúcar',
        'Jugo de medio limón',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
          'https://images.unsplash.com/photo-1506802913710-40e2e66339c9?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c8ffc5bbb3719b5a46ee703acb0a0ac5&auto=format&fit=crop&w=634&q=80',
    ),
    Recipe(
      id: '3',
      type: RecipeType.drink,
      name: 'Batido de arándanos',
      duration: Duration(minutes: 10),
      ingredients: [
        '100 gr of arándanos frescos',
        '200 gr of yogur natural',
        '100 ml of leche',
        '1 banano',
      ],
      preparation: [
        'Step 1',
        'Step 2',
        'Step 3',
      ],
      imageURL:
          'https://images.unsplash.com/photo-1532301791573-4e6ce86a085f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=c0d9fe8ce9033db3a46ddf00bba92240&auto=format&fit=crop&w=1050&q=80',
    ),
  ];
}

List<String> getFavoritesIDs() {
  return [
    '0',
    '2',
    '3',
  ];
}