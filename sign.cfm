<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>This is Registration Form</title>
    <link rel="stylesheet" href="../css_style/sign.css">
</head>
  
<body>
            <!----------  VALIDATION FOR DUPLICATE USERNAME ----->

<cfif isDefined('form.username')>
    <cfset checkDblUsername = application.login_Data.filterData(Username='#form.username#')>
           <cfif checkDblUsername.recordcount GT 0>
           <CENTER> <p><b> Please Choose Another Username </b></p></CENTER> <br>
        <cfelse>
            <cfinclude template="submit.cfm">
         <cfabort>
   </cfif>
</cfif>
       <!---------- END OF VALIDATION FOR DUPLICATE USERNAME ----->

             <h1> <b><i>Please Enter Your Details</i></b> </h1>

 <div id="div1">
    <fieldset>
      <form action=" " method="POST">

        <label for="name"> <b>Name :</b> </label><br>
        <input type="text" id="name" name="name" placeholder="Enter Name" required><br>

        <label for="username"><b>Username :</b></label><br>
        <input type="text" id="username" name="username" placeholder="Choose Username" required><br>

        <label for="email"><b>Email :</b></label><br>
        <input type="email" id="email" name="email" placeholder="Enter Your Email" required><br>

        <label for="password"><b>Password :</b></label><br>
        <input type="password" id="password" name="password" placeholder="Make Your Password" required
               pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"><br>

        <label for="mobile"><b>Mobile :</b></label><br>
        <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile-No" required><br> <br>

        <div id="div2">
           <a href=" "><button type="submit" id="btn1" name="Register" Value="submit">Register</button></a>
           <button type="reset" id="btn2" target="_blank">Reset</button>
        </div>
      </form>
    </fieldset>
 </div>

</body>
</html>