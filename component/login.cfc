<cfcomponent output="false">

                   <!-------- FUNCTION FOR ERROR MASSEGE FOR WRONG USERNAME AND PASSWORD----->

  <cffunction name="DataValidate" access="public" returntype="query">
       <cfargument name="username" required="true" />
       <cfargument name="password" required="true" />

      <cfquery name="checkuser" datasource="#application.DSN#">
               SELECT * FROM Users
               WHERE Username = <cfqueryparam value="#arguments.username#" cfsqltype="CF_SQL_VARCHAR">
               AND Password = <cfqueryparam value="#arguments.password#" cfsqltype="CF_SQL_VARCHAR">
      </cfquery>
      <cfreturn checkuser>
  </cffunction>
          <!--------END OF FUNCTION FOR ERROR MASSEGE FOR WRONG USERNAME AND PASSWORD----->

          <!--------START FUNCTION FOR DUPLICATE USERNAME ----->

  <cffunction name="filterData" access="public" returntype="query">
      <cfargument name="username" required="true" />
      <cfquery name="filterUsername" datasource="#application.DSN#">
              SELECT Username
              FROM  Users
              WHERE Username = <cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar">
      </cfquery>
        <cfreturn filterUsername>
  </cffunction>
              <!--------END OF FUNCTION FOR DUPLICATE USERNAME ----->

              <!--------START FUNCTION FOR DYNAMICALLY GENERATE CAPTCHA CODE ----->
  <cffunction name="captchaValidation" access="public" returntype="string">
     
       <cfset captchaLength=6>
       <cfset captchaList="1,2,3,4,5,6,7,8,9,a,b,d,e,f,g,h,j,n,q,r,t,y,A,B,C,D,E,F,G,H,K,L,M,N,P,Q,R,S,T,U,V,W,X,Y,Z">
       <cfset randomString="">
             <!--- Create a loop that builds the string from the random characters. --->
       <cfloop from="1" to="#captchaLength#" index="i">
            <cfset randomNum=RandRange(4, listLen(captchaList))>
            <cfset randomString=randomString & listGetAt(captchaList, randomNum)>
        </cfloop>
        <cfreturn randomString>
  </cffunction>
               <!--------END OF FUNCTION FOR DYNAMICALLY GENERATE CAPTCHA CODE ----->

               <!--------STARTING OF SUPERUSER (ADMIN) FIND QUERY -------->

   <cffunction  name="adminHome" access="public" returntype="query">
        <cfargument  name="superUser">
                <cfquery name="SuperAdmin" datasource="#application.DSN#">
                        SELECT * FROM Users
                        WHERE Superuser = <cfqueryparam value="#arguments.superUser#" cfsqltype="CF_SQL_BIT">
                </cfquery>
                <cfreturn SuperAdmin>
           </cffunction>
                 <!--------END OF SUPERUSER FIND QUERY -------->

  <cffunction  name="userHomePage" access="public" returntype="query">
                <cfargument name="Name" required="true" />
                <cfquery name="welcomeName" datasource="#application.DSN#">
                        SELECT * FROM Users
                        WHERE Name = <cfqueryparam value="#arguments.Name#" cfsqltype="CF_SQL_VARCHAR">
                </cfquery>

                <cfreturn welcomeName>
           </cffunction>
</cfcomponent>