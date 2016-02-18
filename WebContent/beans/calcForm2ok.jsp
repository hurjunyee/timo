<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="net.test.*" %>
<jsp:useBean id="calc" class="net.test.CalcBean"/>
<!DOCTYPE html> 
<html>
<head>
<meta charset="UTF-8">
<title>beans/clacForm2ok.jsp</title>
</head>
<body>
* 절대값/팩토리얼값을 구하시오 *<br/>
<%
int su=Integer.parseInt(request.getParameter("su"));
out.print(su+" 절대값: "+calc.abs(su));
out.print("<br/>");
out.print(su+" 팩토리얼: "+calc.fact(su));
out.print("<br/>");
%>
</body>
</html>