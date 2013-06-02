FingerTracks
============

An easy to use set of classes to ad touch feedback to your applications.

All too often I find myself demo'ing an iOS application on a projector or remotely. 
The app looks great but there is one glaring problem. The lack of my touch points. 
My audience sees the app reacting, but they don't know what the app is reacting to. 
That problem motivated me to write FingerTracks.


To install and use FingerTracks follow these steps:

1. Clone the FingerTracks repository to your machine.

2. Run the FingerTracks app in the simulator so you know what to expect.

3. Copy the FingerTracks group to your project. ```(ftApplication, ftDisplayView, ftDisplayPoint)```

4. Comment out the current return in your main.m 

``` objective-c
return UIApplicationMain(argc, argv, nil, NSStringFromClass([ftAppDelegate class]));
```

5. Paste this line in its place:

``` objective-c
return UIApplicationMain(argc, argv, NSStringFromClass([ftApplication class]), NSStringFromClass([ftAppDelegate class]));
```

6. If you want to turn FingerTracks on or off send one of the following notifications: 
  
``` objective-c
[[NSNotificationCenter defaultCenter] postNotificationName:@"HideFingerTracks" object:self];
[[NSNotificationCenter defaultCenter] postNotificationName:@"HideFingerTracks" object:self];
```

Happy Coding
