<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>sungjukUpdate.jsp</title>
</head>
<body>
* 성적수정 *
<%
int sno=Integer.parseInt(request.getParameter("sno"));

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
   sql.append(" SELECT sno,uname,kor,eng,mat,addr,wdate " );
   sql.append(" FROM sungjuk" );
   sql.append(" WHERE sno=?" );
   
   
   pstmt = conn.prepareStatement(sql.toString());
   pstmt.setInt(1,sno);
   
   ResultSet rs = pstmt.executeQuery();
   
   if (rs.next()) {
      
      %>
      
<form method="post" action="sungjukUpdateProc.jsp">
<input type="hidden" name="sno" value="<%=sno %>"> 
<table border="1">
<tr>
  <th>이름</th>
  <td><input type="text" name="uname" value=<%=rs.getString("uname") %>></td>
</tr>  
<tr>
  <th>국어</th>
  <td><input type="text" name="kor" size="5" value=<%=rs.getString("kor") %>></td>
</tr>  
<tr>
  <th>영어</th>
  <td><input type="text" name="eng" size="5" value=<%=rs.getString("eng") %>></td>
</tr>  
<tr>
  <th>수학</th>
  <td><input type="text" name="mat" size="5" value=<%=rs.getString("mat") %>></td>
</tr>  
<tr>
  <th>주소</th>
  <%String addr = rs.getString("addr"); %>
  <td>
      <select name="addr">
            <option value="Seoul" <%if(addr.equals("Seoul")) {out.print("selected");} %>>서울</option>
            <option value="Jeju" <%if(addr.equals("Jeju")) {out.print("selected");} %>>제주</option>
            <option value="Suwon" <%if(addr.equals("Suwon")) {out.print("selected");} %>>수원</option>
            <option value="Busan" <%if(addr.equals("Busan")) {out.print("selected");} %>>부산</option>
      </select>  
  </td>
</tr>  
<tr>
  <td colspan="2" align="center">
     <input type="submit" value="수정">
     <input type="reset"  value="취소">
  </td>
</tr>
</table>
</form>
      
      <% 
   } else {
      out.println("자료없음");
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