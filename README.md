# Flutter, APIs, Firebase

## Introduction
* What's Flutter - Cross native platform to build Mobile applications

### Fly with Flutter
* Open source projects - thttps://github.com/tortuvshin/open-source-flutter-apps
* Github links - https://github.com/iampawan/FlutterExampleApps
* Reason to start - https://medium.com/flutter-community/13-reasons-why-you-should-choose-consider-to-move-to-flutter-in-2019-24323ee259c1
* Flutter vs React Native - https://hackernoon.com/react-native-vs-flutter-which-is-preferred-for-you-bba108f808

### How to start Flutter?
* Start with reading the Beginner guide - https://flutter.dev/docs/get-started/install
* Follow https://github.com/iampawan - Flutter Google Developer Expert - Lots of open source for Flutter
* Google Codelabs - https://codelabs.developers.google.com/codelabs/flutter-firebase/#0 - Amazing Resource
* Youtube channel - https://www.youtube.com/channel/UCwXdFgeE9KYzlDdR7TG9cMw

Everything is a widget in FLutter, whether it's a text view or a button or even a tab view. So let's get started with Flutter widgets
### Flutter Widgets - Complete UI Guide
* Guide - https://flutter.dev/docs/development/ui/layout
* Scaffold
* Material App

#### Widgets + Children
* Text
* Row - children - Expanded
* Column
* Center
* Container - child, decoration
* Stack
* Expanded
* Icon Button
* Raised Button
* Image.asset
* Icon

#### Styling
* Padding


### Async/Await with Flutter
* Async, await - 5 video series - https://www.youtube.com/watch?v=vl_AaCgudcY
* Future/Promises - https://medium.com/flutter-community/futures-async-await-threading-in-flutter-baeeab1c1fe3
* Asynchronous Programming - https://dart.dev/codelabs/async-await
* Article - https://codingwithjoe.com/dart-fundamentals-async-await/
* Beginner - https://blog.usejournal.com/flutter-async-beginner-friendly-guide-for-heavy-lifting-operations-cf8ec81833d7

### BloC pattern Flutter
* Coming soon

### Machine Learning with Flutter
* Using the ML Kit with Flutter

### Firebase + Flutter
* Firebase auth - login with google or Oauth
* Firebase Firestore - Realtime database
* Firebase push notifications - Notify the user when a new recipe is added
* Firebase analytics - how the app in performing
* Firebase ML kit - built in ml models for text, face recognition

#### Problems - Flutter issues
* https://github.com/flutter/flutter/issues/27254#issuecomment-461692152
* https://stackoverflow.com/questions/44653261/android-dependency-has-different-version-for-the-compile-and-runtime
* https://medium.com/@silsly/the-gradle-failure-may-have-been-because-of-androidx-incompatibilities-in-this-flutter-app-d9376ee7a07b

### Android vs Flutter - Firebase
* Firebase is definitely easier to implement for Flutter, you can do it in 20 lines of code depending on the list view you make
* Android has crazy recycler views which make everything so hard, and integrating firebase + recycler view has about 200 articles, and you just cannot master it
* Pushing data is also easier in Firebase, there's literally an onTap() method which allows you to send a snapshot of the data

### Navigation - Flutter
* Navigation is really easy, and if you know OOPS, then you'll master it in seconds
* You just need to pass in the object and that's it. Pass it everywhere (literally!) - for the basics
* Any data is passed in an Object which can be parsed in the next class

### Firebase Functions - Notifications
* Implemented fully optimized firebase functions and push notifications
* The user is notified in real time when a new item is added to the recipes_list
* Used Node JS and TypeScript to create a firebase function which does this

### Tab Views in Flutter
* Again, everything including this is very straightforward in Flutter
* Make a Tab View, fill in the required parameters and you're all set
* Tab Controller, TabBar for the Labels and TabBarView for the actual stuff in each tab
* You could add any widget in there - Text, ListView etc

### UI - Flutter vs React-Native vs Android
* Android works with XML layouts, so that's in a separate file and much more readable in a sense
* Flutter and RN have a one file system, where you define the rules and UI
* Flutter uses Widgets for literally everything, from TextViews to TabViews - they're called 'Widgets'.
* RN has components and we have to import them from 'react-native' to use them
* Styling: Android - Using XML, Flutter - inside widgets - so if you want padding => you wrap the widget in Padding() widget with some padding, RN: you define const style: Stylesheet and add your styles there - similar to the web style where you have css
* Animations: Android and RN is complicated for Animations, Flutter is very straightforward
* Clean UI: All three can be used, but for static or single/simple pages - Android works out the fastest
* What's the best? I would say all 3, so start learning ASAP

### New points for learning - Flutter
* Setting the state - only stateful widgets
* Have a counter? new items? adding something new with a new id? - use setState(){}
* How to fetch data from alert dialog? - navigate to the screen back along with the object, instead of navigate.pop()

---
### Computer vision ML integration
* We can integrate a machine learning model to predict the food/recipe posted
* We can probably look at a dataset of recipes and predict if it's going on the right path
* Merging the ML code soon!
---

