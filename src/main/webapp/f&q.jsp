<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="all_component/allcss.jsp"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>F&Q</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
body {
	background-color: #f4f4f4;
	font-family: sans-serif;
}

.tips-container {
	margin-top: 50px;
	background-color: white;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.card-header {
	cursor: pointer;
}

.plus-minus {
	font-size: 24px;
}
</style>
<script>
	// Toggle plus/minus icon for collapsible panels
	$(document).ready(function() {
		$(".collapse").on('show.bs.collapse', function() {
			$(this).prev(".card-header").find(".plus-minus").text("-");
		}).on('hide.bs.collapse', function() {
			$(this).prev(".card-header").find(".plus-minus").text("+");
		});
	});
</script>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>
	<div class="container tips-container">
		<h2 class="text-center">Frequently Asked Questions</h2>

		<!-- Tip 1 -->
		<div class="card my-3">
			<div class="card-header" id="headingOne" data-toggle="collapse"
				data-target="#collapseOne">
				<h5 class="mb-0">
					What is Mind Over Fear? <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseOne" class="collapse">
				<div class="card-body">Mind Over Fear is a project designed to
					help individuals manage and overcome phobias and anxiety. We
					provide resources, tools, and support to assist you in facing your
					fears.</div>
			</div>
		</div>

		<!-- Tip 2 -->
		<div class="card my-3">
			<div class="card-header" id="headingTwo" data-toggle="collapse"
				data-target="#collapseTwo">
				<h5 class="mb-0">
					How can I manage my phobia? <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseTwo" class="collapse">
				<div class="card-body">You can manage phobias through
					techniques like exposure therapy, relaxation exercises, and by
					seeking professional help. We offer resources to guide you through
					this process.</div>
			</div>
		</div>

		<!-- Tip 3 -->
		<div class="card my-3">
			<div class="card-header" id="headingThree" data-toggle="collapse"
				data-target="#collapseThree">
				<h5 class="mb-0">
					What resources are available for anxiety management? <span
						class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseThree" class="collapse">
				<div class="card-body">We provide articles, videos, eBooks,
					and success stories that offer strategies for managing anxiety. You
					can also join our community for additional support.</div>
			</div>
		</div>

		<!-- Tip 4 -->
		<div class="card my-3">
			<div class="card-header" id="headingFour" data-toggle="collapse"
				data-target="#collapseFour">
				<h5 class="mb-0">
					How do I know if I have anxiety? <span
						class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseFour" class="collapse">
				<div class="card-body">Common symptoms of anxiety include
					excessive worry, restlessness, fatigue, and sleep disturbances. If
					you're experiencing these symptoms, it might be helpful to consult
					a professional.</div>
			</div>
		</div>

		<!-- Tip 5 -->
		<div class="card my-3">
			<div class="card-header" id="headingFive" data-toggle="collapse"
				data-target="#collapseFive">
				<h5 class="mb-0">
					Can I get professional help through Mind Over Fear? <span
						class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseFive" class="collapse">
				<div class="card-body">Yes, we can connect you with licensed
					therapists and counselors who specialize in treating phobias and
					anxiety. You can reach out to our helpline for more information.</div>
			</div>
		</div>




		<div class="card my-3">
			<div class="card-header" id="headingSix" data-toggle="collapse"
				data-target="#collapseSix">
				<h5 class="mb-0">
					How can I contact support? <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseSix" class="collapse">
				<div class="card-body">You can reach our support team by
					calling our helpline at <span style='color:red';> +91 7518384372 </span> or emailing us at
					<span style='color:red';>mindoverfearteam@gmail.com</span>. We're here to help you.</div>
			</div>
		</div>


	</div>





	<br>
	<br>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>
