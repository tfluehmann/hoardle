$(document).ready(function(){
	$("#test").click(function(){
		// $.getJSON("/categories", function(data){
			// alert(data);
		// });
		ajax_req();
	});
});

function ajax_req(){
	$.ajax("/categories", {
		dataType: "html",
		async: false
	}).done(function(data){
		alert(data);
	});
}
