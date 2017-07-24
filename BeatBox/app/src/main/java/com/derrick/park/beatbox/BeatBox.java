package com.derrick.park.beatbox;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.AudioManager;
import android.media.SoundPool;
import android.util.Log;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by park on 2017-07-17.
 */

public class BeatBox {
    private static final String TAG = "BeatBox";
    private static final String SAMPLE_SOUNDS = "sample_sounds";
    private AssetManager mAssets;
    private ArrayList<Sound> mSounds = new ArrayList<>();
    private static final int MAX_SOUNDS = 5; // How many sounds can play at any given time.
    private SoundPool mSoundPool;


    public BeatBox(Context context) {
        mAssets = context.getAssets();
        // This old constructor is deprecated but need for compatibility.
        // Lollipop introduced a new way of creating a SoundPool using SoundPool.Builder
        // However, SoundPool.Builder is not available on our min-support API 19, so
        // we are using the older constructor instead.
        mSoundPool = new SoundPool(MAX_SOUNDS, AudioManager.STREAM_MUSIC, 0);
        loadSounds();
    }


    public void play(Sound sound) {
        Integer soundId = sound.getSoundId();
        if (soundId == null) {
            // this might happen if the Sound failed to load.
            return;
        }

        mSoundPool.play(soundId, 1.0f, 1.0f, 1, 0, 1.0f);
    }

    public void release() {
        mSoundPool.release();
    }


    private void loadSounds() {
        String[] soundsNames;
        try {
            soundsNames = mAssets.list(SAMPLE_SOUNDS);
            Log.i(TAG, "loadSounds: Found " + soundsNames.length + " sounds.");
        } catch (IOException ioe) {
            Log.e(TAG, "loadSounds: Could not list assets", ioe);
            return;
        }

        for(String filename: soundsNames) {
            try {
                String assetPath = SAMPLE_SOUNDS + "/" + filename;
                Sound sound = new Sound(assetPath);
                load(sound); // loads our sounds to SoundPool -> sets id
                mSounds.add(sound);
            } catch (IOException e) {
                e.printStackTrace();
                Log.e(TAG, "loadSounds: Could not load sound " + filename, e);
            }

        }
    }


    private void load(Sound sound) throws IOException {
        // Since calling openFd(String) throws IOException.
        AssetFileDescriptor afd = mAssets.openFd(sound.getAssetPath());
        // loads a file into our SoundPool for later playback.
        // To keep track of the sound and play it back again, this returns an int ID,
        // which we store in the mSoundId field we just defined.
        int soundId = mSoundPool.load(afd, 1);
        sound.setSoundId(soundId);
    }

    public List<Sound> getSounds() {
        return mSounds;
    }

}
