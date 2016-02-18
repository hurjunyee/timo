<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form/sungjukTest.jsp</title></head>
<body>
* 성적입력 *<br/>
<form method="post" action="sungjukok.jsp">
  이름: <input type="text" name="uname"> <br/>
  국어: <input type="text" name="kor" size="5"> <br/>
  영어: <input type="text" name="eng" size="5"> <br/>
  수학: <input type="text" name="mat" size="5"> <br/>
   
  <input type="submit" value="전송">
  <input type="reset"  value="취소">
</form>
</body>
</html>