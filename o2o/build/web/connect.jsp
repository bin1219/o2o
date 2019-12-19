<%-- 
    Document   : connect
    Created on : 2019-12-17, 22:00:20
    Author     : 82058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/o2o?user=root&password=");
%>