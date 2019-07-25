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
Coming soon

### Screenshots - From the very beginning
<div>
<img width="200" alt="ss1" src="https://user-images.githubusercontent.com/31454667/61903008-b723e100-aee0-11e9-8bb1-99e9ece6114a.PNG">
<img width="200" alt="ss2" src="https://user-images.githubusercontent.com/31454667/61902925-8348bb80-aee0-11e9-97f5-c0c78b2b2d54.PNG">
<img width="200" alt="ss3" src="https://user-images.githubusercontent.com/31454667/61902932-880d6f80-aee0-11e9-8f27-b87dc4d27fdc.PNG">
<img width="200" alt="ss4" src="https://user-images.githubusercontent.com/31454667/61902938-8c398d00-aee0-11e9-998f-3a0aafb7d655.PNG">
<img width="200" alt="ss5" src="https://user-images.githubusercontent.com/31454667/61902949-92c80480-aee0-11e9-8656-495c526ce05a.PNG">
<img width="200" alt="ss6" src="https://user-images.githubusercontent.com/31454667/61902955-978cb880-aee0-11e9-8207-56db2c2e8d01.PNG">
</div>


### Todo
1. ~~Load recipes~~
2. youtube API
3. Text detection for images
