<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/manager/regShoes.css">
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
		<div id="wrapper">

			<!-- Sidebar -->
			<ul
				class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
				id="accordionSidebar">

				<!-- Sidebar - Brand -->
				<a class="sidebar-brand d-flex align-items-center justify-content-center" href="${ pageContext.servletContext.contextPath }/manager/shoes">
					<div class="sidebar-brand-icon rotate-n-15">
					</div>
					<div class="sidebar-brand-text mx-3">MANAGER</div>
				</a>

				<!-- Divider -->
				<hr class="sidebar-divider my-0">

				<!-- Divider -->
				<hr class="sidebar-divider">

				<!-- Nav Item - Pages Collapse Menu -->
				<li class="nav-item">
				<a class="nav-link collapsed" href="#"
					data-toggle="collapse" data-target="#collapseTwo"
					aria-expanded="true" aria-controls="collapseTwo"> 
					<i class="fas fa-fw fa-folder"></i> <span>관리자정보</span>
				</a>
					<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
						data-parent="#accordionSidebar">
						<div class="bg-white py-2 collapse-inner rounded">
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/shoes">신발 정보 관리</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/memberList">회원 정보 관리</a> 
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/delivery">배송 정보 관리</a>
							<a class="collapse-item" href="${ pageContext.servletContext.contextPath }/manager/board">회원 게시글 관리</a>
						</div>
					</div>
					</li>

				<!-- Divider -->
				<hr class="sidebar-divider">

			</ul>

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column">

				<!-- Main Content -->
				<div id="content">

					<!-- Begin Page Content -->
					<div style="padding: 0 60px;">

						<!-- Page Heading -->
						<h1 class="h2 mb-4 text-gray-800">신발 등록</h1>
						<p class="mb-4">신발 정보를 등록할 수 있는 페이지입니다.</p>
						<div>

							<form class="needs-validation" method="post" action="${ pageContext.servletContext.contextPath }/manager/regShoes"
							enctype="multipart/form-data">
								<div class="row">
									<div class="col-md-4 mb-3">
										<label for="country">카테고리</label> 
										<select
											class="custom-select d-block w-100" id="infoCategoryNo"
											name="infoCategoryNo" >
											<option value="1">나이키</option>
											<option value="2">스캇</option>
											<option value="3">Jordan</option>
											<option value="4">사카이</option>
											<option value="5">Dunk</option>
										</select>
									</div>
									<div class="col-md-4 mb-3">
										<label for="lastName">모델명</label> <input type="text"
											class="form-control" id="shoesModel" placeholder=""
											name="shoesModel" required>
									</div>
									<div class="col-md-4 mb-3">
										<label for="lastName">발매가</label> <input required type="number"
											class="form-control" id="shoesPrice" placeholder=""
											name="shoesPrice" >
									</div>
									<div class="col-md-4 mb-3">
										<label for="firstName">당첨자 발표일</label> 
										<input required type="datetime-local" class="form-control" id="winnerDate"
											placeholder="" name="winnerDate" >
									</div>
									<div class="col-md-4 mb-3">
										<label for="country">판매여부</label> 
										<select class="custom-select d-block w-100" id="salesYn"
											name="salesYn" required>
											<option value="Y">Y</option>
											<option value="N">N</option>
										</select>
									</div>

									<div class="col-md-4 mb-3">
										<label for="lastName">수량</label> <input required type="number"
											class="form-control" id="salesAmount" placeholder=""
											name="salesAmount" >
									</div>
									<div class="col-md-4 mb-3">
										<label for="firstName">응모 시작일</label> <input required
											type="datetime-local" class="form-control" id="startDate"
											placeholder="" name="startDate" >
									</div>
									<div class="col-md-4 mb-3">
										<label for="firstName">응모 종료일</label> <input required
											type="datetime-local" class="form-control" id="endDate"
											placeholder="" name="endDate" >
									</div>
									<div class="col-md-4 mb-3">
										<label for="firstName">추첨 종료 상태</label>
										<select class="custom-select d-block w-100" id="eventEndYn" name="eventEndYn" >
											<option value="Y">Y</option>
											<option selected="selected" value="N">N</option>
										</select>
									</div>

										<div class="col-md-12 mb-3">
											<div class="text-center">
												<label style="margin: 10px;">대표 사진</label>
												<div id="titleImgArea">
													<img id="titleImg" class="title-img-area" width="300"
														height="300">
												</div>
											</div>
										</div>

										<div style="display: flex; margin: 10px auto;">
			                              <div class="text-center">
			                                <label>사진1</label>
			                                <div id="contentImgArea1">
			                                <img id="contentImg1" class="content-img-area1" width="250" height="250">
			                              </div>
			                            </div>

											<div class="text-center">
				                              <label>사진2</label>
				                              <div style="margin: 0 25px;">
				                              <div id="contentImgArea2">
				                                <img id="contentImg2" class="content-img-area2" width="250" height="250">
				                              </div>
				                            </div>
				                             </div>

											<div class="text-center">
				                            <label>사진3</label>
				                              <div id="contentImgArea3">
				                                <img id="contentImg3" class="content-img-area3" width="250" height="250">
				                              </div>
				                            </div>

											<div class="text-center">
				                              <label>사진4</label>
				                              <div style="margin: 0 25px;">
				                                <div id="contentImgArea4">
				                                  <img id="contentImg4" class="content-img-area4" width="250" height="250">
				                                </div>
				                              </div>
				                              </div>

											<div class="text-center">
			                                <label>사진5</label>
			                                  <div id="contentImgArea5">
			                                    <img id="contentImg5" class="content-img-area5" width="250" height="250">
			                                  </div>
			                                </div>

										</div>

										<div class="thumbnail-file-area">
			                              <input type="file" id="thumbnailImg1" name="thumbnailImg1" onchange="loadImg(this,1)" >
			                              <input type="file" id="thumbnailImg2" name="thumbnailImg2" onchange="loadImg(this,2)" >
			                              <input type="file" id="thumbnailImg3" name="thumbnailImg3" onchange="loadImg(this,3)" >
			                              <input type="file" id="thumbnailImg4" name="thumbnailImg4" onchange="loadImg(this,4)" >
			                              <input type="file" id="thumbnailImg5" name="thumbnailImg5" onchange="loadImg(this,5)" >
			                              <input type="file" id="thumbnailImg6" name="thumbnailImg6" onchange="loadImg(this,6)" >
			                            </div>

									<div class="col-md-12 mb-3">
										<button type="button" id="registBtn" class="btn btn-outline-secondary">등록</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<%-- <script src="${ pageContext.servletContext.contextPath }/resources/js/manager/regShoes.js"></script> --%>
	
	 <script>
		 const $titleImgArea = document.getElementById("titleImg");
	     const $contentImgArea1 = document.getElementById("contentImg1");
	     const $contentImgArea2 = document.getElementById("contentImg2");
	     const $contentImgArea3 = document.getElementById("contentImg3");
	     const $contentImgArea4 = document.getElementById("contentImg4");
	     const $contentImgArea5 = document.getElementById("contentImg5");
	
	     $titleImgArea.onclick = function() {
	       	document.getElementById("thumbnailImg1").click();
	     		};
	     $contentImgArea1.onclick = function() {
			document.getElementById("thumbnailImg2").click();
				};
	     $contentImgArea2.onclick = function() {
			document.getElementById("thumbnailImg3").click();
				};
	     $contentImgArea3.onclick = function() {
			document.getElementById("thumbnailImg4").click();
				};
	     $contentImgArea4.onclick = function() {
			document.getElementById("thumbnailImg5").click();
				};
	     $contentImgArea5.onclick = function() {
			document.getElementById("thumbnailImg6").click();
				};
	
	     function loadImg(value, num) {
	       if (value.files && value.files[0]) {
	         const reader = new FileReader();
	
	         reader.readAsDataURL(value.files[0]);
	
	         reader.onload = function(e) {
	           switch(num) {
	             case 1 : document.getElementById("titleImg").src = e.target.result; break;
	             case 2 : document.getElementById("contentImg1").src = e.target.result; break;
	             case 3 : document.getElementById("contentImg2").src = e.target.result; break;
	             case 4 : document.getElementById("contentImg3").src = e.target.result; break;
	             case 5 : document.getElementById("contentImg4").src = e.target.result; break;
	             case 6 : document.getElementById("contentImg5").src = e.target.result; break;
	           }
	         }
	       }
	     };
	     
	     $("#registBtn").on("click", function () {
	    	 if ($(".title-img-area").prop("src") == false ||
    			 $(".content-img-area1").prop("src") == false ||
    			 $(".content-img-area2").prop("src") == false ||
    			 $(".content-img-area3").prop("src") == false ||
    			 $(".content-img-area4").prop("src") == false ||
    			 $(".content-img-area5").prop("src") == false) {
				alert("6장의 사진을 등록하세요");
			} else {
				$(this).attr("type", "submit");
			}
      	   		
		});
	 </script>

</body>
</html>