Class DV.DevOps.Deployment Extends DV.DevOps.Base
{

Property InvokeType As %String(DISPLAYLIST = ",CSP,REST,TRM", VALUELIST = ",CSP,REST,TRM");

Method Deployment()
{
	Do ..DeployBegin()
	Return $$$OK
}

}
