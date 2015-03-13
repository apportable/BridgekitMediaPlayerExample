package com.apportable.mediaplayer;

import android.app.Activity;
import android.os.Bundle;

/**
 * VideoPlayerActivity for sending callbacks to objective-c after creation/deletion for startup/cleanup
 */
public class VideoPlayerActivity extends Activity {

    public native void postOnCreate();

    public native void postOnDestroy();

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
