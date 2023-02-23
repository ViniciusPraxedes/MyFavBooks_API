<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add a new book</title>

    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="icon" type="image/x-icon" href="https://freepngimg.com/download/book/6-2-book-png-7.png">

    <style>
        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>


</head>
<body class="bg-light">

<div class="container">
    <main>
        <div class="py-5 text-center">
<%--            <img class="d-block mx-auto mb-4" src="https://images.pexels.com/photos/4865735/pexels-photo-4865735.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="" width="72" height="57">--%>
            <h2>Add a new book</h2>
            <p class="lead">Fill up the form below to add a new book.</p>
        </div>

            <div class="col-md-7 col-lg-8">
                <div class="col-md-7 col-lg-8">
                    <h4 class="mb-3">Book details</h4>
                    <div class="row g-3">
                        <%--@elvariable id="book" type=""--%>
                        <form:form action="addBook" method="post" modelAttribute="book">
                        <div class="col-sm-6">
                            <form:label class="form-label" path="bookName">Book name</form:label>
                            <form:input path="bookName"/>
                        </div>

                        <%--<div class="col-sm-6">
                            <label for="lastName" class="form-label">Author</label>
                            <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Valid last name is required.
                            </div>
                        </div>


                        <div class="col-sm-6">
                            <label for="firstName" class="form-label">Description</label>
                            <input type="text" class="form-control" id="description" placeholder="" value="" required>
                            <div class="invalid-feedback">
                                Valid description.
                            </div>
                        </div>



                        <div class="col-md-3">
                            <label for="zip" class="form-label">Number of pages</label>
                            <input type="text" class="form-control" id="zip" placeholder="" required>
                            <div class="invalid-feedback">
                                Number of pages required.
                            </div>
                        </div>--%>
                        </form:form>
                    </div>
                </div>
            </div>
    </main>

    <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">&copy; 2017–2021 Company Name</p>
        <ul class="list-inline">
            <li class="list-inline-item"><a href="#">Privacy</a></li>
            <li class="list-inline-item"><a href="#">Terms</a></li>
            <li class="list-inline-item"><a href="#">Support</a></li>
        </ul>
    </footer>
</div>


<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

<script src="form-validation.js"></script>
</body>
</html>
