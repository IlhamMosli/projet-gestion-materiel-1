<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Application</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  display: flex;
  justify-content: center; /* Pour centrer le contenu horizontalement */
  align-items: center; /* Pour centrer le contenu verticalement */
  height: 100vh; /* Hauteur de la fenêtre visible */
}

form {
  border: 3px solid #f1f1f1;
  width: 500px; /* Largeur du formulaire */
}

input[type=text], input[type=password] {
  width: calc(100% - 40px); /* Largeur du champ de texte avec un peu de marge */
  padding: 12px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: calc(100% - 40px); /* Largeur du bouton avec un peu de marge */
}

button:hover {
  opacity: 0.8;
}

.cancelbutton {
  width: calc(100% - 40px); /* Largeur du bouton avec un peu de marge */
  padding: 10px 18px;
  background-color: #f44336;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
    display: block;
    float: none;
  }
  .cancelbutton {
    width: 100%;
  }
}
</style>

<script type="text/javascript">
function ValidateEmail(emailId)
{
  var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
  if(emailId.value.match(mailformat))
  {
    document.getElementById('password').focus();
    return true;
  }
  else
  {
    alert("You have entered an invalid email address!");
    document.getElementById('emailId').focus();
    return false;
  }
}
</script>

</head>
<body>

  <form action="loginv.jsp" method="post">
    <div class="container">
      <label for="username"><b>Email</b></label>
      <input type="text" placeholder="Please enter your email" name="uname" id="uname" required>

      <label for="password"><b>Password</b></label>
      <input type="password" placeholder="Please enter Password" name="password" id="password" required>
        
      <button type="submit">Login</button>
      <br>
      <label>
        <input type="checkbox" checked="checked" name="rememberme"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" class="cancelbutton">Cancel</button>
    </div>
  </form>

</body>
</html>
