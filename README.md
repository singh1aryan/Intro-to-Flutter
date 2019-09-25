# Easy Recipe
* Simple Recipe App with a twist
* Computer ML detects things in your uploaded picture and gives some info on that, maybe an automatic search or maybe a score?
* You also get a youtube search integrated inside the app, so you can search for videos instantly and see what to make, and add it to your private repo

### Features
* Login through firebase
* Look at Recipes from other people
* Like, share or comment on them
* Add your own recipes
* Use them and make food for friends - Don't be lazy

---
# Flutter 
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

### Android vs Flutter - firebase
* Firebase is definitely easier to implement for Flutter, you can do it in 20 lines of code depending on the list view you make
* Android has crazy recycler views which make everything so hard, and integrating firebase + recycler view has about 200 articles, and you just cannot master it
* Pushing data is also easier in Firebase, there's literally an onTap() method which allows you to send a snapshot of the data

### Intgerating Asymmetric view with Firestore
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
</div>
