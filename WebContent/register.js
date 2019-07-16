function formValidation()
{
var sid = document.registration.sid;
var sname = document.registration.sname;
var semail = document.registration.semail;
var spass = document.registration.spass;
var scpass = document.registration.scpass;
var sph = document.registration.sph;
if(sid_validation(sid,2,6))
{
if(spass_validation(spass,3,12))
{
if(allLetter(sname))
{
if(ValidateEmail(semail))
{
if(allnumeric(sph))
{
} 
}
}
}
}
return false;
}

function sid_validation(uid,mx,my)
{
var sid_len = sid.value.length;
if (sid_len == 0 || sid_len >= my || sid_len < mx)
{
alert("User Id should not be empty / length be between "+mx+" to "+my);
uid.focus();
return false;
}
return true;
}

function spass_validation(spass,mx,my)
{
var spass_len = spass.value.length;
if (spass_len == 0 ||spass_len >= my || spass_len < mx)
{
alert("Password should not be empty / length be between "+mx+" to "+my);
passid.focus();
return false;
}
return true;
} 

function allLetter(sname)
{ 
var letters = /^[A-Za-z]+$/;
if(sname.value.match(letters))
{
return true;
}
else
{
alert('Username must have alphabet characters only');
sname.focus();
return false;
}
}


function allnumeric(sph)
{ 
var numbers = /^[0-9]+$/;
if(sph.value.match(numbers))
{
	alert('Form Succesfully Submitted');
	window.location.reload();
return true;
}
else
{
alert('ZIP code must have numeric characters only');
sph.focus();
return false;
}
}

function ValidateEmail(semail)
{
var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
if(semail.value.match(mailformat))
{
return true;
}
else
{
alert("You have entered an invalid email address!");
semail.focus();
return false;
}
}

