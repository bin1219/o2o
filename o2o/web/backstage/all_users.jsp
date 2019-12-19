<%-- 
    Document   : all_users
    Created on : 2019-12-18, 15:01:57
    Author     : 82058
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="../connect.jsp" %>
<%
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from information");
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"> 
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>我是管理员</title> 
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <link rel="stylesheet" href="assets/materialize/css/materialize.min.css" media="screen,projection" />
            <!-- Bootstrap Styles-->
            <link href="assets/css/bootstrap.css" rel="stylesheet" />
            <!-- FontAwesome Styles-->
            <link href="assets/css/font-awesome.css" rel="stylesheet" />
            <!-- Morris Chart Styles-->
            <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
            <!-- Custom Styles-->
            <link href="assets/css/custom-styles.css" rel="stylesheet" />
            <!-- Google Fonts-->
            <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
            <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css"> 
                </head>

                <body>
                    <div id="wrapper">
                        <nav class="navbar navbar-default top-navbar" role="navigation">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle waves-effect waves-dark" data-toggle="collapse" data-target=".sidebar-collapse">
                                    <span class="sr-only">???</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                                <a class="navbar-brand waves-effect waves-dark" href="index.html"><i class="large material-icons">track_changes</i> <strong>首页</strong></a>

                                <div id="sideNav" href=""><i class="material-icons dp48">toc</i></div>
                            </div>

                            <ul class="nav navbar-top-links navbar-right"> 
                                <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown4"><i class="fa fa-envelope fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>				
                                <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown3"><i class="fa fa-tasks fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
                                <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown2"><i class="fa fa-bell fa-fw"></i> <i class="material-icons right">arrow_drop_down</i></a></li>
                                <li><a class="dropdown-button waves-effect waves-dark" href="#!" data-activates="dropdown1"><i class="fa fa-user fa-fw"></i> <b>不要点我</b> <i class="material-icons right">arrow_drop_down</i></a></li>
                            </ul>
                        </nav>
                        <!-- Dropdown Structure -->
                        <ul id="dropdown1" class="dropdown-content">
                            <li><a href="javascript:alert('清理成功')"><i class="fa fa-user fa-fw"></i> 清理缓存</a>
                            </li>
                            <li><a href="javascript:alert('清理成功')"><i class="fa fa-gear fa-fw"></i> 清理内存</a>
                            </li> 
                            <li><a href="https://github.com/bin1219?tab=repositories"><i class="fa fa-sign-out fa-fw"></i> source</a>
                            </li>
                        </ul>
                        <ul id="dropdown2" class="dropdown-content w250">
                            <li>
                                <div>
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small">12 min</span>
                                </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small">4 min</span>
                                </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                        <ul id="dropdown3" class="dropdown-content dropdown-tasks w250">
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 1</strong>
                                            <span class="pull-right text-muted">60% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (success)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 2</strong>
                                            <span class="pull-right text-muted">28% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="28" aria-valuemin="0" aria-valuemax="100" style="width: 28%">
                                                <span class="sr-only">28% Complete</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 3</strong>
                                            <span class="pull-right text-muted">60% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                                                <span class="sr-only">60% Complete (warning)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <p>
                                            <strong>Task 4</strong>
                                            <span class="pull-right text-muted">85% Complete</span>
                                        </p>
                                        <div class="progress progress-striped active">
                                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                                <span class="sr-only">85% Complete (danger)</span>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                        </ul>   
                        <ul id="dropdown4" class="dropdown-content dropdown-tasks w250 taskList">
                            <li>
                                <div>
                                    <strong>John Doe</strong>
                                    <span class="pull-right text-muted">
                                        <em>Today</em>
                                    </span>
                                </div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since the 1500s...</p>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>
                                    <strong>John Smith</strong>
                                    <span class="pull-right text-muted">
                                        <em>Yesterday</em>
                                    </span>
                                </div>
                                <p>Lorem Ipsum has been the industry's standard dummy text ever since an kwilnw...</p>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <div>
                                        <strong>John Smith</strong>
                                        <span class="pull-right text-muted">
                                            <em>Yesterday</em>
                                        </span>
                                    </div>
                                    <p>Lorem Ipsum has been the industry's standard dummy text ever since the...</p>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Read All Messages</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>  
                        <!--/. NAV TOP  -->
                        <nav class="navbar-default navbar-side" role="navigation">
                            <div class="sidebar-collapse">
                                <ul class="nav" id="main-menu">

                                    <li>
                                        <a class="active-menu waves-effect waves-dark" href="index.html"><i class="fa fa-dashboard"></i> 统计</a>
                                    </li>
                                    <li>
                                        <a href="../index.html" class="waves-effect waves-dark"><i class="fa fa-desktop"></i> 回首页</a>
                                    </li>
                                    <li>
                                        <a href="all_users.jsp" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> 所有用户</a>
                                    </li>
                                    <li>
                                        <a href="all_books.jsp" class="waves-effect waves-dark"><i class="fa fa-bar-chart-o"></i> 所有旧书</a>
                                    </li>

                                    <li>
                                        <a href="all_business.jsp" class="waves-effect waves-dark"><i class="fa fa-table"></i> 所有交易</a>
                                    </li>
                                    <li>
                                        <a href="add_book.jsp" class="waves-effect waves-dark"><i class="fa fa-edit"></i> 添加旧书 </a>
                                    </li>


                                    <li>
                                        <a href="#" class="waves-effect waves-dark"><i class="fa fa-sitemap"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                                        <ul class="nav nav-second-level">
                                            <li>
                                                <a href="#">Second Level Link</a>
                                            </li>
                                            <li>
                                                <a href="#">Second Level Link</a>
                                            </li>
                                            <li>
                                                <a href="#">Second Level Link<span class="fa arrow"></span></a>
                                                <ul class="nav nav-third-level">
                                                    <li>
                                                        <a href="#">Third Level Link</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Third Level Link</a>
                                                    </li>
                                                    <li>
                                                        <a href="#">Third Level Link</a>
                                                    </li>

                                                </ul>

                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="empty.html" class="waves-effect waves-dark"><i class="fa fa-fw fa-file"></i> Empty Page</a>
                                    </li>
                                </ul>

                            </div>

                        </nav>
                        <!-- /. NAV SIDE  -->

                        <div id="page-wrapper">
                            <div class="header"> 
                                <h1 class="page-header">
                                    Dashboard
                                </h1>
                                <ol class="breadcrumb">
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Dashboard</a></li>
                                    <li class="active">Data</li>
                                </ol> 

                            </div>
                            <div id="page-inner">

                                <div class="row">
                                    <div class="col-md-12">
                                        <!-- Advanced Tables -->
                                        <div class="card">
                                            <div class="card-action">
                                                所有用户
                                            </div>
                                            <div class="card-content">
                                                <div class="table-responsive">
                                                    <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                                        <thead>
                                                            <tr>
                                                                <th>用户编号</th>
                                                                <th>用户学号</th>
                                                                <th>用户姓名</th>
                                                                <th>联系电话</th>
                                                                <th>编辑</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr class="odd gradeX">
                                                                <td>0</td>
                                                                <td>170102030117</td>
                                                                <td>lichengbin</td>
                                                                <td class="center">18979748586</td>
                                                                <td><a href="javascript:alert('demo')">修改</a>|||<a href="javascript:alert('demo')">删除</a></td>
                                                            </tr>
                                                            <%
                                                                while (rs.next()) {
                                                            %>
                                                            <tr>
                                                                <td><%=rs.getString("id")%></td>
                                                                <td><%=rs.getString("sid")%></td>
                                                                <td><%=rs.getString("name")%></td>
                                                                <td><%=rs.getString("telephone")%></td>
                                                                <td>
                                                                    <a href='user_edit.jsp?id=<%=rs.getString("id")%>'>编辑</a>
                                                                    <a href='user_delete.jsp?id=<%=rs.getString("id")%>'>删除</a>
                                                                </td>
                                                            </tr>
                                                            <%
                                                                }
                                                                rs.close();
                                                                stmt.close();
                                                                con.close();
                                                            %>
                                                        </tbody>
                                                    </table>
                                                </div>

                                            </div>
                                        </div>
                                        <!--End Advanced Tables -->
                                    </div>
                                </div>
                            </div>
                            <footer><p>All right reserved. Template WebThemez.com.  More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>>


                            </footer>
                        </div>
                        <!-- /. PAGE INNER  -->
                    </div>
                    <!-- /. PAGE WRAPPER  -->
                    </div>
                    <!-- /. WRAPPER  -->
                    <!-- JS Scripts-->
                    <!-- jQuery Js -->
                    <script src="assets/js/jquery-1.10.2.js"></script>

                    <!-- Bootstrap Js -->
                    <script src="assets/js/bootstrap.min.js"></script>

                    <script src="assets/materialize/js/materialize.min.js"></script>

                    <!-- Metis Menu Js -->
                    <script src="assets/js/jquery.metisMenu.js"></script>
                    <!-- Morris Chart Js -->
                    <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
                    <script src="assets/js/morris/morris.js"></script>


                    <script src="assets/js/easypiechart.js"></script>
                    <script src="assets/js/easypiechart-data.js"></script>

                    <script src="assets/js/Lightweight-Chart/jquery.chart.js"></script>

                    <!-- Custom Js -->
                    <script src="assets/js/custom-scripts.js"></script> 


                </body>

                </html>