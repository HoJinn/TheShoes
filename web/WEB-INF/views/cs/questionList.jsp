<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/cs/questionList.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>THE SHOES</title>
</head>
<body>
	<!-- header -->
	<jsp:include page="../common/header.jsp" />
	<!-- section -->
	<section>
		<!-- Page Wrapper -->
		<div id="wrapper">

			<!-- Sidebar -->
			<ul
				class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
				id="accordionSidebar">

				<!-- Sidebar - Brand -->
				<a
					class="sidebar-brand d-flex align-items-center justify-content-center"
					>
					<div class="sidebar-brand-icon rotate-n-15">
					</div>
					<div class="sidebar-brand-text mx-3">1:1문의</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0">

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> <i
						class="fas fa-fw fa-folder"></i> <span>고객센터</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
			              <a class="collapse-item" href="${ pageContext.servletContext.contextPath }/board/list" >공지사항</a>
						  <a class="collapse-item" href="${ pageContext.servletContext.contextPath }/faq/list">FAQ</a>
						  <a class="collapse-item" style="text-decoration:none;">1:1 문의</a> 
						</div>
					</div></li>

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Heading -->


			</ul>
			<!-- End of Sidebar -->

			<!-- 자자 해보자 -->
			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<br>
					<h1 class="h3 mb-2 text-gray-800">1:1 문의</h1>
						<p class="mb-4"></p>
				
					<table class="table table-hover" id="csTable">
						<tbody>
							<tr style="background-color:black; color:white;" class="align-items-center">
								<th colspan="1" class="text-center col-sm-1">번호</th>
								<th colspan="5" class="text-center col-sm-6">제목</th>
								<th colspan="1" class="text-center col-sm-2">작성자</th>
								<th colspan="1" class="text-center col-sm-3">작성일</th>
							</tr>
							<tr>
								<c:forEach var="cs" items="${ requestScope.csList }" >
									<tr>							
										<td class="text-center"><c:out value="${ cs.csNo }"/></td>
										<td colspan="5"><c:out value="${ cs.csTitle }"/></td>
										<td class="text-center"><c:out value="${ cs.csId }"/></td>
										<td class="text-center"><c:out value="${ cs.csRegDate }"/></td>
									</tr>
								</c:forEach> 
							</tr>
						</tbody>
					</table>

					<!-- paging -->
					<jsp:include page="../board/paging.jsp"/>
					
					<!-- 회원 확인 -->
					<c:if test="${ sessionScope.entryMember.role eq 'MEMBER'}"> 
						<div style="text-align: center; margin-top: 20px;">
							<a class="namoon" href="#" onclick="location.href='${ pageContext.servletContext.contextPath }/cs/reg';">문의하기</a>
						</div>
					</c:if>
					
				</div>
			</div>
		</div>
	</section>
	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<!-- 클릭 시 디테일 페이지로 이동 -->
	<script>
	$(function() {
		$("#csTable td").hover(function() {
			$(this).parent().css({"cursor":"pointer"});
		}).click(function() {
			let csNo = $(this).parent().children(":eq(0)").text();
			location.href = "${ pageContext.servletContext.contextPath }/cs/detail?csNo=" + csNo;
		});
	});
	</script>
</body>
</html>