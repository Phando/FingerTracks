//
//  ftApplication.m
//  FingerTracks
//
//  Created by Joe Andolina on 2/7/13.
//  Copyright (c) 2013 Joe Andolina. All rights reserved.
//

#import "ftApplication.h"

@implementation ftApplication

-(id)init
{
    self = [super init];
    
    if(self)
    {
        showTouches = YES;
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(handleHideFingerTracks:)
                                                     name:@"HideFingerTracks"
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(handleShowFingerTracks:)
                                                     name:@"ShowFingerTracks"
                                                   object:nil];
    }
    
    return self;
}

- (void) handleHideFingerTracks:(NSNotification *) notification
{
    NSLog(@"handleHideFingerTracks");
    showTouches = NO;
    [self hideTouchFeedback];
}

- (void) handleShowFingerTracks:(NSNotification *) notification
{
    NSLog(@"handleShowFingerTracks");
    showTouches = YES;
}

-(void)showTouchFeedback
{
    showTouches = YES;
    
    if( touchesView == nil)
    {
        touchesView = [[ftDisplayView alloc] initWithFrame:self.keyWindow.bounds];
        [self.keyWindow addSubview:touchesView];
    }
}

-(void)hideTouchFeedback
{
    showTouches = NO;
    
    if (touchesView)
    {
        [touchesView removeFromSuperview];
        touchesView = nil;
    }
}

-(void)sendEvent:(UIEvent *)event
{
    [super sendEvent:event];
    
    if( showTouches )
    {
        [self showTouchFeedback];
        [touchesView updateTouches:[event allTouches]];
    }
}
@end

