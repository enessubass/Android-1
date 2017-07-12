# Todo 

## Assignment Due July 14
1. Detail Display

While you can certainly see the image you display here, you cannot see it very well.
For this assignment, create a new DialogFragment that displays a zoomed-in version of you crime photo. When you press on the thumbnail, it should pull up the zoomed-in DialogFragment.

2. Efficient Thumbnail Load

In our app, we had to use an estimate of the size we should scale dowm to. This is not ideal, but it works and is quick to implement. 
With the out-of-the-box APIs, you can use a tool called ViewTreeObserver, an object that you can get from any view in your Activity's hierarchy:

```	ex) ViewObserver obserber = mImageView.getViewTreeObserver();```	

You can register a variety of listeners on a ViewTreeObserver, including OnGlobalLayoutListener. This listener fires an event whenever a layout pass happens.

For this assignment, adjust your code so that it uses the dimensions of mPhotoView when they are valid and waits until a layout pass before initially calling updatePhotoView().


## Readings

*[ViewTreeObserver](https://developer.android.com/reference/android/view/ViewTreeObserver.html)

*[ViewTreeObserver Example](https://www.codota.com/android/classes/android.view.ViewTreeObserver)

*[OnGlobalLayoutListener](https://developer.android.com/reference/android/view/ViewTreeObserver.OnGlobalLayoutListener.html)

*[OnGlobalLayoutListener Example](http://android-coding.blogspot.ca/2013/02/get-width-and-height-of-view-in.html)

*[FileProvider](https://developer.android.com/reference/android/support/v4/content/FileProvider.html)

*[Setting Up File Sharing](https://developer.android.com/training/secure-file-sharing/setup-sharing.html)

