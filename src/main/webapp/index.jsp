<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Currency Converter</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff; /* Light background color */
            color: #333;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #4CAF50; /* Green color for the heading */
        }

        form {
            background-color: #fff; /* White background for form */
            border: 1px solid #ddd; /* Light border around the form */
            border-radius: 5px; /* Rounded corners */
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Shadow for depth */
            max-width: 400px; /* Limit width for better alignment */
            margin: auto; /* Center the form */
        }

        label {
            display: block; /* Make labels block elements */
            margin-bottom: 10px; /* Space between label and input */
            font-weight: bold; /* Bold text for labels */
        }

        input[type="text"],
        select {
            width: 100%; /* Full width inputs */
            padding: 10px; /* Space inside inputs */
            margin-bottom: 15px; /* Space below inputs */
            border: 1px solid #ccc; /* Border for inputs */
            border-radius: 4px; /* Rounded corners */
            box-sizing: border-box; /* Include padding in width */
        }

        input[type="submit"] {
            background-color: #4CAF50; /* Button color */
            color: white; /* Text color */
            border: none; /* Remove border */
            border-radius: 4px; /* Rounded corners */
            padding: 10px; /* Padding inside the button */
            cursor: pointer; /* Pointer cursor on hover */
            font-size: 16px; /* Increase font size */
            transition: background-color 0.3s; /* Smooth transition */
            width: 100%; /* Full width button */
        }

        input[type="submit"]:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        @media (max-width: 500px) {
            form {
                padding: 15px; /* Less padding on small screens */
            }

            input[type="submit"] {
                font-size: 14px; /* Smaller font size on small screens */
            }
        }
    </style>
</head>
<body>
    <h1>Currency Converter</h1>
    <form action="convert" method="post">
        <label for="amount">Amount:</label>
        <input type="text" id="amount" name="amount" required placeholder="Enter amount">

        <label for="fromCurrency">From Currency:</label>
        <select id="fromCurrency" name="fromCurrency" required>
            <option value="">Select Currency</option>
            <option value="USD">USD</option>
            <option value="EUR">EUR</option>
            <option value="INR">INR</option>
        </select>

        <label for="toCurrency">To Currency:</label>
        <select id="toCurrency" name="toCurrency" required>
            <option value="">Select Currency</option>
            <option value="USD">USD</option>
            <option value="EUR">EUR</option>
            <option value="INR">INR</option>
        </select>

        <input type="submit" value="Convert">
    </form>
</body>
</html>


