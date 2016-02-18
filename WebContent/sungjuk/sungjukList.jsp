<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>sungjukList.jsp</title>
</head>
<body>
* 목 록 *<br>
<a href="sungjukForm.jsp">[성적입력]</a><br>
<table border="1">
<tr>
	<th>번호</th>
	<th>이름</th>
	<th>국어</th>
	<th>영어</th>
	<th>수학</th>
	<th>작성일</th>
</tr>

<%
//목록
String url     ="jdbc:oracle:thin:@localhost:1521:xe";
String user    ="java1230";
String password="1234";
String driver  ="oracle.jdbc.driver.OracleDriver";
  
Connection con=null;
PreparedStatement pstmt=null;
ResultSet rs=null;
  
try {
  Class.forName(driver);
  con=DriverManager.getConnection(url, user, password);      
  StringBuffer sql=new StringBuffer();
  
  sql.append(" SELECT sno, uname,kor,eng,mat,wdate");
  sql.append(" FROM sungjuk");
  sql.append(" ORDER BY wdate desc");
  
  pstmt=con.prepareStatement(sql.toString());      
  rs=pstmt.executeQuery();
  
  if(rs.next()){
	  int num = 1;
    do {
 %>
 <tr>
 	<td><%=num++ %></td>
 	<td><a href="sungjukRead.jsp?sno=<%=rs.getInt("sno")%>"><%=rs.getString("uname")%></a></td>
 	<td><%=rs.getInt("kor") %></td>
 	<td><%=rs.getInt("eng") %></td>
 	<td><%=rs.getInt("mat") %></td>
 	<td><%=rs.getString("wdate") %></td>
 </tr>
 <%
    }while(rs.next());
    
  }
  else {
    out.println("<tr><td colspan='6'>자료 없음</td></tr>");
  }
  
}catch(Exception e){
  System.out.println("DB연결 실패: "+e);
}finally {
  try{
    rs.close();
  }catch(Exception e){}

  try{
    pstmt.close();
  }catch(Exception e){}
  
  try {
    con.close();
  }catch(Exception e){}
}    

%>
</table>
</body>
</html>