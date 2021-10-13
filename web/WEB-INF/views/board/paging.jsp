<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="paging">
					
						<!-- 처음 페이지 버튼 -->
						<c:if test="${ requestScope.selectCriteria.pageNo <= 1 }">
							<a class="btn_arr first" style="text-decoration:none;">
								<i class="fa fa-chevron-left" aria-hidden="true"></i>
								<span class="hide">처음페이지</span>
							</a> 
						</c:if>
						<c:if test="${ requestScope.selectCriteria.pageNo > 1 }">
							<a href="#" class="btn_arr first" id="startPage">
								<i class="fa fa-chevron-left" aria-hidden="true"></i>
								<span class="hide">처음페이지</span>
							</a> 
						</c:if>
						
						<!-- 이전페이지 -->
						<c:if test="${ requestScope.selectCriteria.pageNo <= 1 }">
							<a class="btn_arr prev" style="text-decoration:none;">
								<i class="fa fa-chevron-left" aria-hidden="true"></i>
								<span class="hide">이전페이지</span>
							</a> 
						</c:if>
						<c:if test="${ requestScope.selectCriteria.pageNo > 1 }">
							<a href="#" class="btn_arr prev" id="prevPage">
								<i class="fa fa-chevron-left" aria-hidden="true"></i>
								<span class="hide">이전페이지</span>
							</a> 
						</c:if>
						
					
						<!-- 숫자 -->
						<c:forEach var="p" begin="${ requestScope.selectCriteria.startPage }" end="${ requestScope.selectCriteria.endPage }" step="1">
							<c:if test="${ requestScope.selectCriteria.pageNo eq p }">
								<a href="#" class="on" id="num" onclick="return false;" ><c:out value="${ p }"/></a>
							</c:if>
							<c:if test="${ requestScope.selectCriteria.pageNo ne p }">
								<a href="#" class="off" id="num"  onclick="pageButtonAction(this.innerText)"><c:out value="${ p }"/></a>
							</c:if>
						</c:forEach>						
						
						
						<!-- 다음 페이지 -->
						<c:if test="${ requestScope.selectCriteria.pageNo >= requestScope.selectCriteria.maxPage}">
							<a class="btn_arr next" style="text-decoration:none;">
								<i class="fa fa-chevron-right" aria-hidden="true"></i>
								<span class="hide">다음페이지</span>
							</a> 
						</c:if>
						<c:if test="${ requestScope.selectCriteria.pageNo < requestScope.selectCriteria.maxPage }">
							<a href="#" class="btn_arr next" id="nextPage">
								<i class="fa fa-chevron-right" aria-hidden="true"></i>
								<span class="hide">다음페이지</span>
							</a> 
						</c:if>
						
						<!-- 마지막페이지 -->
						<c:if test="${ requestScope.selectCriteria.pageNo >= requestScope.selectCriteria.maxPage}">
							<a class="btn_arr last" style="text-decoration:none;">
								<i class="fa fa-chevron-right" aria-hidden="true"></i>
								<span class="hide">마지막페이지</span>
							</a>
						</c:if>
						<c:if test="${ requestScope.selectCriteria.pageNo < requestScope.selectCriteria.maxPage}">
							<a href="#" class="btn_arr last" id="maxPage">
								<i class="fa fa-chevron-right" aria-hidden="true"></i>
								<span class="hide">마지막페이지</span>
							</a>
						</c:if>
					</div>
					
	<!-- 페이징처리 -->

	
	 <script>
		 const link = "${ pageContext.servletContext.contextPath }/${ pagingPath }";
		
		if(document.getElementById("startPage")) {
			const $startPage = document.getElementById("startPage");
			$startPage.onclick = function() {
				location.href = link + "?currentPage=1";
			}
		}
		
		if(document.getElementById("prevPage")) {
			const $prevPage = document.getElementById("prevPage");
			$prevPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo - 1 }";
			}
		}
		
		if(document.getElementById("nextPage")) {
			const $nextPage = document.getElementById("nextPage");
			$nextPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.pageNo + 1 }";
			}
		}
		
		if(document.getElementById("maxPage")) {
			const $maxPage = document.getElementById("maxPage");
			$maxPage.onclick = function() {
				location.href = link + "?currentPage=${ requestScope.selectCriteria.maxPage }";
			}
		}
		
		function pageButtonAction(text) {
			location.href = link + "?currentPage=" + text ;
		}
	</script> 
					
</body>
</html>