var exec = require('cordova/exec');

exports.reverse = function (arg0, success, error) {
    exec(success, error, 'ReverserPlugin', 'reverse', [arg0]);
};
