#import "MainScene.h"

#import "MediaPlayerExampleActivity.h"
#import "AudioPlayerActivity.h"
#import "VideoPlayerActivity.h"
#import <AndroidKit/AndroidIntent.h>
#import <JavaKit/JavaClass.h>


@implementation MainScene

- (void)playVideo:(id)sender {
    AndroidIntent *intent = [[AndroidIntent alloc] initWithContext:[MediaPlayerExampleActivity currentActivity] class:[VideoPlayerActivity class]];
    [[MediaPlayerExampleActivity currentActivity] startActivity:intent];
}

- (void)playAudio:(id)sender {
    AndroidIntent *intent = [[AndroidIntent alloc] initWithContext:[MediaPlayerExampleActivity currentActivity] class:[AudioPlayerActivity class]];
    [[MediaPlayerExampleActivity currentActivity] startActivity:intent];
}

@end
