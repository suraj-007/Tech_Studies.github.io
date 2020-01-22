<%--
    Document   : Alogin
    Created on : Mar 27, 2018, 4:08:09 PM
    Author     : suraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mentor Login</title>
        <link rel="shortcut icon" type="image/png" href="img/ts.png">
        <link rel="stylesheet" href="css/Alogin.css">
        <link rel="stylesheet" href="css/captcha.css">
    </head>
    <body>
        <header>
        <div id="main">
        <a class="main" href="index.html" class="header-brand"><pre>TECH STUDIES <p id="bar">|</p> </pre></a>
        <nav>
          <ul>
            <li><a href="index.html">About Us</a></li>
            <li><a href="index.html">Contact</a></li>
            <li><a href="register.jsp">Sign Up</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="#">Mentor</a>
              <ul>
                 <li><a href="AdminReg.jsp">Sign Up</a></li>
                 <li><a href="ALogin.jsp">Login</a></li>
              </ul>
          </li>
          </ul>
        </nav>
   
   </div>
             </header>
      <main>
      <section class="main">
      <div class="box">
           <p id="pe">Login</p>
          <div class="email">
          <form action="ALogin" method="post"  onsubmit="return checkform(this);">
             <input type="text" name="email" placeholder="Enter Mentor Email" required><br>
             <input type="password" name="password" placeholder="Enter Admin Password" required>
          </div>
           
           
           
                     
           <!-- START CAPTCHA -->
<br>
<div class="capbox">

<div id="CaptchaDiv"></div>

<div class="capbox-inner">
Type the above number:<br>

<input type="hidden" id="txtCaptcha">
<input type="text" name="CaptchaInput" id="CaptchaInput" size="15"><br>

</div>
</div>
<br><br>
<!-- END CAPTCHA -->

           
           
           
           
           
        <div class="submit">
            <input type="submit" value="Login">
        </div>
        </form>
              
              
              
              
              
              
              
              
              
              
              
                            
 <script type="text/javascript">

// Captcha Script

function checkform(theform){
var why = "";

if(theform.CaptchaInput.value == ""){
why += "- Please Enter CAPTCHA Code.\n";
}
if(theform.CaptchaInput.value != ""){
if(ValidCaptcha(theform.CaptchaInput.value) == false){
why += "- The CAPTCHA Code Does Not Match.\n";
}
}
if(why != ""){
alert(why);
return false;
}
}

var a = Math.ceil(Math.random() * 9)+ '';
var b = Math.ceil(Math.random() * 9)+ '';
var c = Math.ceil(Math.random() * 9)+ '';
var d = Math.ceil(Math.random() * 9)+ '';
var e = Math.ceil(Math.random() * 9)+ '';

var code = a + b + c + d + e;
document.getElementById("txtCaptcha").value = code;
document.getElementById("CaptchaDiv").innerHTML = code;

// Validate input against the generated number
function ValidCaptcha(){
var str1 = removeSpaces(document.getElementById('txtCaptcha').value);
var str2 = removeSpaces(document.getElementById('CaptchaInput').value);
if (str1 == str2){
return true;
}else{
return false;
}
}

// Remove the spaces from the entered and generated code
function removeSpaces(string){
return string.split(' ').join('');
}
</script>

              
             
              
              
              
              
              
              
              
              
              
              
              
              
              
              
        <div class="last">
        <p id="last1">Not a member?</p><a id="last2" href="AdminReg.jsp"> Sign up now</a>
      </div>
      </div>
  </section>
  </main>
          <footer id="footer">
       <ul class="footer-links-main">
           <li><a href="index.html">Home</li>
           <li><a href="index.html">About us</li>
           <li><a href="index.html">Contact</li>
      </ul>

    <div class="footer-sm">

      <a href="https://www.facebook.com"><img src="img/Facebook-icon.png" alt="fb icon"></a>
      <a href="https://www.youtube.com"><img src="img/youtube1.png" alt="fb icon"></a>

    </div>


    </footer>
    </body>
</html>
