<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<title>02배열.jsp</title>
</head>
<body>
<%
String[] name = {"무궁화", "홍길동", "개나리", "진달래", "라일락"};
int[] kor = {100, 20, 90, 70, 35};
int[] eng = {100, 50, 95, 80, 100};
int[] mat = {100, 30, 90, 60, 100};
int[] aver = new int[5];
int[] rank = {1, 1, 1, 1, 1};
int idx;
int size = name.length;

for(idx = 0; idx < size; idx++) {
	aver[idx] = (kor[idx] + eng[idx] + mat[idx]) / 3;
}


for(idx = 0; idx < size; idx++) {
	for(int i = idx+1; i<size; i++) {
		if(aver[idx] < aver[i])
			rank[idx]++;
		else
			rank[i]++;
	}
}

/*for(idx = 0; idx < size; idx++) {
	int cnt = size;
	for(int i = 0; i < size; i++) {
		if(idx == i)
			continue;
		if(aver[idx] > aver[i])
			cnt--;
	}
	rank[idx] = cnt;
}*/
/* 
// 출력
for(int i = 0; i < size; i++) {
	out.print(name[i] + " ");
	out.print(kor[i] + " ");
	out.print(eng[i] + " ");
	out.print(mat[i] + " ");
	out.print(aver[i] + " ");
	out.print(rank[i] + " ");
	
	// 합격, 재시험, 불합격
	// 평균 70점 이상이면 합격
	// (단 한 과목이라도 40점 미만이라면 재시험)
	// 평균 70점 미만이면 불합격
	if(aver[i] < 70)
		out.print("불합격 ");
	else {
		if(kor[i] >= 40 && eng[i] >= 40 && mat[i] >= 40)
			out.println("합격 ");
		else
			out.println("재시험 ");
	}
	
	// 평균 10점당 별표 하나씩
	for(int j = 0; j < (aver[i]/10); j++)
		out.print("*");
	
	out.println();
} */
%>

<table border=1>
<tr>
	<th>이름</th>
	<th>국어</th>
	<th>영어</th>
	<th>수학</th>
	<th>평균</th>
	<th>등수</th>
	<th>결과</th>
	<th>비고</th>
</tr>
<%for(idx = 0; idx < size; idx ++) {%>
	<tr>
		<td><%=name[idx] %></td>
		<td><%=kor[idx] %></td>
		<td><%=eng[idx] %></td>
		<td><%=mat[idx] %></td>
		<td><%=aver[idx] %></td>
		<td><%=rank[idx] %></td>
		<td>
			<% // 결과 : 평균에 따라 합격, 재시험, 불합격
			if(aver[idx] < 70)
				out.print("불합격 ");
			else {
				/*if(kor[i] < 40 || eng[i] < 40 || mat[i] < 40)
					out.println("재시험");
				else
					out.println("합격");*/
				if(kor[idx] >= 40 && eng[idx] >= 40 && mat[idx] >= 40)
					out.println("합격 ");
				else
					out.println("재시험 ");
			}
			%>
		</td>
		<td>
			<% // 비고 : 평균 10점당 별 1개씩
			for(int j = 0; j < (aver[idx]/10); j++)
				out.print("*");
			%>
		</td>
	</tr>
<%}%>

</table>
</body>
</html>