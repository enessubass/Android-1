# Todo 

## Exercise
* 1. Your first exercise is an easy one. Android's support library provides a class called ShareCompat with an inner class called IntentBuilder. ShareCompat.IntentBuilder makes it a bit easier to build the exact kind of Intent you used for your report button. In mReportButton's onClickListener, use ShareCompat.IntentBuilder to build your Intent instead of doing it by hand.

* 2. Another Implicit Intent
* Instead of sending a crime report, an angry user may prefer a phone confrontation with the suspect. Add a new button that calls the named suspect. You will need the phone number out of the contacts database. This will require you to query another table in the ContactsContract database called CommonDataKinds.Phone. Check out the documentation for ContactsContract and ContactsContract.CommonDataKinds.Phone for more information on how to query for this information.


## Readings

*[Intents and Intent Filters](https://developer.android.com/guide/components/intents-filters.html)

*[Sending the User to Another App](https://developer.android.com/training/basics/intents/sending.html)

*[ContentProvider Basics](https://developer.android.com/guide/topics/providers/content-provider-basics.html)

*[ContentProvider](https://developer.android.com/reference/android/content/ContentProvider.html)

*[PackageManager](https://developer.android.com/reference/android/content/pm/PackageManager.html)

*[ContactsContract.Contacts](https://developer.android.com/reference/android/provider/ContactsContract.Contacts.html)