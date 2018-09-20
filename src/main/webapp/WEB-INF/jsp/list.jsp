<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>Hello Spring Blog</title>
</head>
<body>


<header class="intro-header" style="background-image: url('/image/home-bg.jpg')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading">
                    <h1>Spring Blog</h1>
                    <hr class="small">
                    <span class="subheading">Spring Blog form Millky</span>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <c:forEach var="post" items="${postList}">
                <div class="post-preview">
                    <a href="/post/${post.id}">
                        <h2 class="post-title">
                            <c:out value="${post.title}" escapeXml="true"></c:out>
                        </h2>
                        <h3 class="post-subtitle">
                            <c:out value="${post.subtitle}" escapeXml="true"></c:out>
                        </h3>
                    </a>
                    <p class="post-meta">Posted by <a href="#">${post.name}</a> in on ${post.regDate}</p>
                </div>
                <hr>
            </c:forEach>


            <ul class="pager">
            </ul>

            <br />

        </div>
    </div>
</div>
<hr>
</body>
</html>