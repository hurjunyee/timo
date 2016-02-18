<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>blank.jsp</title>
</head>
<body>
<!-- 자바 기초 문법 -->
대한민국<br>
<!--
스타일 <style></style>
자바스크립트 <script></script>
 -->
 <%
 // JSP 코드 작성 영역
 // 한줄 주석
 /* 여러줄 주석 */
 /* out.print("무궁화"); */
 String name = "홍길동";
 int kor = 90, eng = 80, mat = 100;
 int tot = kor + eng + mat;
 int aver = tot / 3;
 
 out.print("이름:" + name + "<br>");
 out.print("국어:" + kor + "<br>");
 out.print("영어:" + eng + "<br>");
 out.print("수학:" + mat + "<br>");
 out.print("총점:" + tot + "<br>");
 out.print("평균:" + aver + "<br>");
 %>
 <hr>
 <table border="1">
 <tr>
 	<td>이름</td>
 	<td><%out.print(name); %></td>
 </tr>
 <tr>
 	<td>국어</td>
 	<td><%=kor %></td>
 </tr>
 </table>
</body>
</html>