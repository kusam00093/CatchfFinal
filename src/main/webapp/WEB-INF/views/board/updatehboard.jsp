<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈 게시판</title>
<link rel="stylesheet" href="/css/common.css" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/browser-scss@1.0.3/dist/browser-scss.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
	.main{text-align:center;}
	 h2{ text-align:center; }
   input:not(input[type=submit]) { width:80%; }
   input{
   }
	 form{
	 	 width:65%;
	 	 text-align:center;
	 	 margin: 0 auto;
	 }
   input[readonly] {
      background: #EEE;
   }
   
   textarea  {
      height: 300px;
      width : 100%;
   }
</style>
<link rel="icon" href="/img/CaTchWorkFavicon.png">
</head>
<body>
	<%@include file="/WEB-INF/include/header.jsp"%>

	<%@include file="/WEB-INF/include/nav.jsp"%>
	<h2>홈페이지 게시글 수정</h2>

		<form action="/Board/UpdateHBoard" method="post">
			<input type="hidden" name="hboard_idx" value="${vo.hboard_idx}" >
			<div class="input-group mb-3">
 				 <span class="input-group-text" id="basic-addon1">제  목</span>
  			 <input type="text" class="form-control" name="title"  placeholder="" aria-label="Username" aria-describedby="basic-addon1" value="${vo.title}">
			</div>
			<div class="input-group mb-3">
 				 <span class="input-group-text" id="basic-addon1">작성자</span>
  			 <input type="text" class="form-control" name="id" value="${ sessionScope.login.id }" readonly aria-label="Username" aria-describedby="basic-addon1">
			</div>
			<div class="input-group">
 				 <span class="input-group-text">내  용</span>
  			 <textarea class="form-control"  name="content" aria-label="With textarea">${vo.content}</textarea>
			</div>
			<div>&nbsp;</div>
						<button class="btn btn-outline-primary" >작성완료</button>
						<button type="button" class="btn btn-outline-primary" onclick="/Board/HomeBoard?nowpage=1">목록가기</button>
		</form>
					<%@include file="/WEB-INF/include/footer.jsp"%>
</body>
</html>