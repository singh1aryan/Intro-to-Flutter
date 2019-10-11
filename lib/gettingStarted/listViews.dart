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
  @override
  Widget build(){
    return Scaffold(
      appBar: AppBar(title: Text('ListViews')),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Sun'),
          ),
          ListTile(
            title: Text('Moon'),
          ),
          ListTile(
            title: Text('Star'),
          ),
        ],
      )
    );
  }

  Widget ListView(){
    // make a list view for the view
  }
}