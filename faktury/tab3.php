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

    if(isset($_POST['month3'])) {
        $month_id = $_POST['month3'];
    } else {
        $month_id = date('n');
    }
    $month_name = $months[$month_id];
    $sql = "SELECT * FROM miesieczne_zuzycie2 WHERE miesiac = '$month_name'";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        echo "<form method='post'  action=''>";
        echo "<label for='month3'>Wybierz miesiąc:</label>";
        echo "<select id='month3' name='month3'>";
        foreach ($months as $id => $name) {
            $selected = ($id == $month_id) ? 'selected' : '';
            echo "<option value='$id' $selected>$name</option>";
        }
        echo "</select>";
        echo "<input type='submit' name='wybor3' value='Wybierz'>";

        echo"<table>
        <tr>
        <th>id</th>
        <th>Miesiac</th>
        <th>Zuzycie(M3)</th>
        <th>WSP.Konwersji</th>
        <th>Zuzycie[kWh]</th>
        <th>Moc Zamówiona</th>
        <th>Moc Wykonana</th>
        <th>Oplata D. Stala</th>
        <th>Oplata D. Zmienna</th>
        <th>Wartość Netto</th>
        <th>Paliwo Gazowe</th>
        <th>Wartosc Netto 2</th>
        <th>Abonament</th>
        <th>Oplat D. Stala 3</th>
        <th>Wartosc Netto 3</th>
        <th>Wartosc Netto Faktura</th>
        </tr>";
        $row_num = 0;
        while($row = mysqli_fetch_assoc($result)) {
            $zuzyciekwh = round($row['zuzycie_m3'] * $row['wsp_konwersji']);
            $wartoscnetto = round($row['zuzycie_kWh'] * $row['oplata_zmienna']);
            $wartoscnetto2 = round($row['zuzycie_kWh'] * $row['paliwo_gazowe']);
            $wartoscnetto3 = round($row['oplata_stala'] * $row['oplata_stala3']);
            $wartoscnettofaktura = $wartoscnetto + $wartoscnetto2 + $row['abonament'] + $wartoscnetto3;
            
            echo "<tr>";
            echo "<td>" . $row['id'] . "</td>";
            echo "<td>" . $row['miesiac'] . "</td>";
            echo "<td style='text-align:right;'><input type='text' name='zuzyciem3' value='".$row['zuzycie_m3']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='wsp_konwersji' value='".$row['wsp_konwersji']."'></td>";
            echo "<td style='text-align:right;'>".$zuzyciekwh."</td>";
            echo "<td style='text-align:right;'><input type='text' name='moczamowiona' value='".$row['moc_zamowiona']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='mocwykonana' value='".$row['moc_wykonana']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='oplatadstala' value='".$row['oplata_stala']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='oplatadzmienna' value='".$row['oplata_zmienna']."'></td>";
            echo "<td style='text-align:right;'>".$wartoscnetto."</td>";
            echo "<td style='text-align:right;'><input type='text' name='paliwogazowe' value='".$row['paliwo_gazowe']."'></td>";
            echo "<td style='text-align:right;'>".$wartoscnetto2."</td>";
            echo "<td style='text-align:right;'><input type='text' name='abonament' value='".$row['abonament']."'></td>";
            echo "<td style='text-align:right;'><input type='text' name='oplatadstala3' value='".$row['oplata_stala3']."'></td>";
            echo "<td style='text-align:right;'>".$wartoscnetto3."</td>";
            echo "<td style='text-align:right;'>".$wartoscnettofaktura."</td>";
            echo "</tr>";
        }
        
        
        echo "</table>";
        echo "<input type='submit' name='save3' value='Zapisz'>";
        echo"</form>";
        if(isset($_POST['wybor3']))
        {
            if(isset($_POST['month3'])) {
                $month_id = $_POST['month3'];
                    }
        }
        if (isset($_POST['save3'])) {
            $zuzyciem3 = mysqli_real_escape_string($conn, $_POST['zuzyciem3']);
            $wspkonwersji = mysqli_real_escape_string($conn, $_POST['wsp_konwersji']);
            $moczamowiona = mysqli_real_escape_string($conn, $_POST['moczamowiona']);
            $mocwykonana = mysqli_real_escape_string($conn, $_POST['mocwykonana']);
            $oplatadzmienna = mysqli_real_escape_string($conn, $_POST['oplatastala']);
            $oplatadstala = mysqli_real_escape_string($conn, $_POST['oplatazmienna']);
            $paliwogazowe = mysqli_real_escape_string($conn, $_POST['paliwogazowe']);
            $abonament = mysqli_real_escape_string($conn, $_POST['abonament']);
            $oplatadstala3 = mysqli_real_escape_string($conn, $_POST['oplatastala3']);
            if($zuzyciem3==NULL)
                $zuzyciem3=0;
            if($wspkonwersji==NULL)
                $wspkonwersji=0;
            if($moczamowiona==NULL)
                $moczamowiona=0;
            if($mocwykonana==NULL)
                $mocwykonana=0;
            if($oplatazmienna==NULL)
                $oplatazmienna=0;
            if($oplatastala==NULL)
                $oplatastala=0;
            if($paliwogazowe==NULL)
                $paliwogazowe=0;
            if($abonament==NULL)
                $abonament=0;
            if($oplatastala3==NULL)
                $oplatastala3=0;
            
            $sql = "UPDATE miesieczne_zuzycie2 SET zuzycie_m3='$zuzyciem3',wsp_konwersji='$wspkonwersji',moc_zamowiona='$moczamowiona',moc_wykonana='$mocwykonana',oplata_zmienna='$oplatazmienna',oplata_stala='$oplatastala',paliwo_gazowe='$paliwogazowe',abonament='$abonament',oplata_stala3='$oplatastala3' WHERE id=$month_id";
            if(mysqli_query($conn, $sql)){
                echo "Dane zostały zapisane pomyślnie.";
            } else {
                echo "Błąd: " . mysqli_error($conn);
            }
        }
    }
?>