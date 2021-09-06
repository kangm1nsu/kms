<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>



<div class="container">
	<form class="form-signin" action="/login" method="POST">

		<input type="text" id="inputusername" name="username" class="form-control"
			placeholder="아이디" required="required" autofocus="autofocus"> 
		<input type="password" id="inputPassword" name="password" class="form-control"
			placeholder="비밀번호" required="required">
		<input type="submit" class="btn btn-lg btn-primary btn-block" value="로그인">
		
	</form>

</div>

<%@ include file="../layout/footer.jsp"%>
