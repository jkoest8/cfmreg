<cfcomponent>
    <cffunction name="getTranslations" access="public" returntype="struct">
        <cfargument name="language" type="string" required="true">

        <cfset var translations = structNew()>

        <!--- English default translations --->
        <cfset translations["english"] = {
            "banner" = "Family Registration Form",
            "firstName" = "First Name:*",
            <!--- ... other fields ... --->
        }>

        <!--- Spanish translations --->
        <cfset translations["spanish"] = {
            "banner" = "Formulario de Registro Familiar",
            "firstName" = "Nombre:*",
            <!--- ... other fields ... --->
        }>

        <!--- Somali translations --->
        <cfset translations["somali"] = {
            "banner" = "Foomka Diwaangalinta Qoyska",
            "firstName" = "Magaca Koobaad:*",
            <!--- ... other fields ... --->
        }>

        <cfreturn translations[arguments.language]>
    </cffunction>
</cfcomponent>
