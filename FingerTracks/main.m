//
//  main.m
//  FingerTracks
//
//  Created by Joe Andolina on 2/7/13.
//  Copyright (c) 2013 Joe Andolina. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ftAppDelegate.h"
#import "ftApplication.h"

int main(int argc, char *argv[])
{
    @autoreleasepool
    {
        // Commented out the default main code.
        //return UIApplicationMain(argc, argv, nil, NSStringFromClass([ftAppDelegate class]));
        
        // This is the only line needed in order to add Finger Tracks to your application.
        return UIApplicationMain(argc, argv, NSStringFromClass([ftApplication class]), NSStringFromClass([ftAppDelegate class]));
    }
}
