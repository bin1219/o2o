<%-- 
    Document   : save_business
    Created on : 2019-12-18, 22:11:32
    Author     : 82058
--%>

<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%    request.setCharacterEncoding("UTF-8");
    String book_id = request.getParameter("book_id");
    String bookname = request.getParameter("bookname");
    String bookprice = request.getParameter("bookprice");
    String sale_sid = request.getParameter("sid");
    String buy_sid = request.getParameter("buy_sid");

    String sql;
    PreparedStatement pt;
    sql = "insert into business(bookname,bookprice,sale_sid,buy_sid) values(?,?,?,?)";
    pt = con.prepareStatement(sql);
    pt.setString(1, bookname);
    pt.setString(2, bookprice);
    pt.setString(3, sale_sid);
    pt.setString(4, buy_sid);
    try {
        pt.executeUpdate();
    } catch (Exception e) {
        e.printStackTrace();
    }
    pt.close();
    con.close();

    response.sendRedirect("buy_success.jsp");
%>
