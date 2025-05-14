<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <form action="Pony30.jsp" method = "post">
            <label>
                Account:
                <input type="text" name="account" />
            </label>
            <br />

            <label><input type="checkbox" name="habit" value="a" /> a</label>
            <label><input type="checkbox" name="habit" value="b" /> b</label>
            <label><input type="checkbox" name="habit" value="c" /> c</label>
            <br />

            <label><input type="checkbox" name="habit" value="d" /> d</label>
            <label><input type="checkbox" name="habit" value="e" /> e</label>
            <label><input type="checkbox" name="habit" value="f" /> f</label>
            <br />

            <input type="submit" value="Submit" />
        </form>
    </body>
</html>
