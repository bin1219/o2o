<%-- 
    Document   : update_user
    Created on : 2019-12-18, 17:48:41
    Author     : 82058
--%>

<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>  
<%@ include file="../connect.jsp" %>
<%    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!--保存到register-->
<%
    String id =request.getParameter("id");
    String sid = request.getParameter("sid");
    String name = request.getParameter("name");
    String telephone = request.getParameter("telephone");
    PreparedStatement pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement
    String sql = "update information set sid=?,telephone=?,name=? where id = ?";// 预编译语句，“？”代表参数
    pre = con.prepareStatement(sql);// 实例化预编译语句
    pre.setString(1, sid);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(2, telephone);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(3, name);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(4, id);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    try {
        pre.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    pre.close();
    con.close();
    response.sendRedirect("all_users.jsp");
%>

