<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구직자 이력서 상세 보기</title>
<link rel="stylesheet" href="/css/common.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
   
</style>
<link rel="icon" href="/img/CaTchWorkFavicon.png">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
   <%@include file="/WEB-INF/include/header.jsp" %>

   <%@include file="/WEB-INF/include/nav.jsp" %>
   
   <%@include file="/WEB-INF/views/company/resume/resumeForm.jsp" %>
   <div class="container">
   	<c:if test="${usertype.type == 0}">
		  <button id="deletebtn" type="button" class="btn btn-danger">삭제</button>
   	</c:if>
	  <a type="button" class="btn btn-secondary" href="javascript:window.history.back();">뒤로</a>
   </div>
   
   <%@include file="/WEB-INF/include/footer.jsp" %>

<script>
   const deleteEl = document.querySelector("#deletebtn")
   const resume_idx = document.querySelector('#resume_idx').value;
	
	deleteEl.addEventListener('click', (e) => {
	        const isConfirmed = confirm('정말로 삭제하시겠습니까?')
	        
	        if (isConfirmed) {
	        	//alert(resume_idx)
	            //alert('삭제처리 되었습니다.')
	            location.href = '/Person/Resume/Delete?resume_idx=' + resume_idx
	        } else {
	            
	        }
	});
</script>
</body>
</html>