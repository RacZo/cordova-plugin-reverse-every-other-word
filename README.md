# cordova-plugin-reverse-every-other-word

This is a simple Cordova plugin created with plugman 3.0.1 that receives an input, uses native code to process said input and returns an output.

## Responsibilities

### Plugin

Name: Reverser Cordova Plugin
Package: dev.oscarsalguero.reversercordovaplugin
Folder: reversercordovaplugin

1. Receive an input of type String, consisting of a sentence and use native functions to reverse every other word in that sentence. The reversal of every other word in the sentence is done natively, with Swift for iOS and with Kotlin for Android.

2. Returns the processed sentence to the user.


### Sample Application

Name: Reverser
Package: dev.oscarsalguero.reverser
Folder: reverser

1. Send the input String with the sentence to the plugin.

2. Display the output received from the plugin.

