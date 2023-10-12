<cfset language = "english">
<cfif structKeyExists(url, "lang")>
    <cfset language = url.lang>
</cfif>

<cfobject component="FamilyRegistration" name="registration">
<cfset translations = registration.getTranslations(language)>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Family Registration Form</title>
    <!--- ... other head elements ... --->
</head>
<body>
    <div id="container">
        <div id="banner"><cfoutput>#translations.banner#</cfoutput></div>
        <a href="familyRegistration.cfm?lang=english">Translate to English</a>
        <a href="familyRegistration.cfm?lang=spanish">Traducir al Español</a>
        <a href="familyRegistration.cfm?lang=somali">Tarjumidda Soomaaliga</a>
        <div class="formContainer">
            <form action="submitForm.cfm" method="post">
                <label><span><cfoutput>#translations.firstName#</cfoutput></span> <input required type="text" name="firstName"></label>
                <!--- ... other form elements ... --->
            </form>
        </div>
        <!--- ... rest of the page ... --->
    </div>
    <!--- ... other body elements ... --->
</body>
</html>
