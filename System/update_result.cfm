<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Update Feedback Page</title>
    <link rel="stylesheet" href="../css_style/UpdateForm.css">
</head>

<body>

<cfquery name="updateUserProfile" datasource="usersData"> 
        UPDATE Users
        SET Name = '#form.name#',
            Email = '#form.email#', 
            Password = '#form.password#', 
            Mobile = '#form.mobile#'
        WHERE Id = #form.id# 
</cfquery> 

<center>  <h1><b><i>Great! Your Details Update Successfully</i></b> </h1> 

   <div id="div2">
       <a href="login.cfm"><button id="btn2" name="login"><b>Login</b></button></a>
   </div>

</center>
        
</body>
</html>