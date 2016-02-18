<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.test.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calcok2.jsp</title>
</head>
<body>
2)자바 클래스파일 사용<br/>
<%
int num1=Integer.parseInt(request.getParameter("num1")); 
int num2=Integer.parseInt(request.getParameter("num2"));

Compute comp=new Compute();
out.print(comp.add(num1, num2)+"<br/>");
out.print(comp.sub(num1, num2)+"<br/>");
out.print(comp.mul(num1, num2)+"<br/>");
out.print(comp.divi(num1, num2)+"<br/>");
out.print(comp.mou(num1, num2)+"<br/>");
%>
</body>
</html>