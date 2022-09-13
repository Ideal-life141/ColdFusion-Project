<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your are Register</title>
    <link rel="stylesheet" href="../css_style/submit.css">

</head>

<body>

    <cfquery name="appname" datasource="usersData">
        INSERT INTO Users (Name, Username, Email, Password, Mobile)
        VALUES ('#Form.name#', '#Form.username#', '#Form.email#', '#Form.password#', #Form.Mobile#)
    </cfquery>
    <cfoutput>
        <h1>
            <i>Congratulation! You're Register Successfully.</i>
        </h1>
    </cfoutput>
    <a href="login.cfm">
        <div><button class="button2" id="btn"><b>Login</b></button></div>
    </a>
</body>
</html>