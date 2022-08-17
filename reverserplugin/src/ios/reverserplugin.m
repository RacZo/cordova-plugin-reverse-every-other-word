/********* reverserplugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface ReverserPlugin : CDVPlugin {
  // Member variables go here.
}

- (void)reverse:(CDVInvokedUrlCommand*)command;
@end

@implementation ReverserPlugin

- (void)reverse:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* userInput = [command.arguments objectAtIndex:0];

    if (userInput != nil && [userInput length] > 0) {
        
        NSArray *wordsArray  = [userInput componentsSeparatedByString:@" "];
        NSMutableString *result = [NSMutableString string];
        int i;
        for(int i = 0; i < wordsArray.length; i = i + 1 ) {
            if(i%2 == 0){
                result = [result stringByAppendingString:wordsArray[i]];
            }else{
                NSInteger charIndex = [wordsArray[i] length];
                while (charIndex > 0) {
                    charIndex--;
                    NSRange subStrRange = NSMakeRange(charIndex, 1);
                    [result appendString:[wordsArray[i] substringWithRange:subStrRange]];
                }
            }

        }
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:result];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
