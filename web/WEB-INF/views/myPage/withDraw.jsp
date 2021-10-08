<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${ pageContext.servletContext.contextPath }/resources/css/myPage/withDraw.css">
<link rel="shortcut icon" href="${ pageContext.servletContext.contextPath }/resources/uses/the-shoes-favicon.png">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/css/sb-admin-2.min.css" rel="stylesheet">
<link href="${ pageContext.servletContext.contextPath }/resources/uses/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
<link rel="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css">
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
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">
      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
        </div>
        <div class="sidebar-brand-text mx-3">MY PAGE</div>
      </a>
      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true"
          aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>쇼핑정보</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">응모 내역</a>
            <a class="collapse-item" href="#">구매 내역</a>
            <a class="collapse-item" href="#">판매 내역</a>
            <a class="collapse-item" href="#">관심 상품</a>
          </div>
        </div>
      </li>

      <!-- Nav Item - Utilities Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
          aria-expanded="true" aria-controls="collapseUtilities">
          <i class="fas fa-fw fa-wrench"></i>
          <span>나의정보</span>
        </a>
        <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="#">프로필 정보</a>
            <a class="collapse-item" href="#">주소록</a>
            <a class="collapse-item" href="#">결제 정보</a>
            <a class="collapse-item" href="#">회원 탈퇴</a>
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

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
        <!-- Begin Page Content -->
        <div class="container-fluid container_center">

          <!-- Page Heading -->
          <br>
          <h1 class="h3 mb-2 text-gray-800">회원탈퇴</h1>
          <br />
          <!--회원탈퇴 항목-->
          <div class="secession">
            <p class="title">회원탈퇴 사유</p>
            <ul class="radio_box" onclick='reason1_click()'>
              <li>
                <input type="radio" id="reason01" name="reason1" />
                <label for="reason01">회원탈퇴 후 재가입을 위해서</label>
              </li>
              <li>
                <input type="radio" id="reason02" name="reason1" />
                <label for="reason02">상품 구매 빈도가 낮아 이용할 필요가 없어서</label>
              </li>
              <li>
                <input type="radio" id="reason03" name="reason1" />
                <label for="reason03">서비스 및 고객지원이 만족스럽지 못해서</label>
              </li>
              <li>
                <input type="radio" id="reason04" name="reason1" />
                <label for="reason04">사용 PC 또는 모바일의 환경이 맞지 않아서</label>
              </li>
              <li>
                <input type="radio" id="reason05" name="reason1" />
                <label for="reason05">별다른 이유없이 탈퇴</label>
              </li>
            </ul>
            <p class="red" id="reason1"></p>

            <p class="title">탈퇴하시려는 사유를 입력해주세요.</p>
            <textarea id="reason_2" placeholder="하시고 싶은 말씀이 있으시면 남겨주세요. 2,000자까지 입력 할 수 있습니다."
              onkeyup="onKey()"></textarea>
            <p class="red" id="reason2"></p>

            <p class="title">회원 탈퇴 동의</p>
            <div class="check_box">
              <input type="checkbox" id="reason_check" name="reason_check" onchange="onChange()" />
              <label for="reason_check">회원탈퇴 안내를 모두 확인하였으며 탈퇴에 동의합니다.</label>
            </div>
            <p class="red" id="reason3"></p>

            <p class="title">회원탈퇴 안내사항</p>
            <ul class="num_bullet">
              <li data-num="1.">탈퇴 이후에 보유하신 쿠폰, MILE 그리고 참여하신 이벤트의 응모 및 당첨 혜택이 모두 소멸됩니다.</li>
              <li data-num="2.">회원정보는 탈퇴 시 관련법령에 따라 보관 의무가 있는 경우를 제외하고는 즉시 삭제됩니다.</li>
              <li data-num="3.">전자상거래 등에서의 소비자보호법에 관한 법률에 따라 계약 또는 청약철회에 관한 기록, 대금 결제 및 재화 등의 <br />공급에 관한 기록은 5년, 그리고
                소비자의 불만 또는 분쟁처리에 관한 기록은 3년간 보존됩니다.</li>
              <li data-num="4.">탈퇴 이후에는 어떠한 방법으로도 삭제된 회원정보를 복원할 수 없습니다.</li>
            </ul>

            <a href="#n" class="black_btn pop_open">탈퇴하기</a>
          </div>

          <!--탈퇴하기 버튼 클릭시 알림창-->
          <span class="shadow"></span>
          <div class="alert">
            <div class="inner">
              <p>정말 탈퇴 하시겠습니까?</p>
              <div class="btnArea">
                <a href="#n" class="gray_btn pop_close">취소</a>
                <a href="#n" id="check" class="black_btn pop_close">확인</a>
              </div>
            </div>
          </div>
          <!--//탈퇴하기 버튼 클릭시 알림창-->
        </div>
        <!--//회원탈퇴 항목-->
      </div>
    </div>
  </div>
	</section>

	<!-- footer -->
	<jsp:include page="../common/footer.jsp" />

	<script
		src="${ pageContext.servletContext.contextPath }/resources/js/myPage/myProfile.js"></script>

</body>
</html>