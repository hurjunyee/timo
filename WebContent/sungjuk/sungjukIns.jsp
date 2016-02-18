<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

int kor =Integer.parseInt(request.getParameter("kor"));
int eng =Integer.parseInt(request.getParameter("eng"));
int mat =Integer.parseInt(request.getParameter("mat"));
int tot = kor + eng + mat;
int aver = tot /3;

String uname = request.getParameter("uname");
String addr = request.getParameter("addr");

out.print(request.getParameter("uname")+"<br>"); 
out.print(kor+"<br>");
out.print(mat+"<br>");
out.print(eng+"<br>");
out.print(tot+"<br>");
out.print(aver+"<br>");
out.print(request.getParameter("addr") + "<br>");

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
			sql.append("insert into sungjuk(sno, uname, kor, eng, mat, aver, addr, wdate)") ;
			sql.append("values(sungjuk_seq.nextval, ?, ?, ?, ?, ?, ?, sysdate)");
			
			// 쿼리문 생성
			pstmt = con.prepareStatement(sql.toString());
			pstmt.setString(1, uname);
			pstmt.setInt(2, kor);
			pstmt.setInt(3, eng);
			pstmt.setInt(4, mat);
			pstmt.setInt(5, aver);
			pstmt.setString(6, addr);
			
			// 쿼리문 실행
			int result = pstmt.executeUpdate();
			if(result == 0) {
				out.println("추가 실패<br>");
				out.println("<a href='javascript:history.go(-1)'>[다시 시도]</a>");
			} else {
				/* out.println("추가 성공<br>");
				out.println("<a href='sungjukList.jsp'>[목록]</a>"); */
				response.sendRedirect("sungjukList.jsp");
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