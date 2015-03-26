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
        <div style="padding: 30px 30px 30px 30px; background-color: #9999ff; width: 500px">
            <h1 style="text-align: center;">ADD NEW PRODUCT</h1>
            <form action="addServlet" >
                Name Product: <input name="product" type="text" /><br>
                <br/>
                <input style="display: flex;
                       flex-direction: row;
                       flex-wrap: wrap;
                       justify-content: center;
                       align-items: center;width: 100px; height: 60px;" name="button" type="submit" value="ADD" />
            </form>
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
                    <form action="ActionServlet">
                        <td style="width: 50px;border-width: 1px; border-style: solid; border-color: #999999;">
                            <input type="hidden" name="hidentext" value="${product.id}" />
                            <input value="del" type="submit" name="button2" />
                        </td>
                        <td style="width: 50px;border-width: 1px; border-style: solid; border-color: #999999;">
                            <input value="edit" type="submit" name="button2" />
                        </td>
                    </form>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
