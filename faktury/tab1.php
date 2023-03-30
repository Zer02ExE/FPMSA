<?php
    $months = array(
        1 => 'STYCZEN',
        2 => 'LUTY',
        3 => 'MARZEC',
        4 => 'KWIECIEN',
        5 => 'MAJ',
        6 => 'CZERWIEC',
        7 => 'LIPIEC',
        8 => 'SIERPIEN',
        9 => 'WRZESIEN',
        10 => 'PAZDZIERNIK',
        11 => 'LISTOPAD',
        12 => 'GRUDZIEN'
    );

    if(isset($_POST['month'])) {
        $month_id = $_POST['month'];
    } else {
        $month_id = date('n'); // ustawiamy początkowy miesiąc na aktualny miesiąc
    }
    $month_name = $months[$month_id];
    $sql = "SELECT id, Miesiac, ZuzycieTowarowa, KwotaTowarowa, ZuzycieWyzwolenia, KwotaWyzwolenia, ZuzycieTowarowa+ZuzycieWyzwolenia AS ZuzycieRazem, KwotaTowarowa+KwotaWyzwolenia AS KwotaRazem FROM wodafaktura WHERE Miesiac = '$month_name'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        echo "<form method='post'  action=''>";
        echo "<label for='month'>Wybierz miesiąc:</label>";
        echo "<select id='month' name='month'>";
        foreach ($months as $id => $name) {
            $selected = ($id == $month_id) ? 'selected' : '';
            echo "<option value='$id' $selected>$name</option>";
        }
        echo "</select>";
        echo "<input type='submit' name='wybor' value='Wybierz'>";
        //echo "</form>";
        
        //echo "<form action='' method='POST'>
        echo"<table>
        <tr>
        <th>id</th>
        <th>Miesiac</th>
        <th>ZuzycieTowarowa</th>
        <th>KwotaTowarowa</th>
        <th>ZuzycieWyzwolenia</th>
        <th>KwotaWyzwolenia</th>
        <th>ZuzycieRazem</th>
        <th>KwotaRazem</th>
        <th>Wynikowo za M³</th>
        </tr>";
        $row_num = 0;
        while($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['Miesiac'] . "</td>";
            echo "<td style='text-align:right;'><input type='text' name='ZuzycieTowarowa' value='".$row['ZuzycieTowarowa']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='KwotaTowarowa' value='".$row['KwotaTowarowa']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='ZuzycieWyzwolenia' value='".$row['ZuzycieWyzwolenia']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='KwotaWyzwolenia' value='".$row['KwotaWyzwolenia']."'></td>";
            echo "<td style='text-align:right;'>" . $row['ZuzycieRazem'] . "</td>";
            echo "<td style='text-align:right;'>" . $row['KwotaRazem'] . "</td>";
            if ($row['ZuzycieRazem'] != 0) {
                $wynik = $row['KwotaRazem'] / $row['ZuzycieRazem'];
                echo "<td>".number_format($wynik, 2)."</td>";
            } else {
                echo "<td style='color:red'>Błąd dzielenia przez 0</td>";
            }
            echo "</td></tr>";
        }
        echo "</table>";
        echo "<input type='submit' name='save' value='Zapisz'>";
        echo"</form>";
        if(isset($_POST['wybor']))
        {
            if(isset($_POST['month'])) {
                $month_id = $_POST['month'];
                    }
        }
        if (isset($_POST['save'])) {
            $zuzycie_towarowa = mysqli_real_escape_string($conn, $_POST['ZuzycieTowarowa']);
            $kwota_towarowa = mysqli_real_escape_string($conn, $_POST['KwotaTowarowa']);
            $zuzycie_wyzwolenia = mysqli_real_escape_string($conn, $_POST['ZuzycieWyzwolenia']);
            $kwota_wyzwolenia = mysqli_real_escape_string($conn, $_POST['KwotaWyzwolenia']);
            if($zuzycie_towarowa==NULL)
                $zuzycie_towarowa=0;
            if($kwota_towarowa==NULL)
                $kwota_towarowa=0;
            if($zuzycie_wyzwolenia==NULL)
                $zuzycie_wyzwolenia=0;
            if($kwota_wyzwolenia==NULL)
                $kwota_wyzwolenia=0;
            $sql = "UPDATE wodafaktura SET ZuzycieTowarowa='$zuzycie_towarowa', KwotaTowarowa='$kwota_towarowa', ZuzycieWyzwolenia='$zuzycie_wyzwolenia', KwotaWyzwolenia='$kwota_wyzwolenia' WHERE id='$month_id'";
            if(mysqli_query($conn, $sql)){
                echo "Dane zostały zapisane pomyślnie.";
            } else {
                echo "Błąd: " . mysqli_error($conn);
            }
        }
    }
?>