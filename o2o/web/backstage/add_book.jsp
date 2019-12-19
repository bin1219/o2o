<%-- 
    Document   : add_book
    Created on : 2019-12-19, 8:07:57
    Author     : 82058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2 align="center">添加书本信息</h2>
        <form action="save_shop.jsp" method="post">
            <table width="300" align="center">
                <tr>
                    <th>拥有者学号</th>
                    <td><input type="text" name="sid" value="" />
                </tr>
                <tr>
                    <th>联系电话</th>
                    <td><input type="text" name="telephone" value="" />
                </tr>
                <tr>
                    <th>书名</th>
                    <td><input type="text" name="bookname" value="" />
                </tr>
                <tr>
                    <th>价格</th>
                    <td><input type="text" name="bookprice" value="" />
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="确定" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
