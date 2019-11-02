Widget widget() {
  return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        text_widget('Something'),
        SizedBox(height: 20),
        SizedBox(height: 20),
        button_widget()
      ],
    )
  );
}

// The name of the method is just for the reference
// This describes how we can use Sized Box
// It's used to provide spacing after something


