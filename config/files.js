/* Exports a function which returns an object that overrides the default &
 *   plugin file patterns (used widely through the app configuration)
 *
 * To see the default definitions for Lineman's file paths and globs, see:
 *
 *   - https://github.com/linemanjs/lineman/blob/master/config/files.coffee
 */
module.exports = function(lineman) {
  //Override file patterns here
  return {
    js: {
      app: [
        "app/js/app.js",
        "app/js/**/*.js"
      ],
      
      vendor: [
        "vendor/bower/jquery/dist/jquery.min.js",
        "vendor/bower/jquery.lazyload/jquery.lazyload.min.js",
        "vendor/js/angular.js",
        "vendor/bower/angular-sanitize/angular-sanitize.js",
        "vendor/bower/showdown/src/showdown.js",
        "vendor/bower/angular-markdown-directive/markdown.js",
        "vendor/bower/foundation/js/foundation.js",
        "vendor/bower/foundation/js/foundation/foundation.topbar.js",
        "vendor/js/dropcap.min.js",
        "vendor/js/**/*.js"
        
      ]
    },

    sass: {
      main: [
      "app/css/app.{sass,scss}",
      "vendor/bower/foundation/scss/**/*"
      ]
    }
  };
};
