cordova.define("dev.oscarsalguero.reverserplugin.ReverserPlugin", function(require, exports, module) {
var exec = require('cordova/exec');

exports.reverse = function (arg0, success, error) {
    exec(success, error, 'ReverserPlugin', 'reverse', [arg0]);
};

});
