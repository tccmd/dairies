<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="utf-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1">

			<title>Dairies</title>

			<meta name="description" content="Source code generated using layoutit-studio.com">
			<meta name="author" content="LayoutIt!">

			<link href="../css/bootstrap.min.css" rel="stylesheet">
			<link href="../css/style.css" rel="stylesheet">
		</head>

		<body>

			<% request.setCharacterEncoding("UTF-8"); %>
				<% String language=request.getParameter("language"); if (language !=null) { session.setAttribute("language",
					language); } else if (session.getAttribute("language")==null) { session.setAttribute("language", "ko" ); } %>
					<fmt:setLocale value="${sessionScope.language}" />
					<fmt:bundle basename="bundle.message">
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
									<div class="text-center custom-width" style="background-color: #fff; padding: 20px;">
										<p style="font-size: 9pt; margin: 0px">CONTACT US</p>
										<hr width="20px;" color="brown" style="height: 2px; margin: 7px auto 10px auto;">
										<h3 style="font-weight: bold;">
											오시는 길
										</h3>
									</div>
									<!-- 여기까지 타이틀 div -->
								</div>
								<!-- 여기까지 타이틀 column12 -->
							</div>
							<!-- 여기까지 타이틀 row -->

							<!-- <div style="height: 50px;"></div> -->

							<!-- 내용 row -->
							<div class="row" style="width: 80%; padding: 3% 0%">
								<div class="col-md-3" style="background-color: #fff; padding: 0;" align="left">
									<div style="padding: 25px 10px;">본사</div>
									<div
										style="background-color: #eee; margin: 0; padding: 11px 10px; border-top: 1px solid #ccc; height: 50px;">
										Dairies
										주식회사 본사 ></div>
									<div class="media" style="padding: 15px 3px;">
										<img class="mr-3" alt="Bootstrap Media Preview"
											src="https://www.layoutit-studio.com/img/sports-q-c-64-64-8.jpg" />
										<div class="media-body">
											<span style="color: #aaa; font-size: 9pt;">
												<fmt:message key="address" />
											</span>
										</div>
									</div>
								</div>
								<!-- 지도 -->
								<div class="col-md-9" id="map">
									<div style="width: 500px; height: 800px;"></div>
									<script type="text/javascript"
										src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2aff1c677d0d420811dd7ec26bcfe2ab"></script>
									<script>
										var container = document.getElementById('map');
										var options = {
											center: new kakao.maps.LatLng(37.574769, 126.979032),
											level: 3
										};

										var map = new kakao.maps.Map(container, options);

										var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
											mapOption = {
												center: new kakao.maps.LatLng(37.574769, 126.979032), // 지도의 중심좌표
												level: 3 // 지도의 확대 레벨
											};

										var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

										// 마커가 표시될 위치입니다 
										var markerPosition = new kakao.maps.LatLng(37.574769, 126.979032);

										// 마커를 생성합니다
										var marker = new kakao.maps.Marker({
											position: markerPosition
										});

										// 마커가 지도 위에 표시되도록 설정합니다
										marker.setMap(map);

										// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
										// marker.setMap(null); 
									</script>
								</div>
							</div>
						</div>
						<!-- 여기까지 container -->
					</fmt:bundle>
					<jsp:include page="../common/footer.jsp"></jsp:include>
					<script src="../js/jquery.min.js"></script>
					<script src="../js/bootstrap.min.js"></script>
					<script src="../js/scripts.js"></script>
		</body>

		</html>