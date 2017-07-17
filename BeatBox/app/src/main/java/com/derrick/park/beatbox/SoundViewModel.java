package com.derrick.park.beatbox;

/**
 * Created by park on 2017-07-17.
 */

public class SoundViewModel {
    private Sound mSound;
    private BeatBox mBeatBox;

    public SoundViewModel(BeatBox beatBox){
        mBeatBox = beatBox;
    }

    public Sound getSound() {
        return mSound;
    }

    public String getTitle() {
        return mSound.getName();
    }

    public void setSound(Sound sound) {
        mSound = sound;
        notifyAll();
    }

    public BeatBox getBeatBox() {
        return mBeatBox;
    }
}
