# Reverser

## cordova-plugin-reverser

This repository contains a simple cordova app and a plugin created with plugman.


## Responsibilities


### Plugin

Name: reverserplugin
Package: dev.oscarsalguero.reverserplugin
Folder: reverserplugin

1. Receive an input of type String, consisting of a sentence and use native functions to reverse every other word in that sentence. The reversal of every other word in the sentence is done natively, with Swift for iOS and with Kotlin for Android.

2. Returns the processed sentence to the user.


### Sample Application

1. Send the input String with the sentence to the plugin.

2. Display the output received from the plugin.

App Supported platforms:

#### Android & iOS App

- Name: Reverser

##### Android Details:

![Android App Launcher Icon](screenshots/reverser-android-icon.png)

![Android App UI With Sample Input](screenshots/reverser-android-index.png)

![Android App Input Reversed](screenshots/reverser-android-index-reversed.png)


- Activity: MainActivity
- Android target: android-30
- Created with: cordova-android@10.1.2

##### iOS Details:

![iOS App Launcher Icon](screenshots/reverser-ios-icon.png)

![iOS App UI With Sample Input](screenshots/reverser-ios-index.png)

![iOS App Input Reversed](screenshots/reverser-ios-index-reversed.png)

- Created with: cordova-ios@6.2.0

