<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" content="text/css" href="../assets/css/manage.css">
    <script src="../assets/js/script.js"></script>
    <title>header</title>

</head>
<body>
<div class="container">
    <header>
        <a href="../index.jsp">
            <img class="logo" src="images/logo.jpg" alt="logo">
            <span class="logo">Mission or Dare</span>
        </a>
        <button id="myBtn" class="btb btn-primary" onclick='document.getElementById("myModal").style.display="block"'>Login</button>
        <button class="btb btn-primary">Logout</button>
    </header>
</div>
</body>