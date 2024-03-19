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
