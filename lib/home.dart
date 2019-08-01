import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'model/recipe.dart';
import 'package:easy_recipe/UI/asymmetric_view.dart';
import 'package:firebase_messaging/firebase_messaging.dart';



Firestore db = Firestore.instance;
Future<Recipe> createNote(String title, String description, List<String> comments) async {
  final TransactionHandler createTransaction = (Transaction tx) async {
    final DocumentSnapshot ds = await tx.get(db.collection('recipes').document());

    var dataMap = new Map<String, dynamic>();
    dataMap['title'] = '_title';
    dataMap['description'] = '_description';
    dataMap['image'] = 'https://images.unsplash.com/photo-1512374382149-233c42b6a83b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=675&q=80';
    dataMap['likes'] = 0;
    dataMap['views'] = 0;
    dataMap['comments'] = comments;


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
    
    _fcm.subscribeToTopic('recipes');
    _fcm.configure(
      onMessage: (Map<String, dynamic> message) async{
        print("message: $message");

        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(message['notification']['title']),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );

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
    return Scaffold(
      body: AsymmetricView(products: recipe_list,),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (BuildContext context){
              return AlertDialog(
                title: new Text('Add your recipe'),
                content: column(),
              );
            }
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget column(){
    List<String> comments = [];
    return Column(
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
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(32.0, 32.0, 32.0, 0),
          child: FlatButton(
              onPressed: (){
                createNote('new title', 'description', comments);
              },
              child: Text('Add recipe')
          ),
        )
      ],
    );
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