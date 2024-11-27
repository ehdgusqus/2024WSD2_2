<%@ include file="inc/top.jsp" %>
<%@ page import="org.example.wsd2_2.bean.BoardVO" %>
<%@ page import="org.example.wsd2_2.dao.BoardDAO" %>
<%@ page import="java.util.List" %>
<%
    // 사용자 입력 키워드 가져오기
    String keyword = request.getParameter("keyword");
    List<BoardVO> result = null;

    // 검색 키워드가 있는 경우에만 검색 실행
    if (keyword != null && !keyword.trim().isEmpty()) {
        result = new BoardDAO().searchBoard(keyword);
        request.setAttribute("result", result); // JSTL에서 접근 가능하도록 설정
    }
%>

<div class="container my-5">
    <h2 class="text-center">Search Board</h2>

    <!-- 검색 폼 -->
    <form action="search.jsp" method="get" class="d-flex mb-4">
        <input type="text" name="keyword" class="form-control me-2" placeholder="Search by title"
               value="<c:out value='${keyword}' />">
        <button type="submit" class="btn btn-primary">Search</button>
    </form>

    <c:choose>
        <c:when test="${not empty result}">
            <div class="list-group">
                <c:forEach var="board" items="${result}">
                    <div class="card mb-3">
                        <div class="card-header">
                            <h5 class="card-title">${board.title}</h5>
                        </div>
                        <div class="card-body">
                            <p><strong>ID:</strong> ${board.id}</p>
                            <p><strong>Writer:</strong> ${board.writer}</p>
                            <p><strong>Score:</strong> ${board.score}</p>
                            <p><strong>Content:</strong> ${board.content}</p>
                            <p><strong>Created At:</strong> ${board.create_date}</p>
                        </div>
                        <div class="card-footer">
                            <a href="list.jsp" class="btn btn-secondary">Back to List</a>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>

        <c:otherwise>
            <c:if test="${keyword != null}">
                <p class="text-center text-muted">No results found for "<strong><c:out value="${keyword}" /></strong>".</p>
            </c:if>
        </c:otherwise>
    </c:choose>
</div>

<%@ include file="inc/bottom.jsp" %>
