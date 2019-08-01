# Easy Recipe
* Simple Recipe App with a twist
* Computer ML detects things in your uploaded picture and gives some info on that, maybe an automatic search?
* You also get a youtube search integrated inside the app, so you can search for videos instantly and see what to make, and add it to your private repo

### Features
* Login through firebase
* Look at Recipes from other people
* Like, share or comment on them
* Add your own recipes
* Use them and make food for friends - Don't be lazy

---
### Firebase + Flutter
* Firebase auth - simple login
* Firebase Firestore - Realtime database
* Firebase push notifications - Notify the user accordingly
* Firebase analytics - how your app in performing
* Firebase ML kit - use tensor flow or built in models for latest features


#### Problems
* https://github.com/flutter/flutter/issues/27254#issuecomment-461692152
* https://stackoverflow.com/questions/44653261/android-dependency-has-different-version-for-the-compile-and-runtime
* https://medium.com/@silsly/the-gradle-failure-may-have-been-because-of-androidx-incompatibilities-in-this-flutter-app-d9376ee7a07b

#### Android vs Flutter - firebase
* Firebase is definitely easier to implement for Flutter, you can do it in 20 lines of code depending on the list view you make
* Android has crazy recycler views which make everything so hard, and integrating firebase + recycler view has about 200 articles, and you just cannot master it
* Pushing data is also easier in Firebase, there's literally an onTap() method which allows you to send a snapshot of the data

---
### Computer Vision ML Kit
Coming soon

### Intgerating Asymmetric view with Firestore
* Google Codelabs gave me the Asymmetric view, and I wanted to combine it with Firestore
* It's definitely tricky as you can show data directly from the Firestore to a Listview, but it's a little tricky to store it and send the whole list to another class
* How I did it? I would suggest you to try it, it'll take probably 10 minutes, but you'll love it
*   ```
    List<Recipe> recipe_list = [];
    //    snapshot.map((data) => recipeList(context, data).toList());
    for(int i=0;i<snapshot.length;i++){
      Recipe recipe = Recipe.fromSnapshot(snapshot[i]);
      recipe_list.add(recipe);
    }
    return AsymmetricView(products: recipe_list,);
    ```

### Navigation to another screen
* Navigation is really easy, and if you know OOPS, then you'll master it in seconds
* You just need to pass in the object and that's it. Pass it everywhere (literally!)

### Firebase Functions - Notifications
* Implemented fully optimized firebase functions and push notifications
* The user is notified in real time when a new item is added to the recipes_list
* Used Node JS and TypeScript to create a firebase function which does this

### New things I realized
* setting the state - only stateful widgets
* have a counter? new items? adding something new with a new id? - use setState(){}
* How to fetch data from alert dialog? - navigate to the screen back along with the object, instead of navigate.pop()

### Tab Views in Flutter
* Again, everything including this is very straightforward in Flutter
* Make a Tab View, fill in the required parameters and you're all set
* Tab Controller, TabBar for the Labels and TabBarView for the actual stuff in each tab
* You could add any widget in there - Text, ListView etc

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
</div>
