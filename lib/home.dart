import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

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
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final record = Recipe.fromSnapshot(data);

    return Padding(
      key: ValueKey(record.title),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child:Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 5.0, 0, 0),
                child: Text(
                  record.title,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Card(
                  child: Image.network(record.image),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Text(record.likes.toString()),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(record.views.toString()),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(record.comments.length.toString()),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child: Center(
                      child: Icon(Icons.favorite_border),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Icon(Icons.rate_review),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Icon(Icons.view_carousel),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ),
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

class Recipe{
  final String title;
  final String description;
  final String image;

  final int likes;
  final int views;
  final List<String> comments;
  final DocumentReference reference;

  Recipe.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['title'] != null),
        assert(map['description'] != null),
        assert(map['image'] != null),
        assert(map['likes'] != null),
        assert(map['views'] != null),
        assert(map['comments'] != null),
        title = map['title'],
        description = map['description'],
        image = map['image'],
        likes = map['likes'],
        views = map['views'],
        comments = map['comments'].cast<String>();

  Recipe.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$title:$likes>";

}

//ListTile(
//title: Text(record.title),
//subtitle: Container(
//height: 100,
//child: Image.network(record.image),
//),
//trailing: Text(record.likes.toString()),
//onTap: () => Firestore.instance.runTransaction((transaction) async {
//final freshSnapshot = await transaction.get(record.reference);
//final fresh = Record.fromSnapshot(freshSnapshot);
//
//await transaction
//    .update(record.reference, {'votes': fresh.votes + 1});
//}),
//),