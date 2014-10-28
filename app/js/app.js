var app = angular.module('octavejournal',[
  'ngRoute',
  'btford.markdown',
  'ngSanitize'
  ]);

  var dropcaps = document.querySelectorAll(".dropcap");
  window.Dropcap.layout(dropcaps, 3);


/*
 * angular-markdown-directive v0.3.0
 * (c) 2013-2014 Brian Ford http://briantford.com
 * License: MIT
 */
angular.module('btford.markdown', ['ngSanitize']).
  provider('markdownConverter', function () {
    var opts = {};
    return {
      config: function (newOpts) {
        opts = newOpts;
      },
      $get: function () {
        return new Showdown.converter(opts);
      }
    };
  }).
  directive('btfMarkdown', function ($sanitize, markdownConverter) {
    return {
      restrict: 'AE',
      link: function (scope, element, attrs) {
        if (attrs.btfMarkdown) {
          scope.$watch(attrs.btfMarkdown, function (newVal) {
            var html = newVal ? $sanitize(markdownConverter.makeHtml(newVal)) : '';
            element.html(html);
          });
        } else {
          var html = $sanitize(markdownConverter.makeHtml(element.text()));
          element.html(html);
        }
      }
    };
  });

app.config(function($sceDelegateProvider) {
  $sceDelegateProvider.resourceUrlWhitelist([
    // Allow same origin resource loads.
    'self',
    // Allow loading from our assets domain.  Notice the difference between * and **.
    'https://s3-ap-southeast-1.amazonaws.com/octavejournal/**'
  ]);

});