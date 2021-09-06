<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ include file="../layout/header.jsp"%>

<div class="container">
	<div class="input-form col-md-12 mx-auto">
		<h4 class="mb-3">회원가입</h4>
		<form class="validation-form" novalidate action="/join" method="post">
			<div class="row">
				<div class="col-md-6 mb-3">
					<label for="name">아이디</label> <input type="text"
						class="form-control" name="username" placeholder="아이디를 입력해주세요."
						required>
					<div class="invalid-feedback"></div>
					<label for="name">비밀번호</label> <input type="password"
						class="form-control" name="password" placeholder="비밀번호를 입력해주세요."
						required>
					<div class="invalid-feedback"></div>
					<label for="name">이메일</label> <input type="text"
						class="form-control" name="email" placeholder="이메일을 입력해주세요."
						required>
					<div class="invalid-feedback"></div>
				</div>
			</div>

			<button class="btn btn-primary btn-lg btn-block" type="submit"
				style="width: 718px">가입 완료</button>
		</form>
	</div>
</div>

<%@ include file="../layout/footer.jsp"%>