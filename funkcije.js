function validacija(){
    var x = document.forms['unos']['username'].value;
    var y = document.forms['unos']['password'].value;
    
    if (x===""){
        alert("Morate popuniti polje USERNAME!");
        return false;
    }
    
    if(y===""){
        alert("Morate popuniti polje PASSWORD!");
        return false;
    }
}


