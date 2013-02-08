//
//  ftDisplayPoint.m
//  FingerTracks
//
//  Created by Joe Andolina on 2/7/13.
//  Copyright (c) 2013 Joe Andolina. All rights reserved.
//

#import "ftDisplayPoint.h"

#define kTouchRadius 25

@implementation ftDisplayPoint

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.opaque     = NO;
        _fillColor      = [UIColor magentaColor];
        _outlineColor   = [UIColor grayColor];
    }
    return self;
}

- (id)initWithPoint:(CGPoint)point
{
    self = [self initWithFrame:CGRectMake(point.x-(kTouchRadius/2), point.y-(kTouchRadius/2), kTouchRadius*2, kTouchRadius*2)];
    return self;
}

- (id)initWithPoint:(CGPoint)point fillColor:(UIColor*)fillColor outlineColor:(UIColor*)outlineColor
{
    self = [self initWithFrame:CGRectMake(point.x-(kTouchRadius/2), point.y-(kTouchRadius/2), kTouchRadius*2, kTouchRadius*2)];
    _fillColor = fillColor;
    _outlineColor = outlineColor;
    return self;
}


- (void)drawRect:(CGRect)rect
{
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(contextRef, _fillColor.CGColor );
    CGContextFillEllipseInRect(contextRef, CGRectMake(0, 0, kTouchRadius, kTouchRadius));
    
    // Draw a circle (border only)
    CGContextSetFillColorWithColor(contextRef, _outlineColor.CGColor );
    CGContextStrokeEllipseInRect(contextRef, CGRectMake(0, 0, kTouchRadius, kTouchRadius));
}

@end
