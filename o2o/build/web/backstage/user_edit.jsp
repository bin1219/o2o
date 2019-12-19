<%-- 
    Document   : user_edit
    Created on : 2019-12-18, 15:49:09
    Author     : 82058
--%>

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
    String sid, telephone, name ;
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from information where id=" + id + "");
    rs.next();
    sid = rs.getString("sid");
    telephone = rs.getString("telephone");
    name = rs.getString("name");
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
        <form action="update_user.jsp" method="post">
            <table width="300" align="center">
                <tr>
                    <th width="80">编号</th>
                    <td><input type="text" name="id" value="<%=id%>"/>
                </tr>
                <tr>
                    <th>这个人的学号</th>
                    <td><input type="text" name="sid" value="<%=sid%>" />
                </tr>
                <tr>
                    <th>联系电话</th>
                    <td><input type="text" name="telephone" value="<%=telephone%>" />
                </tr>
                <tr>
                    <th>名字</th>
                    <td><input type="text" name="name" value="<%=name%>" />
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="确定" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>

