<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%	//스크립틀릿
	//deleteCart.jsp?cartId=3BF4575B031DB2D5D2F35F6F271897B8
	//요청파라미터 : cartId=3BF4575B031DB2D5D2F35F6F271897B8
	//session.getId() : 세션고유아이디 = 고유장바구니 = 동일웹브라우저 = 1명의 고객
	String cartId 
		= request.getParameter("cartId"); //3BF4575B031DB2D5D2F35F6F271897B8
	//cartId가 없네? => cart.jsp로 이동
	if(cartId==null || cartId.trim().equals("")){
		response.sendRedirect("cart.jsp");
		return;
	}
	
	//장바구니만 비우자
	session.removeAttribute("cartlist");	//장바구니만 콕 찝어서 삭제
	//만약 session.invalidate() => 모든 세션을 삭제. 로그아웃도 되어버림
	
	//cart.jsp
	response.sendRedirect("cart.jsp");
%>