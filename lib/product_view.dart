import 'package:flutter/material.dart';
import 'asymmetric_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'model/recipe.dart';

class HomePage extends StatelessWidget {

  List<Recipe> recipe_list = [];

  your_async_method () async {

//    final documents = await db.collection('recipes').getDocuments();
////    final userObject = documents.documents.first.data;
//    for(int i=0;i<documents.length;i++){
//      Recipe recipe = documents[i];
//      recipe_list.add(recipe);
//    }
//    print(5);
  }


  @override
  Widget build(BuildContext context) {
    return  AsymmetricView(products: recipe_list);
  }
}