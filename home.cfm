<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to Home Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../css_style/home.css">

</head>

<body>
    <!------  VALIDATION OF ADMIN LOGIN ----->

    <cfif isDefined('session.superUser')>
<!---         <cfset checkSuperuser = application.login_Data.adminHome(Superuser = "1")> --->
<!---         <cfif checkSuperuser.recordcount neq "null"> --->
        
<!----------ADMIN AUTHENTICATION------->
       <cfif session.superUser eq "true">

            <div>
                <H1>
                    <center id="wel"> <i><b>Congratulation Admin !</center>
                </H1>
            </div>

            <div>
                <h1 id="head">
                    <b><i>You're Login Successfully. WELCOME! to Home Page</i></b>
                </h1>
            </div>
            <span class="tableName">
                <center>
                    <h2>This is the records from Users Table</h2>
                </center>
                <table class="table">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Name</th>
                            <th scope="col">Username</th>
                            <th scope="col">Password</th>
                            <th scope="col">Email</th>
                            <th scope="col">Mobile</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>Adarsh Srivastava</td>
                            <td>Ashu@123</td>
                            <td>Aadu@098</td>
                            <td>adarsh@gmail.com</td>
                            <td>8541236971</td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>Anupam Singh</td>
                            <td>Anu$123</td>
                            <td>tilak123</td>
                            <td>anupam@gmail.com</td>
                            <td>7841259638</td>
                        </tr>
                        <tr>
                            <th scope="row">3</th>
                            <td>Jaideep Singh</td>
                            <td>Larry098</td>
                            <td>Raoji098765</td>
                            <td>larry@gmail.com</td>
                            <td>9919024789</td>
                        </tr>
                        <tr>
                            <th scope="row">4</th>
                            <td>Ritik Agarwal</td>
                            <td>the_Bird123</td>
                            <td>jadoo@123</td>
                            <td>harry@gmail.com</td>
                            <td>7452168952</td>
                        </tr>
                        <tr>
                            <th scope="row">5</th>
                            <td>Akash Tyagi</td>
                            <td>Spider@123</td>
                            <td>Tyagi#741</td>
                            <td>spiderman@gmail.com</td>
                            <td>9632587410</td>
                        </tr>
                    </tbody>
                </table>
            </span>

            <div>
                <a href="Lets_start.cfm">
                    <div id="div1"> <button class="button2" id="btn"><b>LogOut</b></button> </div>
                </a>
            </div>

            <div>
                <a href="UpdateForm.cfm">
                    <div id="div1"> <button class="button2" id="btn"><b>Update Profile</b></button> </div>
                </a>
            </div>
            <cfelse>
                <div>
                    <H1>
                        <center id="wel"> <i><b>Congratulation User !</center>
                    </H1>
                </div>

                <div>
                    <h1 id="head">
                        <b><i>You're Login Successfully. WELCOME! to Home Page</i></b>
                    </h1>
                </div>

                <div>
                    <a href="Lets_start.cfm">
                        <div id="div1"> <button class="button2" id="btn"><b>LogOut</b></button> </div>
                    </a>
                </div>

                <div>
                    <a href="UpdateForm.cfm">
                        <div id="div1"> <button class="button2" id="btn"><b>Update Profile</b></button> </div>
                    </a>
                </div>
        </cfif>
    </cfif>
</body>

</html>