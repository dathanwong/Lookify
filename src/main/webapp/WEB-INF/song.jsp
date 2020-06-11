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
            <div class="row my-2">
                <div class="col-4">Title</div>
                <div class="col-4">${song.title}</div>
            </div>
            <div class="row my-2">
                <div class="col-4">Artist</div>
                <div class="col-4">${song.artist}</div>
            </div>
            <div class="row my-2">
                <div class="col-4">Rating(1-10)</div>
                <div class="col-4">${song.rating}</div>
            </div>
            <div class="row">
                <div class="col">
                	<form action="/songs/${song.id}" method="post">
                		<input type="hidden" value="delete" name="_method">
                		<button type="submit" class="btn btn-link">Delete</button>
                	</form>
                </div>
            </div>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>