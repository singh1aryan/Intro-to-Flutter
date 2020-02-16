# All About Flutter
* If you want to know about open source, hackathons, mobile development, personal projects -> this is the right place for you. Documenting Flutter for the community.

## Introduction
* What's Flutter - Cross native platform to build Mobile applications
* Easy to get started, perfect for hackathons, super fast to code!

### Things you need to know before coming here - 
* print() function in any programming language

## Getting started
* This is just a guide to get you started. Flutter has amazing documentation with every widget explained in detail. Just walk through this repository, clone it, and try to see how the Widgets work. Once you feel comfortable with writing the basics, go on to some sample Apps and dive a little more. The next step after that should be to try new and different things with Flutter including Databases, Firebase, Machine learning, Animations and what not!
* Do you know to code? basic coding skills are required, rest can be learnt. 
* Flutter - Framework to make cross platform mobile applications. Write code in DART and make apps for both Android and iOS. It's similar to react native or xamarin but much much better. As a student developer, I've had an amazing time using Flutter, faster development, easier API integration, better UIs, complete documentation, and a lot of support online.
* It's written in DART (programming language) which is very similar to JavaScript. The learning curve is smooth and development process is really really fast. You can learn dart here ->
    * https://dart.dev/tutorials
    * https://hackernoon.com/learn-dart-in-a-week-with-these-free-resources-b892e5265220
    * https://www.tutorialspoint.com/dart_programming/index.htm
* Next part is to download Flutter and get started with it. There are some steps you have to follow which depend on the kind of machine you use (windows/macOS). Some resources for that ->
    * Flutter Crash course - https://www.youtube.com/watch?v=EDlywQeg5Vs
    * Hitesh Choudhary - https://www.youtube.com/watch?v=Xy-qHlaHr6c
* Write your first app here -> https://flutter.dev/docs/get-started/codelab
* First app from Scratch -> https://medium.com/aviabird/flutter-tutorial-how-to-build-an-app-from-scratch-b88d4e0e10d7

### Android, Flutter, react native
* Android Jetpack Compose, the latest way of Android app development is really similar to Flutter and I can see Android code being transformed to Flutter in the coming years. -> https://www.youtube.com/watch?v=dtm2h-_sNDQ
* Android to Flutter -> https://blog.codemagic.io/why-android-developers-should-pay-attention-to-flutter-in-2019/
* Reason to start - https://medium.com/flutter-community/13-reasons-why-you-should-choose-consider-to-move-to-flutter-in-2019-24323ee259c1
* Flutter vs React Native - https://hackernoon.com/react-native-vs-flutter-which-is-preferred-for-you-bba108f808

### Flutter vs Other technologies

#### Flutter vs Android
* For people who already know Android:
* **UI** - Android needs XML integration whereas everything is a Widget in Flutter and can be made in a single file

* **Listeners** No more listeners for onclicks, call the methods, change the state and enjoy the view

* **findView** - No more findViewById() - just do everything inside the Widget(){} and leave the finding to Android

* **Gradle** - No more gradle issues - add dependencies in the pubspec.yaml file and refresh the application to use the new libraries

* **Assets** - Have to be managed separately in Flutter, you have to declare everything you use - For eg: images, fonts. In android, you can simply add it in the file section and use them.

* **Animations** are much much easier and well supported in Flutter - Basic Uses - Eg: Splash activity, Swiping tabs, results, analytics page, navigation

* **Running the app** - Hot reloading in Flutter - just hit 'r' for a reload and 'R' for a restart of the application. Android studio can take upto 20-30 seconds for each reload, and even more if there are gradle issues, which popup every once a while

* **API** - Android APIs can be done with different libraries like Retrofit using GSON whereas fetching in Flutter can be done without any pain. The common Fetch function can be used in Flutter and have async await methods to call the APIs.

* **Recycler/List view** - Recycler View is used in Android to create different lists on a screen. We need an adapter for that which has an interface and we need to know all sorts of different functions to completely implement it. Flutter just has a widget for a ListView where we can define different ListTiles or just add stuff dynamically. Much easier, looks simpler.

