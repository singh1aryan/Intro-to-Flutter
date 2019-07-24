import 'package:flutter/material.dart';
import 'home.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: BottomNavigation(),
    );
  }

}

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>{
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    Home(),
    Home()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.video_label),
            title: new Text('Recipes'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.camera),
            title: new Text('Add'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              title: Text('Youtube')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
}