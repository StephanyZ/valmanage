<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.io.*,java.util.*,java.text.SimpleDateFormat,java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>forward测试实例</title>
</head>
<body>
	<center>jsp项目创建成功！</center>
	<p>
		今天的日期是：<%=new SimpleDateFormat("YYYY-MM-dd HH:mm:ss").format(new Date())%>
	</p>
</body>
</html>