<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="model.User, model.Mutter, java.util.List" %>
<%
	User loginUser = (User)session.getAttribute("loginUser");
	List<Mutter> mutterList = (List<Mutter>)application.getAttribute("mutterList");
	String errorMsg = (String)request.getAttribute("errorMsg");
%> --%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
	<h1>どこつぶメイン</h1>
	<p>
		<%-- <%= loginUser.getName() %>さん、ログイン中 --%>
		<c:out value="${sessionScope.loginUser.name}" />さん、ログイン中
		<a href="Logout">ログアウト</a>
	</p>
	<p><a href="Main">更新</a></p>
	<form action="Main" method="post">
		<input type="text" name="text">
		<input type="submit" value="つぶやく">
	</form>
	<c:if test="${not empty requestScope.errorMsg}">
		<p><c:out value="${errorMsg}" /></p>
	</c:if>
	<c:out value="${requestScope.errorMsg}" />
	<c:forEach var="mutter" items="${requestScope.mutterList}">
		<p>
			<c:out value="${mutter.userName}" />：
			<c:out value="${mutter.text}" />
		</p>
	</c:forEach>
	<%-- <% if (errorMsg != null) { %>
		<p><%= errorMsg %></p>
	<% } %>
	<% for (Mutter mutter : mutterList) { %>
		<p><%= mutter.getUserName() %>：<%= mutter.getText() %></p>
	<% } %> --%>
</body>
</html>