<%-- 
    Document   : sale
    Created on : 2019-12-18, 18:12:53
    Author     : 82058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="connect.jsp" %>
<%    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from shop");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>经典旧书</title>
        <meta name="keywords" content="Book Store Template, Free CSS Template, CSS Website Layout, CSS, HTML" />
        <meta name="description" content="Book Store Template, Free CSS Template, Download CSS Website" />
        <link href="bookstore.css" rel="stylesheet" type="text/css" />
    </head>
    <body>

        <div id="templatemo_container">
            <div id="templatemo_menu">
                <ul>
                    <li><a href="index.html" class="current">首页</a></li>
                    <li><a href="bookstore.html">经典旧书</a></li>
                    <li><a href="saleform/roatebottom.html">我要卖书</a></li>            
                    <li><a href="register.html">注册</a></li>  
                    <li><a href="login.jsp">登录</a></li> 
                </ul>
            </div> <!-- end of menu -->

            <div id="templatemo_header">
                <div id="templatemo_special_offers">
                    <p>
                        活动:超过80元的书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;今日八折
                    </p>
                    <a href="sale.jsp" style="margin-left: 50px;">Read more...</a>
                </div>


                <div id="templatemo_new_books">
                    <ul>
                        <li>巴黎圣母院</li>
                        <li>嫌疑人X的献身</li>
                        <li>在人间</li>
                    </ul>
                    <a href="sale.jsp" style="margin-left: 50px;">Read more...</a>
                </div>
            </div> <!-- end of header -->

            <div id="templatemo_content">

                <div id="templatemo_content_left">
                    <div class="templatemo_content_left_section">
                        <h1>分类目录</h1>
                        <ul>
                            <li><a href="sale.jsp">外国文学</a></li>
                            <li><a href="sale.jsp">计算机</a></li>
                            <li><a href="sale.jsp">国内文学</a></li>
                            <li><a href="sale.jsp">其他</a></li>
                            <!-- <li><a href="#">Maece nas metus</a></li>
                            <li><a href="#">Sed pellentesque placerat</a></li>
                            <li><a href="#">Suspen disse</a></li>
                            <li><a href="#">Maece nas metus</a></li>
                            <li><a href="#">In sed risus ac feli</a></li> -->
                        </ul>
                    </div>
                    <div class="templatemo_content_left_section">
                        <h1>最畅销</h1>
                        <ul>
                            <!-- <li><a href="#">Vestibulum ullamcorper</a></li>
                            <li><a href="#">Maece nas metus</a></li>
                            <li><a href="#">In sed risus ac feli</a></li>
                            <li><a href="#">Praesent mattis varius</a></li>
                            <li><a href="#">Maece nas metus</a></li>
                            <li><a href="#">In sed risus ac feli</a></li> -->
                            <li><a href="http://sc.chinaz.com/" target="_parent">钢铁是怎样炼成的</a></li>
                            <li><a href="http://sc.chinaz.com/" target="_parent">红楼梦</a></li>
                            <li><a href="http://sc.chinaz.com/" target="_parent">Java Web程序设计</a></li>
                            <li><a href="http://sc.chinaz.com/" target="_parent">活着</a></li>
                        </ul>
                    </div>

                    <div class="templatemo_content_left_section">                
                        <a href="http://validator.w3.org/check?uri=referer"><img style="border:0;width:88px;height:31px" src="http://www.w3.org/Icons/valid-xhtml10" alt="Valid XHTML 1.0 Transitional" width="88" height="31" vspace="8" border="0" /></a>
                        <a href="http://jigsaw.w3.org/css-validator/check/referer"><img style="border:0;width:88px;height:31px"  src="http://jigsaw.w3.org/css-validator/images/vcss-blue" alt="Valid CSS!" vspace="8" border="0" /></a>
                    </div>
                </div> <!-- end of content left -->

                <div id="templatemo_content_right">
                    <div class="templatemo_product_box">
                        <h1>demo</h1>
                        <img src="bookstore_images/templatemo_image_01.jpg" alt="image" />
                        <div class="product_info">
                            <p>世界一流的摄影技术指南，教你如何使用光与影拍出高质量照片</p>
                            <h3>$55</h3>
                            <div class="buy_now_button"><a href="javascript:alert('demo')"><span>购买</span></a></div>
                            <div class="detail_button"><a href="subpage.html"><span>介绍</span></a></div>
                        </div>
                        <div class="cleaner">&nbsp;</div>
                    </div>

                    <div class="cleaner_with_width">&nbsp;</div>
                    <%
                        while (rs.next()) {
                    %>
                    <div class="templatemo_product_box">
                        <h1><%=rs.getString("bookname")%></h1>
                        <img src="bookstore_images/templatemo_image_01.jpg" alt="image" />
                        <div class="product_info">
                            <p>介绍（无）</p>
                            <h3>$<%=rs.getString("bookprice")%></h3>
                            <div class="buy_now_button"><a href="buy.jsp?id=<%=rs.getString("book_id")%>"><span>购买</span></a></div>
                            <div class="detail_button"><a href="javascript:alert('卖方没写')"><span>详情</span></a></div>
                        </div>
                        <div class="cleaner">&nbsp;</div>
                    </div>

                    <div class="cleaner_with_width">&nbsp;</div>
                    <%
                        }
                        rs.close();
                        stmt.close();
                        con.close();
                    %>
                    

                    <a href="sale.jsp"><img src="bookstore_images/templatemo_ads.jpg" alt="ads" /></a>
                </div> <!-- end of content right -->

                <div class="cleaner_with_height">&nbsp;</div>
            </div> <!-- end of content -->

            <div id="templatemo_footer">

                <a href="home.html">首页</a> | <a href="bookstore.html">经典旧书</a> | <a href="sale.html">我要卖书</a> | <a href="javascript:alert('无服务')">服务</a> | <a href="javascript:alert('清除成功')">清除缓存</a><br />
                Copyright © 2024 <a href="javascript:alert('qq:820586552')"><strong>加入我们</strong></a> | Designed by <a href="http://sc.chinaz.com/" target="_parent" title="免费模板网">免费模板网</a>	</div> 
            <!-- end of footer -->
            <!--  Free CSS Template www.templatemo.com -->
        </div> <!-- end of container -->
    </body>
</html>
