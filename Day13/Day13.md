TODO
======

## Exercises 

1. Responding to Presses. (Detecting presses in CrimeHolder)
  - Eventually, you will have to launch the detail view for a Crime when the user presses on that Crime in the list. For now, show a Toast when the user takes action on a Crime.

2. RecyclerView ViewTypes
  - For this advanced challenge, you will create two types of rows in your RecyclerView: A normal row and a row for more serious crimes. To implement this, you will work with the view type feature available in RecyclerView.Adapter. Add a new property, mRequiresPolice, to the Crime object and use it to determine which view to load on the CrimeAdapter by implementing the [getItemViewType(int)](https://developer.android.com/reference/android/widget/Adapter.html#getItemViewType(int)) method. 
  In the onCreateViewHolder(ViewGroup, int) method, you will also need to add logic that returns a different ViewHolder based on the new viewType value returned by getItemViewType(int). Use the original layout for crimes that do not require police intervention and a new layout with a streamlined interface containing a button that says "contact police" for crimes that do.


## Readings
* [Recycler View](https://developer.android.com/guide/topics/ui/layout/recyclerview.html)
* [RecyclerView Doc](https://developer.android.com/reference/android/support/v7/widget/RecyclerView.html)
* [Adapter Doc](https://developer.android.com/reference/android/widget/Adapter.html)
* [ListView Tutorial](https://www.tutorialspoint.com/android/android_list_view.htm)

