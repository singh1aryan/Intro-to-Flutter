
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
