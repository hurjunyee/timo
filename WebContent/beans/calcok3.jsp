<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.test.Compute"%>    
<jsp:useBean id="comp" class="net.test.Compute" scope="page"/>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calcok3.jsp</title>
</head>
<body>
3)자바빈즈 사용<br/>
<%
int num1=Integer.parseInt(request.getParameter("num1")); 
int num2=Integer.parseInt(request.getParameter("num2"));

out.print(comp.add(num1, num2)+"<br/>");
out.print(comp.sub(num1, num2)+"<br/>");
out.print(comp.mul(num1, num2)+"<br/>");
out.print(comp.divi(num1, num2)+"<br/>");
out.print(comp.mou(num1, num2)+"<br/>");
%>
</body>
</html>

 