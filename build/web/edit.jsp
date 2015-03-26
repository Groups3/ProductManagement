<%-- 
    Document   : edit
    Created on : Mar 26, 2015, 10:32:18 AM
    Author     : dattr_000
--%>

<%@page import="bean.Product"%>
<%@page import="Model.ProductModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String id = (String) request.getAttribute("id");
    ProductModel pro = new ProductModel();
    Product product = pro.getDataById(Integer.parseInt(id));
    request.setAttribute("name", product.getName());
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDIT PRODUCT</h1>
        <form action="EditServlet">
            <table>
                <tr>
                    <td>ID:</td>
                    <td>${id}</td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="nameedit" value="${name}" /></td>
                </tr>
                <tr>
                    <td><input type="submit" value="CANCEL" name="button" /></td>
                <input type="hidden" name="id" value="${id}"/>
                <td><input type="submit" value="UPDATE" name="button" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
