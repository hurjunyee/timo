<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/calcForm.jsp</title>
</head>
<body>
<!--
1)JSP 메소드 호출
<form name="calcfrm" method="post" action="calcok1.jsp">

2)자바클래스 사용 
<form name="calcfrm" method="post" action="calcok2.jsp">

3)자바 빈즈
-->
<form name="calcfrm" method="post" action="calcok3.jsp">
<table border="1">
<tr>
  <th>첫번째 수</th>
  <td><input type="text" name="num1" size=3></td>
</tr> 
<tr>
  <th>두번째 수</th>
  <td><input type="text" name="num2" size=3></td>
</tr> 
<tr>
  <td colspan="2">
    <input type="submit" value="계산">
    <input type="reset" value="취소">
    </td>
</tr> 
</table>
</form>

</body>
</html>