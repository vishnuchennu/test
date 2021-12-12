<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
<!--  <link href="css/style.css" rel="stylesheet" type="text/css"/> -->

<style type="text/css">


body {
    background-image: url(https://media.istockphoto.com/photos/blue-abstract-background-or-texture-picture-id1138395421?k=6&m=1138395421&s=612x612&w=0&h=bJ1SRWujCgg3QWzkGPgaRiArNYohPl7-Wc4p_Fa_cyA=);
    background-size: cover;
    background-repeat: no-repeat;
    font-family: 'Arimo', sans-serif;
    margin: 0;
    padding: 0;
    height: 100%;
    box-sizing: border-box;
}

.container {
    width: 80%;
    height: 100%;
    margin: 0 auto;
}


/***********************************************
       Account Registartiona and Login
***********************************************/
.box,
.regbox{
    width: 320px;
    height: 420px;
    background: #2f3542;
    margin: 0;
    padding: 30px;
    top: 55%;
    left: 50%;
    color: #fff;
    border-radius: 15px;
    position: absolute;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
}

.avatar {
    margin: 0;
    padding: 0;
    width: 150px;
    height: 150px;
    top: -22%;
    position: absolute;
    left: calc(50% - 75px);
    border-radius: 50%;
}

.box h1{
    margin: 0;
    padding: 30px;
    text-align: center;
    font-size: 30px;
}

.box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.box input {
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
}

.box input[type="text"],
.box input[type="password"] {
    border: none;
    background: transparent;
    border-bottom: 1px solid #fff;
    outline: none;
    height: 35px;
    color: #fff;
    font-size: 15px;
}

.box input[type="submit"] {
    display: block;
    border: none;
    outline: none;
    height: 35px;
    background: #eccc68;
    color: #000;
    font-size: 20px;
    border-radius: 20px;
}

.box input[type="submit"]:hover {
    border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    border-radius: 20px;
    cursor: pointer;
    transition: .3s ease-out;
}

.box a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    line-height: 20px;
}

.box a:hover {
    color: #eccc68;
}




.regbox .avatar {
    margin: 0;
    padding: 0;
    width: 150px;
    height: 150px;
    top: -19%;
    position: absolute;
    left: calc(50% - 75px);
    border-radius: 50%;
}

.regbox h1 {
    margin-top: 30px;
    padding: 20px 0;
    text-align: center;
    font-size: 30px;
}

.regbox p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}

.regbox input {
    width: 100%;
    margin-bottom: 15px;
    border-radius: 5px;
}

.regbox input[type="text"],
.regbox input[type="password"] {
    border: none;
    background: transparent;
    border-bottom: 1px solid #fff;
    outline: none;
    height: 35px;
    color: #fff;
    font-size: 15px;
}

.regbox input[type="submit"] {
    display: block;
    border: none;
    outline: none;
    height: 35px;
    background: #eccc68;
    color: #000;
    font-size: 20px;
    border-radius: 20px;
}

.regbox input[type="submit"]:hover {
    border: none;
    outline: none;
    height: 35px;
    background: #ff6348;
    color: #fff;
    font-size: 20px;
    border-radius: 20px;
    cursor: pointer;
    transition: .3s ease-out;
}

.regbox a {
    text-decoration: none;
    color: #fff;
    font-size: 16px;
    line-height: 20px;
}

.regbox a:hover {
    color: #eccc68;
}

</style>
</head>
<body>

     <div class="container">
          <div class="box">
             <img class="avatar" src="img/user-avatar.png">
                <h1>Login Account</h1>
                
                    <form action="LoginServlet" method="post">
                    
                    <p>Username</p>
                    <input type="text" placeholder="Username" name="email" required>
                    
                    <p>Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    
                    <input type="submit" value="Login">
                    
                    <a href="#">Forget Password?</a><br>
                    <a href="registration.jsp">Create New Account</a>
                    
                </form>
      </div>
</div>

</body>
</html>