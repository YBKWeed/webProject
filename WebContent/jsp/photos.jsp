<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
</head>
<body>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<h4>Weed's Blog</h4>
				<ul class="nav nav-pills nav-stacked text-center">
					<jsp:include page="menu.jsp" />
					<li><a href="${pageContext.request.contextPath}/main">Home</a></li>
					<li><a
						href="${pageContext.request.contextPath}/visit">visit</a></li>
					<li class="active"><a href="${pageContext.request.contextPath}/photos">Photos</a></li>
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
				<div class="form text-center">
					<form action="${pageContext.request.contextPath}/photo/insert"
						enctype="multipart/form-data" method="post" class="text-center">
						<div class="main ">
							<input type="hidden" name="id" value="${sessionScope.id2 }" />
							<div class="form-group form-inline">
								<input type="text" name="content" id="content"
									class="form-control" placeholder="Message" />
							</div>
							<div class="form-group form-inline">
								<input type="file" name="photo" id="photo" class="form-control" />
							</div>
						</div>
						<button type="submit" class="btn btn-default">등록</button>
					</form>
				</div>
				<div class="main container-fluid ">
					<c:forEach var="pvo" items="${pvoList}">
						<div class="photo col-md-4">
							<img
								src="${pageContext.request.contextPath}/upload/${pvo.filename }"
								alt="" class="img-responsive"
								style="width: 300px; height: 300px;" /> <label for="">${pvo.content }</label>
							<label for="">/${pvo.u_id }</label>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>