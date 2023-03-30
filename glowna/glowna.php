<?php
require_once "../config.php"
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Strona z menu pionowym</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../all.css">
    <link rel="stylesheet" href="glowna.css">
</head>
<body>
<div class="sidebar" onmouseover="openNav()" onmouseout="closeNav()">
  <img src="../logo.png" id="logo">
    <p class="active">Strona Główna</p>
    <a href="../odczyt/odczyt.php">Odczyty </a>
    <a href="../faktury/faktury.php">Faktury </a>
    <a href="../Kontrola/kontrola.php">Kontrola</a>
  <div id="datetime">
  </div>
</div>
    <div id="contentm">
      <img style="width:100%; height:100%;" src="shrex.jpg">      
    </div>
    <script src="all.js"></script>
  </body>
</html>