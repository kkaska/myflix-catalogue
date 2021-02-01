<%@page import="java.util.HashMap"%>
<%@page import="com.myflix.myflix.stores.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>myFlix</title>
    <header>
        <div class="container">
            <div class="row">
                <div class="col-md-12 mt-5">
                    <nav class="navbar navbar-light">
                        <a class="navbar-brand" href="#">
                            <p>myFlix</p>
                        </a>
                        <a class="signin text-white btn btn-lg btn-danger" href="https://www.netflix.com/login">
                            Sign In
                        </a>
                    </nav>
                    <section class="text-white">
                        <h1 class="header__title">See what’s next.</h1>
                        <p class="header__subtitle">WATCH ANYWHERE. CANCEL ANYTIME.</p>
                        <button class="btn btn-danger btn-lg sing-up">JOIN FREE FOR A MONTH</button>
                    </section>
                </div>
            </div>

        </div>
    </header>
    <body>
        <h1>Welcome</h1>
        <a href="/myflix/video">Go to videos</a>
    </body>
</html>
