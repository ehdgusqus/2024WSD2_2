<%@ page import="org.example.wsd2_2.dao.BoardDAO" %>
<%
  int id = Integer.parseInt(request.getParameter("id"));

  BoardDAO dao = new BoardDAO();
  boolean success = dao.deleteBoard(id);

  if (success) {
    response.sendRedirect("list.jsp");
  } else {
    System.out.println("<h2>Error deleting post</h2>");
  }
%>