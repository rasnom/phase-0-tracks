$(document).ready(function(){


	$("li").click(function(){
		$(this).fadeOut();
	});

  $("li").dblclick(function(){
  	$("li").fadeIn();
  })

});