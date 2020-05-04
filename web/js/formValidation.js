function checkLogin() {
    var email = document.forms["LoginUserForm"]["email"];
    var pass = document.forms["LoginUserForm"]["password"];

    if (email.value == "") {
        window.alert("Please enter your email.");
        email.focus();
        return false;
    }
    if (pass.value == "") {
        window.alert("Please enter your password.");
        pass.focus();
        return false;
    }
}

function checkRegister() {
    var pseudo = document.forms["RegUserForm"]["pseudo"];
    var email = document.forms["RegUserForm"]["email"];
    var password = document.forms["RegUserForm"]["password"];
    var password2 = document.forms["RegUserForm"]["password2"];


    if (pseudo.value == "") {
        window.alert("You must create a pseudo");
        pseudo.focus();
        return false;
    }
    if (email.value == "") {
        window.alert("You must create an email");
        email.focus();
        return false;
    }

    if (password.value == "") {
        window.alert("You must create a password");
        password.focus();
        return false;
    }
    if (password2.value == "") {
        window.alert("You must confirm password");
        password2.focus();
        return false;
    }

    if (password.value == password2.value) {
        window.alert("Passwords are different");
        password2.focus();
        return false;
    }


}