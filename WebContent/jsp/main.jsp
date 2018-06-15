<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
.row.content {
	height: auto;
	margin-bottom: 30px;
}

.footer {
	background: #555;
	color: white;
	padding: 15px;
}

@media screen and (max-width: 767px) {
	.row.content {
		heigth: auto;
	}
}

.slide {
	height: 300px;
	width: : 400px;
}

div.item img{
	width : 100%;
	height : 100%;
}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-3 sidenav">
				<h4>Weed's Blog</h4>
				<ul class="nav nav-pills nav-stacked text-center">
					<jsp:include page="menu.jsp"/>
					<li class="active"><a href="${pageContext.request.contextPath}/main">Home</a></li>
					<li><a href="${pageContext.request.contextPath}/visit">visit</a></li>
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
				<h4>
					<small>RECENT POST</small>
				</h4>
				<hr />
				<h2>I Love Game</h2>
				<h5>
					<span class="glyphicon glyphicon-time"></span> Post by Jane Dane,
					sep 25, 2018
				</h5>
				<h5>
					<span class="label label-danger">Game</span> <span
						class="label label-primary">Ipsum</span>
				</h5>

				<p>Game is my passion. Lorem ipsum dolor sit amet, consectetur
					adipisicing elit. Illo tempore quo sunt aliquam vitae quas maiores
					nostrum eos cupiditate necessitatibus exercitationem ad dolore ea
					harum reprehenderit magnam sit. Quisquam accusantium quae fugit
					explicabo quibusdam assumenda beatae dignissimos obcaecati amet.
					Saepe earum adipisci accusantium magni suscipit reiciendis
					aspernatur vel autem temporibus esse quisquam nam et blanditiis
					excepturi consequuntur quidem amet distinctio ab tenetur
					perferendis provident quam dolores doloribus ipsum nesciunt nulla
					non nihil in sunt ipsa? Deleniti ea dolor suscipit maiores eos
					incidunt libero accusantium eum quasi provident ipsam magni cumque
					eligendi amet recusandae unde numquam quas saepe quod repellat
					temporibus.</p>
				<br /> <br />
				<div class="row">
					<div class="col-sm-6 col-sm-offset-3">
						<div class="carousel slide" data-ride="carousel" id="mycarousel">
							<!-- indicator -->
							<ol class="carousel-indicators">
								<li data-target="#mycarousel" class="active" data-slide-to="0"></li>
								<li data-target="#mycarousel" data-slide-to="1"></li>
								<li data-target="#mycarousel" data-slide-to="2"></li>
							</ol>
							<!-- body -->
							<div class="carousel-inner">
								<div class="item active">
									<img src="img/Game1.jpg" />
									<div class="carousel-caption">
										<h4>첫 번째 게임</h4>
										<p>Lorem ipsum dolor sit amet.</p>
									</div>
								</div>
								<div class="item">
									<img src="img/Game2.jpg" />
									<div class="carousel-caption">
										<h4>두 번째 게임</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit. Quae doloremque.</p>
									</div>
								</div>
								<div class="item">
									<img src="img/Game3.png" />
									<div class="carousel-caption">
										<h4>세 번째 게임</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing.</p>
									</div>
								</div>
							</div>
							<!-- controls -->
							<a href="#mycarousel" class="left carousel-control"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span>
							</a> <a href="#mycarousel" class="right carousel-control"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row footer">
			<p class="text-center">파일이 두번이나 날아갔다! 와 싱난다!</p>
		</div>
	</div>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script>
		$(".carousel").carousel({
			interval : 3000,
			pause : "hover",
			wrap : true
		});
	</script>
</body>
</html>