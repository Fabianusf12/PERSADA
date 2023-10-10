<?php
//jika belom login

if(isset($_SESSION['log'])){

}else {
    header('location:login.php');
};
?>