<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dairies</title>
<meta name="description"
	content="Source code generated using layoutit-studio.com">
<meta name="author" content="LayoutIt!">

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<script src="../js/validation.js"></script>
<script src="../js/terms.js"></script>
</head>
<script>
	// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
	//document.domain = "abc.go.kr";

	function goPopup(){
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("/member/jusoPopup.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	/** API 서비스 제공항목 확대 (2017.02) **/
	function jusoCallBack(roadAddrPart1, addrDetail, zipNo){
    // 팝업 페이지에서 전달된 데이터를 받아 화면에 표시하거나 로직 처리
    console.log("도로명 주소:", roadAddrPart1);
    console.log("상세 주소:", addrDetail);
    console.log("우편번호:", zipNo);

    // 화면에 데이터를 표시하거나 form 필드에 값 할당
    document.getElementById("roadAddrPart1").value = roadAddrPart1;
    document.getElementById("roadAddrPart2").value = addrDetail;
    document.getElementById("zipNo").value = zipNo;

    // alert("주소가 입력되었습니다!");
}

	function idcheck() {
		var pop = window.open("/member/idsearch.do", "pop",
				"width=400,height=400,top=0,left=0");
	}

	function idCallBack(id) {
		document.member.id.value = id;
	}

	function check() {
		if (member.id.value == "") {
			alert("아이디를 입력하세요.");
			login.id.focus();
			return false;
		}
		if (member.pw.value == "") {
			alert("비밀번호를 입력하세요.");
			login.pw.focus();
			return false;
		}
		if (member.pw2.value == "") {
			alert("비밀번호 확인을 입력하세요.");
			login.pw2.focus();
			return false;
		}
		member.submit();
	}

	function modalTexting(index) {
    if (index === 1) {
		document.querySelector('.modal-title').textContent = "서비스 이용약관(필수)"
		document.querySelector('.modal-body').textContent = terms;
	} else {
		document.querySelector('.modal-title').textContent = "개인정보 수집/이용(필수)"
		document.querySelector('.modal-body').textContent = personalInformation;
	}
}
</script>
<body>
	<jsp:include page="../common/header.jsp"></jsp:include>
	<div style="height: 190px;"></div>
	<div style="height: 150px;"></div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-12">
						<h3 class="text-center">회원가입</h3>
					</div>
				</div>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<form role="form" name="member" method="post"
							action="/member/insertMember.do" style=" width: 450px; margin: 0 auto;">

							<div class="form-group">
								<!-- <label for="Id"> 아이디 </label> -->
								<input type="email" class="form-control" id="id" name="id"
									readonly placeholder="* 아이디" />
								<button type="button" class="btn btn-outline-primary"
									onclick="idcheck()" style="margin-top: 10px;">아이디 중복
									확인</button>
							</div>

							<div class="form-group">
								<!-- <label for="Password"> Password </label> -->
								<input type="password" class="form-control" id="pw" name="pw"
									placeholder="* 비밀번호" />
							</div>

							<div class="form-group">
								<!-- <label for="Password Check"> Password Check </label> -->
								<input type="password" class="form-control" id="pw2" name="pw2"
									placeholder="* 비밀번호 확인" />
							</div>

							<hr>

							<div class="form-group">
								<label for="Tel"> Tel </label> <input type="text"
									class="form-control" name="tel" readonly
									placeholder="                          -                                 -           ">
								<span style="font-size: 10pt; color: #636c72;">본인 인증된
									휴대전화</span>
							</div>

							<div class="form-group">
								<label for="Email address"> Email address </label> <input
									type="text" class="form-control-inline" name="email"
									style="width: 94%;"> @
								<div class="row">
									<div class="col-md-6"
										style="padding-right: 3px; margin-right: 0;">
										<input type="text" class="form-control" id="email2"
											name="email2">
									</div>
									<div class="col-md-6"
										style="padding-left: 3px; margin-left: 0;">
										<select class="custom-select" id="email3" name="email3"
											style="width: 100%;">
											<option value="">이메일계정 선택</option>
											<option value="google.com">google.com</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.com">daum.com</option>
										</select>
									</div>
								</div>
								<span style="font-size: 10pt; color: #636c72;"> E-mail 주소
									입력시 사용가능 특수 문자는 '-', '.', '_'입니다.</span>
								<!-- <input
									type="email" class="form-control" id="email" placeholder="이메일 주소" /> -->
							</div>

							<div class="form-group">
								<label for="Adderss"> Address </label> <br> <input
									type="text" class="form-control-inline" id="zipNo" name="zipNo" size="5"
									readonly onclick="member.zipbtn.focus()" placeholder="우편번호" />
								<input type="button" class="btn btn-outline-primary"
									name="zipbtn" value="우편번호" onclick="goPopup()"> <input
									type="text" class="form-control" id="roadAddrPart1" name="roadAddrPart1" size="40"
									readonly onclick="member.zipbtn.focus()" placeholder="기본주소"
									style="margin-bottom: 0px;"> <input type="text"
									class="form-control" id="roadAddrPart2" name="roadAddrPart2" size="40" readonly
									onclick="member.zipbtn.focus()" placeholder="나머지 주소"> <span
									style="font-size: 10pt; color: #636c72;">우편번호 검색 후 나머지
									주소를 입력해 주세요.</span>
							</div>

							<hr>

							<div class="checkbox">
								<label for="Adderss"> 약관동의 </label> <br>
								<div class="row">
									<div class="col-md-6">
										<p>
											<label> <input type="checkbox" name="checkyes" />
												서비스 이용약관(필수)
											</label>
										<p>
											<label> <input type="checkbox" name="checkyes" />
												개인정보 수집/이용(필수)
											</label>
									</div>
									<div class="col-md-6" align="right">

										<p>
											<a id="modal-718293" href="#modal-container-718293"
											role="button" class="btn btn-outline-primary" data-toggle="modal" onclick="modalTexting(1)">전문보기</a>
											<!-- <button class="btn btn-outline-primary"
												onclick="window.open(openPopup('/member/terms'))">전문보기</button> -->
										<p>
											<a id="modal-718293" href="#modal-container-718293"
											role="button" class="btn btn-outline-primary" data-toggle="modal" onclick="modalTexting(2)">전문보기</a>
											<!-- <button class="btn btn-outline-primary"
												onclick="window.open(openPopup('/member/personal_information'))">전문보기</button> -->
									</div>
								</div>
							</div>

							<button type="button" class="btn btn-block btn-primary"
								onclick="validation()">가입하기</button>

						</form>
					</div>
					<div class="col-md-3"></div>
				</div>
			</div>
		</div>
		<div style="height: 190px;"></div>
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>
	<script>
		$("#email3").change(function() {
			$("#email2").val($("#email3").val());
		});
	</script>

	<div class="modal fade" id="modal-container-718293" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel">이용약관</h5>
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">

				</div>
				<div class="modal-footer">

					<!-- <button type="button" class="btn btn-primary">Save changes
					</button> -->
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>

	</div>


</body>
</html>