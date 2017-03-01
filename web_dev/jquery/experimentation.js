$(document).ready(function(){

	$("li").click(function(){
		$(this).fadeOut();
	});

  $("li").dblclick(function(){
  	$("li").fadeIn();
  })

  $(".background-color-controller").mouseenter(function(){
  	alert("something")
  });

});