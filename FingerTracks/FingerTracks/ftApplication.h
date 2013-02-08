//
//  ftApplication.h
//  FingerTracks
//
//  Created by Joe Andolina on 2/7/13.
//  Copyright (c) 2013 Joe Andolina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ftDisplayView.h"

@interface ftApplication : UIApplication
{

@protected
    BOOL showTouches;
    ftDisplayView* touchesView;

}

-(void)showTouchFeedback;
-(void)hideTouchFeedback;

@end
