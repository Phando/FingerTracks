//
//  ftDisplayView.h
//  FingerTracks
//
//  Created by Joe Andolina on 2/7/13.
//  Copyright (c) 2013 Joe Andolina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ftDisplayView : UIView

@property (weak, nonatomic) UIColor *fillColor;
@property (weak, nonatomic) UIColor *outlineColor;

-(void) updateTouches:(NSSet *)touches;

@end
