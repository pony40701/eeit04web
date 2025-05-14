<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String mesg = "";
    String errType = request.getParameter("errType");
    if (errType != null){
    	if(errType.equals("1")){
    		mesg = "新增失敗";
    	}else if (errType.equals("2")){
    		mesg = "帳號已存在!";
    	}
    }
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>register form</title>
	</head>
	<body>
	<script type="text/javascript">
	function checkForm() {
		return true; 
	}
	</script>
	<%= mesg %>
	<form action="Register" method = "get" onsubmit="return true;">
	Account: <input name = "account" /><br />
	Password: <input type = "password" name = "passwd"><br />
	Name: <input name = "cname"><br />
	<input type = "submit" value="Register">
	</form>
	</body>
</html>