<!doctype html>
<html lang="en">
    <head>
        <title>Title</title>
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
            <div class="row my-2 justify-content-center">
                <div class="col-6">
                    <h3>Songs by artist: <c:out value="${query}" /> </h3>
                </div>
                <div class="col-4">
                	<form action="/search" method="post">
	                    <input type="text" name="searchString">
	                    <button type="submit" class="btn btn-primary">New Search</button>
                    </form>
                </div>
                <div class="col">
                    <a href="">Dashboard</a>
                </div>
            </div>
            <div class="row my-2">
                <table class="table table-bordered table-striped">
                    <thead>
                        <th>Name</th>
                        <th>Rating</th>
                        <th>Actions</th>
                    </thead>
                    <tbody>
                    	<c:forEach items="${songs}" var="song">
                    		<tr>
	                            <td><a href="/songs/${song.id}"><c:out value="${song.title}" /></a></td>
	                            <td><c:out value="${song.rating}"/></td>
	                            <td>
	                                <form action="/songs/${song.id}" method="POST">
	                            		<input type="hidden" name="_method" value="delete">
	                            		<button type="submit" class="btn btn-link">Delete</button>
	                            	</form>
	                            </td>
	                        </tr>
                    	</c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>