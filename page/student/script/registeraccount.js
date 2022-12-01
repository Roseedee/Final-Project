checkpassword();
setlevelpassword(strength);


function showandhidepsw() {
    let input_psw = document.querySelector('.password');
    let icon = document.querySelector('.iconlookpsw');
    if(input_psw.getAttribute("type")=="password") {
        input_psw.setAttribute("type", "text");
        icon.setAttribute("src", "../../pictures/Icon/hide.png");
        return 0;
    }else {
        input_psw.setAttribute("type", "password");
        icon.setAttribute("src", "../../pictures/Icon/show.png");
    }
}

function checkpassword() {
    let password = document.querySelector('.password').value;
    let test = document.querySelector('.test');
    var strength = 0;
    if (password.match(/[a-z]+/)) {
      strength += 1;
    }
    if (password.match(/[A-Z]+/)) {
      strength += 1;
    }
    if (password.match(/[0-9]+/)) {
      strength += 1;
    }
    if (password.match(/[$@#&!]+/)) {
      strength += 1;
    }
    setlevelpassword(strength);
}

function setlevelpassword(strength) {
    let tab1 = document.querySelector(".tab1");
    let tab2 = document.querySelector(".tab2");
    let tab3 = document.querySelector(".tab3");
    let tab4 = document.querySelector(".tab4");
    switch(strength) {
        case 1: {
            tab1.style.backgroundColor = "#97E585";
            tab2.style.backgroundColor = "#EEDCDC";
            tab3.style.backgroundColor = "#EEDCDC";
            tab4.style.backgroundColor = "#EEDCDC";
            break;
        }
        case 2: {
            tab1.style.backgroundColor = "#97E585";
            tab2.style.backgroundColor = "#97E585";
            tab3.style.backgroundColor = "#EEDCDC";
            tab4.style.backgroundColor = "#EEDCDC";
            break;
        }
        case 3: {
            tab1.style.backgroundColor = "#97E585";
            tab2.style.backgroundColor = "#97E585";
            tab3.style.backgroundColor = "#97E585";
            tab4.style.backgroundColor = "#EEDCDC";
            break;
        }
        case 4: {
            tab1.style.backgroundColor = "#97E585";
            tab2.style.backgroundColor = "#97E585";
            tab3.style.backgroundColor = "#97E585";
            tab4.style.backgroundColor = "#97E585";
            break;
        }
    }
}