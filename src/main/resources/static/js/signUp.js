let emailInp=document.querySelector("#InputEmail1");
let passInp=document.querySelector("#InputPassword1");
let  passConf=document.querySelector("#InputPassword2");
let  phoneInp=document.querySelector("#PhoneNumber");


if(emailInp.placeholder==="Էլ․ հասցեն զբացված է"){
    emailInp.classList.add('errorPlaceholder')
}
if(phoneInp.placeholder==="Հեռ․ սխալ է" || phoneInp.placeholder==="Հեռ․ զբաղված է"){
    phoneInp.classList.add('errorPlaceholder')
}
if(passInp.placeholder==="Մինիմում քանակը 8 սիմվոլ"){
    passInp.classList.add('errorPlaceholder');
}
if (passConf.placeholder==="Գաղտնաբառը սխալ է"){
    passConf.classList.add('errorPlaceholder')
}