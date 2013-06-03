FingerTracks
============

An easy to use set of classes to add touch feedback to your applications.

![FingerTracks](http://codingangry.com/demos/fingerTracks/fingerTracks.png)

All too often I find myself demoing an iOS application on a projector or remotely. 
The app looks great but there is one glaring problem: The lack of my touch points. 
My audience sees the app reacting, but they don't know what the app is reacting to. 
That problem motivated me to write FingerTracks.

Installation
-------

There are two easy ways to integrate FingerTracks into your project:

1. Copy the FingerTracks group to your project. ```(ftApplication, ftDisplayView, ftDisplayPoint)```

2. If you prefer [Cocoapods](http://cocoapods.org/), simply add the following to your Podfile:

```ruby
pod 'FingerTracks'
```

Using FingerTracks
--------

Comment out the following in ```main.m``` :

``` objective-c
return UIApplicationMain(argc, argv, nil, NSStringFromClass([ftAppDelegate class]));
```

Paste in the following line:

``` objective-c
return UIApplicationMain(argc, argv, NSStringFromClass([ftApplication class]), NSStringFromClass([ftAppDelegate class]));
```

You can turn FingerTracks on or off at any time by sending one of the following notifications: 
  
``` objective-c
[[NSNotificationCenter defaultCenter] postNotificationName:@"ShowFingerTracks" object:self]; // Enable
[[NSNotificationCenter defaultCenter] postNotificationName:@"HideFingerTracks" object:self]; // Disable
```

Happy Coding
