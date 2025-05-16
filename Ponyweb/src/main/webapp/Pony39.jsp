<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:catch var="err">
		<sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost/brad" user="root" password="root" />
		<sql:update var='n1'>
	INSERT INTO cust (cname,tel,birthday) VALUES('brad1','09222222','1999-9-3') 
	</sql:update>
		<sql:update var='n2'>
	UPDATE cust SET cname='bbb' WHERE id='10' 
	</sql:update>
		<sql:update var='n3'>
	DELETE FROM cust WHERE id>=9 
	</sql:update>



	</c:catch>
	${err }
	<br /> n1= ${n1 }
	<br /> n2= ${n2 }
	<br /> n3= ${n3 }
	<br />
</body>
</html>