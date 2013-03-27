function myValidateForm()
{
    var chk = document.forms[0]["firstName"].value;
    if (chk == null || chk == "") {
        document.getElementById("formErrors").innerHTML = "Please enter your first name!";
        document.forms[0].action='';
        return false;
    }
    var chk = document.forms[0]["surname"].value;
    if (chk == null || chk == "") {
        document.getElementById("formErrors").innerHTML = "Please enter your surname!";
        document.forms[0].action='';
        return false;
    }
    var chk = document.forms[0]["phone"].value;
    var phoneNumberPattern = /^\(?(\d{3})\)?[- ]?(\d{3})[- ]?(\d{4})$/;
    if (!phoneNumberPattern.test(chk)) {
        document.forms[0].action='';
        document.getElementById("formErrors").innerHTML = "Phone number must be valid (10 digits)!";
        return false;
    }
    var chk = document.forms[0]["email"].value;
    var atpos = chk.indexOf("@");
    var dotpos = chk.indexOf(".");
    if (atpos < 1 || dotpos+2>chk.length) {
        document.forms[0].action='';
        document.getElementById("formErrors").innerHTML = "Email address must be valid!";
        return false;
    }
    var chk = document.forms[0]["companyName"].value;
    if (chk == null || chk == "") {
        document.getElementById("formErrors").innerHTML = "Please enter your company name!";
        document.forms[0].action='';
        return false;
    }
    document.forms[0].action='thanks.jsp';
    return true;
}
      

