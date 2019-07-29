import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'model/recipe.dart';
import 'package:easy_recipe/UI/asymmetric_view.dart';
import 'firebase_notification_handler.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipes',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {

  final Firestore _db = Firestore.instance;
  final FirebaseMessaging _fcm = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async{
        print("message: $message");

        final snackbar = SnackBar(
          content: Text(message['notification']['title']),
          action: SnackBarAction(label: 'GO', onPressed: () => null),
        );
        Scaffold.of(context).showSnackBar(snackbar);

      },
      onLaunch: (Map<String, dynamic> message) async{
        print("message: $message");
      },
      onResume: (Map<String, dynamic> message) async{
        print("message: $message");
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipes for you')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('recipes').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        return _buildList(context, snapshot.data.documents);
      },
    );
  }

  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    List<Recipe> recipe_list = [];
//    snapshot.map((data) => recipeList(context, data).toList());
    for(int i=0;i<snapshot.length;i++){
      Recipe recipe = Recipe.fromSnapshot(snapshot[i]);
      recipe_list.add(recipe);
    }
    return AsymmetricView(products: recipe_list,);
  }
}

class Record {
  final String name;
  final int votes;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['votes'] != null),
        name = map['name'],
        votes = map['votes'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes>";
}