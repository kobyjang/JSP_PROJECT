<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Zay Shop eCommerce HTML CSS Template</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="resources/images/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="resources/images/favicon.ico">

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/templatemo.css">
    <link rel="stylesheet" href="resources/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="resources/css/fontawesome.min.css">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript" src="resources/js/validation.js"></script>
	<script type="text/javascript">
	function CheckAddPet() {
		var petId = document.getElementById("petId");
		var Aname = document.getElementById("Aname");
		var sex = document.getElementById("sex");
		var adopt = document.getElementById("adopt");
		var dutyPrice = document.getElementById("dutyPrice");
	
		// 상품아아디 체크
		if (!check(/^P[0-9]{2,11}$/, petId,
				"[동물 코드]\nP와 숫자를 조합하여 5~12자까지 입력하세요\n첫 글자는 반드시 P로 시작하세요"))
			return false;
		
		// 상품명 체크
		if (Aname.value.length < 2 || Aname.value.length > 12) {
			alert("[이름]\n최소 2자에서 최대 50자까지 입력하세요");
			Aname.select();
			Aname.focus();
			return false;
		}
		// 성별 체크
			if (sex.value.length < 1 || sex.value.length > 12) {
			alert("[성별]\n최소 2자에서 최대 6자까지 입력하세요");
			sex.select();
			sex.focus();
			return false;
		}
		// 분양 체크
			if (adopt.value.length < 2 || adopt.value.length >12) {
			alert("[분양]\n최소 2자에서 최대 6자까지 입력하세요");
			adopt.select();
			adopt.focus();
			return false;
		}
		
		// 책임비 가격 체크
		if (dutyPrice.value.length == 0 || isNaN(dutyPrice.value)) {
			alert("[책임비]\n숫자만 입력하세요");
			dutyPrice.select();
			dutyPrice.focus();
			return false;
		}
		if (dutyPrice.value < 0) {
			alert("[책임비]\n음수를 입력할 수 없습니다");
			dutyPrice.select();
			dutyPrice.focus();
			return false;
		} else if (!check(/^\d+(?:[.]?[\d]?[\d])?$/, dutyPrice,
				"[책임비]\n소수점 둘째 자리까지만 입력하세요"))
			return false;
		
		function check(regExp, e, msg) {
	
			if (regExp.test(e.value)) {
				return true;
			}
			alert(msg);
			e.select();
			e.focus();
			return false;
        }
		document.newPet.submit()
	}
	</script>
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:java.koby@gmail.com">java.koby@gmail.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-2696-0937">010-2696-0937</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>         
        </div>
    </nav>
    <!-- Close Top Nav -->
    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">
            <a class="navbar-brand text-success logo h1 align-self-center" href="welcome.jsp">
                KOBY SHOP
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-end ml-auto">
                    <%@ include file="menu.jsp"%>
                    </ul>
                </div>
       		</div>
    </nav>
    <!-- Close Header -->
    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!-- Start Content -->
 	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" >
	<title>상품 상세 정보</title>
	<br><br>
	<h1 class="display-3" align="center"><fmt:message key="title" /></h1>
	<div class="container">
		<div class="text-right" align="right"> 
			<a href="?language=ko" >Korean</a>&nbsp;&nbsp;<a href="?language=en" >English</a>
			<a href="logout.jsp" class="btn btn-sm btn-success pull-right">logout</a>
		</div>	
		<form name="newPet" action="./processAddPet.jsp" class="form-horizontal" method="post" enctype="multipart/form-data">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="petId" /></label>
				<div class="col-sm-3">
					<input type="text" id="petId"  name="petId"  class="form-control" >
				</div>
			</div>
				<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="sex" /></label>
				<div class="col-sm-3">
					<input type="text" id="sex"  name="sex" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="Atype" /></label>
				<div class="col-sm-3">
					<input type="text" id="Atype"  name="Atype" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="Aname"/></label>
				<div class="col-sm-3">
					<input type="text" id="Aname"  name="Aname" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="adopt" /></label>
				<div class="col-sm-5">
						<input type="text" id="adopt"  name="adopt" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="dutyPrice"/></label>
				<div class="col-sm-3">
					<input type="text"id="dutyPrice" name="dutyPrice" class="form-control">
				</div>
			</div>
				<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="description" /></label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2" class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="petImage" /></label>
				<div class="col-sm-5">
					<input type="file" name="petImage" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddPet()">
				</div><br><br><br>
			</div>
		</form>
	</div>
	</fmt:bundle>
    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">KOBY Shop</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            대구광역시 
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">010-2696-0937</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:java.koby@gmail.com">java.koby@gmail.com</a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">아가들</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">강아지</a></li>
                        <li><a class="text-decoration-none" href="#">고양이</a></li>
                        <li><a class="text-decoration-none" href="#">거북이</a></li>
                        <li><a class="text-decoration-none" href="#">기타</a></li>
                    </ul>
                </div>
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">FAQs</a></li>
                    </ul>
                </div>
            </div>
            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="http://facebook.com/"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-success text-light">Subscribe</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 2021 Company Name 
                            | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->
    <!-- Start Script -->
    <script src="resources/js/jquery-1.11.0.min.js"></script>
    <script src="resources/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="resources/js/bootstrap.bundle.min.js"></script>
    <script src="resources/js/templatemo.js"></script>
    <script src="resources/js/custom.js"></script>
    <!-- End Script -->
</body>
</html>