<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MyFavBooks</title>

    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="icon" type="image/x-icon" href="https://freepngimg.com/download/book/6-2-book-png-7.png">


    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


</head>
<body>

<header class="mb-auto">
    <div>
        <nav class="navbar navbar-expand-md navbar-dark bg-dark mb-3 p-1">
            <a class="navbar-brand m-1">MyFavBooks</a>
            <div class="collapse navbar-collapse">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link" href="dashboard">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="/addBook">Add a new book</a></li>
                </ul>
            </div>
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
            </ul>
        </nav>

    </div>
</header>

<main>
    <section class="py-5 text-center container">
        <div class="row py-lg-5">
            <div class="col-lg-6 col-md-8 mx-auto">
                <h1 class="fw-light">Welcome ${name}</h1>
                <p class="lead text-muted">We are glad to have you back!</p>
                <p>
                    <a href="/addBook" class="btn btn-primary my-2">Add a new book</a>
                </p>
            </div>
        </div>
    </section>

    <div class="container-fluid">
        <h1>Your books: </h1>
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <th>Book name: </th>
                <th>Author: </th>
                <th>Description: </th>
                <th>Number of pages: </th>
                <th>Year of release: </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${books}" var="book">
                <tr>
                    <td>${book.bookName}</td>
                    <td>${book.author}</td>
                    <td>${book.description}</td>
                    <td>${book.numberOfPages}</td>
                    <td>${book.yearOfRelease}</td>
                    <td><a href="deleteBook?id=${book.id}" class="btn btn-warning">DELETE</a> </td>
                    <td><a href="updateBook?id=${book.id}" class="btn btn-success">UPDATE</a> </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

</main>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>

</body>
</html>
