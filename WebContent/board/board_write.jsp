<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String nick = (String)session.getAttribute("user_nick");

	if(nick==null){%>
		<script>
			alert("로그인 후 작성이 가능합니다.");
			history.go(-1);
		</script>
	<%}%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>TheEvent - Bootstrap Event Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="/Webpage/img/favicon.png" rel="icon">
  <link href="/Webpage/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="/Webpage/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="/Webpage/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="/Webpage/lib/animate/animate.min.css" rel="stylesheet">
  <link href="/Webpage/lib/venobox/venobox.css" rel="stylesheet">
  <link href="/Webpage/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="/Webpage/css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: TheEvent
    Theme URL: https://bootstrapmade.com/theevent-conference-event-bootstrap-template/
    Author: BootstrapMade.com 
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>
<body style="margin-top:70px;">

<%@ include file = "../include/header.jsp" %>

<div align="center" class="div_center">
	<h3>게시판 글 작성 페이지</h3>
	<hr>
	<section id="user">
	<form action="regist.board" method="post">
		<table border="1" width="500">
			<tr>
				<td>닉네임</td>
				<td>
					<input type="text" name="writer" value="<%=nick%>" readonly>
				</td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td>
					<select name="category">
						<option value="free">자유</option>
						<option value="rts">RTS</option>
						<option value="sports">스포츠</option>
						<option value="fps">FPS</option>
						<option value="rpg">RPG</option>
						<option value="rts">RTS</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>글 제목</td>
				<td>
					<input type="text" name="title" >
				</td>
			</tr>
			<tr>
				<td>글 내용</td>
				<td>
					<textarea rows="10" style="width: 95%;" name="content"></textarea>
					<!-- background:#101522 // color: white -->
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="작성 완료">
					&nbsp;&nbsp;
					<input type="button" value="목록" onclick="location.href='list.board' ">         
				</td>
			</tr>
			
		</table>
	</form>
	</section>
</div>
	
<%@ include file = "../include/footer.jsp" %>

</body>
</html>