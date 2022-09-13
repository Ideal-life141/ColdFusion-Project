

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User updation Page </title>
    <link rel="stylesheet" href="../css_style/UpdateForm.css">
</head>
<body>
      
        
<cfquery name="GetRecordUpdate" datasource="usersData">
        SELECT *
        FROM Users
        WHERE Id = <cfqueryparam cfsqltype="cf_sql_integer" value="#session.ID#">
</cfquery> 

<cfoutput query="GetRecordUpdate">

    <h1> <b>You Can Edit Your Details</b> </h1>

<div id="div1">
   <fieldset>

    <form action="update_result.cfm" method="POST">

       <input type="hidden" name="id" value="#id#"><br> 

           <label for="name"> <b>Name :</b> </label><br>
           <input type="text" id="name" name="name" placeholder="Enter Name" value="#name#" required><br>

           <label for="email"><b>Email :</b></label><br>
           <input type="email" id="email" name="email" placeholder="Enter Your Email" value="#email#" required><br>

           <label for="password"><b>Password :</b></label><br>
           <input type="password" id="password" name="password" placeholder="Make Your Password" value="#password#" required
                  pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
                  title="Must contain at least One Number and one Uppercase and Lowercase letter, and at least 8 or more characters"><br>

           <label for="mobile"><b>Mobile :</b></label><br>
           <input type="text" id="mobile" name="mobile" placeholder="Enter Mobile-No" value="#mobile#" required><br><br>

    <div id="div2">
        <a href=" "><button type="submit" id="btn1" value="Update Information"><b>Update<b></button></a>

    </div>

  </form>
 </fieldset>
</div> 
  
</cfoutput> 
</body>
</html>