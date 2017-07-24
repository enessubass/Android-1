package com.derrick.park.beatbox;

/**
 * Created by park on 2017-07-17.
 */

public class Sound {

    // The main benefit of using a SoundPool over some other methods of
    // playing audio is that SoundPool responds quickly, NO LAG.
    // The trade-off for that is that you must load sounds into your SoundPool before
    // you play them.
    private String mAssetPath;
    private String mName;
    private Integer mSoundId;  // Each sound you load will get its own Int ID.
    // Why Integer, not int --> null

    public Sound(String assetPath) {
        mAssetPath = assetPath;
        String[] components = assetPath.split("/");
        String filename = components[components.length - 1];
        mName = filename.replace(".wav", "");
    }

    public String getAssetPath() {
        return mAssetPath;
    }

    public String getName() {
        return mName;
    }

    public Integer getSoundId() {
        return mSoundId;
    }

    public void setSoundId(Integer soundId) {
        mSoundId = soundId;
    }
}
