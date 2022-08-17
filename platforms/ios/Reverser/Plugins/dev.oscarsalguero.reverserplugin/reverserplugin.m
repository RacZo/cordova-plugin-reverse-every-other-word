/********* ReverserPlugin.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface ReverserPlugin : CDVPlugin 

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
        for(int i = 0; i < sizeof(wordsArray)-1; i++) {
            if(i%2 == 0){
                result = [result stringByAppendingString:wordsArray[i]];
                result = [result stringByAppendingString:@" "];
            }else{
                result = [result stringByAppendingString: [self reverseString:wordsArray[i]]];
                result = [result stringByAppendingString:@" "];
            }
        }
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:result];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (NSString *)reverseString:(NSString *)input {
    NSUInteger len = [input length];
    unichar *buffer = malloc(len * sizeof(unichar));
    if (buffer == nil) return nil; // error!
    [input getCharacters:buffer];

    // reverse string; only need to loop through first half
    for (NSUInteger stPos=0, endPos=len-1; stPos < len/2; stPos++, endPos--) {
        unichar temp = buffer[stPos];
        buffer[stPos] = buffer[endPos];
        buffer[endPos] = temp;
    }

    return [[NSString alloc] initWithCharactersNoCopy:buffer length:len freeWhenDone:YES];
}

@end
