<cfcomponent>
         <!---------INTIALIZATION SESSION MANAGEMENT--->
    <cfset This.name="lkjhgfdsa"/>

    <cfset This.applicationtimeout=createtimespan(10,0,0,0)/>
    <cfset This.Sessionmanagement=true />
    <cfset This.CLIENTMANAGEMENT=false />
    <cfset This.Sessiontimeout=createtimespan(0,0,20,0)/>

<cffunction name="onApplicationStart" access = "public" output = "true"> 
     <cfset application.DSN="usersData"/>
    <cfset application.components = "component">
    <cfset application.login_Data = CreateObject('component', application.components&'.login')/>
      
  <cfreturn true />
</cffunction>

<cffunction name="OnRequestStart"> 

<!------------APPLICATION DIRECTORY INSTALLATION------>
  
</cffunction>
</cfcomponent>