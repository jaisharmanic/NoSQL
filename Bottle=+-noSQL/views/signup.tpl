<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - ShopKaro</title>
    <style>
        /* Reset and base styles */
        body, h1, form, input, nav, footer {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background and layout */
        body {
            background-color: #f0f3f5; /* Light gray */
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        /* Navbar */
        nav {
            background-color: #2c3e50; /* Dark teal */
            color: #ffffff; /* White text */
            padding: 10px 20px;
            position: fixed;
            width: 100%;
            top: 0;
        }

        nav h1 {
            margin: 0;
            font-size: 24px;
            margin-left: 2%; /* Push "ShopKaro" to the right by 5% */
        }

        /* Form container */
        form {
            background: #ffffff; /* White */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 340px;
            max-width: 80%; /* Adjusted max-width for responsiveness */
        }

        /* Form elements */
        input[type="text"], input[type="password"] {
            width: calc(100% - 20px);
            padding: 12px;
            margin-top: 20px;
            border: none;
            border-radius: 5px;
            background-color: #f5f5f5; /* Light gray */
            transition: background-color 0.3s; /* Add transition for better UX */
        }

        input[type="text"]:focus, input[type="password"]:focus {
            background-color: #e0e0e0; /* Lighter gray on focus */
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            border: none;
            border-radius: 5px;
            background-color: #1abc9c; /* Teal */
            color: #ffffff; /* White text */
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #16a085; /* Darker teal on hover */
        }

        /* Error message */
        p.error {
            color: red;
            margin-top: 10px;
        }

        /* Footer */
        footer {
            background-color: #34495e; /* Dark gray */
            color: #ffffff; /* White text */
            text-align: center;
            padding: 10px 0;
            position: fixed;
            width: 100%;
            bottom: 0;
            left: 0;
        }
    </style>
</head>
<body>
    <nav>
        <h1 style="margin-left: 5%;">ShopKaro</h1>
    </nav>
    <form action="/signup" method="post">
        <h1>Signup</h1>
        % if error:
            <p class="error">{{error}}</p>
        % end
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br>
        <input type="submit" value="Signup">
    </form>
    <footer>
        <p>© 2024 ShopKaro. All rights reserved.</p>
    </footer>
</body>
</html>
