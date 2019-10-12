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
  _methodToNavigate(Member member) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => MemberWidget(member)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(member.login),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        // Make child a Column here and add the IconButton
        child: Column(
          children: [
            Image.network(member.avatarUrl),
            IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.green, size: 48.0),
              onPressed: () {
                Navigator.pop(context);
              })
          ])));
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('First Page'),
        ),
        body: new Center(
          child: RaisedButton(
            onPressed: () {
              Navigator.push(
                context, new MaterialPageRoute(
                  builder: (context) => new SecondPage()));
              },
            child: Text('Press here'),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Second Page'),
        ),
        body: new Center(
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              }, //code this later
              child: Text('Press here'),
        )));
  }