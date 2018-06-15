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
	var dualCheck = false;
	
	function checkPwd(){
		var password = $("#password").val();
		var password_check = $("#password_check").val();
		if(password_check == ""){
			$("#alert").html("");
		}else if(password == password_check){
			$("#alert").html("success");
		}else{
			$("#alert").html("please check the password")
		}
	}
	
	function checkId(){
		var id = $("#id").val();
		$.ajax({
			type:"post",
			url:"dualCheck", // (/member/dualCheck)
			data:{id:id},
			success:function(data){
				if(data == 'y'){
					alert("중복된 아이디 입니다.");
				}else if(data == 'n'){
					alert("사용 가능한 아이디 입니다.");
					dualCheck = true;
				}else{
					alert("잠시후 다시 시도해 주세요.");
				}
			}
		});
	}
	
	function check(form){
		//유효성검사
		//console.log(form);
		//console.log(form.id);
		if(form.id.value == ""){
			alert("아이디를 입력해 주세요.");
			form.id.focus();
			return;
		}
		
		if(dualCheck == false){
			alert("중복확인을 해주세요.");
			return;
		}
		
		if(form.password.value == ""){
			alert("패스워드를 입력해 주세요.");
			form.password.focus();
			return;
		}
		
		if($("#alert").html() != "success"){
			alert("두 비밀번호가 일치하지 않습니다.");
			return;
		}
		
		//이름이 비어있는지 확인하는 코드를 작성하세요.
		if(form.name.value == ""){
			alert("이름을 입력해 주세요.");
			form.name.focus();
			return;
		}
		
		//여기까지 왔다면...
		form.submit();
	}
</script>
</head>
<body>
	<div class="main">
		<div class="header">
			<%@ include file="../jsp/menu.jsp" %>
			<h1 class="title text_center">SignUp Page</h1>
		</div>
		<div class="content">
			<form action="${pageContext.request.contextPath }/users/signup"
			      method="post">
			      <table class="insert_form">
			      	<tr>
			      		<th>ID</th>
			      		<td>
			      			<input id="id" type="text" name="id" 
			      			       onkeyup="dualCheck = false;" />
			      			<button type="button" onclick="checkId()">check</button>
			      		</td>
			      	</tr>
			      	<tr>
			      		<th>Password</th>
			      		<td>
			      			<input id="password"
			      			       type="password" 
			      			       name="password" 
			      			       onkeyup="checkPwd()"/>
			      		</td>
			      	</tr>
			      	<tr>
			      		<th></th>
			      		<td>
			      			<input id="password_check"
			      				   type="password" 
			      			       placeholder="password check"
			      			       onkeyup="checkPwd()"/><br />	
			      			<span id="alert"></span>
			      		</td>
			      	</tr>
			      	<tr>
			      		<th>NAME</th>
			      		<td>
			      			<input type="text" name="name"/>
			      		</td>
			      	</tr>
			      	<tr>
			      		<td colspan="2" class="text_center">
			      			<button type="button"
			      			        onclick="check(this.form)">Send</button>
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




