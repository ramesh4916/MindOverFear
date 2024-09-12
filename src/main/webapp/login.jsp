<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<%@include file="all_component/allcss.jsp"%>
<style type="text/css">
    body {
        background-image: linear-gradient(to bottom, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);
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
                        <h4 class="card-title text-center">Login Page</h4>
                        <form action="loginForm" method="post">
                            <div class="form-group position-relative">
                                <i class="fas fa-user position-absolute"></i>
                                <input type="text" class="form-control pl-5" placeholder="Email id" name="email1" required>
                            </div>
                            <div class="form-group position-relative">
                                <i class="fas fa-lock position-absolute"></i>
                                <input type="password" class="form-control pl-5" placeholder="Password" name="password1" required>
                            </div>
                            <div class="form-group text-right">
                                <a href="forgotPassword.jsp">Forgot password?</a>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Login</button>
                            <div class="text-center mt-3">
                                Not a member? <a href="register.jsp">Register!</a>
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

        if (status === "loginFailed") {
            Swal.fire('Login Failed', 'Email ID and Password didn\'t match.', 'error');
        } else if (status === "error") {
            Swal.fire('Error', 'An error occurred. Please try again.', 'error');
        } else if (status === "resetSuccess") {
            Swal.fire('Success!', 'Password Reset Successfully', 'success');
        } else if (status === "resetFailed") {
            Swal.fire('Oops!', 'Password Reset Failed', 'error');
        }
    </script>
</body>
</html>
