
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>  
<%@ include file="connect.jsp" %>
<%    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username == null || "".equals(username.trim()) || password == null || "".equals(password.trim())) {
        //out.write("用户名或密码不能为空！");
        System.out.println("用户名或密码不能为空！");
        response.sendRedirect("login.jsp");
        return;
        //request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    boolean isValid = false;
    PreparedStatement pre = null;// 创建预编译语句对象，一般都是用这个而不用Statement
    ResultSet rs = null;// 创建一个结果集对象
    String sql = "select * from register where sid=? and password=?";// 预编译语句，“？”代表参数
    pre = con.prepareStatement(sql);// 实例化预编译语句
    pre.setString(1, username);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    pre.setString(2, password);// 设置参数，前面的1表示参数的索引，而不是表中列名的索引
    rs = pre.executeQuery();// 执行查询，注意括号中不需要再加参数
    if (rs.next()) {
        isValid = true;
    }
    rs.close();
    pre.close();
    con.close();
    if (isValid) {
        System.out.println("登录成功！");
        session.setAttribute("username", username);
        if (username .equals("170102030117") ) {
            response.sendRedirect("backstage/index.html");
        } else {
            response.sendRedirect("index.html");
        }
        return;
    } else {
        System.out.println("登录失败！");
        response.sendRedirect("login.jsp");
        return;
    }
%>