function reverseUserInput(){
    var userInput = document.getElementById("userInput").value;
    console.log('User input: ' + userInput);

    window.plugins.ReverserPlugin.reverse(userInput, function(response){
        console.log('Reversed output: ' + response);
        document.getElementById("userInput").value = response;
    }, function(error){
        console.log('Error: ' + error);
    });
    
}

document.addEventListener('DOMContentReady', function () {
    document.getElementById('reverseInput')
        .addEventListener('click', reverseUserInput);
      });