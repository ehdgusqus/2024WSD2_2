<%@ include file="inc/top.jsp" %>

<div class="container my-5">
    <h2 class="text-center">Write a New Post</h2>
    <form action="write_ok.jsp" method="post" class="mt-4">
        <div class="mb-3">
            <label for="title" class="form-label">Title</label>
            <input type="text" id="title" name="title" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="writer" class="form-label">Writer</label>
            <input type="text" id="writer" name="writer" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="content" class="form-label">Content</label>
            <textarea id="content" name="content" class="form-control" rows="5" required></textarea>
        </div>
        <div class="mb-3">
            <label for="score" class="form-label">Score</label>
            <input type="number" id="score" name="score" class="form-control" required>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
        <a href="list.jsp" class="btn btn-secondary">Cancel</a>
    </form>
</div>

<%@ include file="inc/bottom.jsp" %>