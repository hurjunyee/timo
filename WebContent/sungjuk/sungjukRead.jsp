<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
성적상세보기<br>
<%
int sno = Integer.parseInt(request.getParameter("sno"));

String url = "jdbc:oracle:thin:@localhost:1521:xe"; // 1521 포트번호
String user = "java1230";
String password = "1234";
String driver = "oracle.jdbc.driver.OracleDriver"; // ojdbc6.jar
Connection conn = null;
PreparedStatement pstmt = null;
try {
   Class.forName(driver);
   conn = DriverManager.getConnection(url, user, password);
   
   StringBuffer sql = new StringBuffer();
   sql.append(" SELECT sno,uname,kor,eng,mat,aver,addr,wdate " );
   sql.append(" FROM sungjuk" );
   sql.append(" WHERE sno=?" );
   
   
   pstmt = conn.prepareStatement(sql.toString());
   pstmt.setInt(1,sno);
   
   ResultSet result = pstmt.executeQuery();
   
   if (result.next()) {
      
      %>
      
   <table border = "1">
   <tr>
      <th>이름</th>
      <td><%=result.getString("uname") %></td>
      
   </tr>
   <tr>
      <th>국어</th>
      <td><%=result.getInt("kor") %></td>
   </tr>
   <tr>
      <th>수학</th>
      <td><%=result.getInt("mat") %></td>
   </tr>
   <tr>
      <th>영어</th>
      <td><%=result.getInt("eng") %></td>
   </tr>   
   <tr>
      <th>작성일</th>
      <td><%=result.getString("wdate") %></td>
   </tr>
   </table>
   <br>
   <a href="sungjukUpdate.jsp?sno=<%=sno%>">[수정]</a>&nbsp;&nbsp;&nbsp;
   <a href="sungjukDel.jsp?sno=<%=sno%>">[삭제]</a>
      <%
   } else {
      System.out.println("자료없음");
   }

} catch (Exception e) {
   System.out.println("DB연결 실패 : " + e);
} finally {
   try {
      pstmt.close();
   } catch (Exception e) {
      e.printStackTrace();
   }
   try {
      conn.close();
   } catch (Exception e) {
      e.printStackTrace();
   }
}
%>
</body>
</html>