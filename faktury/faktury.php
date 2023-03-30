<?php
include "../config.php";
?>

<!DOCTYPE html>
<html>
  <head>
    <title>Odczyt Woda</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../all.css">
    <link rel="stylesheet" href="faktury.css">
    <script src="../all.js"></script>
    <style>
    table {
    opacity: 0;
    transition: opacity 0.5s ease;
    }

    table:not(.hidden) {
        opacity: 1;
    }
</style>

<script src = "faktury.js"></script>
  </head>
  <body>
    <div class="sidebar" onmouseover="openNav()" onmouseout="closeNav()">
      <img src="../logo.png" id="logo">
      <a href="../glowna/glowna.php">Strona Główna</a>
      <a href="../odczyt/odczyt.php">Odczyty</a>
      <p class="active">Faktury</p>
      <a href="../Kontrola/kontrola.php">Kontrola</a>
      <div id="datetime"></div>
    </div>
    <div id="contentm">
        <?php include "tab1.php" ?>
        <hr><h1 style="text-align:center;">W5</h1>
        <?php include "tab2.php" ?>
        <hr><h1 style="text-align:center;">W6</h1>
        <?php include "tab3.php" ?>
        <hr>
    </div>
  </body>
</html>
