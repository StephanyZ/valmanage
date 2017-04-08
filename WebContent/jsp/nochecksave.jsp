<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.*,java.sql.Connection,java.sql.Statement,java.util.Formatter"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>安全阀管理系统</title>
</head>
<body>
	<jsp:useBean id="connect" class="com.xfzhang.bean.connection" />
	<% 
try {
ResultSet rs=null;
String productno=request.getParameter("productno");
String manufacture=request.getParameter("manufacture");
String factoryindex=request.getParameter("factoryindex");
String valvolume=request.getParameter("valvolume");
String storagelocationnum=request.getParameter("storagelocationnum");
String lo="select * from val_information where productno=\""+productno+"\" and manufacture=\""+manufacture+"\"";
rs=connect.query(lo);
int f=0;
if(rs.next()){
	String valnumber=rs.getString("valnumber");
	String lo1="select * from localtioninfo where storagelocationnum=\""+storagelocationnum+"\"";
	rs=connect.query(lo1);
	if(!rs.next()){
		%><script>alert("存储位置信息不存在，请核实或使用推荐位置！");</script><%
		return;
	}
	if(rs.getInt("locationstatus")==0){
		String modify="update locationinfo valsavestatusinfo set locationstatus=1 where storagelocationnum=\""+storagelocationnum+"\"";
		String insert="insert into ";
	}else{
		%><script>alert("存储位置已被占用，请使用推荐位置或重新选择！");</script><%
	}
}else{%>
	<script>alert("系统未录入该安全阀信息，请录入后再进行存储！");</script><%
	return;
}
}catch (Exception e) {
	System.out.print("get data error!");
    e.printStackTrace();
    }
	

%>
	<%-- jsp:include page="connection.jsp" flush="true"></jsp:include>--%>

	<%-- <jsp:forward page="test.jsp"></jsp:forward>--%>
</body>
</html>