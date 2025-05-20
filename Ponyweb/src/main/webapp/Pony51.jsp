<%@page import="java.util.*"%>
<%@page import="java.util.Locale"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Locale locale = request.getLocale();
	String lang = locale.getLanguage();
	String country = locale.getCountry();
	pageContext.setAttribute("lang", lang + "_" + country);
	%>
	Language = ${lang }
	<br />
	<fmt:setLocale value="${lang }" />
	<fmt:setBundle basename="res" />
	<h1>
		<fmt:message key="companyName"></fmt:message>
	</h1>
	<hr />
	<fmt:message key="hello"></fmt:message>
	,
	<fmt:message key="world"></fmt:message>
	<hr />
	<%
	Date now = new Date();
	out.print(now + "<br />");
	pageContext.setAttribute("now", now);
	%>
	<fmt:setTimeZone value="Asia/Taipei" />
	Taipei:
	<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss" />
	<br />
	<fmt:setTimeZone value="Asia/Tokyo" />
	Tokyo:
	<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss" />
		<br />
	<fmt:setTimeZone value="Europe/Berlin" />	
	Berlin:
	<fmt:formatDate value="${now }" pattern="yyyy-MM-dd HH:mm:ss" />
	<hr />
	<fmt:formatNumber value="1234567.123" type="currency" currencyCode="KRW"/>
</body>
</html>