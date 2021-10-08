<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/board/boardDetail.css">
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
      <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
          <div class="sidebar-brand-icon rotate-n-15">
          </div>
          <div class="sidebar-brand-text mx-3">NOTICE</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0">

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
            aria-controls="collapseTwo">
            <i class="fas fa-fw fa-folder"></i>
            <span>고객센터</span>
          </a>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <a class="collapse-item" href="notice.html">공지사항</a>
              <a class="collapse-item" href="FAQ2.html">FAQ</a>
              <a class="collapse-item" href="1dae1_list.html">1:1 문의</a>
            </div>
          </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>

      </ul>
      <!-- End of Sidebar -->

      <!-- 자자 해보자 -->
      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">

        <!-- Begin Page Content -->
        <div class="container">

          <!-- Page Heading -->
          <br>
          <h1 class="h3 mb-2 text-gray-800">공지사항</h1>
          <p class="mb-4"></p>

          <div class="bonmun">
            2021.09.13
            <p>[공지]추석 연휴 판매자 정산 일정 안내</p>
            <div class="realBonmun">
              안녕하세요. THE SHOES입니다.<br><br>

              추석 연휴로 인해 관계사의 업무 일정이 조정될 예정이며, 이에 따라 변경될 판매 대급의 정산 일정을
              안내드립니다.<br><br>

              정산 일정 변경 대상 | 9월 17일 (금) ~ 9월 23일 (목) 검수 합격 건
              정산 예정일 | 9월 24일 (금)<br><br>

              판매 거래 전, 안내드린 정산 일정 참고 부탁드립니다.<br>
              감사합니다.<br><br>
            </div>
            <div style="text-align: center; margin: 30px;">
              <button type="button" class="btn btn-outline-secondary" id="listBtn"
                onclick="listBtn_click();">목록보기</button>
              <button type="button" class="btn btn-outline-secondary" id="modifyBtn"
                onclick="modifyBtn_click();">수정</button>
            </div>
          </div>

          <!-- //paging -->
        </div>
      </div>
    </div>
    <!-- 자자 해보자 -->
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />
</body>
</html>