<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile Pop-up</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
	integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
/* Your CSS styles here */
/* Styling for the pop-up */
.popup {
	display: none;
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 0, 0, 0.5);
	z-index: 9999;
}

.popup-content {
	background-color: white;
	width: 50%;
	max-width: 500px;
	margin: 100px auto;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
}

.close {
	position: absolute;
	top: 10px;
	right: 10px;
	cursor: pointer;
}

.close i {
	font-size: 20px;
	color: #333;
}

/* Additional styling */
/* Add your existing styles here */
</style>
</head>
<body>

	<header>
		<nav>
			<div class="nav-left">
				<img src="../Image/Logo.png" alt="" class="logoimg">
				<ul class="nav-menu">
					<li>DJI</li>
					<li>AIRDATA</li>
					<li>SKYDIO</li>
					<li>FLYABILITY</li>
					<li class="new">AIR 3<span>New</span></li>
				</ul>
			</div>
			<div class="nav-right">
				<div class="search-bar">
					<form id="searchForm" action="/search" method="GET">
						<a id="searchLink" href="#"><i
							class="fas fa-search search-icon"></i></a>
						<!-- Font Awesome search icon -->
						<input type="text" id="searchInput" name="q"
							placeholder="Search For Products, brands and more">
					</form>
				</div>
				<div>
					<a href="#" onclick="openPopup()"><i class="fa-regular fa-user"></i></a>
					<p>Profile</p>
				</div>
				<div>
					<a href="#"><i class="fa-regular fa-heart"></i></a>
					<p>Wishlist</p>
				</div>
				<div>
					<a href="#"><i class="fa-solid fa-right-from-bracket"></i></a>
					<p>Out</p>
				</div>
			</div>
		</nav>
	</header>

	<div id="popup" class="popup">
		<div class="popup-content">
			<div class="close" onclick="closePopup()">
				<i class="fas fa-times"></i>
			</div>
			<h3>User Profile</h3>
			<!-- Your profile content here -->
			<div class="main-frame">
				<!-- Your profile form content here -->
			</div>
		</div>
	</div>

	<!-- Your main content here -->

	<script>
		function updateSearchParam(searchText) {
			var url = new URL(window.location.href);
			url.searchParams.set("search", searchText);
			window.location.href = url.href;
		}

		document.getElementById("searchLink")
				.addEventListener(
						"click",
						function(event) {
							event.preventDefault(); // Prevent the link from navigating
							var searchText = document
									.getElementById("searchInput").value;
							updateSearchParam(searchText);
						});

		document.getElementById("searchInput")
				.addEventListener(
						"keydown",
						function(event) {
							if (event.key === "Enter") {
								event.preventDefault(); // Prevent the default form submission behavior
								var searchText = document
										.getElementById("searchInput").value;
								updateSearchParam(searchText);
							}
						});
	</script>

</body>
</html>