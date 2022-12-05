var username = document.getElementById("username");
var password = document.getElementById("password");
var phone = document.getElementById("phonenumber");
var email = document.getElementById("email");
var name = document.getElementById("name");
var age = document.getElementById("age");
var price = document.getElementById("price");
var description = document.getElementById("description");
var hobbit = document.getElementById("hobbit");
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
function ValidateAddName(name){
    if (/^[a-z0-9_-]{3,16}$/.test(name)){
        return(true)
    }
    alert("You have entered an invalid name address")
}
function ValidateAddAge(age){
    if (// Số nguyên, số thập phân và phân số
        /[-]?[0-9]+[,.]?[0-9]*([\/][0-9]+[,.]?[0-9]*)*/.test(age)){
        return(true)
    }
    alert("you have entered an invalid age address")
}
function ValidateAddPrice(price){
    if (// Số nguyên, số thập phân và phân số
        /[-]?[0-9]+[,.]?[0-9]*([\/][0-9]+[,.]?[0-9]*)*/.test(price)){
        return true
    }
    alert("you have entered an invalid price address")
}
function ValidateDescription(description){
    if (// Chữ cái và số có bao gồm khoảng trắng
        /^[a-zA-Z0-9 ]*$/.test(description)){
        return true
    }
    alert("you have entered an invalid description address")
}
function ValidateHobbit(hobbit){
    if (// Chữ cái và số có bao gồm khoảng trắng
        /^[a-zA-Z0-9 ]*$/.test(hobbit)){
        return true
    }
    alert("you have entered an invalid hobbit address")
}
