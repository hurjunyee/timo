<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>calcok.jsp</title>
</head>
<body>
* 결과 페이지 *<br/>
<%
//사용자 입력 요청한 값을 보관하는 객체 request. 톰캣 자동 생성
//HttpServletRequestWrapper request

//사용자 입력 요청한 값을 가져오기
String num1=request.getParameter("num1");//"3"
String num2=request.getParameter("num2");//"5"
String op  =request.getParameter("op");//"+"
//out.print(num1+"<br/>");
//out.print(num2+"<br/>");
//out.print(op+"<br/>");
//출력결과 3+5=7
int a=Integer.parseInt(num1); //"3"->3
int b=Integer.parseInt(num2); //"5"->5
int res=0;
double res2=0.0;

if(op.equals("+"))
  res=a+b;
else if(op.equals("-"))
  res=a-b;
else if(op.equals("*"))
  res=a*b;
else if(op.equals("/"))
  res2=(double)a/b;
else if(op.equals("%"))
  res=a%b;

%>

<table border="0">
<tr>
  <td><%=num1 %></td>
  <td><%=op %></td>
  <td><%=num2 %></td>
  <td> = </td>
  <td>
  <%
    if(op.equals("/"))
     out.print(res2);
    else 
     out.print(res);
  %>
  </td>
</tr>  
</table>
</body>
</html>