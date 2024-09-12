<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file='all_component/allcss.jsp'%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us - Mind Over Fear</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Muli&display=swap');

body {
	font-family: 'Muli', sans-serif;
	background-color: #f7f7f7;
	color: #333;
}

.about-header {
	background-color: #6c63ff;
	color: white;
	padding: 80px 0;
	text-align: center;
}

.about-header h1 {
	font-size: 3rem;
	font-weight: 700;
}

.about-content {
	padding: 60px 0;
	font-size:20px;
}

.team-section {
	padding: 60px 0;
	background-color: #fff;
}

.team-section h2 {
	text-align: center;
	font-size: 2.5rem;
	font-weight: 600;
	margin-bottom: 40px;
}

.team-member {
	text-align: center;
	margin-bottom: 30px;
}

.team-member img {
	border-radius: 50%;
	width: 150px;
	height: 150px;
	margin-bottom: 20px;
	object-fit: cover;
}

.team-member h4 {
	font-size: 1.25rem;
	font-weight: 600;
	margin-bottom: 10px;
}

.team-member p {
	font-size: 1rem;
	color: #777;
}

.mission-section {
	padding: 60px 0;
	background-color: #f1f1f1;
	font-family: sans-serif;
}

.mission-section h2 {
	font-size: 2.5rem;
	font-weight: 600;
	margin-bottom: 40px;
	text-align: center;
}

.mission-section p {
	font-size: 1.1rem;
	line-height: 1.8;
	margin: 0 auto;
	max-width: 800px;
	text-align: center;
}

.container .row>div {
	margin-bottom: 30px;
}
</style>
</head>
<body>

	<%@include file='all_component/navbar.jsp'%>
	
	<div>
	</div>

	<section class="about-header">
		<div class="container">
			<h1>About Mind Over Fear</h1>
			<p>Your journey to overcoming fear and anxiety starts here.</p>
		</div>
	</section>

	<section class="about-content">
		<div class="container">
			<p>Mind Over Fear is dedicated to helping individuals manage and
				overcome phobias and anxiety. Our mission is to provide accessible
				resources, tools, and community support to empower you in your
				journey towards mental wellness. We believe that with the right
				guidance and support, anyone can take control of their fears and
				lead a fulfilling life.</p>
		</div>
	</section>

	<section class="mission-section">
		<div class="container">
			<h2>Our Mission</h2>
			<p>To create a world where fear and anxiety no longer hold people
				back. We strive to be the leading resource for individuals seeking
				to overcome their mental challenges, offering practical solutions,
				professional support, and a compassionate community.</p>
		</div>
	</section>

	<section class="team-section">
		<div class="container">
			<h2>Meet Our Team</h2>
			<div class="row">
				<div class="col-md-3 team-member">
					<img src="img/pinu.png" alt="Team Member 1">
					<h4>Priyanshu</h4>
					<p>Full-Stack Developer</p>
				</div>
				<div class="col-md-3 team-member">
					<img src="img/rk.png" alt="Team Member 2">
					<h4>Ramesh Kumar</h4>
					<p>Full-Stack Developer</p>
				</div>
				<div class="col-md-3 team-member">
					<img src="img/dram.jpg" alt="Team Member 3">
					<h4>Dharmendra Baghel</h4>
					<p>Web Designer</p>
				</div>
				<div class="col-md-3 team-member">
					<img src="img/amit.png" alt="Team Member 4">
					<h4>Amit Kumar</h4>
					<p>Content Curator</p>
				</div>
			</div>
		</div>
	</section>

	<%@include file='all_component/footer.jsp'%>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
