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
	content="Source code generated using layoutit.com">
<meta name="author" content="LayoutIt!">

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/style.css" rel="stylesheet">
<script type="text/javascript">
	function updateCheck() {
		if(frm.password.value!="${board.password}") {
			alert("비밀번호가 다릅니다.");
			return false;
		}
		frm.submit
	}
	function deleteCheck() {
		if(frm.password.value=="${board.password}") {
			location.href="/board/deleteBoard.do?boardIdx=${board.boardIdx}";
		} else {
			alert("비밀번호가 다릅니다.");
			}
		}
</script>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
		String ip = request.getRemoteAddr();
	%>

	<jsp:include page="../common/header.jsp" flush="false"></jsp:include>

	<!-- 헤드 여유 처리 -->
	<div style="height: 190px;"></div>

	<!-- 배경화면 이미지 처리를 위한 container -->
	<div class="container-fluid" id="contents" align="center">
		<div class="row">
			<div class="col-md-12">
				<!-- 타이틀 위쪽으로 이미지 보이기 위한 여유 처리 -->
				<div style="height: 80px;"></div>
				<!-- 타이틀 div -->
				<div class="text-center custom-width"
					style="background-color: #fff; padding: 20px;">
					<p style="font-size: 9pt; margin: 0px">BOARD</p>
					<hr width="20px;" color="brown"
						style="height: 2px; margin: 7px auto 10px auto;">
					<h3 style="font-weight: bold;">
						<a href="/board/openBoardList.do" style="color: #000;">문의게시판</a>
					</h3>
				</div>
				<!-- 여기까지 타이틀 div -->
			</div>
			<!-- 여기까지 타이틀 column12 -->
		</div>
		<!-- 여기까지 타이틀 row -->
		<!-- 컨텐츠row (내용row) -->
		<div class="row custom-width" align="left" 
			style="background-color: #fff; padding: 3% 1% 2% 1%;">
			<div class="col-md-12">
				<!-- 내용 row -->
				<div class="row">
					<div class="col-md-12">

						<form role="form" id="frm" name="frm" method="post"
							action="/board/updateBoard.do" enctype="multipart/form-data">
							<div class="form-group">
								<label for="exampleInputTitle"> 제목 </label> <input type="text"
									class="form-control" name="title" value="${board.title }" />
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1"> 내용 </label>
								<textarea class="form-control" name="contents" rows="10">${board.contents }</textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputTitle"> 비밀번호 </label> <input type="password"
									class="form-control" name="password" />
							</div>
								<input type="hidden" name="ip" value="<%=ip %>" />
							<div class="form-group">
								<label for="exampleInputFile"> 파일 </label> <input type="file"
									class="form-control-file" id="files" name="files"
									multiple="multiple" />
							</div>
							<input type="hidden" id="boardIdx" name="boardIdx" value="${board.boardIdx }">
							<button class="btn btn" onclick="updateCheck()">수정</button>
							<button class="btn btn" onclick="deleteCheck()">삭제</button>
							<!-- <button class="btn btn" onclick="location.href='/board/replyBoard.do?boardIdx=${board.boardIdx}'">답변</button> -->
							<button class="btn btn-primary" onclick="location.href='/board/openBoardList.do'">목록</button>
						</form>
						
						<div style="height: 10%;"></div>
					</div>
				</div>
			</div>
		</div>
		<div style="height: 50px;"></div>
	</div>

	<jsp:include page="../common/footer.jsp"></jsp:include>
	<script src="../js/jquery.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/scripts.js"></script>

</body>
</html>