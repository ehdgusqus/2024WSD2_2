<%@ include file="inc/top.jsp" %>
<%@ page import="org.example.wsd2_2.bean.BoardVO" %>
<%@ page import="org.example.wsd2_2.dao.BoardDAO" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    BoardDAO dao = new BoardDAO();
    BoardVO board = dao.getBoard(id);
%>
<h2>Edit Post</h2>
<form action="edit_ok.jsp" method="post">
    <input type="hidden" name="id" value="<%= board.getId() %>">
    <label>Title: <input type="text" name="title" value="<%= board.getTitle() %>"></label><br>
    <label>Writer: <input type="text" name="writer" value="<%= board.getWriter() %>"></label><br>
    <label>Content: <textarea name="content"><%= board.getContent() %></textarea></label><br>
    <label>Score: <input type="number" name="score" value="<%= board.getScore() %>"></label>
    <input type="submit" value="Update">
</form>
<%@ include file="inc/bottom.jsp" %>