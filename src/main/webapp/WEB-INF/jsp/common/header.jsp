<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Dairies</title>

			<link href="css/style.css" rel="stylesheet">
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
		</head>

		<body>
			<% request.setCharacterEncoding("UTF-8"); %>
				<% String language=request.getParameter("language"); if (language !=null) {
					session.setAttribute("language", language); } else if (session.getAttribute("language")==null) {
					session.setAttribute("language", "ko" ); } %>
					<fmt:setLocale value="${sessionScope.language}" />
					<fmt:bundle basename="bundle.message">

						<div class="row fixed-top" style="background-color: white;">
							<div class="col-md-12">
								<div class="row" style="padding: 7px;">
									<div class="col-md-12">
										<ul class="nav nav-pills">
											<li class="nav-item">
												<% String id=null; String num=null; if (session.getAttribute("id")
													!=null) { /* num=(String) session.getAttribute("num"); */
													id=(String) session.getAttribute("id"); } if (id !=null) { %> <a
														class="nav-link active" href="/member/logout.do">
														<fmt:message key="logout" />
													</a>
													<% } else { %> <a class="nav-link active" href="/member/login.do">
															<fmt:message key="login" />
														</a>
														<% } %>
											</li>
											<li class="nav-item"><a class="nav-link" href="?language=ko">KR</a></li>
											<li class="nav-item"><a class="nav-link" href="?language=en">EN</a>
											</li>
											<li class="nav-item dropdown ml-md-auto">
												<% if (id==null) { %> <span></span>
													<% } else if (id.equals("admin")) { %>

											<li class="nav-item"><a class="nav-link" href="/administrator.do">관리자
													페이지</a></li>
											<% } %>
												<li><a class="nav-link dropdown-toggle" href="http://example.com"
														id="navbarDropdownMenuLink" data-toggle="dropdown" href="">
														<fmt:message key="costomerCenter" />
													</a>
													<div class="dropdown-menu dropdown-menu-right"
														aria-labelledby="navbarDropdownMenuLink">
														<a class="dropdown-item"
															href="/board/openBoardPage.do?pageNumber=0&perPage=4">
															<fmt:message key="CustomerInquiry" />
														</a>
														<!-- <a class="dropdown-item" href="#"> </a> <a class="dropdown-item" href="#">Something else here</a> -->
														<!-- 						<div class="dropdown-divider">
						</div> <a class="dropdown-item" href="#">Separated link</a> -->
													</div>
												</li>


										</ul>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<h3 class="text-center" id="logo" align="center">
											<a href="/" style="text-decoration: none;">Dairies</a>
										</h3>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12 d-none d-sm-block">
										<ul class="nav nav-tabs">
											<li class="nav-item dropdown mx-md-5"><a class="nav-link dropdown-toggle"
													href="http://example.com" id="navbarDropdownMenuLink"
													data-toggle="dropdown">
													<fmt:message key="aboutUs" />
												</a>
												<div class="dropdown-menu dropdown-menu-right"
													aria-labelledby="navbarDropdownMenuLink">
													<a class="dropdown-item" href="/information/story">
														<fmt:message key="aboutUs" />
													</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="/information/location">
														<fmt:message key="location" />
													</a>
												</div>
											</li>
											<li class="nav-item"><a class="nav-link" href="/product/openProductList.do">
													<fmt:message key="brand" />
												</a></li>
											<li class="nav-item"><a class="nav-link" href="/information/contribution">
													<fmt:message key="socialContribution" />
												</a></li>
											<li class="nav-item"><a class="nav-link" href="/information/management">
													<fmt:message key="ethicalManagement" />
												</a></li>
											<li class="nav-item"><a class="nav-link" href="/notice/openNoticeList.do">
													<fmt:message key="notice" />
												</a></li>
										</ul>
									</div>
									<div class="col-md-12 d-sm-none">
										<nav class="navbar">
											<div class="container-fluid">
												<a class="navbar-brand" href="#"></a>
												<button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
													data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar"
													aria-label="Toggle navigation">
													<span class="navbar-toggler-icon"></span>
												</button>
												<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
													aria-labelledby="offcanvasNavbarLabel">
													<div class="offcanvas-header">
														<h5 class="offcanvas-title" id="offcanvasNavbarLabel">Menu</h5>
														<button type="button" class="btn-close"
															data-bs-dismiss="offcanvas" aria-label="Close"></button>
													</div>
													<div class="offcanvas-body">
														<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
															<li class="nav-item dropdown mx-md-5">
																<li class="nav-item dropdown">
																	<a class="nav-link dropdown-toggle" href="http://example.com" role="button" data-bs-toggle="dropdown" aria-expanded="false">
																		<fmt:message key="aboutUs" />
																	</a>
																	<ul class="dropdown-menu">
																		<li><a class="dropdown-item" href="/information/story">
																			<fmt:message key="aboutUs" />
																		</a>
																	</li>
																	  <li>
																		<hr class="dropdown-divider">
																	  </li>
																	  <li><a class="dropdown-item"
																		href="/information/location">
																		<fmt:message key="location" />
																	</a></li>
																	</ul>
																  </li>
															</li>
															<li class="nav-item"><a class="nav-link"
																	href="/product/openProductList.do">
																	<fmt:message key="brand" />
																</a></li>
															<li class="nav-item"><a class="nav-link"
																	href="/information/contribution">
																	<fmt:message key="socialContribution" />
																</a></li>
															<li class="nav-item"><a class="nav-link"
																	href="/information/management">
																	<fmt:message key="ethicalManagement" />
																</a></li>
															<li class="nav-item"><a class="nav-link"
																	href="/notice/openNoticeList.do">
																	<fmt:message key="notice" />
																</a></li>
														</ul>
													</div>
												</div>
											</div>
										</nav>
									</div>
								</div>
							</div>
						</div>
					</fmt:bundle>

					<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
					<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

		</body>

		</html>