<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.javaDB.dao.UserDao"%> 

<jsp:useBean id="u" class="com.javaBean.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>

<%
   int ans = UserDao.save(u);

  if(ans>0){
	     //successfully
	  response.sendRedirect("adduser-success.jsp");
  }else
  {
	   //smthng went wrong
	  response.sendRedirect("adduser-error.jsp");
  }




%>

</body>
</html>