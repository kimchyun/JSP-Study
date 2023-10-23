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
<style>
p{
	margin-bottom: 20px;
}
</style>
<body>
	<!-- include 액션 태그 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 상품 상세 시작 -->
	<div class="jumbotron">
		<!-- container : 이 안에 내용이 있다 -->
		<div class="container">
			<h1 class="display-3">도서 상세</h1>
		</div>
	</div>
<%
	String bookId = request.getParameter("bookId");
	BookVO book = bookDAO.getBookById(bookId);
// 	out.print("book : " + book);
%>

	<!-- 내용 -->
	<div class="container">
		<div class="row">
			<div class="col-md-5">
				<img src="/WebMarket/images/<%=book.getFilename()%>"
					alt="<%=book.getName()%>"
					title="<%=book.getName()%>" style="width:100%" />
			</div>
			<div class="col">
				<h3><%=book.getName()%></h3><br>
				<p><%=book.getDescription()%></p>
				<p>
					<b>도서 아이디 : </b>
					<span class="badge badge-danger">
						<%=book.getBookId()%>
					</span>
				</p>
				<p><b>저자 : </b><%=book.getAuthor()%></p>
				<p><b>출판사 : </b><%=book.getPublisher()%></p>
				<p><b>분류 : </b><%=book.getCategory()%></p>
				<p><b>재고수 : </b><%=book.getUnitsInstock()%></p>
				<p><b>페이지수 : </b><%=book.getTotalPages()%></p>
				<p><b>출판일 : </b><%=book.getReleaseDate()%></p>
				<p><b>상태 : </b><%=book.getCondition()%></p><br>
				<h3><%=book.getUnitPrice() %>원</h3>
				<p>
					<a href="#" class="btn btn-secondary">책 주문&raquo;</a>
					<a href="books.jsp" class="btn btn-secondary">책 목록&raquo;</a>
				</p>
				
			</div>
		</div>	
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>