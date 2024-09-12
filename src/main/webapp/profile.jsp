<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Dashboard</title>
<!-- Bootstrap CSS -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
body {
	display: flex;
	min-height: 100vh;
	transition: margin-left 0.3s ease;
}

.sidebar {
	background-color: #343a40;
	color: white;
	width: 250px;
	padding: 20px;
	position: fixed;
	height: 100%;
	transition: width 0.3s ease;
}

.sidebar a {
	color: white;
	text-decoration: none;
	display: block;
	padding: 10px 0;
	display: flex;
	align-items: center;
}

.sidebar a:hover {
	background-color: #495057;
	border-radius: 5px;
}

.sidebar a i {
	margin-right: 10px;
}

.content {
	margin-left: 250px;
	padding: 20px;
	background-color: #f8f9fa;
	width: 100%;
}

.toggle-btn {
	position: absolute;
	top: 20px;
	left: 270px;
	z-index: 1000;
}

.logout {
	position: absolute;
	bottom: 20px;
	width: calc(100% - 40px);
}

.user-info {
	margin-bottom: 30px;
	display: flex;
	align-items: center;
}

.user-info i {
	font-size: 30px;
	margin-right: 15px;
}

.user-info span {
	font-size: 20px;
	font-weight: bold;
}

.collapsed-sidebar .sidebar {
	width: 0;
	padding: 0;
}

.collapsed-sidebar .content {
	margin-left: 0;
}

.collapsed-sidebar .toggle-btn {
	left: 20px;
}

.udb {
	text-align: center;
}

.profile-header {
	background-color: #343a40;
	color: white;
	padding: 20px;
	border-radius: 5px;
	margin-bottom: 20px;
	display: flex;
	align-items: center;
}

.profile-header i {
	font-size: 50px;
	margin-right: 20px;
}

.profile-header h2 {
	margin: 0;
}

.profile-section {
	margin-bottom: 30px;
}

.profile-section h3 {
	background-color: #343a40;
	color: white;
	padding: 10px;
	border-radius: 5px;
}

.chat {
	width: 100%;
	height: 200px;
	overflow-y: scroll;
}

#msg {
	width: 99%;
}

.chat_center {
	text-align: center;
}

.chat-container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	border-radius: 8px;
	background-color: #f7f7f7;
	box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
}

.chat-header {
	text-align: center;
	font-size: 24px;
	font-weight: bold;
	margin-bottom: 20px;
}

.chat-box {
	border: 1px solid #ddd;
	border-radius: 8px;
	height: 300px;
	overflow-y: auto;
	padding: 10px;
	background-color: #ffffff;
}

.chat-box::-webkit-scrollbar {
	width: 8px;
}

.chat-box::-webkit-scrollbar-thumb {
	background-color: #cccccc;
	border-radius: 4px;
}

.input-group {
	margin-top: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
}

.form-control {
	width: 100%;
	max-width: 500px;
	border-radius: 0;
	margin-bottom: 10px;
}

.btn-send {
	width: 100%;
	max-width: 150px;
	border-radius: 4px;
	background-color: #007bff;
	color: white;
}

.btn-send:hover {
	background-color: #0056b3;
}
</style>

<script type="text/javascript">
	var wsUrl;
	if (window.location.protocol == 'http:') {
		wsUrl = 'ws://';
	} else {
		wsUrl = 'wss://';
	}
	var ws = new WebSocket(wsUrl + window.location.host + "/MindOverFear/chat");

	ws.onmessage = function(event) {
		var mySpan = document.getElementById("chat");
		mySpan.innerHTML += event.data + "<br/>";
	};

	ws.onerror = function(event) {
		console.log("Error ", event)
	}
	function sendMsg() {
		var msg = document.getElementById("msg").value;
		if (msg) {
			ws.send(msg);
		}
		document.getElementById("msg").value = "";
	}
