<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="inc/top.jsp" %> <!-- 헤더 및 공통 스타일 -->

<h2>Welcome to My Board Application</h2>
<p>This is a simple CRUD web application using JSP and MariaDB.</p>

<!-- 애플리케이션 주요 기능 -->
<ul>
    <li><a href="list.jsp">View Board List</a></li>
    <li><a href="write.jsp">Write a New Post</a></li>
    <li><a href="search.jsp">Search Posts</a></li>
</ul>

<%@ include file="inc/bottom.jsp" %> <!-- 푸터 -->