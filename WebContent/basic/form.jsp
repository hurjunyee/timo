<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 컨트롤</title>
</head>
<body>
* 다양한 폼 컨트롤 요소 *<br/>
<form method="post" action="formok.jsp">
아이디: <input type="text" name="uid" value="soldesk"><br/>
비번: <input type="password" name="upw" size="10" maxlength="12"><br/>
이름: <input type="text" name="uname"><br/>
내용: <textarea rows="3" cols="20" name="content"></textarea> <br/>
결혼: <input type="radio" name="marry" value="N">미혼
      <input type="radio" name="marry" value="Y">기혼
<br/>
취미: <input type="checkbox" name="h1" value="1">영화감상
      <input type="checkbox" name="h2" value="2">음악감상
      <input type="checkbox" name="h3" value="3">바둑
<br/>
약관동의 <input type="checkbox" name="agree">

<br/>
통신회사: <select name="phone">
            <option value="SK">SK
            <option value="KTF">KTF
            <option value="LG">LG U+
          </select>
<br/>
<input type="hidden" name="page" value="1">
<input type="file">
<input type="button" value="확인">

<br/>
<input type="submit" value="전송">
<input type="reset" value="취소">
</form>
</body>
</html>