<%-- 
    Document   : business_delete
    Created on : 2019-12-18, 15:45:35
    Author     : 82058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../connect.jsp" %>
<%
	String id = request.getParameter("id");
	String sql = "delete from business where id = " + id;
	Statement st = con.createStatement();
	st.execute(sql);
	response.sendRedirect("all_business.jsp");
%>
