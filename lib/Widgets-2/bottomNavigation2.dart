Widget widget() {
  // TODO: implement build
  return Scaffold(
    body: Center(
      //!Something here
    ),
    bottomNavigationBar: BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(color: Colors.grey.withAlpha(200))]),
        height: 50.0,
        child: Center(
              child: Text(
                'Finish',
                style: TextStyle(fontSize: 20.0, color: Colors.orangeAccent),
              )),
      )),
  );
}