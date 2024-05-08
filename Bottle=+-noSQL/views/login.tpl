<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - ShopKaro</title>
    <style>
        /* Reset and base styles */
        body, h1, h2, form, input {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background and layout */
        body {
            background: linear-gradient(135deg, #b7d8b8, #7ea7a1); /* Gradient from teal to mint */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        /* Header styles */
        header {
            width: 100%;
            background: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
            color: #ffffff;
            padding: 20px 0;
            text-align: center;
            font-size: 32px;
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 10;
        }

        /* Container for the form */
        .container {
            background: rgba(255, 255, 255, 0.9); /* Semi-transparent white */
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
            width: 340px;
            text-align: center;
            z-index: 100;
            position: relative;
        }

        /* Form styles */
        form {
            margin-top: 20px;
        }

        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 12px;
            margin-top: 20px;
            border: none;
            border-radius: 20px;
            background-color: #f0f0f0; /* Light gray background */
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.1); /* Inner shadow */
            transition: background-color 0.3s, box-shadow 0.3s; /* Add transition for better UX */
        }

        input[type="text"]:focus, input[type="password"]:focus {
            background-color: #d1d1d1; /* Lighter background on focus */
            box-shadow: inset 0 2px 5px rgba(0, 0, 0, 0.2); /* Adjusted shadow on focus */
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 20px;
            background-color: #4281a4; /* Teal */
            color: #ffffff;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #386fa4; /* Darker teal on hover */
        }

        /* Signup link style */
        .signup-prompt {
            margin-top: 20px;
            font-size: 16px;
            color: #333; /* Darker text color */
        }

        .signup-prompt a {
            color: #4281a4; /* Teal */
            text-decoration: none;
            transition: color 0.3s; /* Add transition for link color */
        }

        .signup-prompt a:hover {
            color: #305f7f; /* Darker teal on hover */
        }

        /* Footer styles */
        footer {
            text-align: center;
            background: rgba(0, 0, 0, 0.8); /* Semi-transparent black */
            color: #ffffff;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
            left: 0;
            right: 0;
        }
    </style>
</head>
<body>
    <header>
        <h1>ShopKaro</h1>
    </header>
    <div class="container">
        <h2 style="color: #333;">Login</h2>
        <!-- Display error message if login fails -->
        % if error:
            <p style="color:red;">{{error}}</p>
        % end
        <form action="/login" method="post">
            Username: <input type="text" name="username" required><br>
            Password: <input type="password" name="password" required><br>
            <input type="submit" value="Login">
        </form>
        <div class="signup-prompt">
            Don't have an account? <a href="/signup">Sign up</a>
        </div>
    </div>
    <footer>
        <p>© 2024 ShopKaro. All rights reserved.</p>
    </footer>
</body>
</html>