* **Learning Curve** - Working in Flutter is easier once you know dart, which is similar to javascript, and understand the basic concepts about Widgets. Android allows you to make layouts with the help of the designer, which can be used to make constraint layouts. Making basic applications are definitely easier to learn in Android but as we go deeper in fragments and other stuff, it starts to get complicated

* **Fragments vs Components(widgets)** - we can simply use the widget component wherever we want unlike the fragments we make in Android, which require some knowledge before hand on how to use Bundle, adapters, xml layouts, and different methods like onCreateView and layoutInflator

* **SQl database** - It's pretty similar in both the technologies. The only difference is that state management can come into place if you're trying to add something consecutively, you would have to store the key in the state and change it using setState(){_key+=1} -> just a use case. The room library in Android is pretty wide used and easy to implement as well

* **Architecture patterns** - Everything boils down to MVP/ MVVM/ MVC in Android, whereas we have BloC and Providers in Flutter, which do something similar to MVC, separating out the business logic by creating sinks and streams

* **Code Editor** - VSCode/Android studio - Flutter and Android studio for android

* **Getting started guide** - Pretty straighforward for Android, download the studio and get started, whereas you have to do a bunch of things for Flutter - can be annoying

**Firebase - Resources for Flutter Firebase:** -
   * https://firebase.google.com/docs/flutter/setup
   * https://flutter.dev/docs/development/data-and-backend/firebase
   * https://www.youtube.com/watch?v=8M-Fa239Hy4
   * https://www.youtube.com/channel/UCFTM1FGjZSkoSPDZgtbp7hA/search?query=firebase
   * https://codelabs.developers.google.com/codelabs/flutter-firebase/#0

* **Firebase connection** - Definitely easier to implement for Flutter, you can do it in 20 lines of code depending on the list view you make. The basics are the same, you need the .json files and have to add it to the firebase console. Coding in Flutter helps you understand it in a much better way. Overall it's similar.

* **Lists + Firebase** - Android has crazy recycler views which make everything so hard, and integrating firebase + recycler view has about 200 articles, and you just cannot master it. There was no way I could've implemented something in Android without a tutorial, but in Flutter, you can always try

* **Fetching, Pushing Data** - Pushing data is also easier in Flutter Firebase, there's literally an onTap() method which allows you to send a snapshot of the data

* **Machine Learning** - Integrating machine learning 
   * https://www.youtube.com/watch?v=vT6gNFE0GBw
   * https://www.youtube.com/watch?v=ymyYUCrJnxU
   * http://flutterdevs.com/blog/machine-learning-in-flutter/
   * https://medium.com/flutterdevs/firebase-ml-kit-in-flutter-part-1-680821924161
   * https://medium.com/flutter-community/flutter-mlkit-8039ec66b6a

#### Flutter vs React-Native

* **UI** - Flutter and RN have a one file system, where you define the rules and UI. I personally like the interface for Flutter apps as it's much more defined. It's also maintained by Google which owns Android and can have a much better integration with Google.

* **Classes** - Flutter uses Widgets for literally everything, from TextViews to TabViews - they're called 'Widgets'. Flutter uses dart, whereas React native uses Typescript or javascript.

* **Components** - RN has components and we have to import them from 'react-native' to use them. Flutter has widgets which can be used in a similar space. Both of them are similar except the styling and the rendering part.

* **Styling** Flutter - inside widgets - so if you want padding => you wrap the widget in Padding() widget with some padding, React Native: you define const style: Stylesheet and add your styles there - similar to the web style where you have css. So react native has css styling whereas Flutter has the 'widget' styling

* **Animations** - Flutter is much easier to grasb, whereas react native has a wider aspect to it

* **Learning Curve** - Similar in React native and Flutter. 

* **Libraries** - npm helps in react native whereas for flutter we just add them to the pubspec.yaml file

