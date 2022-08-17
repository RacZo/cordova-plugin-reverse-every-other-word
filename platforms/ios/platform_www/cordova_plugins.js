cordova.define('cordova/plugin_list', function(require, exports, module) {
  module.exports = [
    {
      "id": "dev.oscarsalguero.reverserplugin.reverserplugin",
      "file": "plugins/dev.oscarsalguero.reverserplugin/www/reverserplugin.js",
      "pluginId": "dev.oscarsalguero.reverserplugin",
      "clobbers": [
        "cordova.plugins.reverserplugin"
      ]
    }
  ];
  module.exports.metadata = {
    "dev.oscarsalguero.reverserplugin": "1.0.0"
  };
});