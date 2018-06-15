<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="menu">
	
	<c:if test="${sessionScope.id == null }">
		<li><a href="${pageContext.request.contextPath}/users/signin">Sign In</a></li>
		<li><a href="${pageContext.request.contextPath}/users/signup">Sign Up</a></li>
	</c:if>
	<c:if test="${sessionScope.id != null }">
		<li><a href="${pageContext.request.contextPath}/users/signout">Sign Out</a></li>
	</c:if>
</ul>