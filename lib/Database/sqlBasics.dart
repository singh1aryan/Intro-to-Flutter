class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: PrimaryColor),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomeState();
  }
}

class _HomeState extends State<Home>{

  initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'graphs_database.db'),
      onCreate: (db, version) {
        return db.execute(
          "CREATE TABLE graphs(id INTEGER PRIMARY KEY, type TEXT)",
        );
      },
      version: 1,
    );
  }

  @override
  Widget Build(){
    //! code for build coming soon
  } 
}