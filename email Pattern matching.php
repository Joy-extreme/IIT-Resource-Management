<?php


function checkemail($str) {
    return (!preg_match("/^[\w]+25[0-9][0-9]@student\.nstu.edu.bd$/i", $str)) ? FALSE : TRUE;
}
if(!checkemail("joy2520@student.nstu.edu.bd")){
 echo "Invalid email address.";
}
else{
 echo "Valid email address.";
}

?>