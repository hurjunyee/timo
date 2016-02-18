<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/testbean/calcok.jsp</title>
</head>
<body>
1)jsp페이지 메소드 호출방식<br/><br/>
<%
int num1=Integer.parseInt(request.getParameter("num1")); 
int num2=Integer.parseInt(request.getParameter("num2"));

out.print(num1+"+"+num2+"="+add(num1,num2));
out.print("<br/>");
out.print(num1+"-"+num2+"="+sub(num1,num2));
out.print("<br/>");
out.print(num1+"*"+num2+"="+mul(num1,num2));
out.print("<br/>");
out.print(num1+"/"+num2+"="+divi(num1,num2));
out.print("<br/>");
out.print(num1+"%"+num2+"="+mou(num1,num2));
out.print("<br/>");
%>

<%!
// JSP 작성 영역
public int add(int n1,int n2) { return n1+n2; }
public int sub(int n1,int n2) { return n1-n2; }
public int mul(int n1,int n2) { return n1*n2; }
public int divi(int n1,int n2) { return n1/n2; }
public int mou(int n1,int n2) { return n1%n2; }
%>
</body>
</html>