<%@ include file="inc/top.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="org.example.wsd2_2.bean.BoardVO" %>
<%@ page import="org.example.wsd2_2.dao.BoardDAO" %>
<%
    BoardDAO dao = new BoardDAO();
    List<BoardVO> boards = dao.getBoardList();
    request.setAttribute("boards", boards);
%>
<h2 class="text-center mb-4">Board List</h2>
<table class="table table-striped table-hover">
    <thead class="table-dark">
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Score</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="board" items="${boards}">
        <tr>
            <td>${board.id}</td>
            <td><a href="view.jsp?id=${board.id}" class="text-decoration-none">${board.title}</a></td>
            <td>${board.writer}</td>
            <td>${board.score}</td>
            <td>
                <a href="edit.jsp?id=${board.id}" class="btn btn-warning btn-sm">Edit</a>
                <a href="delete_ok.jsp?id=${board.id}" class="btn btn-danger btn-sm">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<%@ include file="inc/bottom.jsp" %>