<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DB_adv_Blog</title>
<link href="/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>

	<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">DB_adv_Blog</a>
			</div>
			<div class="navbar-collapse collapse"></div>
			<!--/.navbar-collapse -->
		</div>
	</div>

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<h1>Welcome</h1>
			<p>This is a Blog by mongoDB</p>
			<p>
				<a class="btn btn-primary btn-lg" role="button"
					href="http://cafe.nhnnext.org/dba142/board_12">Learn more
					&raquo;</a>
			</p>
		</div>
	</div>

	<div class="container">
		<h3>Input new Post</h3>
		<hr>
		<form class="form-horizontal" role="form" action="/newPost" method="post">
			<div class="form-group">
				<label for="title" class="col-sm-2 control-label">Title</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="title"
						placeholder="Enter Title">
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="name"
						placeholder="Enter Name">
				</div>
			</div>
			<div class="form-group">
				<label for="content" class="col-sm-2 control-label">Content</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="3" name="content"
						placeholder="Enter Content"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form>
		<hr>
		<hr>
		<c:forEach items="${lists}" var="list">
			<form class="form-horizontal" role="form">
				<div class="form-group">
					<label for="title" class="col-sm-2 text-right">Title</label>
					<div class="col-sm-10">${list.title}</div>
				</div>
				<div class="form-group">
					<label for="name" class="col-sm-2 text-right">Name</label>
					<div class="col-sm-10">${list.name}</div>
				</div>
				<div class="form-group">
					<label for="content" class="col-sm-2 text-right">Content</label>
					<div class="col-sm-10 blogContent">${list.content}</div>
				</div>
			</form>
		<hr>
		</c:forEach>
		<footer>
			<p>&copy; Company 2014</p>
		</footer>
	</div>
	<!-- /container -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/blog.js"></script>
	</script>
</body>
</html>