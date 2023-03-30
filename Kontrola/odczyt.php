<?php
    $miesiace = array(
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
    $wybrana_data = isset($_POST['data']) ? $_POST['data'] : '';

    // opcja wyboru rok_wodau i miesiąca
    echo '<label for="data">Wybierz rok i miesiąc:</label>';
    echo '<form method="POST" action="">'; // formularz
    echo '<select name="data" id="data" required onchange="submitForm()">';

    foreach ($miesiace as $nazwa_miesiaca => $numer_miesiaca) {
        if ($numer_miesiaca >= 2 && $numer_miesiaca <= 13) {
            $rok = ($numer_miesiaca == 13) ? 2024 : 2023;
            $value = $rok . '-' . $numer_miesiaca;
            $selected_woda = ($wybrana_data_woda == $value) ? 'selected' : '';
            echo '<option value="' . $value . '" ' . $selected_woda . ' id="' . $numer_miesiaca . '">' . $nazwa_miesiaca . '</option>';
        } else if ($numer_miesiaca == 1 || $numer_miesiaca == 13) {
            $rok = ($numer_miesiaca == 13) ? 2024 : 2022;
            $value = $rok . '-12';
            $selected_woda = ($wybrana_data_woda == $value) ? 'selected' : '';
            echo '<option value="' . $value . '" ' . $selected_woda . ' id="' . $numer_miesiaca . '">' . $nazwa_miesiaca . '</option>';
        }
    }
    echo '</select>';

    // przycisk submit
    echo '<br><br><button class="serch" type="submit">Wyszukaj</button>';
    echo '</form>'; // koniec formularza
?>

<script type="text/javascript">
    function submitForm() {
        document.querySelector('form').submit();
    }

    document.querySelector('#data').addEventListener('change', function() {
        submitForm();
    });
</script>