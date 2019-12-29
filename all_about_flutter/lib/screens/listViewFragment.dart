import 'package:flutter/material.dart';

class ListViewFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "List Views in Flutter",
      debugShowCheckedModeBanner: false,
      home: new ListHomePage(),
    );
  }
}

class ListHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _ListHomePageState();
  }
}

class _ListHomePageState extends State<ListHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(child: listView1(),),
          Expanded(child: listView2(),),
          Expanded(child: listView3(),),
          // listView1(),
          // Container(child: Center(child: Text("Second list"),),),
          // listView2()
        ],
      )
    );
  }

  /* 1st list view */
  // making a list view with Containers
  Widget listView1(){
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(20.0),
      children: <Widget>[
        const Text('I\'m dedicating every day to you'),
        const Text('Domestic life was never quite my style'),
        const Text('When you smile, you knock me out, I fall apart'),
        const Text('And I thought I was so smart'),
      ],
    );
  }

  /* 2nd list view */
  Widget listView2(){
    final List<String> entries = <String>['A', 'B', 'C'];
    final List<int> colorCodes = <int>[600, 500, 100];

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      }
    );
  }

/* 3rd list view with images, using a container and in horizontal direction */
  Widget listView3(){
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
      return Container(
          width: 140.0,
          height: 64.0,
          child: Image(image: AssetImage('lib/Assets/laptop.png'))
        );
      }
    );
  }

}