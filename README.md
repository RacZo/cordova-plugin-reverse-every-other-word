# Reverser App and Plugin

This repository contains a simple cordova app and a plugin that reverses every other word of a sentence.


## Plugin

- Name: reverserplugin 
- Package: dev.oscarsalguero.reverserplugin 
- Folder: reverserplugin 


### What does this plugin do?

1. Receives user input, a sentence (String) from the app, consisting of a sentence and uses native code in Java for Android or Objective-C for iOS to reverse every other word in that sentence.

2. Returns the processed otput to the app's UI to show it to the user.


## App

Written in HTML, CSS and JavaScript.

1. The app captures user input trough a textarea and sends it to the cordova plugin upon tapping a button.

2. Once a processed output has been retrieved from the plugin, the app displays the output or result received from the plugin in the same textarea it was entered.

Supported platforms:

- Android
- iOS


#### Android Details:

- Activity: MainActivity
- Android target: android-30
- Created with: cordova-android@10.1.2

<br>

<img alt="Android App Launcher Icon" src="screenshots/reverser-android-icon.png" width="200" />

Android App Launcher Icon

<br>

<img alt="Android App UI With Sample Input" src="screenshots/reverser-android-index.png" width="200" />

Android App UI With Sample Input

<br>

<img alt="Android App Input Reversed By Plugin" src="screenshots/reverser-android-index-reversed.png" width="200" />

Android App Input Reversed By Plugin

<br>

#### iOS Details:

- Created with: cordova-ios@6.2.0

<br>

<img alt="iOS App Launcher Icon" src="screenshots/reverser-ios-icon.png" width="200" />

iOS App Launcher Icon

<br>

<img alt="iOS App UI With Sample Input" src="screenshots/reverser-ios-index.png" width="200" />

iOS App UI With Sample Input

<br>

<img alt="iOS App Input Reversed By Plugin" src="screenshots/reverser-ios-index-reversed.png" width="200" />

iOS App Input Reversed By Plugin

<br>
<br>


# How To Use

## Cloning This Repository

```
git clone https://github.com/RacZo/cordova-plugin-reverser.git reverser
```

The sample app source will be in the root of the repository folder: 

```
reverser
```

The plugin's source code is in: 

```
reverser/reverserplugin
```



To add the plugin:

```
cordova plugin add file:./reverserplugin
```

To remove the plugin:

```
cordova plugin remove dev.oscarsalguero.reverserplugin
```


## Also Available Via NPM

- URL: https://www.npmjs.com/package/reverserplugin
