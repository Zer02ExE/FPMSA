function toggleTable() {
    var table = document.getElementById("myTable");
    var button = document.getElementById("toggleButton");
        if (table.classList.contains("hidden")) {
            table.classList.remove("hidden");
            button.innerHTML = "ZWIŃ TABELĘ";
            var rows = table.getElementsByTagName("tr");
        for (var i = 0; i < rows.length; i++) {
            rows[i].style.opacity = "0";
            rows[i].style.transition = "opacity 0.5s ease " + (i * 0.05) + "s";
            setTimeout(function(row) 
            {
                row.style.opacity = "1";
            }, i * 100 + 100, rows[i]);
            table.style.display = "block";
        }
    } 
    else 
    {
        table.classList.add("hidden");
        button.innerHTML = "WYSUŃ TABELĘ";
        table.style.display = "none";
    }
}
    
function toggleTable2() {
    var table = document.getElementById("myTable2");
    var button = document.getElementById("toggleButton2");
        if (table.classList.contains("hidden")) {
            table.classList.remove("hidden"); 
            button.innerHTML = "ZWIŃ TABELĘ";
            var rows = table.getElementsByTagName("tr");
            for (var i = 0; i < rows.length; i++) {
                rows[i].style.opacity = "0";
                rows[i].style.transition = "opacity 0.5s ease " + (i * 0.05) + "s";
                setTimeout(function(row) 
                {
                row.style.opacity = "1";
                }, i * 100 + 100, rows[i]);
                table.style.display = "block";
            }
        } 
    else {
        table.classList.add("hidden");
        button.innerHTML = "WYSUŃ TABELĘ";
        table.style.display = "none";
    }
}