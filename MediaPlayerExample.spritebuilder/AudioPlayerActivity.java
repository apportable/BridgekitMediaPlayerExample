package com.apportable.mediaplayer;

import android.app.Activity;
import android.os.Bundle;


/**
 * AudioPlayerActivity for sending callbacks to objective-c after creation/deletion for startup/cleanup
 */
public class AudioPlayerActivity extends Activity {

    protected native void postOnCreate();

    protected native void postOnDestroy();

    @Override
    protected void onCreate(final Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        postOnCreate();
    }
    
    @Override
    protected void onDestroy() {
        postOnDestroy();
        super.onDestroy();
    }
}
