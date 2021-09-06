<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>



<div class="container">
	<form class="form-signin" action="/login" method="POST">

		<input type="email" id="inputusername" name="username" class="form-control"
			placeholder="아이디" required autofocus="autofocus"> 
		<input type="password" id="inputPassword" class="form-control"
			placeholder="비밀번호" required>

		<button class="btn btn-lg btn-primary btn-block" type="submit">로그인
			</button>
	</form>

</div>

<%@ include file="../layout/footer.jsp"%>
