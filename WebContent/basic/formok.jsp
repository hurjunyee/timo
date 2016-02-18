<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>formok.jsp</title>
</head>
<body>
결과페이지<br>
<%
/* 
내장객체(내부객체) : 톰캣서버에 의해 자동으로 생성된 객체
1) out : 웹브라우저 출력 객체
2) request : 사용자가 요청한 정보를 보관하는 객체(요청)
3) response : 서버가 사용자에게 제공할 정보를 보관하는 객체(응답)
4) session : 서버에 접근한 사용자를 개별적으로 접근할 때
5) application : 서버에 접근한 모든 사용자가 공유하는 값
 */
 
/* 
interface HttpServletRequest extends ServletRequest {}
class HttpServletRequestWrapper implements HttpServletRequest {}
HttpServletRequest request = new HttpServletRequestWrapper()
  */
 
//한글인코딩
request.setCharacterEncoding("utf-8"); //euc-kr
out.print(request.getParameter("uid").trim());
out.print("<br/>");
out.print(request.getParameter("upw").trim());
out.print("<br/>");
out.print(request.getParameter("uname").trim());
out.print("<br/>");
out.print("<hr>");
/*
out.print(request.getRemoteAddr()+"<br/>");//해당 PC IP
out.print(request.getRemoteHost()+"<br/>");
out.print(request.getRemotePort()+"<br/>");
out.print(request.getRemoteUser()+"<br/>");

out.print(request.getRequestURI()+"<br/>");// /myweb/test/formok.jsp
out.print(request.getRequestURL()+"<br/>");// http://localhost:9090/myweb/test/formok.jsp
out.print(request.getContextPath()+"<br/>");// /myweb

//D:\JSP201412\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\myweb\test
out.print(request.getRealPath("/test")+"<br/>");
*/
out.print(request.getParameter("content").replace("\n","<br/>"));
out.print("<br/>");
out.print(request.getParameter("marry"));
out.print("<br/>");

out.print(request.getParameter("h1"));
out.print("<br/>");
out.print(request.getParameter("h2"));
out.print("<br/>");
out.print(request.getParameter("h3"));

out.print("<br/>");
if(request.getParameter("agree")!=null) {
  out.print("약관 동의 했음!!");
}
else {
  out.print("약관 동의 안했음!!");
}

out.print(request.getParameter("phone"));
out.print("<br/>");

out.print(request.getParameter("page"));
out.print("<br/>");
%>
</body>
</html>
%>
</body>
</html>