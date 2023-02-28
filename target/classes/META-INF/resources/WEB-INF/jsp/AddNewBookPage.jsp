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
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">

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
           <img class="d-block mx-auto mb-4" src="https://freepngimg.com/download/book/6-2-book-png-7.png" alt="" width="72" height="57">
            <h2>Add a new book</h2>
            <p class="lead">Fill up the form below to add a new book.</p>
        </div>
        <div>
            <h4 class="mb-3">Book details</h4>
            <%--@elvariable id="book" type=""--%>
            <form:form class="row g-3" action="addBook" method="post" modelAttribute="book">
                <div class="col-md-6">
                    <form:label class="form-label" path="bookName">Book name</form:label>
                    <form:input type="text" class="form-control" id="Book name" path="bookName"/>
                    <form:errors path="bookName" cssClass="text-warning"/>

                </div>
                <div class="col-md-6">
                    <form:label class="form-label" path="author">Author</form:label>
                    <form:input type="text" class="form-control" id="Author" path="author"/>
                    <form:errors path="author" cssClass="text-warning"/>

                </div>
                <div class="col-md-12">
                    <form:label class="form-label" path="description">Description</form:label>
                    <form:textarea class="form-control" path="description" style="height: 100px"/>
                    <form:errors path="description" cssClass="text-warning"/>

                </div>
                <div class="col-md-2">
                    <form:label class="form-label" path="numberOfPages">Number of pages</form:label>
                    <form:input type="text" class="form-control" id="Number of pages" path="numberOfPages"/>
                    <form:errors path="numberOfPages" cssClass="text-warning"/>
                </div>
                <div class="col-md-4">
                    <form:label class="form-label" path="yearOfRelease">Year of release</form:label>
                    <form:input type="text" class="form-control" path="yearOfRelease" required="required"/>
                    <form:errors path="yearOfRelease" cssClass="text-warning"/>
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Add book</button>
                </div>
            </form:form>
        </div>
    </main>

</div>

<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript">
    $('#yearOfRelease').datepicker({
        format: " yyyy",
        viewMode: "years",
        minViewMode: "years",
        autoclose: true,
        startView: 2,
        defaultViewDate: {
            year: '2000'
        },
        startDate: '-71y',
        endDate: '-0y'
    });
</script>
</body>
</html>
