TODO
======

## Exercises
1. Creating a new activity (your second activity). 

2. AndroidManifest & Intent (Reading)

- You will learn how to:
* Create a new activity and a new layout for it.
* Start an activity from another activity. Starting an activity means asking the OS to create an activity instance and call its onCreate(Bundle) method.
* Pass data between the parent(starting) activity and the child(started) activity.

## Steps
1. Create a new CheatButton in your QuizActivity. (xml)
2. Create a new blank Activity called CheatActivity.
3. Design the layout of CheatActivity (LinearLayout -> TextView, TextView(Answer: tools:text instead of android:text in xml), Button)
4. onClick for cheatButton -> create an intent with an extra boolean information of current question's answer -> start CheatActivity with the intent!
5. In your CheatActivity you have to get the intent's extra (boolean) to display the answer in the textView.
6. Instead of "startActivity()", use startActivityForResult(Intent intent, int requestCode) to get the information from the CheatActivity (whether user cheated or not).
7. Display correct Toast! (Correct / Incorrect / Cheating is wrong!)


## Readings
* [Android App Manifest](https://developer.android.com/guide/topics/manifest/manifest-intro.html)
* [Android Intents & Filters](https://developer.android.com/guide/components/intents-filters.html)
* [Android Intent Doc](https://developer.android.com/reference/android/content/Intent.html)
* [Android Intent Tutorial](http://www.vogella.com/tutorials/AndroidIntent/article.html)
* [Getting a Result from an Activity](https://developer.android.com/training/basics/intents/result.html)
