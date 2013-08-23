
// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require_tree .
//

function rendering(){
  var param = window.location.search.substring(1);

  var params = { }
  if (param != null){
    var param2 = param.split("&");

    for (i=0;i<param2.length;i++){
      params[i] = param2[i].split("=")[1]; 
    }
  }
  
  if (params[0] != undefined)
    controlVisibility("company",params[0]);
  if (params[1] != undefined)
    controlVisibility("model",params[1]);
}

function hideall(){  

}

function controlVisibility(what,id) {
  str = what+id;
  var v1 = document.getElementsByName(str);

  for (i=0;i<v1.length;i++){
      v1[i].style.display = "inline-block";
  }
}

function versionsVisibility() {

}
