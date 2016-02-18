<%@page import="java.sql.*"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>sungjukUpdateProc.jsp</title>
</head>
<body>
* 성적업데이트 *<br>
<%
request.setCharacterEncoding("UTF-8");
int sno=Integer.parseInt(request.getParameter("sno"));
String uname = request.getParameter("uname");
int kor = Integer.parseInt(request.getParameter("kor"));
int eng = Integer.parseInt(request.getParameter("eng"));
int mat = Integer.parseInt(request.getParameter("mat"));
int aver = (kor + eng + mat ) / 3;
String addr = request.getParameter("addr");

//DB 연결정보
		String url="jdbc:oracle:thin:@192.168.0.215:1521:xe";
		String user="java1230";
		String password="1234";
		String driver="oracle.jdbc.driver.OracleDriver"; // ojdbc6.jar
		
		Connection con=null;
		PreparedStatement pstmt=null;
		
		
		try {
			Class.forName(driver); // 드라이버 로딩
			con = DriverManager.getConnection(url, user, password); // 연결
//			System.out.println("오라클 DB 연결 성공");
			
			// 쿼리문 작성
			StringBuffer sql = new StringBuffer();
			sql.append(" update sungjuk") ;
			sql.append(" set uname=?, kor=?, eng=?, mat=?, aver=?, addr=?, wdate=sysdate");
			sql.append(" where sno = ?");
			
			// 쿼리문 생성
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, uname);
			pstmt.setInt(2, kor);
			pstmt.setInt(3, eng);
			pstmt.setInt(4, mat);
			pstmt.setInt(5, aver);
			pstmt.setString(6, addr);
			pstmt.setInt(7, sno);
			
			// 쿼리문 실행
			int result = pstmt.executeUpdate();
			if(result == 0) {
				out.println("수정 실패<br>");
				out.println("<a href='javascript:history.go(-1)'>[다시 시도]</a>");
			} else {
			%>
			<script>
				alert("수정 성공");
				/* response.sendRedirect("sungjukList.jsp"); */
				window.location.href="sungjukList.jsp";
			</script>
			<% 
			}
			
		} catch (Exception e) {
			out.println("DB 연결 실패: " + e);
		} finally {
			// DB 연결 자원 반납
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
%>
</body>
</html>