# Different Code snippets -> Beginner - Intermediate - Advanced

## Using conditionals with Flutter
```dart
child: users.length <= 0
            ? Center(
                child: EmptyState(
                  title: 'Oops',
                  message: 'Add form by tapping add button below',
                ),
              )
            : ListView.builder(
                addAutomaticKeepAlives: true,
                itemCount: users.length,
                itemBuilder: (_, i) => users[i],
              ),
      )
```
## Parsing API - adding info from API to list
```dart
for(int i=0;i<body[0]['staggered_tiles'].length;i++){
    _staggeredTiles.add(new StaggeredTile.count(
      body[0]['staggered_tiles'][i]['cross_axis'],
      body[0]['staggered_tiles'][i]['main_axis']
    ));
}     
```

## Making a global class for all graphs/charts
```dart
class LabelPieSales {
  final int year;
  final int sales;

  LabelPieSales(this.year, this.sales);
}
```

## Intgerating Asymmetric view with Firestore
* Google Codelabs gave me the Asymmetric view, and I wanted to combine it with Firestore
* It's definitely tricky as you can show data directly from the Firestore to a Listview, but it's a little tricky to store it and send the whole list to another class
* Try it first, and then come back to this code!
*   ```
    List<Recipe> recipe_list = [];
    //    snapshot.map((data) => recipeList(context, data).toList());
    for(int i=0;i<snapshot.length;i++){
      Recipe recipe = Recipe.fromSnapshot(snapshot[i]);
      recipe_list.add(recipe);
    }
    return AsymmetricView(products: recipe_list,);
    ```
                                        
## Changing constructors of Graphs/charts generic classes
```dart
factory SimpleBarChart.withSampleData(List<LabelPieSales> data) {
    return new SimpleBarChart(
      _createSampleData(data),
      // Disable animations for image tests.
      animate: false,
    );
  }
```

## Web views for Flutter - Eg: Displaying websites inside your app
```dart
launchUrl() {
    setState(() {
      urlString = controller.text;
      flutterWebviewPlugin.reloadUrl(urlString);
    });
  }
```
## Firebase Function- Eg: push notifications
```dart
export const sendToTopic = functions.firestore
    .document('recipes/{recipyId}')
    .onCreate(async snapshot => {
        // const recipe = snapshot.data();
        const payload : admin.messaging.MessagingPayload = {
            notification: {
                title: 'new recipe added, check it out',
                body: 'Make it and eat it'
            }
        };

        return fcm.sendToTopic('recipes', payload);
    });
```
## Parsing 2 APIs in one - Eg: pager view 
```dart
if (body[i][0]['type'] == 'donut') {
        List<LabelPieSales> _d = [];
        for (int j = 0; j < body[i][0]['data'].length; j++) {
          _d.add(new LabelPieSales(
              body[i][0]['data'][j]['year'], body[i][0]['data'][j]['sales']));
        }
        _wid_top.add(new Container(
          height: 200,
          width: 200,
          child: DonutChartWidget.withSampleData(_d),
        ));
      }
      else if (body[i][0]['type'] == 'label-pie') {
        List<LabelPieSales> _d = [];
        for (int j = 0; j < body[i][0]['data'].length; j++) {
          _d.add(new LabelPieSales(
              body[i][0]['data'][j]['year'], body[i][0]['data'][j]['sales']));
        }
        _wid_top.add(new Container(
          height: 200,
          width: 200,
          child: SimpleBarChart.withSampleData(_d),
        ));
      }
```

## Basic class layout 
```dart
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

class _HomeState extends State<Home>{}
```

## Notifier - Eg: real time interaction with buttons and API
```dart
return Container(
      padding: const EdgeInsets.all(4.0),
      child: appState.isFetching
          ? CircularProgressIndicator()
          : appState.getResponseJson() != null
          ? ListView.builder(
              primary: false,
              shrinkWrap: true,
              itemCount: appState.getResponseJson().length,
              itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  width: 100,
                  child: graph(appState.getResponseJson()),
                );
              },
            )
          : Text("Press Button above to fetch data"),
    );
```

## State management - Eg: adding new objects in SQL database
``` dart
floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          Dog dog = new Dog(id: _id, name: "name",age: 22);
          await insertDog(dog);
          setState(() {
            _id += 1;
          });
        },
      ),
```

## Comparing SQL and API stuff - making a local push notification
``` dart
List<Graph> graphs_sql = await graphs();
            List<String> graphs_sql_types = [];
            for(int i=0;i<graphs_sql.length;i++){
              graphs_sql_types.add(graphs_sql[i].type);
            }
            if (graphs_sql.length != _types.length) {
              for (int i = 0; i < _types.length; i++) {
                if(!graphs_sql_types.contains(_types[i])){ // add only if a new type
                  await insertGraph(new Graph(id: i, type: _types[i]));
                }
              }
            }
```
---

