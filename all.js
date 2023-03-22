function openNav() {
    var menu = document.getElementById("sidebar");
    if (menu !== null) {
      menu.style.width = "7%";
    }
  
    var a = document.getElementById("hre1");
    if (a !== null) {
      a.style.opacity = "1";
    }
    var b = document.getElementById("hre2");
    if (b !== null) {
      b.style.opacity = "1";
    }
    var p = document.querySelector("p");
    if (p !== null) {
      p.style.opacity = "1";
    }
  
    var formContainer = document.getElementById("contentm");
    if (formContainer !== null) {
      formContainer.style.marginLeft = "7%";
      formContainer.style.width = "93%";
    }
  }
  
  function closeNav() {
    var menu = document.getElementById("sidebar");
    if (menu !== null) {
      menu.style.width = "5%";
    }
  
    var a = document.getElementById("hre1");
    if (a !== null) {
      a.style.opacity = "0";
    }
    var b = document.getElementById("hre2");
    if (b !== null) {
      b.style.opacity = "0";
    }
  
    var p = document.querySelector("p");
    if (p !== null) {
      p.style.opacity = "0";
    }
  
    var formContainer = document.getElementById("contentm");
    if (formContainer !== null) {
      formContainer.style.marginLeft = "5%";
      formContainer.style.width = "95%";
    }
  }

  function updateDateTime() {
    const date = new Date();
    const month = date.toLocaleString("default", { month: "long" });
    const day = date.toLocaleString("default", { weekday: "long" });
    const year = date.getFullYear();
    var hours = date.getHours();
    var minutes = date.getMinutes();
    var seconds = date.getSeconds();
    if(minutes < 10)
    {
        minutes='0'+minutes;
    } 
    if(seconds < 10)
    {
        seconds='0'+seconds;
    }
    const datetimeElement = document.getElementById("datetime");
    datetimeElement.innerText = `${hours}:${minutes}:${seconds} ${day}, ${month} ${year}`;
  }

  // Wywołanie funkcji updateDateTime co 1000 milisekund (1 sekunda)
  setInterval(updateDateTime, 100);