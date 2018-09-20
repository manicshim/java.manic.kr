<%--
  Created by IntelliJ IDEA.
  User: manic
  Date: 2018-09-17
  Time: 오후 3:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.4/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/webjars/clean-blog/css/clean-blog.min.css">
</head>
<body>
<!-- Page Header -->
<!-- Set your background image for this header on the line below. -->
<header class="intro-header" style="background-image: url('http://blog.millky.com/image/post-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="post-heading">
                    <h1><c:out value="${post.title}" escapeXml="true"></c:out></h1>
                    <h2 class="subheading"><c:out value="${post.subtitle}" escapeXml="true" /></h2>
                    <span class="meta">Posted by on ${post.regDate}</span>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Post Content -->
<article>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                ${post.content}
            </div>
        </div>
        <div class="pull-right">
            <a href="/post/${post.id}/edit">
                <button type="button" class="btn btn-warning">Edit</button>
            </a>
            <a href="/post/${post.id}/delete">
                <button type="button" class="btn btn-danger">Delete</button>
            </a>
        </div>
    </div>
</article>
</body>
</html>
