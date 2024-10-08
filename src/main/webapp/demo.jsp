<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
            overflow: hidden; /* Prevent scrollbars from showing */
        }

        /* Keyframe animation to change background color */
        @keyframes backgroundAnimation {
            0% {
                background-color: #096C6C;
            }
            50% {
                background-color: #00b3b3;
            }
            100% {
                background-color: #096C6C;
            }
        }

        .background {
            background-color: #096C6C; /* Set pure background color */
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            overflow: hidden; /* Ensure fireflies stay within the container */
        }

        .container {
            width: 100%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transform: translateY(0);
            animation: slideUp 1s ease-out;
            position: relative;
            z-index: 1;
        }

        @keyframes slideUp {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }

        .login-form {
            max-width: 400px;
            margin: auto;
        }

        .text-center {
            text-align: center;
        }

        .form-outline {
            margin-bottom: 1.5rem;
        }

        .form-control {
            width: 100%;
            padding: 8px;
            font-size: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .btn-link {
            color: #007bff;
        }

        .btn-link:hover {
            color: #0056b3;
        }

        .text-center p {
            margin: 1rem 0;
        }

        .btn-link {
            margin: 0 5px;
        }

        .mb-4 {
            margin-bottom: 1.5rem;
        }

        @keyframes floating {
            0% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-5px);
            }
            100% {
                transform: translateY(0);
            }
        }

        .btn-floating {
            animation: floating 3s ease-in-out infinite;
        }

        /* Fireflies effect */
        .fireflies {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
            z-index: 0; /* Ensure fireflies stay behind the container */
        }

        .fireflies span {
            position: absolute;
            border-radius: 50%;
            background: rgba(255, 255, 255, 0.8);
            width: 5px; /* Size of the fireflies */
            height: 3px; /* Size of the fireflies */
            animation: fly 10s infinite; /* Animation duration */
        }

        @keyframes fly {
            0% {
                transform: translateY(0) scale(1);
                opacity: 1;
            }
            50% {
                transform: translateY(-150px) scale(0.5);
                opacity: 0.5;
            }
            100% {
                transform: translateY(0) scale(1);
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <div class="background">
        <div class="container">
            <div class="login-form">
                <h2 class="text-center">Login</h2>
                <form>
                    <div class="form-outline mb-4">
                        <label class="form-label" for="form2Example1">Email address</label>
                        <input type="email" id="form2Example1" class="form-control" />
                    </div>

                    <div class="form-outline mb-4">
                        <label class="form-label" for="form2Example2">Password</label>
                        <input type="password" id="form2Example2" class="form-control" />
                    </div>

                    <div class="row mb-4">
                        <div class="col d-flex justify-content-center">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
                                <label class="form-check-label" for="form2Example31"> Remember me </label>
                            </div>
                        </div>
                        <div class="col">
                            <a href="forgot-password.jsp" class="mb-4">Forgot password?</a>
                        </div>
                    </div>

                    <button type="button" class="btn btn-primary btn-block mb-4" onclick="window.location.href='Welcome.jsp'">Sign in</button>
                    

                    <div class="text-center">
                        <p>Not a member? <a href="register.jsp">Register</a></p>
                        <p>or sign up with:</p>
                        <button type="button" class="btn btn-link btn-floating mx-1">
                            <i class="fab fa-facebook-f"></i>
                        </button>
                        <button type="button" class="btn btn-link btn-floating mx-1">
                            <i class="fab fa-google"></i>
                        </button>
                        <button type="button" class="btn btn-link btn-floating mx-1">
                            <i class="fab fa-twitter"></i>
                        </button>
                        <button type="button" class="btn btn-link btn-floating mx-1">
                            <i class="fab fa-github"></i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- Fireflies effect -->
        <div class="fireflies">
            <!-- Add more fireflies -->
            <span style="top: 10%; left: 20%;"></span>
            <span style="top: 30%; left: 50%;"></span>
            <span style="top: 70%; left: 80%;"></span>
            <span style="top: 50%; left: 30%;"></span>
            <span style="top: 90%; left: 60%;"></span>
            <span style="top: 20%; left: 70%;"></span>
            <span style="top: 40%; left: 40%;"></span>
            <span style="top: 60%; left: 20%;"></span>
            <span style="top: 80%; left: 80%;"></span>
            <span style="top: 25%; left: 60%;"></span>
            <span style="top: 55%; left: 50%;"></span>
            <span style="top: 75%; left: 30%;"></span>
            <span style="top: 35%; left: 10%;"></span>
            <span style="top: 65%; left: 90%;"></span>
            <span style="top: 45%; left: 75%;"></span>
            <span style="top: 85%; left: 15%;"></span>
            <span style="top: 55%; left: 85%;"></span>
            <span style="top: 15%; left: 40%;"></span>
            <span style="top: 75%; left: 65%;"></span>
            <span style="top: 25%; left: 80%;"></span>
            <!-- Add more as needed -->
        </div>
    </div>
</body>
</html>
