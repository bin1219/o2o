
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>  
<%@ include file="connect.jsp" %>
<%    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!--保存到register-->
<%
    String sid = request.getParameter("sid");
    String password = request.getParameter("password");
    PreparedStatement pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement
    String sql = "insert into register(sid,password) values(?,?)";// 预编译语句，“？”代表参数
    pre = con.prepareStatement(sql);// 实例化预编译语句
    pre.setString(1, sid);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(2, password);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    try {
        pre.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<!--保存到information-->
<%
    String name = request.getParameter("name");
    String telephone = request.getParameter("telephone");
    pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement
    sql = "insert into information(sid,telephone,name) values(?,?,?)";// 预编译语句，“？”代表参数
    pre = con.prepareStatement(sql);// 实例化预编译语句
    pre.setString(1, sid);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(2, telephone);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(3, name);
    try {
        pre.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    pre.close();
    con.close();
%>
<!--跳转-->
<%
    response.sendRedirect("login.jsp");
%>