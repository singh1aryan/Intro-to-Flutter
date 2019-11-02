Widget widget(){
  return Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: new Row(children: <Widget>[
        Expanded(
          child: RaisedButton(// This is what we're talking about
            child: Text("Some text"),
            onPressed: () {}
          ),
        ),
        Expanded(
          child: RaisedButton(// This is what we're talking about
            child: Text("Some text"),
            onPressed: () {}
          ),
        )
      ]),
    )
  );
}


// Raised Button
// You can see the animation of a button click when you click
// This can go under any container like widget like Center, Container, Expanded, Flexible or as a child in Row or Column