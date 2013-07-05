<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ajax Example in Struts 1e</title>
<script src="/StrutsUsingAjax/js/jquery.js"></script>
<script type="text/javascript">
function doAjaxPost() {  
	    
	  var name = $('#name').val();   
	   
	  $.ajax({  
	    type: "POST",  
	    url: "/StrutsUsingAjax/AjaxSubmit.do",  
	    data: "name=" + name,  
	    success: function(response){  
	        
	      $('#info').html(response);  
	    },  
	    error: function(e){  
	      alert('Error: ' + e);  
	    }  
	  });  
	}  
</script>
</head>
<body>
	Enter your name please : <input type="text" id="name"><br/>
	<input type="button" value="Say Hello" onclick="doAjaxPost()"><br/>
	<div id="info" style="color: green;"></div>
</body>
</html>