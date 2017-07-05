## Using the AppCompat Library
 
* Add the AppCompat dependency
* Use one of the AppCompat themes
* Make sure that all activities are a subclass of AppCompatActivity
 
## Creating the menu
* Activity(method)
OnCreateOptionsMenu(Menu)
* Fragment (method)
onCreateOptionsMenu(Menu, MenuInflater)
onOptionsItemSelected(MenuItem)
 

The FragmentManager is responsible for calling onCreateOptionsMenu(Menu, MenuInflater) when the activity receives its onCreateOptionsMenu callback from the OS. We have to explicitly tell the FragmentManager that our fragment should receive a call to onCreateOptionMenu by calling the method setHasOptionsMenu in onCreate to let the FragmentManager know that CrimeListFragment needs to receive the menu callbacks.
 
 
 
# Exercise
## Deleting Crimes
* Add a new action item to the CrimeFragment that allows users to delete the current crime. Once the user presses the new delete item, we have to pop the user back to the previous activity. ( finish() method on the CrimeFragment’s hosting activity )
 
## An Empty View for the RecyclerView
* Display a message “There are no crimes” and add a button to the view that will trigger the creation of a new crime.
 
* Use the setVisibility method that exists on any View class to show and hide this new placeholder view when appropriate.