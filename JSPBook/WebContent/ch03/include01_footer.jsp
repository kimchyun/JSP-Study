<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String memId = request.getParameter("memId");	//병철이
	//한글 처리
	memId = URLDecoder.decode(memId,"UTF-8");
%>
Copyright &copy;<%=memId%>