</script>
</head>
<body>
	<button class="btn btn-primary toggle-btn" onclick="toggleSidebar()">
		<i class="fas fa-bars"></i>
	</button>

	<div class="sidebar">
		<div class="user-info">
			<i class="fas fa-user-circle"></i> <span>${session_name}</span>
		</div>
		<a href="#profile"><i class="fas fa-user"></i> Profile</a> <a
			href="education.html"><i class="fas fa-graduation-cap"></i>
			Education</a> <a href="#messenger"><i class="fas fa-comments"></i>
			Messenger</a>
		<!-- <ahref="help&support.html"><i class="fas fa-life-ring"></i> Help & Support</a> -->
		<div class="logout">
			<button id="logoutBtn" class="btn btn-danger btn-block">
				<i class="fas fa-sign-out-alt"></i> Logout
			</button>
		</div>
	</div>

	<div class="content">
		<h1 class="udb">Welcome ${session_name}</h1>
		<div id="profile" class="card">
			<div class="card-header">
				<i class="fas fa-user"></i> Profile
			</div>
			<div class="card-body">



				<div class="container mt-5">
					<div class="profile-header">
						<i class="fas fa-user-circle"></i>
						<h2>${session_name}</h2>
					</div>

					<div class="profile-section">
						<h3>
							<i class="fas fa-info-circle"></i> Personal Information
						</h3>
						<div class="card">
							<div class="card-body">
								<p>
									<strong>Name:</strong> ${session_name}
								<hr>
								</p>
								<p>
									<strong>Email:</strong> ${session_email}
								<hr>
								</p>

								<p>
									<strong>Gender:</strong> ${session_gender}
								<hr>
								</p>

								<p>
									<strong>Phone:</strong> ${session_phone}
								<hr>
								</p>

								<p>
									<strong>Occupation:</strong> ${session_occupation}
								<hr>
								</p>

								<p>
									<strong>Address:</strong> ${session_address}
								</p>
							</div>
						</div>
					</div>








				</div>
			</div>
			<div id="education" class="card">

				<div class="card-body">
					<div class="container"></div>








					<div id="messenger" class="card">
						<div class="card-header">
							<i class="fas fa-comments"></i> Messenger
						</div>
						<div class="card-body">
							<button id="chatbot-button">AI Chatbot!</button>

						</div>
					</div>




				</div>

				<!-- Bootstrap JS and dependencies -->
				<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
				<script
					src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
				<script
					src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
				<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
				<script>
					function toggleSidebar() {
						document.body.classList.toggle('collapsed-sidebar');
					}

					document.getElementById('logoutBtn').addEventListener(
							'click', function() {
								// Redirect to the login page or handle logout process
								window.location.href = 'login.jsp'; // Replace 'login.jsp' with the URL of your login page
							});

					function showGoalModal() {
						$('#goalModal').modal('show');
					}

					function showPlanModal() {
						$('#planModal').modal('show');
					}

					function addGoal() {
						var goalText = document.getElementById('goalInput').value;
						var days = document.getElementById('daysInput').value;
						if (goalText && days) {
							var listItem = '<li class="list-group-item d-flex justify-content-between align-items-center">'
									+ goalText
									+ '<span class="badge badge-primary badge-pill">'
									+ days
									+ ' Days</span><button class="btn btn-danger btn-sm" onclick="deleteGoal(this)">Delete</button></li>';
							document.getElementById('goalList')
									.insertAdjacentHTML('beforeend', listItem);
							$('#goalModal').modal('hide');
						}
					}

					function addPlan() {
						var planText = document.getElementById('planInput').value;
						if (planText) {
							var listItem = '<li class="list-group-item d-flex justify-content-between align-items-center">'
									+ planText
									+ '<button class="btn btn-danger btn-sm" onclick="deletePlan(this)">Delete</button></li>';
							document.getElementById('planList')
									.insertAdjacentHTML('beforeend', listItem);
							$('#planModal').modal('hide');
						}
					}

					function deleteGoal(elem) {
						elem.parentElement.remove();
					}

					function deletePlan(elem) {
						elem.parentElement.remove();
					}

					var goalsCtx = document.getElementById('goalsChart')
							.getContext('2d');
					var goalsChart = new Chart(goalsCtx, {
						type : 'bar',
						data : {
							labels : [ 'Complete Project', 'Learn New Skill',
									'Exercise Regularly' ],
							datasets : [ {
								label : 'Goals Completion',
								data : [ 70, 50, 90 ], // Example data (percentage completion)
								backgroundColor : 'rgba(54, 162, 235, 0.2)',
								borderColor : 'rgba(54, 162, 235, 1)',
								borderWidth : 1
							} ]
						},
						options : {
							scales : {
								y : {
									beginAtZero : true,
									ticks : {
										callback : function(value) {
											return value + '%'
										}
									}
								}
							}
						}
					});

					// Sample data for Plans Chart
					var plansCtx = document.getElementById('plansChart')
							.getContext('2d');
					var plansChart = new Chart(plansCtx, {
						type : 'doughnut',
						data : {
							labels : [ 'Study', 'Work on Projects', 'Relax',
									'Exercise' ],
							datasets : [ {
								label : 'Time Spent on Plans',
								data : [ 30, 40, 15, 15 ], // Example data (percentage of time)
								backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
										'rgba(54, 162, 235, 0.2)',
										'rgba(255, 206, 86, 0.2)',
										'rgba(75, 192, 192, 0.2)' ],
								borderColor : [ 'rgba(255, 99, 132, 1)',
										'rgba(54, 162, 235, 1)',
										'rgba(255, 206, 86, 1)',
										'rgba(75, 192, 192, 1)' ],
								borderWidth : 1
							} ]
						},
						options : {
							responsive : true,
							plugins : {
								legend : {
									position : 'top',
								},
								tooltip : {
									callbacks : {
										label : function(tooltipItem) {
											return tooltipItem.label + ': '
													+ tooltipItem.raw + '%';
										}
									}
								}
							}
						}
					});
				</script>
				<script>
					document
							.getElementById('chatbot-button')
							.addEventListener(
									'click',
									function() {
										window.watsonAssistantChatOptions = {
											integrationID : "6f921d7a-bcb3-4f1d-a401-c7771310f303", // The ID of this integration.
											region : "au-syd", // The region your integration is hosted in.
											serviceInstanceID : "a6a26d29-4988-4b63-aaa2-70be1a09f82e", // The ID of your service instance.
											onLoad : function(instance) {
												instance.render(); // Immediately renders the chatbot after the button click
												setTimeout(
														function() {
															const chatElement = document
																	.querySelector('iframe[title="Watson Assistant Chat Widget"]');
															if (chatElement) {
																chatElement.style.position = 'fixed';
																chatElement.style.top = '50%';
																chatElement.style.left = '50%';
																chatElement.style.transform = 'translate(-50%, -50%)';
																chatElement.style.zIndex = '9999'; // Bring it on top
															}
														}, 500); // Give time for the chatbot to load
											}
										};
										const script = document
												.createElement('script');
										script.src = "https://web-chat.global.assistant.watson.appdomain.cloud/versions/"
												+ (window.watsonAssistantChatOptions.clientVersion || 'latest')
												+ "/WatsonAssistantChatEntry.js";
										document.head.appendChild(script);
									});
				</script>
</body>
</html>
