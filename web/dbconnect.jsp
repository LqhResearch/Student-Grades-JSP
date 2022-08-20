<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page import="com.db.ConnectDB, com.db.Helper" %>

<sql:setDataSource var = "db" driver = "com.mysql.jdbc.Driver"
                   url = "jdbc:mysql://localhost/ms-grades"
                   user = "root"  password = ""/>

<% request.setCharacterEncoding("UTF-8");%>
