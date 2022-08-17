function reverseUserInput(){
    var userInput = document.getElementById("userInput").value;
    console.log('User input: ' + userInput);

    cordova.plugins.ReverserPlugin.reverse(userInput, function(response){
        console.log('Reversed output: ' + response);
        document.getElementById("userInput").value = response;
    }, function(error){
        console.log('Error: ' + error);
    });
    
}

document.getElementById('reverseInput').addEventListener('click', reverseUserInput, false);