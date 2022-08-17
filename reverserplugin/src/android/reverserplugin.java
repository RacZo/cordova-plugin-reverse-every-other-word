package dev.oscarsalguero.reverserplugin;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 * This class has a method that reverses every other word in a sentence sent from JavaScript.
 */
public class ReverserPlugin extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("reverse")) {
            String userInput = args.getString(0);
            this.reverse(userInput, callbackContext);
            return true;
        }
        return false;
    }

    private void reverse(String userInput, CallbackContext callbackContext) {
        if (userInput != null && userInput.length() > 0) { 

            String[] wordArray = userInput.split(" ");
            StringBuilder sb = new StringBuilder();
            for(int i = 0 ; i< wordArray.length; i++){
                if(i%2 == 0){
                    sb.append(wordArray[i]);
                    sb.append(" ");
                } else { 
                    sb.append(new StringBuilder(wordArray[i]).reverse());
                    sb.append(" "); 
                }
            }
            String result = sb.toString().trim();

            callbackContext.success(result);
        } else {
            callbackContext.error("Expected one non-empty string argument.");
        }
    }
}
