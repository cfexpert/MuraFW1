<cfsilent>
<!---

This file is part of MuraFW1

Copyright 2010-2015 Stephen J. Withington, Jr.
Licensed under the Apache License, Version v2.0
http://www.apache.org/licenses/LICENSE-2.0

--->
	<cfscript>
		if ( not StructKeyExists( request, 'mfw1cssexists') or not request.mfw1cssexists ){
		  pluginPath = 
		    rc.$.globalConfig('context') 
		    & '/plugins/' 
		    & rc.pluginConfig.getPackage();
			rc.pluginConfig.addToHTMLHeadQueue( "/common/layouts/html_head.cfm" );
			request.mfw1cssexists = true;
			
		}
	</cfscript>
</cfsilent>
<cfoutput>#body#</cfoutput>