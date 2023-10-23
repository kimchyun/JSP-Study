<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="vo.BookVO"%>
<%@ page import="dao.BookRepository"%>
<%
	BookRepository bookDAO = BookRepository.getInstance();
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/bootstrap.min.css" /> 
<title>Welcome</title>
</head>
<body>
	<!-- include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 상품 상세 시작 -->
	<div class="jumbotron">
		<!-- container : 이 안에 내용이 있다 -->
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
		</div>
	</div>
<%
	List<BookVO> books = bookDAO.getAllBooks();
%>

	<!-- 내용 -->
	
	<div class="container">
		<div class="row" align="center">
			<% for (BookVO book : books) { %>
		    <div class="col-md-4">
		        <img src="/WebMarket/images/<%= book.getFilename() %>"
		             style="width:100%; height:50%;" alt="<%= book.getName() %>"
		             title="<%= book.getName() %>"
		        />
		        <h3><%= book.getName() %></h3>
		        <p><%= book.getDescription() %></p>
		        <h4><%= book.getUnitPrice() %>원</h4>
		        <p><a href="book.jsp?bookId=<%= book.getBookId() %>"
		              class="btn btn-secondary" role="button">Details</a></p>
		    </div>
		<% } %>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>