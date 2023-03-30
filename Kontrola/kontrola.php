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
    <link rel="stylesheet" href="kontrola.css">
</head>
<body>
<div class="sidebar" onmouseover="openNav()" onmouseout="closeNav()">
  <img src="../logo.png" id="logo">
    <a href="../glowna/glowna.php">Strona Główna</a>
    <a href="../odczyt/odczyt.php">Odczyty </a>
    <a href="../faktury/faktury.php">Faktury </a>
    <p class = "active">Kontrola</p>
  <div id="datetime">
  </div>
</div>
    <div id="contentm">  
        <div id="form">
        <form action="kontrola.php" method="post">
          <table>
            <tr>
              <th colspan="4">
                <?php include "odczyt.php"?>
            </th>
            </tr>
            <tr>
                <td>LICZNIK</td>
                <td>
                <?php 
                if($_POST)
                {
                    echo $wybrana_data;
                }
                else{
                    echo"MIESIAC";
                }
                ?>
                </td>
                <td>KWOTA</td>
                <td>UTRZYMANIE</td>
            </tr>
            <?php
              if (isset($_POST['data'])) {
                $data = $_POST['data'];
                if ($data == '13') {
                  $numer_miesiaca = '13';
                } else {
                  $numer_miesiaca = substr($data, 5, 1);
                }
                $sql = "SELECT * FROM kontrola";
                $result = mysqli_query($conn, $sql);
                if(mysqli_num_rows($result)>0)
                {
                  while ($row = mysqli_fetch_assoc($result)) { 
                    echo '<tr>';
                    echo '<td>' . $row['Licznik'] . '</td>';
                    echo '<td><input type="text" name="" value=""></td>';
                    echo '<td><input type="text" name="" value=""></td>';
                    echo '<td></td>';
                    echo '<input type="hidden" name="licznik_woda[]" value="' . $row['Licznik'] . '">';
                    echo '</tr>';
                  }
                  }
                }
                else {
                  echo '<tr><td colspan="3">Brak danych dla wybranego miesiąca.</td></tr>';
                }
            ?>
          </table>
          <button type="submit" class="chaged" name="submit" value="save_changes">Zapisz zmiany</button>
        </form>
        <?php
          if (isset($_POST['submit_woda']) && $_POST['submit_woda'] == 'save_changes_woda') {
            // Zapisz zmiany w bazie danych
            if (isset($_POST['licznik_woda']) && isset($_POST['kwota_woda'])) {
              $liczniki_woda = $_POST['licznik_woda'];
              $kwoty_woda = $_POST['kwota_woda'];
              for ($i = 1; $i < count($liczniki_woda)+1; $i++) {
                $licznik_woda = mysqli_real_escape_string($conn, $liczniki_woda[$i-1]);
                $kwota_woda = mysqli_real_escape_string($conn, $kwoty_woda[$i-1]);
                $sql_woda = "UPDATE stanlicznikowwoda SET `$numer_miesiaca_woda` = '$kwota_woda' WHERE id = '$i'";
                mysqli_query($conn, $sql_woda);
              }
              echo"zmieniono";
            }
            else {
              echo "Nie wprowadzono żadnych zmian.";
            }
          }
        ?>
        </div>
    </div>
    <script src="../all.js"></script>
  </body>
</html>