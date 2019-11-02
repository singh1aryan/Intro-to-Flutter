Widget widget(){
  return Center(
    child: Padding(
      padding: EdgeInsets.all(10.0),
      child: new Row(children: <Widget>[
        Expanded(// This is what we're talking about
          child: RaisedButton(
            child: Text("Some text"),
            onPressed: () {}
          ),
        ),
        Expanded(// This is what we're talking about
          child: RaisedButton(
            child: Text("Some text"),
            onPressed: () {}
          ),
        )
      ]),
    )
  );
}


// In rows - space buttons equaly
// In android -> same as using weight=1 inside the layout
// Can have buttons or texts inside the Widget