* **APIs** - Both of them have a clear vision on using APIs. A good article for RN - https://medium.com/better-programming/handling-api-like-a-boss-in-react-native-364abd92dc3d

* **Code Editor** - VS code is popular for both

* **Getting started** - Personally, it's been really really hard to work with react native on windows. It's much better if you use a mac, but overall that red screen annoys you a lot. Flutter doesn't have the easiest getting started guide, but there is support out there to help you. 

* **Overall** - Both can make cross native apps and I'll choose Flutter anyday - hackathons/quick projects/learn android as well, and React native - web/ learn react.js/  -> if you want to stress yourself :P

## Google Codelabs - https://flutter.dev/docs/codelabs
* The best way to get started is to work with real life applications with some source code in hand
* You download a starter code and then build from there. Start with an easy project, move your way up and change things as you go
* Covers everything from Basic layouts to Google maps or advanced UI

## Everything is a Widget in Flutter
* Practice, practice, and practice. It'll help you!
* Widgets Flutter - https://flutter.dev/docs/reference/widgets

#### Multi-child layout widgets
* Text
* Row - children - Expanded
* Column
* Center
* Container - child, decoration
* Stack
* Tab View, Grid View
* Expanded
* Icon Button
* Raised Button
* Image.asset
* List View, List Tile
* Table
* Wrap

#### Single-child layout widgets
* Slivers
* SliverList
* SliverGrid
* SliverAppBar
* DeMystified

#### Styling
* Padding
* Align 
* Aspect Ratio 
* Baseline - 
* Center
* Constraint Box
* Container
* Fitted Box
* Intrinsic Height, Weight
* Offstage
* Transform

#### Important Diagrams
<img width="550" alt="Screen Shot 2019-10-06 at 10 22 10 PM" src="https://user-images.githubusercontent.com/31454667/66281109-dbf4e700-e887-11e9-9dc0-7d74d4de886f.png">
<img width="550" alt="Screen Shot 2019-10-06 at 10 41 15 PM" src="https://user-images.githubusercontent.com/31454667/66281735-984fac80-e88a-11e9-8563-954c70b8abcd.png">
<img width="550" alt="Screen Shot 2019-10-06 at 10 41 25 PM" src="https://user-images.githubusercontent.com/31454667/66281736-984fac80-e88a-11e9-9967-aef1ccc770c4.png">


### Async/Await with Flutter
* Async, await - 5 video series - https://www.youtube.com/watch?v=vl_AaCgudcY
* Future/Promises - https://medium.com/flutter-community/futures-async-await-threading-in-flutter-baeeab1c1fe3
* Asynchronous Programming - https://dart.dev/codelabs/async-await
* Article - https://codingwithjoe.com/dart-fundamentals-async-await/
* Beginner - https://blog.usejournal.com/flutter-async-beginner-friendly-guide-for-heavy-lifting-operations-cf8ec81833d7
Basic fetch() function: 
```dart
fetch() async {

    var url = "API-HERE";
    var res = await http.get(url);
    var body = jsonDecode(res.body);

    // body is your API body 
}
```

### Machine Learning with Flutter
* Using the ML Kit with Flutter

### Firebase + Flutter
* Firebase auth - login with google or Oauth
* Firebase Firestore - Realtime database
* Firebase push notifications - Notify the user when a new recipe is added
* Firebase analytics - how the app in performing
* Firebase ML kit - built in ml models for text, face recognition

### Accessibility Coding - Flutter vs Android
* Exclude Semantics
* Merge Semantics
* Voice Overs
* Color Combination
* It's much more defined in Android, but definitely coming up in Flutter
* For example: We can add things like ``content description`` to a button, textView etc in Android for voice overs

#### Problems - Flutter issues
* https://github.com/flutter/flutter/issues/27254#issuecomment-461692152
* https://stackoverflow.com/questions/44653261/android-dependency-has-different-version-for-the-compile-and-runtime
* https://medium.com/@silsly/the-gradle-failure-may-have-been-because-of-androidx-incompatibilities-in-this-flutter-app-d9376ee7a07b

