<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        body {
           background-image: radial-gradient(circle, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);
            font-family: "Rubik", Helvetica, Arial, sans-serif;
            color: #333;
        }

        .container {
        
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
        }

        .forgot-password-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }

        .forgot-password-card h2 {
            color: #333;
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .forgot-password-card p {
            color: #666;
            margin-bottom: 20px;
        }

        .forgot-password-card ol {
            padding-left: 20px;
            color: #666;
        }

        .forgot-password-card ol li {
            margin-bottom: 10px;
        }

        .text-primary {
            color: #007bff !important;
        }

        .form-control {
            border-radius: 4px;
            border-color: #76b7e9;
        }

        .form-control:focus {
            box-shadow: none;
        }

        .card-footer {
            display: flex;
            justify-content: space-between;
            padding: 20px;
            background-color: #f7f8fc;
            border-top: none;
        }

        .btn {
            border-radius: 4px;
            padding: 10px 20px;
        }

        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }

        .btn-danger {
            background-color: #dc3545;
            border-color: #dc3545;
        }

        .btn-success:hover,
        .btn-danger:hover {
            opacity: 0.9;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="forgot-password-card">
            <h2>Forgot Your Password?</h2>
            <p>Change your password in three easy steps. This helps to keep your password secure.</p>
            <ol class="list-unstyled">
                <li><span class="text-primary text-medium">1.</span> Enter your email address below.</li>
                <li><span class="text-primary text-medium">2.</span> We will send you an OTP to your email.</li>
                <li><span class="text-primary text-medium">3.</span> Enter the OTP on the next page.</li>
            </ol>
            <form class="card mt-4" action="forgotPassword" method="POST">
                <div class="card-body">
                    <div class="form-group">
                        <label for="email-for-pass">Enter your email address</label>
                        <input class="form-control" type="email" name="email" id="email-for-pass" required>
                        <small class="form-text text-muted">Enter the registered email address. We'll email an OTP to this address.</small>
                    </div>
                </div>
                <div class="card-footer">
                    <button class="btn btn-success" type="submit">Get New Password</button>
                    <button class="btn btn-danger" type="button" onclick="window.location.href='login.jsp'">Back to Login</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>
