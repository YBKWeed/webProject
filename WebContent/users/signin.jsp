<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/style.css" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	function check(form){
		//유효성 검사
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요.");
			form.id.focus();
			return;
		}
		if(form.password.value == ""){
			alert("패스워드를 입력해 주세요.");
			form.password.focus();
			return;
		}
		form.submit();
	}
</script>
</head>
<body>
	<div class="main">
		<div class="header">
			<jsp:include page="../jsp/menu.jsp"/>
			<h1 class="title text_center">SignIn Page</h1>
		</div>
		<div class="content">
			<form id="form" action="signin" method="post">
				<table class="insert_form">
					<tr>
						<th>ID</th>
						<td>
							<input type="text" name="id" />
						</td>
					</tr>
					<tr>
						<th>Password</th>
						<td>
							<input type="password" name="password" />
						</td>
					</tr>
					<tr>
						<td colspan="2" class="text_center">
							<button type="button" 
			        onclick="check(this.form)">SignIn</button>
							<button type="button" 
	        		onclick="location.href='../main'">Cancel</button>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>