### Navigation - Flutter
* Navigation is really easy, and if you know OOPS, then you'll master it in seconds
* You just need to pass in the object and that's it. Pass it everywhere (literally!) - for the basics
* Any data is passed in an Object which can be parsed in the next class

### Firebase Functions - Notifications
* Implemented fully optimized firebase functions and push notifications
* The user is notified in real time when a new item is added to the recipes_list
* Used Node JS and TypeScript to create a firebase function which does this

### Example Widget - Tab Views  - Android vs Flutter
* Again, everything including this is very straightforward in Flutter
* Make a Tab View, fill in the required parameters and you're all set
* Tab Controller, TabBar for the Labels and TabBarView for the actual stuff in each tab
* You could add literally any widget in there - Text, ListView etc
* It's a bit more complex and well defined in Android
* We need view pagers, adapters, and fragments to add a tab view
* We can have different UIs for the fragments, but it's more time consuming to understand and implement

---
### Computer vision ML integration
* We can integrate a machine learning model to predict the food/recipe posted
* We can probably look at a dataset of recipes and predict if it's going on the right path
* Merging the ML code soon!
---

### BloC pattern
https://steemit.com/utopian-io/@tensor/advanced-flutter-project---best-practices---generic-bloc-providers---part-three

### Open source Flutter Apps
* Open source projects - thttps://github.com/tortuvshin/open-source-flutter-apps
* Flutter sample Apps - https://github.com/flutter/samples
* Example Apps - https://github.com/iampawan/FlutterExampleApps
* Recipe - https://github.com/bimsina/recipes
* Dashboard - https://github.com/Ivaskuu/dashboard
* Cryptocurrency - https://github.com/KarimElghamry/cryptoholic
* Awesome Flutter - https://github.com/Solido/awesome-flutter
* Flutter charts - https://github.com/whatsupcoders/flutter-chart-firestore
* Flutter UI kit - https://github.com/iampawan/Flutter-UI-Kit
* Charts - https://github.com/imaNNeoFighT/fl_chart
* Different UI Screens - https://github.com/samarthagarwal/FlutterScreens
* EGame Book - https://github.com/filiph/egamebook
* Catalog - https://github.com/X-Wei/flutter_catalog

### Awesome GitHub people
* Flutter - https://github.com/flutter
* Pawan Kumar - https://github.com/iampawan
* Filip Hracek - https://github.com/filiph
* Google Global Dart Hackathon Prague - https://github.com/DartHackPrague
* Jana Moudrá - https://github.com/Janamou

### Other resources
* Medium - https://medium.com/flutter
* Alligator - https://alligator.io/flutter/
* Fireship - https://fireship.io/
* Best Open source apps - https://itsallwidgets.com/
* A Searchable List of Flutter Resources - https://flutterx.com/

# Different Code snippets -> Beginner - Intermediate - Advanced

## Basic class layout 
```dart
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: PrimaryColor),//add-your-color here || or remove this
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column()
    );
}
```

## Simple widgets -> widgets folder in lib

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

# APIs - Flutter

## Simple API fetch function
```dart
fetch() async {

    var url = "API-HERE";
    var res = await http.get(url);
    var body = jsonDecode(res.body);

    // body is your API body 
}
```
## Parsing API - Eg: staggered tile
```dart
for(int i=0;i<body[0]['staggered_tiles'].length;i++){
    _staggeredTiles.add(new StaggeredTile.count(
      body[0]['staggered_tiles'][i]['cross_axis'],// body is what we get from the API
      body[0]['staggered_tiles'][i]['main_axis']// body is what we get from the API
    ));
}     

```
## Parsing 2 APIs in one - Eg: pager view 
```dart
if (body[i][0]['type'] == 'donut') {
        List<LabelPieSales> _d = [];
        for (int j = 0; j < body[i][0]['data'].length; j++) {
          _d.add(new LabelPieSales(
              body[i][0]['data'][j]['year'], body[i][0]['data'][j]['sales']));// body is what we get from the API
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
              body[i][0]['data'][j]['year'], body[i][0]['data'][j]['sales']));// body is what we get from the API
        }
        _wid_top.add(new Container(
          height: 200,
          width: 200,
          child: SimpleBarChart.withSampleData(_d),
        ));
      }
```
## API with Notifier - Eg: real time interaction with buttons and API
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
# SQL database + Flutter

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

