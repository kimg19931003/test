$(function() {
	// 메뉴 눌러서 들어왔을때 들어온 해당 서브메뉴 펼쳐져 있도록
	var acc = document.getElementsByClassName("accordion");
	var i;

	for (i = 0; i < acc.length; i++) {
	  acc[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    
	    var panel = this.nextElementSibling;
	    
	    if (panel.style.maxHeight){
	      panel.style.maxHeight = null;
	    }
	    else {
	      panel.style.maxHeight = panel.scrollHeight + "px";
	    } 
	  });
	}
});