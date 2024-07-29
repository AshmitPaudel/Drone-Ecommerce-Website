<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="Dao.ProductDao"%>
<%@page import="java.util.List"%>
<%@page import="model.productModel"%>

<%
String search = request.getParameter("search");
String brand = request.getParameter("brand");
List<productModel> products; // Use proper camelCase for class names
ProductDao dao = new ProductDao(); // Use meaningful variable names

if (search != null && !search.isEmpty()) {
	products = dao.getProductsBySearch(search);
} else if (brand != null && !brand.isEmpty()) {
	products = dao.getProductsByCategory(brand);
} else {
	products = dao.getAllProducts();
}
%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<title>Home Page</title>
</head>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Poppins", sans-serif;
}

header {
	width: 100%;
	height: 80px;
	background: #424242;
	box-shadow: 0 4px 12px 0 rgba(0, 0, 0, .05);
	display: flex;
	align-items: center;
}

.logoimg {
	width: 180px;
	margin-right: 20px;
}

nav {
	display: flex;
	align-items: center;
	justify-content: space-between;
	width: 94%;
	margin: 0 auto;
}

.nav-left, .nav-right {
	display: flex;
	align-items: center;
	justify-content: center;
}

.nav-left ul li {
	list-style: none;
	display: inline-block;
	margin: 0 15px;
	font-weight: 600;
	color: #ffffff;
	font-size: 14px;
}

.search-bar {
	background-color: rgb(255, 255, 255);
	width: 350px;
	line-height: 40px;
	border-radius: 4px;
}

.search-bar input {
	background: transparent;
	border: 0;
	outline: none;
	width: 85%;
}

.search-bar i {
	font-size: 15px;
	color: gray;
	margin-right: 15px;
	margin-left: 10px;
}

.new {
	position: relative;
}

.new span {
	position: absolute;
	color: rgb(243, 57, 57);
	top: -5px;
	left: 40px;
	font-size: 12px;
}

.nav-right div {
	margin: 0 12px;
	text-align: center;
}

.nav-right div p {
	font-size: 13px;
	font-weight: 600;
	color: #ffffff;
}

.nav-right div i {
	font-size: 18px;
	color: gray;
}

.nav-right div i:hover {
	color: #7d2ae8;
}

.Home {
	overflow-x: hidden;
}

@keyframes slider {
        0% {
            left: 0;
        }

        20% {
            left: 0;
        }

        25% {
            left: -100%;
        }

        45% {
            left: -100%;
        }

        50% {
            left: -200%;
        }

        70% {
            left: -200%;
        }

        75% {
            left: -300%;
        }

    }

#slider {
	position: relative;
	overflow: hidden;
	width: 500%;
	margin: 0;
	left: 0;
	animation: 20s slider infinite;
}

#slider figure img {
	float: left;
	width: 20%;
}

.down {
	padding: 24px;
	font-size: 24px;
	color: gray;
	position: absolute;
	right: 48%;
}

.container {
	text-align: center;
	margin-top: 70px;
	width: 100%;
}

/* Header for product Category */
.product_category {
	height: 40px;
	padding: 8px;
	background-color: #43424230;
	margin-bottom: 20px;
}

/* Main div for products of particular category */
.product-collection {
	width: 100%;
	display: flex;
	flex-wrap: wrap;
	justify-content: space-around;
}

/* For all individial products */
.product {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	width: 380px;
	height: 500px;
	padding: 10px;
	border-radius: 30px;
	box-shadow: 1px 1px 20px rgba(0, 0, 0, 0.164);
	margin: 20px 10px;
	transition: all .2s ease-in-out;
}

/*for pricing and discoint text */
.product-text {
	color: black;
	text-align: center;
}

/* Product Name */
.p-text {
	margin-top: 30px;
}

.price {
	color: rgb(0, 0, 0);
	width: auto;
	border-radius: 10px;
}

.old-price {
	color: rgba(255, 0, 0, 0.692);
	text-decoration: line-through;
}

.offer {
	color: red;
}

/* For buy now button and add to cart buttons  */
.buynowbutton {
	width: 300px;
	height: 35px;
	border: none;
	margin-top: 10px;
	background-color: #7d2ae8;
	color: white;
}

.buynowbutton a {
	color: white;
	font-size: 15px;
	padding: 8px;
}

/* Hover effect for Buy now and Add to Cart Buttons */
.buynowbutton:hover {
	background-color: gray;
	transition: all .3s ease;
}

