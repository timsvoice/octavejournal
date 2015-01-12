app.factory("WaitService", function() {



  var loading_screen = pleaseWait({
    backgroundColor: '#5f82ab',
    loadingHtml: "<div class='spinner'></div>"
  });
  
  var finish = loading_screen.pleaseWait;

  return finish;

});