Widget widget() {
  return Scaffold(
    body: Center(// This is what we're talking about
      child: Container(
          padding: EdgeInsets.all(16.0),
            child: Widget()// this can be another widget here
        ),
    )
  )
}

// The name of the method is just for the reference
// This describes how we can use Center
// It's used to have something inside it - like text, buttons, rows, or some other weird widget
// It automatically goes to the center of the parent widget - so here it goes in the center of the screen
