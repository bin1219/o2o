<%-- 
    Document   : save_shop
    Created on : 2019-12-18, 10:18:23
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
    String sid = request.getParameter("sid");
    String bookprice = request.getParameter("bookprice");
    String bookname = request.getParameter("bookname");
    String telephone = request.getParameter("telephone");
    PreparedStatement pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement
    String sql = "insert into shop(sid,telephone,bookname,bookprice) values(?,?,?,?)";// 预编译语句，“？”代表参数
    pre = con.prepareStatement(sql);// 实例化预编译语句
    pre.setString(1, sid);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(2, telephone);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(3, bookname);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(4, bookprice);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    try {
        pre.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    pre.close();
    con.close();
    response.sendRedirect("all_books.jsp");
%>
