<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Product - ShopKaro</title>
    <style>
        /* Reset and base styles */
        body, h1, form, input, textarea, nav, ul, li, a, footer {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background and layout */
        body {
            background-color: #f0f3f5; /* Light gray */
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Navbar */
        nav {
            background-color: #2c3e50; /* Dark teal */
            color: #ffffff; /* White text */
            padding: 10px 20px;
            display: flex;
            justify-content: space-between; /* Align items horizontally */
            align-items: center; /* Align items vertically */
        }

        nav ul {
            display: flex;
        }

        nav ul li {
            margin-right: 20px;
        }

        nav ul li:last-child {
            margin-right: 0;
        }

        nav ul li a {
            color: #ffffff; /* White text */
            text-decoration: none; /* Remove underline */
            padding: 8px 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav ul li a:hover {
            background-color: #34495e; /* Darker teal on hover */
        }

        /* Content container */
        main {
            flex: 1;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Form styles */
        form {
            background-color: #ffffff; /* White */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        form label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #2c3e50; /* Dark teal */
            text-align: left;
        }

        form input[type="text"],
        form input[type="file"],
        form textarea {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
            transition: border-color 0.3s;
        }

        form input[type="text"]:focus,
        form input[type="file"]:focus,
        form textarea:focus {
            border-color: #1abc9c; /* Teal */
        }

        form textarea {
            resize: vertical;
            min-height: 100px;
        }

        form input[type="submit"] {
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

        form input[type="submit"]:hover {
            background-color: #148f77; /* Darker teal on hover */
        }

        /* Footer */
        footer {
            background-color: #34495e; /* Dark gray */
            color: #ffffff; /* White text */
            text-align: center;
            padding: 10px 0;
        }
    </style>
</head>
<body>
    <nav>
        <div>
            <h1 style="color: #ffffff;">ShopKaro</h1>
        </div>
        <ul>
            <li><a href="/view_product">View Products</a></li>
        </ul>
    </nav>
    <main>
        <form action="/add_product" method="post" enctype="multipart/form-data">
            <h1>Add New Product</h1>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            <label for="price">Price:</label>
            <input type="text" id="price" name="price" required>
            <label for="category">Category:</label>
            <input type="text" id="category" name="category" required>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required></textarea>
            <label for="features">Features:</label>
            <textarea id="features" name="features" required></textarea>
            <label for="image">Image:</label>
            <input type="file" id="image" name="image" required>
            <input type="submit" value="Add Product">
        </form>
    </main>
    <footer>
        <p>© 2024 ShopKaro. All rights reserved.</p>
    </footer>
</body>
</html>
