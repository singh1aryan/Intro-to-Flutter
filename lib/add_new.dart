import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'model/recipe.dart';

Firestore db = Firestore.instance;
Future<Recipe> createNote(String title, String description, List<String> comments) async {
  final TransactionHandler createTransaction = (Transaction tx) async {
    final DocumentSnapshot ds = await tx.get(db.collection('recipes').document());

    var dataMap = new Map<String, dynamic>();
    dataMap['title'] = '_title';
    dataMap['description'] = '_description';
    dataMap['image'] = '';
    dataMap['likes'] = 0;
    dataMap['views'] = 0;
    dataMap['comments'] =


    await tx.set(ds.reference, dataMap);
    return dataMap;
  };

  return Firestore.instance.runTransaction(createTransaction).then((mapData) {
    return Recipe.fromMap(mapData);
  }).catchError((error) {
    print('error: $error');
    return null;
  });
}

class Add extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddHome(),
    );
  }
}

class AddHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _AddHomeState();
  }
}

class _AddHomeState extends State<AddHome>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Title'),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Description',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Image'),
            ),
          )
        ],
      ),
    );
  }
}