import 'package:flutter/material.dart';
import 'package:learningdart/Api/recipe.api.dart';
import 'package:learningdart/Api/recipe.dart';
import 'package:learningdart/Api/recipe_card.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class HomeApi extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomeApi> {
  late List<Recipe> _recipes;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu),
              SizedBox(width: 10),
              Text('Food Recipe')
            ],
          ),
        ),
        body: _isLoading
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(
                      title: _recipes[index].name,
                      cookTime: _recipes[index].totalTime,
                      rating: _recipes[index].rating.toString(),
                      thumbnailUrl: _recipes[index].images);
                },
              ));
  }
}


/*class HomeApi extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(
              width: 10,
            ),
            Text(
              "Food Recipe",
            )
          ],
        ),
      ),
      body: RecipeCard(
        title: "food",
        rating: "3.4",
        thumbnailUrl:
            "https://cdn.pixabay.com/photo/2013/10/09/02/27/lake-192990__340.jpg",
        cookTime: '20 .min',
      ),
    );
  }
}
*/