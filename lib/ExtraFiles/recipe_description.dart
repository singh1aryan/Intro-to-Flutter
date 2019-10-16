import 'package:flutter/material.dart';
import 'model/recipe.dart';
import 'widget/recipe_title.dart';

class RecipeDescription extends StatelessWidget{
  final Recipe recipe;
  RecipeDescription(this.recipe);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(recipe),
    );
  }
}

class Home extends StatefulWidget{
  final Recipe recipe;
  Home(this.recipe);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState(recipe);
  }
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    // "Unmount" the controllers:
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  TabController _tabController;
  ScrollController _scrollController;

  final Recipe recipe;
  _HomeState(this.recipe);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerViewIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      aspectRatio: 16.0 / 9.0,
                      child: Image.network(
                        widget.recipe.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    RecipeTitle(recipe, 15.0)
                  ],
                ),
              ),
              expandedHeight: 340.0,
              pinned: true,
              floating: true,
              elevation: 2.0,
              forceElevated: innerViewIsScrolled,
              bottom: TabBar(
                labelColor: Colors.brown,
                labelStyle: TextStyle(color: Colors.brown),
                tabs: <Widget>[
                  Tab(text: 'Preparation'),
                  Tab(text: "Comments"),
                ],
                controller: _tabController,
              ),
            )
          ];
        },
        body: TabBarView(
          children: <Widget>[
            IngredientsView(widget.recipe.comments),
            PreparationView(widget.recipe.comments),
          ],
          controller: _tabController,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(
          Icons.favorite_border,
          color: Theme.of(context).iconTheme.color,
        ),
        elevation: 2.0,
        backgroundColor: Colors.white,
      ),
    );
  }
}

class IngredientsView extends StatelessWidget {
  final List<String> ingredients;
  IngredientsView(this.ingredients);

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List<Widget>();
    ingredients.forEach((item) {
      children.add(
        new Row(
          children: <Widget>[
            new Icon(Icons.done),
            new SizedBox(width: 5.0),
            new Text(item),
          ],
        ),
      );
      // Add spacing between the lines:
      children.add(
        new SizedBox(
          height: 5.0,
        ),
      );
    });
    return ListView(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 75.0),
      children: children,
    );
  }
}

class PreparationView extends StatelessWidget {
  final List<String> preparationSteps;

  PreparationView(this.preparationSteps);

  @override
  Widget build(BuildContext context) {
    List<Widget> textElements = List<Widget>();
    preparationSteps.forEach((item) {
      textElements.add(
        new Row(
          children: <Widget>[
            new Icon(Icons.comment),
            new SizedBox(width: 5.0),
            new Text(
              item,
              maxLines: 1,
            ),
          ],
        ),
      );
      // Add spacing between the lines:
      textElements.add(
        SizedBox(
          height: 10.0,
        ),
      );
    });
    return ListView(
      padding: EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 75.0),
      children: textElements,
    );
  }
}