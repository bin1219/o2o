<%-- 
    Document   : book_edit
    Created on : 2019-12-18, 15:27:51
    Author     : 82058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@ include file="../connect.jsp" %>
<%    
    String id = request.getParameter("id");
    String book_id, sid, telephone, bookname, bookprice;
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from shop where book_id=" + id + "");
    rs.next();
    sid = rs.getString("sid");
    telephone = rs.getString("telephone");
    bookname = rs.getString("bookname");
    bookprice = rs.getString("bookprice");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h2 align="center">修改书本信息</h2>
        <form action="update_book.jsp" method="post">
            <table width="300" align="center">
                <tr>
                    <th width="80">书本编号</th>
                    <td><input type="text" name="book_id" value="<%=id%>"/>
                </tr>
                <tr>
                    <th>所属者学号</th>
                    <td><input type="text" name="sid" value="<%=sid%>" />
                </tr>
                <tr>
                    <th>联系电话</th>
                    <td><input type="text" name="telephone" value="<%=telephone%>" />
                </tr>
                <tr>
                    <th>书名</th>
                    <td><input type="text" name="bookname" value="<%=bookname%>" />
                </tr>
                <tr>
                    <th>价格</th>
                    <td><input type="text" name="bookprice" value="<%=bookprice%>" />
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="确定" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
