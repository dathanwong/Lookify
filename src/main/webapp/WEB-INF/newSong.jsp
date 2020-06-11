<!doctype html>
<html lang="en">
    <head>
        <title>Top Ten</title>
        <!-- Required meta tags -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="row my-2 justify-content-end">
                <div class="col-2">
                    <a href="/dashboard">Dashboard</a>
                </div>
            </div>
            <form:form action="/songs" method="post" modelAttribute="song">
	            <div class="row my-2">
	                <div class="col-4">Title</div>
	                <form:input path="title" type="text" name="title" class="col-4"/>
	                <form:errors path="title" class="text-danger col" />
	            </div>
	            <div class="row my-2">
	                <div class="col-4">Artist</div>
	                <form:input path="artist" type="text" name="artist" class="col-4"/>
	                <form:errors path="artist" class="text-danger col" />
	            </div>
	            <div class="row my-2">
	                <div class="col-4">Rating(1-10)</div>
	                <form:input path="rating" type="number" name="rating" class="col-1" min="0" max="10" value="10"/>
	                <form:errors path="rating" class="text-danger col" />
	            </div>
	            <div class="row">
	                <div class="col">
	                    <button type="submit" class="btn btn-primary">Add Song</button>
	                </div>
	            </div>
            </form:form>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>