/* Hover effect for products */
.product:hover {
	transform: scale(1.06);
	box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.425);
	border: none;
}

/* This is for footer */
/*----------------------------------------------------Footer------------------------------------------------------------------------------------------------------------------*/
/* Main div of footer */
.footer-distributed {
	background-color: #424242;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 30px 20px 10px 20px;
}
/* All Side Footer */
.footer-left, .footer-center, .footer-right {
	display: inline-block;
	vertical-align: top;
}
/* Footer left */
.footer-left {
	width: 35%;
	margin-left: 26px;
}

.footer-distributed h3 {
	color: #ffffff;
	font-size: 30px;
	margin: 0;
}

.footer-distributed h3 span {
	color: #7d2ae8;
}

.footer-icons {
	margin-top: 20px;
}

.footer-icons i {
	margin-left: 12px;
	color: #7d2ae8;
	font-size: 25px;
}

.footer-icons i:hover {
	color: #6e568d;
}

.footer-company {
	color: #8f9296;
	font-size: 14px;
	font-weight: normal;
	width: 470px;
	margin-top: 20px;
	text-align: justify;
}
/* Footer Center */
.footer-center {
	width: 25%;
	margin-left: 100px;
	margin-top: 015px;
	line-height: 40px;
}

.footer-center p {
	display: inline-block;
	color: #ffffff;
	font-size: small;
}

.footer-center p a {
	color: #7d2ae8;
	text-decoration: none;
}

.footer-center i {
	color: gray;
	font-size: 20px;
}

/* Footer Right */
.footer-right {
	width: 30%;
}

.footer-company-about {
	line-height: 20px;
	color: #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
	text-align: justify;
}

.footer-company-about span {
	display: block;
	color: #cac4c4;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 20px;
}

.footer-company-name {
	color: #8f9296;
	background-color: #2d2a30;
	text-align: center;
	padding: 5px;
	font-weight: 500;
	font: bold 15px sans-serif;
}
</style>

<body>
	<%@ include file="header.jsp"%>

	<section class="Home">
		<div id="slider">
			<figure>
				<img src="../Image/slide1.png" alt="">
				<img src="../Image/slide2.png" alt="" class="imgleft">
				<img src="../Image/slide3.png" alt="" class="imgleft">
				<img src="../Image/slide2.png" alt="" class="imgleft">
			</figure>

		</div>
		<div class="down">
			<i class="fa-solid fa-chevron-down"></i>
		</div>

		<div class="container" id="allProducts">

			<%
			if (search != null && !search.isEmpty()) {
			%>
			<h3 class="product_category">
				Showing results for
				<%=search%></h3>
			<%
			} else {
			%>
			<h3 class="product_category">Products</h3>
			<%
			}
			%>

			<div class="brand-options">
				<select id="brandSelect">
					<option value="">All</option>
					<option value="Dji">Dji</option>
					<option value="Parrot">Parrot</option>
					<option value="Apple">Yuneec</option>
					<option value="Mi">Autel Robotics</option>
					<option value="Fifa">Holy Stone</option>
				</select>
			</div>


			<div class="product-collection">
				<%
				for (productModel p : products) {
				%>
				<div class="product">
					<div class="p-img">
						<a href="product_info.html"><img src="<%=p.getImageUrl()%>"
							width="70%" alt=""></a>
					</div>

					<div class="p-text">
						<h3 class="product-title product-text"><%=p.getProductName()%></h3>
					</div>

					<p class="price product-text"><%=p.getProductDesc()%></p>
					<p class="price product-text">
						<span class="old-price"><%=p.getMrp()%></span>&nbsp;
						<%=p.getDiscountPrice()%>
					</p>
					<!-- Add an ID to the form -->
					<form id="productForm" method="post"
						action="${pageContext.request.contextPath}/ProductDetailsServlet">
						<input type="hidden" name="productId" value="<%=p.getProductId()%>">
						<button class="buynowbutton"
							onclick="submitForm('<%=p.getProductId()%>')">See
							details</button>
					</form>
				</div>
				<%
				}
				%>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</section>

	<script>
		// Event listener for select element change
		document.getElementById('brandSelect').addEventListener('change',
				function() {
					var selectedOption = this.value;
					var url = new URL(window.location.href);
					url.searchParams.set('brand', selectedOption);
					window.history.pushState({}, '', url);
					window.location.reload(); // Refresh the page
				});
	</script>

</body>
</html>