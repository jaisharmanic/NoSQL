<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Landing Page - ShopKaro</title>
    <style>
        /* Reset and base styles */
        body, h1, p, ul, li, a, nav, footer {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            list-style: none; /* Remove default list styles */
            text-decoration: none; /* Remove default link underline */
        }

        /* Background and layout */
        body {
            background-color: #f0f3f5; /* Light gray */
            display: flex;
            flex-direction: column; /* Arrange elements vertically */
            min-height: 100vh; /* Ensure the page takes up at least the viewport height */
        }

        /* Navbar */
        nav {
            background-color: #2c3e50; /* Dark teal */
            color: #ffffff; /* White text */
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
        }

        nav ul {
            display: flex;
        }

        nav ul li {
            margin-right: 20px; /* Add spacing between navbar items */
        }

        nav ul li:last-child {
            margin-right: 0; /* Remove margin from the last navbar item */
        }

        nav ul li a {
            color: #ffffff; /* White text */
            text-decoration: none; /* Remove underline */
            transition: color 0.3s; /* Smooth transition on hover */
        }

        nav ul li a:hover {
            color: #ffaf20; /* Yellow on hover */
        }

        /* Content container */
        main {
            flex: 1; /* Allow the content to take up remaining space */
            padding: 20px; /* Add padding for better spacing */
            display: flex;
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
        }

        /* Welcome section */
        #welcome-section {
            background-color: #ffffff; /* White */
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1); /* Add shadow for depth */
            padding: 30px;
            max-width: 800px; /* Limit width for better readability */
            text-align: center;
        }

        #welcome-section h1 {
            margin-bottom: 20px; /* Add spacing below heading */
            color: #2c3e50; /* Dark teal */
        }

        #welcome-section p {
            color: #34495e; /* Dark gray text */
            line-height: 1.6; /* Increase line height for better readability */
            margin-bottom: 15px; /* Add spacing between paragraphs */
        }

        /* Footer */
        footer {
            background-color: #2c3e50; /* Dark teal */
            color: #ffffff; /* White text */
            text-align: center;
            padding: 20px 0;
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="/add_product">Add Product</a></li>
            <li><a href="/view_product">View Products</a></li>
        </ul>
    </nav>
    <main>
        <section id="welcome-section">
            <h1>Welcome!</h1>
            <p>ShopKaro started with a vision to provide customers with a seamless shopping experience. Our journey began in 2015, with a small team passionate about connecting people with the products they love. Over the years, we've grown into a trusted online marketplace, offering a wide range of products and services to millions of customers worldwide.</p>
            <p>At ShopKaro, we're committed to innovation, quality, and customer satisfaction. Whether you're looking for the latest gadgets, trendy fashion, or everyday essentials, we've got you covered. Thank you for choosing ShopKaro as your shopping destination!</p>
        </section>
    </main>
    <footer>
        <p>© 2024 ShopKaro. All rights reserved.</p>
    </footer>
</body>
</html>
