Class DV.DevOps.Dispatch Extends %CSP.REST
{

XData UrlMap [ XMLNamespace = "http://www.intersystems.com/urlmap" ]
{
<Routes>
	<Route Url="/deploy" Method="POST" Call="BeginDeployment" Cors="true"/>
	<Route Url="/deploy" Method="GET" Call="GetAllDeploydetails" Cors="true"/>
	<Route Url="/deploy/:id" Method="GET" Call="GetAllDeploydetails" Cors="true"/>
</Routes>
}

ClassMethod BeginDeployment()
{
	set request = {}.%FromJSON(%request.Content)
	if '$IsObject(request) w {"error":"payload missing"}.%ToJSON() return $$$OK
	set response = ##class(DV.DevOps.Deployment).DeployBegin(request)
	write:$IsObject(response) response.%ToJSON()
	return $$$OK
}

ClassMethod GetAllDeploydetails(DeploymentId As %String = "")
{
	if DeploymentId'="" {
		set response = ##class(DV.DevOps.Utility).GetAllDeploymentById(DeploymentId)
	}
	else{
		set response = ##class(DV.DevOps.Utility).GetAllDeploymentDetails()
	}
	write response
	return $$$OK
}

}
