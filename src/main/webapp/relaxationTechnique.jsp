<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="all_component/allcss.jsp"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Relaxation Techniques & Exercises</title>
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
	background-color:#9bb6b8;
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
		<h2 class="text-center">Relaxation Techniques & Exercises</h2>

		<!-- Tip 1 -->
		<div class="card my-3">
			<div class="card-header" id="headingOne" data-toggle="collapse"
				data-target="#collapseOne">
				<h5 class="mb-0">
					Deep Breathing Exercises <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseOne" class="collapse">
				<div class="card-body">Deep breathing exercises help calm the
					mind and body. Inhale deeply through your nose, hold for a few
					seconds, and then exhale slowly through your mouth. Repeat for a
					few minutes.</div>
			</div>
		</div>

		<!-- Tip 2 -->
		<div class="card my-3">
			<div class="card-header" id="headingTwo" data-toggle="collapse"
				data-target="#collapseTwo">
				<h5 class="mb-0">
					Progressive Muscle Relaxation <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseTwo" class="collapse">
				<div class="card-body">Progressive muscle relaxation involves
					tensing and then relaxing different muscle groups. Start from your
					toes and work your way up to your head.</div>
			</div>
		</div>

		<!-- Tip 3 -->
		<div class="card my-3">
			<div class="card-header" id="headingThree" data-toggle="collapse"
				data-target="#collapseThree">
				<h5 class="mb-0">
					Guided Imagery <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseThree" class="collapse">
				<div class="card-body">Visualize a peaceful scene to reduce
					stress. Find a quiet place, close your eyes, and imagine yourself
					in a serene environment, focusing on the details and sensations.</div>
			</div>
		</div>

		<!-- Tip 4 -->
		<div class="card my-3">
			<div class="card-header" id="headingFour" data-toggle="collapse"
				data-target="#collapseFour">
				<h5 class="mb-0">
					Yoga and Stretching <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseFour" class="collapse">
				<div class="card-body">Incorporate yoga poses and stretches
					into your daily routine. These exercises help release tension and
					improve flexibility.</div>
			</div>
		</div>

		<!-- Tip 5 -->
		<div class="card my-3">
			<div class="card-header" id="headingFive" data-toggle="collapse"
				data-target="#collapseFive">
				<h5 class="mb-0">
					Mindfulness Meditation <span class="float-right plus-minus">+</span>
				</h5>
			</div>
			<div id="collapseFive" class="collapse">
				<div class="card-body">Mindfulness meditation helps focus on
					the present moment. Sit quietly, focus on your breath, and gently
					bring your attention back if your mind starts to wander.</div>
			</div>
		</div>
	</div>
	<br>
	<br>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>
