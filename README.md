# Easy Recipe
* Simple Recipe App with a twist
* Computer ML detects things in your uploaded picture and gives some info on that, maybe an automatic search?
* You also get a youtube search integrated inside the app, so you can search for videos instantly and see what to make, and add it to your private repo

---
### Firebase + Flutter

#### Problems
* There are a lot of errors with the firebase integration, we keep getting weird Dex errors and Google should fix this soon
* There is a lengthy solution for that on github issues, by migrating to AndroidX and then changing some files
* You have to open the project in android studio, then do stuff, definitely a pain

#### Android vs Flutter - firebase
* Firebase is definitely easier to implement for Flutter, you can do it in 20 lines of code depending on the list view you make
* Android has crazy recycler views which make everything so hard, and integrating firebase + recycler view has about 200 articles, and you just cannot master it
* Pushing data is also easier in Firebase, there's literally an onTap() method which allows you to send a snapshot of the data

---
### Computer Vision ML Kit

### Todo
1. ~~Load recipes~~
2. youtube API
3. Text detection for images
