//
//  ftViewController.m
//  FingerTracks
//
//  Created by Joe Andolina on 2/7/13.
//  Copyright (c) 2013 Joe Andolina. All rights reserved.
//

#import "ftViewController.h"

@interface ftViewController ()

@end

@implementation ftViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//
// A simple example to show how to turn on and off the finger tracks.
//
- (IBAction)handleShowTouchesSwitch:(id)sender
{
    UISwitch *sw = (UISwitch *)sender;
    
    if( !sw.on )
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"HideFingerTracks" object:self];
    }
    else
    {
        [[NSNotificationCenter defaultCenter] postNotificationName:@"ShowFingerTracks" object:self];
    }

}

@end
