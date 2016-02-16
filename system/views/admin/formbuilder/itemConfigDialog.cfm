<cfscript>
	configFormName = prc.actionConfig.configFormName ?: "";
	savedData      = prc.savedData ?: {};
	action         = rc.action   ?: "";
	actionId       = rc.actionId   ?: "";
	formId         = "configform-" & CreateUUId();
</cfscript>

<cfoutput>
	<form id="#formId#" data-dirty-form="protect" class="form-horizontal formbuilder-action-config-form">
		<input type="hidden" name="action"   value="#action#">
		<input type="hidden" name="actionId" value="#actionId#">

		#renderForm(
			  formName          = configFormName
			, context           = "admin"
			, formId            = formId
			, savedData         = savedData
		)#
	</form>
</cfoutput>