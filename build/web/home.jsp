<%-- 
    Document   : home
    Created on : Mar 25, 2015, 2:59:26 PM
    Author     : dattr_000
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <input name="product" type="text" />
        </div>
        <div>
        <h1>Management Product</h1>
        <table style="font-family: verdana,arial,sans-serif;
               font-size:11px;
               color:#333333;
               border-width: 1px;
               border-color: #999999;
               border-collapse: collapse;">
            <tr style="background-color: activeborder;
                border-width: 1px;
                padding: 8px;
                border-style: solid;
                border-color: #999999;">
                <td style="width: 100px;border-width: 1px; border-style: solid; border-color: #999999;text-align: center;">ID PRODUCT</td>
                <td style="width: 300px;border-width: 1px; border-style: solid; border-color: #999999;">PRODUCT NAME</td>
            </tr>
            <c:forEach items="${productsession}" var="product">
                <tr style="background-color: activeborder;
                    border-width: 1px;
                    padding: 8px;
                    border-style: solid;
                    border-color: #999999;">
                    <td style="width: 100px;border-width: 1px; border-style: solid; border-color: #999999;text-align: center;">${product.id}</td>
                    <td style="width: 300px;border-width: 1px; border-style: solid; border-color: #999999;">${product.name}</td>
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
</html>
