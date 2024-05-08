<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Products - ShopKaro</title>
    <style>
        /* Reset and base styles */
        body, h1, h2, p, div, a, img, ul, li {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Background and layout */
        body {
            background-color: #f0f3f5; /* Light gray */
            padding: 0;
            margin: 0;
            line-height: 1.6;
        }

        /* Navbar styles */
        nav {
            background-color: #4a4a4a; /* Gray */
            color: #ffffff; /* White text */
            padding: 10px 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        nav ul {
            list-style-type: none;
            display: flex;
            justify-content: flex-end;
        }

        nav ul li {
            margin-left: 20px;
        }

        nav ul li:first-child {
            margin-left: 0;
        }

        nav ul li a {
            color: #ffffff; /* White text */
            text-decoration: none;
            transition: color 0.3s;
            font-weight: bold;
        }

        nav ul li a:hover {
            color: #a2d5c6; /* Mint on hover */
        }

        /* Footer styles */
        footer {
            background-color: #4a4a4a; /* Dark gray */
            color: #ffffff; /* White text */
            text-align: center;
            padding: 20px 0;
            margin-top: 50px; /* Add some space between content and footer */
            box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Product grid layout */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            padding: 20px;
        }

        /* Product card styles */
        .product-card {
            background-color: #ffffff; /* White */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition: transform 0.3s ease;
            position: relative;
            overflow: hidden;
        }

        .product-card:hover {
            transform: translateY(-5px); /* Lift the card on hover */
        }

        .product-card:before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.1);
            z-index: 1;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .product-card:hover:before {
            opacity: 1;
        }

        .product-card h2 {
            color: #333333; /* Dark gray */
            margin-bottom: 10px;
            font-size: 1.5rem; /* Increase font size */
            z-index: 2;
            position: relative;
        }

        .product-card p {
            color: #666666; /* Medium gray */
            margin-bottom: 10px;
            z-index: 2;
            position: relative;
        }

        .product-card img {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
            border-radius: 5px; /* Add border radius to images */
            z-index: 2;
            position: relative;
        }

        .product-card .price {
            font-weight: bold;
            color: #4a4a4a; /* Gray */
            margin-bottom: 10px;
            font-size: 1.2rem; /* Increase font size */
            z-index: 2;
            position: relative;
        }

        .product-card .product-actions {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px; /* Add some space between price and action buttons */
            z-index: 2;
            position: relative;
        }

        .product-card .product-actions a {
            color: #4a4a4a; /* Gray */
            text-decoration: none;
            transition: color 0.3s;
            font-weight: bold;
            z-index: 2;
            position: relative;
        }

        .product-card .product-actions a:hover {
            color: #a2d5c6; /* Mint on hover */
        }
    </style>
</head>
<body>
    <nav>
        <ul>
            <li><a href="/view_product">View Products</a></li>
        </ul>
    </nav>

    <h1 style="text-align: center; padding: 20px;">Products</h1>

    <div class="product-grid">
        % for product in all_products:
            <div class="product-card">
                <h2>{{product['name']}}</h2>
                <img src="{{product['image_url']}}" alt="product image">
                <p class="price">₹ {{product['price']}}</p>
                <p>{{product['description']}}</p>
                <div class="product-actions">
                    <a href="/edit_product/{{product['_id']}}">Edit</a>
                    <a href="/delete_product/{{product['_id']}}">Delete</a>
                </div>
            </div>
        % end
    </div>

    <footer>
        <p>© 2024 ShopKaro. All rights reserved.</p>
    </footer>
</body>
</html>
