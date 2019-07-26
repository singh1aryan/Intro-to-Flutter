import 'package:flutter/material.dart';
import 'package:easy_recipe/model/recipe.dart';

class RecipeTitle extends StatelessWidget {
  final Recipe recipe;
  final double padding;

  RecipeTitle(this.recipe, this.padding);


  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width*0.8;
    return Padding(
      padding: EdgeInsets.all(padding),
      child: Column(
        // Default value for crossAxisAlignment is CrossAxisAlignment.center.
        // We want to align title and description of recipes left:
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            recipe.title,
            style: Theme.of(context).textTheme.title,
          ),
          // Empty space:
          SizedBox(height: 10.0),
          Row(
            children: [
              Icon(Icons.description, size: 20.0),
              SizedBox(width: 5.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                width: c_width,
                child: new Column(
                  children: <Widget>[
                    new Text(
                      recipe.description,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}