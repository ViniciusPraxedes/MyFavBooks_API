<!doctype html>
<html lang="en" class="h-100">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>MyFavBooks</title>

    <link href="webjars/bootstrap/5.2.3/css/bootstrap.min.css" rel="stylesheet" >
    <link rel="icon" type="image/x-icon" href="https://freepngimg.com/download/book/6-2-book-png-7.png">

    <style>
        body{
            background-image: url("https://images.pexels.com/photos/4865737/pexels-photo-4865737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        .nav-scroller .nav {
            display: flex;
            flex-wrap: nowrap;
            padding-bottom: 1rem;
            margin-top: -1px;
            overflow-x: auto;
            text-align: center;
            white-space: nowrap;
            -webkit-overflow-scrolling: touch;
        }
    </style>
</head>

<body class="d-flex h-100 text-center text-bg-dark">
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header class="mb-auto">
        <div>
            <h3 class="float-md-start mb-0">Cover</h3>
            <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">MyFavBooks</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarCollapse">
                        <ul class="navbar-nav me-auto mb-2 mb-md-0">
                            <%--<li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="">Home</a>
                            </li>--%>
                            <li class="nav-item">
                                <a class="nav-link" href="/login">Login</a>
                            </li>
                            <%--<li class="nav-item">
                                <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                            </li>--%>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>

    <main class="px-3">
        <h1 class="display-1">MyFavBooks</h1>
        <p class="lead">Create by a software development student to put his skills in practice</p>
        <p class="lead">
            <a href="/login" class="btn btn-lg btn-light fw-bold border-white bg-white">Login</a>
        </p>
    </main>

    <footer class="mt-auto text-white-50">
        <p>MyFavBooks 2023, by <a href="https://github.com/ViniciusPraxedes" class="text-white">Vinicius Praxedes</a>.</p>
    </footer>
</div>



</body>
</html>
