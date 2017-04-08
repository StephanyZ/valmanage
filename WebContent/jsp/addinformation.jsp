<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.*,java.sql.Connection,java.sql.Statement,java.util.Formatter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
	<jsp:useBean id="connect" class="com.xfzhang.bean.connection" />
	<% 
String productno=request.getParameter("productno");
String manufacture=request.getParameter("manufacture");
String manucode=request.getParameter("manucode");

String valvecate=request.getParameter("valvecate");
String diapress=request.getParameter("diapress");
String requiredpress=request.getParameter("requiredpress");

String diameter=request.getParameter("diameter");
String valdiameter=request.getParameter("valdiameter");
String pressgrade=request.getParameter("pressgrade");

String revise=request.getParameter("revise");
String reseatpress=request.getParameter("reseatpress");
String media=request.getParameter("media");

String designpress=request.getParameter("designpress");
String designtemper=request.getParameter("designtemper");
String valvepno=request.getParameter("valvepno");

String outputtime=request.getParameter("outputtime");
String inportvalve=request.getParameter("inportvalve");
String svalve=request.getParameter("svalve");

String factoryindex=request.getParameter("factoryindex");
String factory=request.getParameter("factory");
String address=request.getParameter("address");

String contact=request.getParameter("contact");
String telephone=request.getParameter("telephone");
String postcode=request.getParameter("postcode");

String sendtime=request.getParameter("sendtime");
String requireddrawtime=request.getParameter("requireddrawtime");
String valnumber=null;

String add_valinformation="insert into val_information values("+productno+","+manufacture+","+valnumber+","+valvecate+","+media+","+diapress+","+diameter+","+valdiameter+","+requiredpress+","+pressgrade+","+outputtime+","+revise+","+manucode+","+designpress+","+designtemper+","+valvepno+","+reseatpress+","+inportvalve+","+svalve+")";
String add_usefactory="insert into userfactory values("+factoryindex+","+factory+","+address+","+postcode+","+contact+"，"+telephone+")";


%>
	<p>
		出场编号：<%=productno %>
		manufacture:<%=manufacture %>
	</p>
</body>
</html>