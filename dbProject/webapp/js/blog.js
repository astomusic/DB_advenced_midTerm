
var blog = {
		newline : function () {
			var content = document.querySelectorAll('.blogContent');
			for(i=0; i<content.length ; i++) {
				var temp = content[i].innerHTML;
				temp = temp.replace(/\r\n/gi, "<br>")
				temp = temp.replace(/\n/gi, "<br>")
				content[i].innerHTML = temp
			}
		}
}


	
blog.newline();