## Web views for Flutter - Eg: Displaying websites inside your app
```dart
launchUrl() {
    setState(() {
      urlString = controller.text;
      flutterWebviewPlugin.reloadUrl(urlString);
    });
  }
```
---
## Class Layouts
```dart
class News{
  String dateAdded;
  String title;
  String body;
  String level;
  String category;

  News(this.dateAdded, this.title, this.body, this.level, this.category);

}

class Record {
  final String name;
  final int votes;
  final DocumentReference reference;

  Record.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['votes'] != null),
        name = map['name'],
        votes = map['votes'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$votes>";
}
```

## Height and Width of screen
```dart
double _height = MediaQuery.of(context).size.height;
double _width = MediaQuery.of(context).size.width;
```

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
# Firebase stuff: 

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
---

## Firebase Firestore
```dart
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Recipes for you')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('recipes').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        return _buildList(context, snapshot.data.documents);
      },
    );
  }
```
---

## Intgerating Asymmetric view with Firestore
* Google Codelabs gave me the Asymmetric view, and I wanted to combine it with Firestore
* It's definitely tricky as you can show data directly from the Firestore to a Listview, but you can store it and send the whole list to another class
*   ```
    List<Recipe> recipe_list = [];
    //    snapshot.map((data) => recipeList(context, data).toList());
    for(int i=0;i<snapshot.length;i++){
      Recipe recipe = Recipe.fromSnapshot(snapshot[i]);
      recipe_list.add(recipe);
    }
    return AsymmetricView(products: recipe_list,);
    ```

## Apps
### Practice by making these Apps
* API: News, Movies, Restaurants
* Social Media: Blogs, Recipes
* Games: Tic-Tac-Toe, Minesweeper, Guessing Cards, 2048, 15
* Animations: Tinder cards, Sliding, Modals, Rainfall, Pizza maker, Payment System 
* Simple: Todo, Navigation, Login, Drawers
* UI: Dashboard, Payment system, Shopping, Recipe design
* Machine learning: Text to Speech, Computer vision, Chatbots
---

## NATIVE DEVELOPMENT
* So if you're coding in react native or flutter and want to use a 3rd party library such as arcgis-maps for the Map component in your app, you would have to make a bridge between the UI and the native side of the development - which means that the specific API or library would've to be coded separately in ios and android with the specific documentation for each.
* More coming on this.

## Hackathons

### Why to use Flutter?
* Quick API integration - fetching, parsing, using
* Using Networking, web sockets, chatting features
* Using Open Source material design for interactive UI
* Take advantage of Open source projects - for UI
* Firebase quick integration - notification, login, database
* Machine learning kit powered by Firebase - MLKit
* Computer vision library by MLKit

## Useful Blog posts 
* https://medium.com/better-programming/lessons-learned-migrating-a-production-app-to-flutter-78195067b2cb
* https://fireship.io/courses/flutter-firebase/
* https://medium.com/flutter-community/working-with-multi-dimensional-list-in-dart-78ff332430a
* https://alligator.io/flutter/flutter-http/
* https://alligator.io/flutter/bar-charts/
* https://medium.com/flutter-community/flutter-context-and-of-method-110409311517
* https://medium.com/flutter-community/flutter-app-navigation-state-and-menu-pattern-using-bloc-d5a42be941b2
* 

# Important!
* Feel free to make a pull request if you find something wrong/ can be improved
* Don't forget to star or fork the repo, I add things every once a while

<!-- ### Screenshots - Apps you can make!
Some of them are taken from other sources..
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

</div> -->
