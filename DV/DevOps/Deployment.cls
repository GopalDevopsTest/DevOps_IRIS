Class DV.DevOps.Deployment Extends DV.DevOps.Base
{

Property InvokeType As %String(DISPLAYLIST = ",CSP,REST,TRM", VALUELIST = ",CSP,REST,TRM");

Method Deployment()
{
	Try {
		Do ..DeployBegin()
	}
	Catch ex {
		Set tSC=ex.AsStatus()
	}
	
	Return $$$OK
}

}
