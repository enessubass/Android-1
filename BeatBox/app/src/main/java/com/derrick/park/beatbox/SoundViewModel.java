package com.derrick.park.beatbox;

import android.databinding.BaseObservable;
import android.databinding.Bindable;

/**
 * Created by park on 2017-07-17.
 */


public class SoundViewModel extends BaseObservable {
    private Sound mSound;
    private BeatBox mBeatBox;

    public SoundViewModel(BeatBox beatBox){
        mBeatBox = beatBox;
    }

    public Sound getSound() {
        return mSound;
    }

    @Bindable
    public String getTitle() {
        return mSound.getName();
    }

    public void setSound(Sound sound) {
        mSound = sound;
        notifyChange();
//        notifyPropertyChanged(BR.title);
    }

    public BeatBox getBeatBox() {
        return mBeatBox;
    }

    public void onButtonClicked() {
        mBeatBox.play(mSound);
    }
}
