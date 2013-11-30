<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Struts with Ajax</title>
<script src="/StrutsUsingAjax/js/jquery.js"></script>
<script type="text/javascript">
$(document).ready(function(){
$("#check").click(function() {  
	    
	  var name = $('#name').val();   
	   
	  $.ajax({  
	    type: "POST",  
	    url: "/StrutsUsingAjax/AjaxSubmit.do",  
	    data: "name=" + name,  
	    success: function(resp){  
	      $('#display').html(resp);  
	    },  
	    error: function(err){  
	      alert('Error: ' + err);  
	    }  
	  });  
	});
});	
</script>
</head>
<body>
	Name : <input type="text" name="name" id="name"><br/>
	<input type="button" id="check" value="Say Hello" /><br/>
	<div id="display" style="color: green;"></div>
</body>
</html>
