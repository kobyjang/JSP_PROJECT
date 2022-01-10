<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="dto.Pet" %>
<%@ page import="dao.PetRepository" %>
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
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="resources/css/fontawesome.min.css">
    <% 
        request.setCharacterEncoding("UTF-8"); 
        String cartId=session.getId(); 
        String shipping_cartId="" ; 
        String shipping_name="" ; 
        String shipping_shippingDate="" ; 
        String shipping_country="" ; 
        String shipping_zipCode="" ; 
        String shipping_addressName="" ; 
        
        Cookie[] cookies=request.getCookies(); 
            if (cookies !=null) { 
                for (int i=0; i < cookies.length; i++) {
                    Cookie thisCookie=cookies[i]; 
                    String n=thisCookie.getName(); 
                if (n.equals("Shipping_cartId"))
                    shipping_cartId=URLDecoder.decode((thisCookie.getValue()), "utf-8" ); 
                if (n.equals("Shipping_name")) 
                    shipping_name=URLDecoder.decode((thisCookie.getValue()), "utf-8"); 
                if (n.equals("Shipping_shippingDate"))
                    shipping_shippingDate=URLDecoder.decode((thisCookie.getValue()), "utf-8" ); 
                if (n.equals("Shipping_country"))
                    shipping_country=URLDecoder.decode((thisCookie.getValue()), "utf-8" ); 
                if (n.equals("Shipping_zipCode"))
                    shipping_zipCode=URLDecoder.decode((thisCookie.getValue()), "utf-8" ); 
                if (n.equals("Shipping_addressName"))
                    shipping_addressName=URLDecoder.decode((thisCookie.getValue()), "utf-8" ); 
                } 
            } 
    %>
        <!--

TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>
<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
        id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none"
                        href="mailto:java.koby@gmail.com">java.koby@gmail.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none"
                        href="tel:010-2696-0937">010-2696-0937</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank"
                        rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i
                            class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i
                            class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i
                            class="fab fa-linkedin fa-sm fa-fw"></i></a>
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
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse"
                data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent"
                aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
                id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-end ml-auto">
                        <%@ include file="menu.jsp" %>
                    </ul>
                </div>
            </div>
    </nav>
    <!-- Close Header -->
    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                    aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q"
                        placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>
    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">
            <div class="container" align="center">
                <h1 class="display-3">주문 정보</h1>
            </div>
        </div>
        <div class="container col-8 alert alert-primary">
            <div class="text-center ">
                <h1>영수증</h1>
            </div>
            <div class="row justify-content-between">
                <div class="col-4" align="left">
                    <strong>전달 주소</strong> <br> 성명 : <% out.println(shipping_name); %><br>
                        우편번호 : <% out.println(shipping_zipCode);%><br>
                            주소 : <% out.println(shipping_addressName);%>(<%
                                    out.println(shipping_country);%>)<br>
                </div>
                <div class="col-4" align="right">
                    <p> <em>전달일: <% out.println(shipping_shippingDate); %></em>
                </div>
            </div>
            <div>
                <table class="table table-hover">
                    <tr>
                        <th class="text-center">동물</th>
                        <th class="text-center">#</th>
                        <th class="text-center">가격</th>
                        <th class="text-center">소계</th>
                    </tr>
                   		 <% 
                    		int sum=0; ArrayList<Pet> cartList = (ArrayList<Pet>)
                            session.getAttribute("cartlist");
                            if (cartList == null)
                            	cartList = new ArrayList<Pet>();
                            for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기 Pet
                                Pet pet=cartList.get(i); 
                                int total=pet.getDutyPrice() *pet.getQuantity(); 
                                sum=sum + total;
                           %>
                                    <tr>
                                        <td class="text-center"><em>
                                                <%=pet.getAname()%>
                                            </em></td>
                                        <td class="text-center">
                                            <%=pet.getQuantity()%>
                                        </td>
                                        <td class="text-center">
                                            <%=pet.getDutyPrice()%>원
                                        </td>
                                        <td class="text-center">
                                            <%=total%>원
                                        </td>
                                    </tr>
                                    <% } %>
                                        <tr>
                                            <td> </td>
                                            <td> </td>
                                            <td class="text-right"> <strong>총책임비: </strong></td>
                                            <td class="text-center text-danger"><strong>
                                                    <%=sum%>
                                                </strong></td>
                                        </tr>
                </table>
                <a href="./ShippingInfo.jsp?cartId=<%=shipping_cartId%>" class="btn btn-secondary"
                    role="button"> 이전 </a>
                <a href="./thankCustomer.jsp" class="btn btn-success" role="button"> 예약 완료 </a>
                <a href="./checkOutCancelled.jsp" class="btn btn-secondary" role="button"> 취소 </a>
            </div>
        </div>
    </div>
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
                            <a class="text-decoration-none"
                                href="tel:010-020-0340">010-2696-0937</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none"
                                href="mailto:java.koby@gmail.com">java.koby@gmail.com</a>
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
                            <a class="text-light text-decoration-none" target="_blank"
                                href="http://facebook.com/"><i
                                    class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank"
                                href="https://www.instagram.com/"><i
                                    class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank"
                                href="https://twitter.com/"><i
                                    class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank"
                                href="https://www.linkedin.com/"><i
                                    class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light"
                            id="subscribeEmail" placeholder="Email address">
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
                            | Designed by <a rel="sponsored" href="https://templatemo.com"
                                target="_blank">TemplateMo</a>
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