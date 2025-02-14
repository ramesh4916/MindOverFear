<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup Page</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
body {
	background-image: linear-gradient(to left bottom, #d16ba5, #c777b9, #ba83ca, #aa8fd8,
		#9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1
		);
}

.card {
	border-radius: 15px;
}

.card-body {
	padding: 30px;
}

.card-title {
	font-size: 24px;
	font-weight: 600;
}

.card-text {
	font-size: 16px;
	margin-bottom: 20px;
}

.btn-primary {
	background-color: #16a085;
	border: none;
}

.btn-primary:hover {
	background-color: #12876f;
}

.btn-secondary {
	background-color: #1abc9c;
	border: none;
}

.btn-secondary:hover {
	background-color: #16a085;
}

.form-group i {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	left: 15px;
	color: #888;
}

.form-control {
	padding-left: 45px;
}

@media ( max-width : 768px) {
	.card-title {
		font-size: 20px;
	}
	.card-text {
		font-size: 14px;
	}
}

@media ( max-width : 480px) {
	.card-title {
		font-size: 18px;
	}
	.card-text {
		font-size: 12px;
	}
}
</style>
</head>
<body>
	<%@include file="all_component/navbar.jsp"%>
	<div class="container d-flex align-items-center justify-content-center min-vh-100">
		<div class="row w-100">
			<div class="col-md-6 col-lg-4 mx-auto">
				<div class="card shadow">
					<div class="card-body">
						<h4 class="card-title text-center">Signup</h4>
						<form action="regForm" method="post">
							<div class="form-group position-relative">
								<i class="fas fa-user"></i>
								<input type="text" class="form-control" placeholder="Username" name="username1" required>
							</div>
							<div class="form-group position-relative">
								<i class="fas fa-envelope"></i>
								<input type="email" class="form-control" placeholder="Email id" name="email1" required>
							</div>
							<div class="form-group position-relative">
								<i class="fas fa-lock"></i>
								<input type="password" class="form-control" placeholder="Password" name="password1" required>
							</div>
							<div class="form-group position-relative">
								<i class="fas fa-venus-mars"></i>
								<select class="form-control" name="gender1" required>
									<option value="" disabled selected>Select Gender</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
									<option value="Other">Other</option>
								</select>
							</div>
							<div class="form-group position-relative">
								<i class="fas fa-phone"></i>
								<input type="tel" class="form-control" placeholder="Phone Number" name="phone1" required>
							</div>
							<div class="form-group position-relative">
								<i class="fas fa-id-card"></i>
								<select class="form-control" name="occupation1" required>
									<option value="" disabled selected>Select Occupation</option>
									<option value="Student">Student</option>
									<option value="Engineer">Engineer</option>
									<option value="Teacher">Teacher</option>
									<option value="Doctor">Doctor</option>
									<option value="Business">Business</option>
									<option value="Freelancer">Freelancer</option>
									<option value="Other">Other</option>
								</select>
							</div>
							<div class="form-group position-relative">
								<i class="fas fa-map-marker-alt"></i>
								<input type="text" class="form-control" placeholder="Address" name="address1" required>
							</div>
							<button type="submit" class="btn btn-primary btn-block">Register</button>
							<div class="text-center mt-3">
								Already a member? <a href="login.jsp">Login!</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>

	<!-- SweetAlert JS -->
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	<script>
        // Check for status attribute from the request
        const status = "<%= request.getAttribute("status") %>";

        if (status === "registerSuccess") {
            Swal.fire('Success!', 'User registered successfully!', 'success');
        } else if (status === "registerFailed") {
            Swal.fire('Oops!', 'User not registered due to some error.', 'error');
        } else if (status === "emailExists") {
            Swal.fire('Warning!', 'Email ID already registered. Please use a different email.', 'warning');
        } else if (status === "error") {
            Swal.fire('Error', 'An error occurred. Please try again.', 'error');
        }
	</script>
</body>
</html>
