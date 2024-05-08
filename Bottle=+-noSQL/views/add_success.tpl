<!DOCTYPE html>
<html>
<head>
    <title>Product Added Successfully</title>
    <style>
        /* Reset and base styles */
        body, h1, p, a {
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

        /* Content container */
        .container {
            text-align: center;
        }

        /* Heading styles */
        h1 {
            color: #2c3e50; /* Dark teal */
            margin-bottom: 10px;
        }

        /* Paragraph styles */
        p {
            color: #34495e; /* Dark gray */
            margin-bottom: 20px;
        }

        /* Link styles */
        a {
            color: #1abc9c; /* Teal */
            text-decoration: none; /* Remove underline */
        }

        a:hover {
            text-decoration: underline; /* Underline on hover */
        }

        /* Message styles */
        #life-message {
            color: #c0392b; /* Red */
            font-weight: bold;
            font-style: italic;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Product Added Successfully!</h1>
        <p>The product "{{name}}" has been added to the database.</p>
        <p id="life-message"></p>
        <a href="/view_product">View Products</a>
    </div>

    <script>
        // Life messages array
        const lifeMessages = [
            "The only way to do great work is to love what you do. – Steve Jobs",
            "Believe you can and you're halfway there. – Theodore Roosevelt",
            "Your time is limited, don't waste it living someone else's life. – Steve Jobs",
            "The best way to predict the future is to invent it. – Alan Kay",
            "Don't be afraid to give up the good to go for the great. – John D. Rockefeller",
            "Strive not to be a success, but rather to be of value. – Albert Einstein",
            "The only limit to our realization of tomorrow will be our doubts of today. – Franklin D. Roosevelt",
            "The road to success and the road to failure are almost exactly the same. – Colin R. Davis",
            "The future belongs to those who believe in the beauty of their dreams. – Eleanor Roosevelt",
            "Success is not final, failure is not fatal: It is the courage to continue that counts. – Winston Churchill"
        ];

        // Get a random life message
        const randomIndex = Math.floor(Math.random() * lifeMessages.length);
        const randomMessage = lifeMessages[randomIndex];

        // Display the random life message
        document.getElementById("life-message").innerText = randomMessage;
    </script>
</body>
</html>
