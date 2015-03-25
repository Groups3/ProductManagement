<%-- 
    Document   : home
    Created on : Mar 25, 2015, 2:59:26 PM
    Author     : dattr_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World! 2</h1>
        <TABLE>
            <c:forEach items="${productsession} var="product">
                       <tr>
                    <td><c:out value="${product.id}"/></td>
                <td><c:out value="${product.name}"/></td>
                </tr>
            </c:forEach>
        </TABLE>
    </body>
</html>
