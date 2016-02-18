<%@ page contentType="text/html; charset=UTF-8" %>
<%-- <%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file = "공통페이지 파일명" %>
<%@ taglib %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>03메소드.jsp</title>
</head>
<body>
<%
int result = 0;
result = hap(2,5);
out.print(result + "<br>");

result = max(2, 5, 30);
out.print(result + "<br>");
%>

<%!
// JSP 페이지에서 메소드 작성 영역
public int hap(int a, int b) {
	if(a>b) { int temp = a; a = b; b = temp; }
	int sum = 0;
	for(int n = a; n <= b; n++) sum += n;
	return sum;
}

public int max(int a, int b, int c) {
	return Math.max(a, Math.max(b,c));
}

%>
</body>
</html>