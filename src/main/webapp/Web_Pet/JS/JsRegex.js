var username = document.getElementById("username");
var password = document.getElementById("password")
var phonenumber = document.getElementById("phonenumber")
var email = document.getElementById("email")
ValidateEmail(email)
function ValidateEmail(email)
{
    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))
    {
        return (true)
    }
    alert("You have entered an invalid email address!")
    return (false)
}
function ValidatePhoneNumber(phonenumber) {
    if(/\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})/.test(phonenumber))
    {
        return (true)

    }
    alert("You have entered an invalid PhoneNumber address!")

}
function ValidateUsername(username) {

    const res = /^[a-z0-9_\.]+$/.exec(username);
    const valid = !!res;
    return valid;
}
function ValidatePassword(password){
    if (/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/.test(password)){
        return(true)
    }
    alert("You have entered an invalid Password address")
}
