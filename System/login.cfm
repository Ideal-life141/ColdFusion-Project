
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>This is Login Page </title>
    <link rel="stylesheet" href="../css_style/login.css">
</head>
<body>
  
       <!--- Verify whether the text entered by the user matches the CAPTCHA string. --->
       
       <cfset captchaCheck = application.login_Data.captchaValidation()>
       <cfset hashCaptcha = hash(captchaCheck)>
       
             <!------  VALIDATION OF USERNAME AND PASSWORD  ----->
  <cfif isDefined("form.submit")>
<cfif isdefined("form.username") AND isDefined("form.password")>
  <cfset CheckUserData = application.login_Data.DataValidate(Username= '#form.username#', Password='#form.password#')>
      <cfif CheckUserData.recordcount EQ 0>
          <CENTER> <p><b> Please Enter Correct username and Password </b></p> </CENTER> <br>
        <cfelse>
                <!--------START CREATE SESSION VARIABLES SETTINGS---->
              <cfset session.ID = "#CheckUserData.id#">
              <cfset session.superUser = "#CheckUserData.Superuser#">
                 
                <!------  VALIDATION OF CAPTCHA CODE ----->
             <cfif hash("#form.captchaCode#") NEQ ("#form.hashVal#")>
                  <CENTER> <p><b> Invalid Captcha Code !</b></p></CENTER><br>
               <cfelse>
                  <!----------ADMIN AUTHENTICATION------->


                <cflocation url="home.cfm">
           </cfif>
      </cfif>
</cfif>
</cfif>
<cfoutput>
      <h1> <b><i>Please Login</i></b> </h1>
<div id="div1">
  <fieldset>
    <form action=" " method="POST">
        <div>
            <label for="username"><b>Username :</b></label><br>
            <input type="text" id="username" name="username" placeholder="Enter Username" required><br>
        </div>

        <div id="div0">
           <label for="password"><b>Password :</b></label><br> 
           <input type="text" id="password" name="password" placeholder="Enter Password" required><br>
        </div> <br>
            
              <!--- Code for the CAPTCHA image. --->
        <div>
            <cfimage action="captcha" fontSize="24" fonts="Arial, Times New Roman" width="200" height="50" text="#captchaCheck#" difficulty="medium"/>
        </div><br>
 
        <div>
            <input type="text" id="captcha" name="captchaCode" placeholder="Enter CAPTCHA" maxlength="6" required>
            <input type="hidden" name="hashVal" value="#hashCaptcha#"> <br>
        </div>

            <!--- END OF CAPTCHA image. ---> 

        <div id="div2">
           <button id="btn2" name="submit" value="login"><b>Login</b></button>
        </div>

        <div id="div3">
           <button id="btn2" type="reset"><b>Reset</b></button>
        </div>
  
      </form>
    </fieldset>
   </div>
  </cfoutput>
</body>
</html>