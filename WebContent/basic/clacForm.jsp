<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기 연습</title>
</head>
<body>
<form name="calcfrm" method="post" action="calcok.jsp">
첫번째 수: <input type="text" name="num1" size="3" maxlength="5"> <br/>
연산자:    <input type="text" name="op"   size="3" maxlength="5"> <br/>
두번째 수: <input type="text" name="num2" size="3" maxlength="5"> <br/>
<input type="submit" value="전송">
<input type="reset" value="취소">
</form>
</body>
</html>