## Initializing SQL database 
``` dart
initDB() async {
  return await openDatabase(
    join(await getDatabasesPath(), 'graphs_database.db'),
    onCreate: (db, version) {
      return db.execute(
        "CREATE TABLE graphs(id INTEGER PRIMARY KEY, type TEXT)",
      );
    },
    version: 1,
  );
}
```

---

## Fetching code from API - Frontend backend interaction
```dart
fetch() async {

    var url = "API-HERE";
    var res = await http.get(url);
    var body = jsonDecode(res.body);

    // body is your API body 
}
```
---

## Staggered tiles
```dart
Scaffold(
        body: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: StaggeredGridView.count(
                crossAxisCount: 3,
                staggeredTiles: _staggeredTiles,
                children: _tiles,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
                padding: const EdgeInsets.all(4.0),
              ),
            )
    )

```
---

## A simple Model class
```dart
class News{
  String dateAdded;
  String title;
  String body;
  String level;
  String category;

  News(this.dateAdded, this.title, this.body, this.level, this.category);

}
```
---

## Sort of column inside a scroll view - Eg: Horizontal listviews in a column
```dart
return Container(
      height: _height,
      width: _width,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            widget(),
            widget(),
            widget(),
            widget(),
          ],
        ),
      ),
    )
```
---
## Height and Width of screen
```dart
double _height = MediaQuery.of(context).size.height;
double _width = MediaQuery.of(context).size.width;
```
---

## init state - initialize any lists/images for the screen
```dart
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _image = {url};
    localList1 = globalList1;
    localList1 = globalList2;
    }
```
---

## SQL - fetching stuff - can we only fetch in async functions?
```dart
fetch() async{
    final List<Product> productList = await products(); 
  }
```
---
# Apps made
## Easy Recipe
* Simple Recipe App with a twist
* Computer ML detects things in your uploaded picture and gives some info on that, maybe an automatic search or maybe a score?
* You also get a youtube search integrated inside the app, so you can search for videos instantly and see what to make, and add it to your private repo
### Features
* Login through firebase
* Look at Recipes from other people
* Like, share or comment on them
* Add your own recipes
* Use them and make food for friends - Don't be lazy

## Tech News - News API

---
### Screenshots - From the very beginning
<div>
<img width="200" alt="ss1" src="https://user-images.githubusercontent.com/31454667/61903008-b723e100-aee0-11e9-8bb1-99e9ece6114a.PNG">
<img width="200" alt="ss2" src="https://user-images.githubusercontent.com/31454667/61902925-8348bb80-aee0-11e9-97f5-c0c78b2b2d54.PNG">
<img width="200" alt="ss3" src="https://user-images.githubusercontent.com/31454667/61902932-880d6f80-aee0-11e9-8f27-b87dc4d27fdc.PNG">
<img width="200" alt="ss4" src="https://user-images.githubusercontent.com/31454667/61902938-8c398d00-aee0-11e9-998f-3a0aafb7d655.PNG">
<img width="200" alt="ss5" src="https://user-images.githubusercontent.com/31454667/61902949-92c80480-aee0-11e9-8656-495c526ce05a.PNG">
<img width="200" alt="ss6" src="https://user-images.githubusercontent.com/31454667/61902955-978cb880-aee0-11e9-8207-56db2c2e8d01.PNG">
<img width="200" alt="ss7" src="https://user-images.githubusercontent.com/31454667/61979767-ff5f0400-afb1-11e9-9723-fbc0d4bbda10.PNG">
<img width="200" alt="ss8" src="https://user-images.githubusercontent.com/31454667/61979770-04bc4e80-afb2-11e9-8ff2-e493902a6707.PNG">
<img width="200" alt="ss9" src="https://user-images.githubusercontent.com/31454667/62085491-f58b0a00-b218-11e9-8e66-b162ab232571.PNG">
<img width="200" alt="ss10" src="https://user-images.githubusercontent.com/31454667/62085492-f58b0a00-b218-11e9-8afb-3a48eabebd1a.PNG">
<img width="200" alt="ss11" src="https://user-images.githubusercontent.com/31454667/62345258-e7eeb200-b4ae-11e9-889c-f3a982191244.PNG">
<img width="200" alt="ss1" src="https://user-images.githubusercontent.com/31454667/61551815-6bba9000-aa13-11e9-8d05-5c134eafb1e8.PNG">
<img width="200" alt="ss3" src="https://user-images.githubusercontent.com/31454667/61551752-4168d280-aa13-11e9-8c4b-97a1997f6e0a.PNG">
<img width="200" alt="ss2" src="https://user-images.githubusercontent.com/31454667/61551761-4af23a80-aa13-11e9-817e-9b6088145777.PNG">
<img width="200" alt="Screen Shot 2019-10-03 at 9 44 44 PM" src="https://user-images.githubusercontent.com/31454667/66258430-3a7c7100-e773-11e9-91e1-3a8c38f7d198.png">
<img width="200" alt="Screen Shot 2019-10-04 at 1 36 06 PM" src="https://user-images.githubusercontent.com/31454667/66258431-3a7c7100-e773-11e9-9273-32556a9eef54.png">

</div>
