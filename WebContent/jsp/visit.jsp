<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	function check(f){
		if(f.content.value == ""){
			alert("방명록을 입력해주세요.");
			f.content.focus();
			return;
		}
		f.submit();
	}
	
	function del(id){
		location.href = "${pageContext.request.contextPath}/visit/delete?id="+id;
	}
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<h4>Weed's Blog</h4>
				<ul class="nav nav-pills nav-stacked text-center">
					<jsp:include page="menu.jsp"/>
					<li><a href="${pageContext.request.contextPath}/main">Home</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/visit">visit</a></li>
					<li><a href="${pageContext.request.contextPath}/photos">Photos</a></li>
				</ul>
				<br />
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search Blog" />
					<span class="input-group-btn">
						<button type="button" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
			<div class="col-sm-9">
				 <div class="main text-center">
				 <form action="${pageContext.request.contextPath}/visit/insert" class="form-inline" method="post">
				 <label for="content">원하시는 방명록을 입력해 주세요 !</label>
				 <input type="hidden" name="u_id" value="${sessionScope.id}" />
				 <input type="text" name="content" id="content" class="form-control inline"/> <button type="button" onclick="check(this.form);" class="btn btn-default">등록</button>
				 </form>
				</div>
				<div class="visit ">
					<table class="table table-striped">
					<tr>
						<th>아이디</th>
						<th>내용</th>
						<th>시간</th>
					</tr>
					<c:forEach var="vvo" items="${visitList}" >
					<tr>
						<td>${vvo.u_id}</td>
						<td>${vvo.content }</td>
						<td>${vvo.regdate } <c:if test="${sessionScope.id2 == vvo.u_id}"> <button type="button" onclick="del(${vvo.id});" class="btn btn-default">삭제</button> </c:if></td>
					</tr>
					</c:forEach>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>