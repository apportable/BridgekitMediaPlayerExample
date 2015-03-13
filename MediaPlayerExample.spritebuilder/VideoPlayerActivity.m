/*
 * SpriteBuilder: http://www.spritebuilder.org
 *
 * Copyright (c) 2014 Apportable Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */


#import "VideoPlayerActivity.h"
#import <AndroidKit/AndroidVideoView.h>
#import <AndroidKit/AndroidUri.h>
#import <AndroidKit/AndroidMediaController.h>
#import <AndroidKit/AndroidBundle.h>
#import "R.h"

@implementation VideoPlayerActivity

@bridge (callback) postOnCreate = postOnCreate;
@bridge (callback) postOnDestroy = postOnDestroy;


- (void)postOnCreate
{
    [self setContentViewByLayoutResID:[RLayout videoplayer]];
    NSString *videoPath = [NSString stringWithFormat:@"android.resource://%@/%d", [self packageName], [RRaw video]];

    AndroidVideoView *videoView = (AndroidVideoView *)[self findViewById:[RId surface_view]];
    [videoView setVideoURI:[AndroidUri parseWithUriString:videoPath]];
    [videoView setMediaController:[[AndroidMediaController alloc] initWithContext:self]];
    [videoView requestFocus];
    [videoView start];
}

-(void)postOnDestroy
{
    
}

@end
