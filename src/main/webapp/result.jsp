<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Conversion Result</title>
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

        .result-container {
            background-color: #fff; /* White background for the results */
            border: 1px solid #ddd; /* Light border around the results */
            border-radius: 5px; /* Rounded corners */
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Shadow for depth */
            max-width: 400px; /* Limit width for better alignment */
            margin: auto; /* Center the result container */
        }

        p {
            font-size: 18px; /* Larger font size for results */
            line-height: 1.5; /* Better spacing for readability */
        }

        a {
            display: inline-block; /* Make the link a block element */
            margin-top: 20px; /* Space above the link */
            text-align: center; /* Center the link */
            padding: 10px 15px; /* Padding inside the link */
            background-color: #4CAF50; /* Button color */
            color: white; /* Text color */
            text-decoration: none; /* Remove underline */
            border-radius: 4px; /* Rounded corners */
            transition: background-color 0.3s; /* Smooth transition */
        }

        a:hover {
            background-color: #45a049; /* Darker green on hover */
        }

        @media (max-width: 500px) {
            .result-container {
                padding: 15px; /* Less padding on small screens */
            }

            p {
                font-size: 16px; /* Smaller font size on small screens */
            }
        }
    </style>
</head>
<body>
    <h1>Conversion Result</h1>

    <div class="result-container">
        <%-- Display any error message if it exists --%>
        <% String errorMessage = (String) request.getAttribute("error"); %>
        <% if (errorMessage != null) { %>
            <p style="color: red;"><%= errorMessage %></p>
        <% } else { %>
            <% String conversionResult = (String) request.getAttribute("result"); %>
            <p><%= conversionResult != null ? conversionResult : "No result available." %></p> <!-- Display the result set by the servlet -->
        <% } %>
    </div>

    <a href="index.jsp">Convert another amount</a> <!-- Link back to the input form page -->
</body>
</html>