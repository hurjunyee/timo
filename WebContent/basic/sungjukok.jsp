<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form/sungjukok.jsp</title>
</head>
<body>
* 성적결과 *<br/>
<%
request.setCharacterEncoding("utf-8");

String uname=request.getParameter("uname").trim();
// "80" -> 80 형변환
int kor=Integer.parseInt(request.getParameter("kor").trim());// "80"
int eng=Integer.parseInt(request.getParameter("eng").trim());// "80"
int mat=Integer.parseInt(request.getParameter("mat").trim());// "80"
int aver=(kor+eng+mat)/3;

out.print("이름:"+uname+"<br>");
out.print("국어:"+kor+"<br>");
out.print("영어:"+eng+"<br>");
out.print("수학:"+mat+"<br>");
out.print("평균:"+aver+"<br>");

if(aver>=70){
  if(kor<40||eng<40||mat<40)
    out.println("재시험<br>");
  else
    out.println("합격<br>");
}    
else {
  out.println("불합격<br>");
}


if(aver>=95) {
  System.out.println("장학생<br>");
}

for(int star=0; star<aver/10; star++){
  out.print("*");
}
%>
</body>
</html>