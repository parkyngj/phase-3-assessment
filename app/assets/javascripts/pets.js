$(document).ready(function(){

  petShowLinkListener('.pet-show-link')

})

function petShowLinkListener(linkClass){
  $(linkClass).on('ajax:success', function(event, response){
    console.log("We're in!")
    console.log(response);
  })
}
