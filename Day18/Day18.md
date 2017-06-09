TODO
======

## Exercises & ToDo 

1. Efficient RecyclerView Reloading
- The notifyDataSetChanged method on your adapter is a handy way to ask the RecyclerView to reload all of the items that are currently visible. The use of this method in our app is inefficient because at most on Crime will have changed when returning to the CrimeListFragment. Use the RecyclerView.Adapter's notifyItemChanged(int) method to reload a single item in the list. Modifying the code to call that method is easy. You just have to find which position has changed and reload the correct item.

2. Improving Our Model Performance.
- CrimeLab's getCrime(UUID id) method works, but checking each crime's ID against the ID that you are looking for one at a time can be imporved. Improve the performance of the lookup, making sure that our existing behaviour remains unchanged as you refactor.


## Readings

* [notifyItemChanged](https://developer.android.com/reference/android/support/v7/widget/RecyclerView.Adapter.html#notifyItemChanged(int))

* [UUID Android](https://developer.android.com/reference/java/util/UUID.html)






