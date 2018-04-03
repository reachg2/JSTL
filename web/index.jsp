<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL</title>
    </head>
    <body>
        <c:out value="For Each Loop example:"/><br>
        <c:forEach var="i" begin="1" end="5">
            <c:out value="${i}"/>
            <br>
        </c:forEach>
        <br><c:out value="For Each Tokens example:"/><br>
        <c:forTokens items="Car,Bike,Bus" delims="," var="ride">
            <c:out value="${ride}"/>
            <br>
        </c:forTokens>
        
        <s:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/test" user="root" password=""/>
        
        <s:query dataSource="${db}" var="rs">
            select * from student;
        </s:query>
            <br>
            <c:out value="id name age"/>
            <c:forEach var="tbl" items="${rs.rows}">
                <br>
                <c:out value="${tbl.id}"/>
                <c:out value="${tbl.name}"/>
                <c:out value="${tbl.age}"/>
            </c:forEach>   
    </body>
</html>
