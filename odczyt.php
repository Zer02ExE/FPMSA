<?php
include "config.php";
?>

<!DOCTYPE html>
<html>
  <head>
    <title>Odczyt Woda</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="all.css">
    <link rel="stylesheet" href="odczyt.css">
  </head>
  <body>
    <div class="sidebar" onmouseover="openNav()" onmouseout="closeNav()">
      <img src="logo.png" id="logo">
      <a href="glowna.php" id="hre1">Strona Główna</a>
      <p class="active">Dodaj</p>
      <a href="edit.php" id="hre2">Edytuj</a>
      <div id="datetime"></div>
    </div>
    <div id="contentm">
      <div id="formadd">
        <form action="odczyt.php" method="post">
  <h1 style="text-align:center;">STAN LICZNIKÓW WODA</h1>
  <table>
    <tr>
      <th colspan="2">
        <?php include "opcje.php"?>
      </th>
    </tr>
    <tr></tr>
    <tr id="lad">
      <th>LICZNIK</th>
      <th>KWOTA</th>
    </tr>
    <?php
    if (isset($_POST['data'])) {
      $data = $_POST['data'];
      if ($data == '13') {
        $numer_miesiaca = '13';
      } else {
        $numer_miesiaca = substr($data, 5, 1);
      }
      $sql = "SELECT * FROM stanlicznikowwoda";
      $result = mysqli_query($conn, $sql);
      if(mysqli_num_rows($result)>0)
      {
        while ($row = mysqli_fetch_assoc($result)) { 
          echo '<tr>';
          echo '<td>' . $row['Licznik'] . '</td>';
          echo '<td><input type="text" name="kwota[]" value="' . $row[$numer_miesiaca] . '"></td>';
          echo '<input type="hidden" name="licznik[]" value="' . $row['Licznik'] . '">';
          echo '</tr>';
        }
      }
      else {
        echo '<tr><td colspan="2">Brak danych dla wybranego miesiąca.</td></tr>';
      }
    }
    ?>
  </table>
  <button type="submit" name="submit" value="save_changes">Zapisz zmiany</button>
</form>

<?php
if (isset($_POST['submit']) && $_POST['submit'] == 'save_changes') {
  // Zapisz zmiany w bazie danych
  if (isset($_POST['licznik']) && isset($_POST['kwota'])) {
    $liczniki = $_POST['licznik'];
    $kwoty = $_POST['kwota'];
    for ($i = 0; $i < count($liczniki); $i++) {
      $licznik = mysqli_real_escape_string($conn, $liczniki[$i]);
      $kwota = mysqli_real_escape_string($conn, $kwoty[$i]);
      $sql = "UPDATE stanlicznikowwoda SET `$numer_miesiaca` = '$kwota' WHERE Licznik = '$licznik'";
      mysqli_query($conn, $sql);
    }
    echo "Zmiany zostały zapisane!";
  }
  else {
    echo "Nie wprowadzono żadnych zmian.";
  }
}

?>
      </div>
    </div>
    <script src="all.js"></script>
    <script type="text/javascript">
      document.getElementById('data').addEventListener('change', function() {
        this.form.submit();
      });
    </script>
  </body>
</html>
