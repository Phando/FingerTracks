//
//  ftDisplayPoint.h
//  FingerTracks
//
//  Created by Joe Andolina on 2/7/13.
//  Copyright (c) 2013 Joe Andolina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ftDisplayPoint : UIView

@property (weak, nonatomic) UIColor *fillColor;
@property (weak, nonatomic) UIColor *outlineColor;


-(id)initWithPoint:(CGPoint)point;

- (id)initWithPoint:(CGPoint)point fillColor:(UIColor*)fillColor outlineColor:(UIColor*)outlineColor;

@end
