<?php
    $miesiace_cp = array(
        'Grudzień 2022' => '1',
        'Styczeń 2023' => '2',
        'Luty 2023' => '3',
        'Marzec 2023' => '4',
        'Kwiecień 2023' => '5',
        'Maj 2023' => '6',
        'Czerwiec 2023' => '7',
        'Lipiec 2023' => '8',
        'Sierpień 2023' => '9',
        'Wrzesień 2023' => '10',
        'Październik 2023' => '11',
        'Listopad 2023' => '12',
        'Grudzień 2023' => '13'
    );

    // wybrana data
    $wybrana_data_cp = isset($_POST['data_cp']) ? $_POST['data_cp'] : '';

    // opcja wyboru rok_cpu i miesiąca
    echo '<label for="data_cp">Wybierz rok i miesiąc:</label>';
    echo '<form method="POST" action="">'; // formularz
    echo '<select name="data_cp" id="data_cp" required onchange="submitForm()">';

    foreach ($miesiace_cp as $nazwa_miesiaca_cp => $numer_miesiaca_cp) {
        if ($numer_miesiaca_cp >= 2 && $numer_miesiaca_cp <= 13) {
            $rok_cp = ($numer_miesiaca_cp == 13) ? 2024 : 2023;
            $value_cp = $rok_cp . '-' . $numer_miesiaca_cp;
            $selected_cp = ($wybrana_data_cp == $value_cp) ? 'selected' : '';
            echo '<option value="' . $value_cp . '" ' . $selected_cp . ' id="' . $numer_miesiaca_cp . '">' . $nazwa_miesiaca_cp . '</option>';
        } else if ($numer_miesiaca_cp == 1 || $numer_miesiaca_cp == 13) {
            $rok_cp = ($numer_miesiaca_cp == 13) ? 2024 : 2022;
            $value_cp = $rok_cp . '-12';
            $selected_cp = ($wybrana_data_cp == $value_cp) ? 'selected' : '';
            echo '<option value="' . $value_cp . '" ' . $selected_cp . ' id="' . $numer_miesiaca_cp . '">' . $nazwa_miesiaca_cp . '</option>';
        }
    }
    echo '</select>';

    // przycisk submit
    echo '<br><br><button class="serch" type="submit">Wyszukaj</button>';
    echo '</form>'; // koniec formularza
?>

<script type="text/javascript">
    function submitForm() {
        document.querySelector('form_cp').submit();
    }

    document.querySelector('#data_cp').addEventListener('change_cp', function() {
        submitForm();
    });
</script>