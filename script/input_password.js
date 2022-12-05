function showAndHidepsw(index) {
    let input_psw = document.getElementsByClassName('password');
    let icon = document.getElementsByClassName('iconlookpsw');
    if(input_psw[index].getAttribute("type")=="password") {
        input_psw[index].setAttribute("type", "text");
        icon[index].setAttribute("src", "../../pictures/Icon/hide.png");
        return 0;
    }else {
        input_psw[index].setAttribute("type", "password");
        icon[index].setAttribute("src", "../../pictures/Icon/show.png");
    }
}