Class DV.DevOps.DB.ErrorLog Extends (%Persistent, %JSON.Adaptor)
{

Property ErrorMessage As %String;

Property DeploymentId As DV.DevOps.DB.Deployment;

Storage Default
{
<Data name="ErrorLogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>ErrorMessage</Value>
</Value>
<Value name="3">
<Value>DeploymentId</Value>
</Value>
</Data>
<DataLocation>^DV.DevOps.DB.ErrorLogD</DataLocation>
<DefaultData>ErrorLogDefaultData</DefaultData>
<IdLocation>^DV.DevOps.DB.ErrorLogD</IdLocation>
<IndexLocation>^DV.DevOps.DB.ErrorLogI</IndexLocation>
<StreamLocation>^DV.DevOps.DB.ErrorLogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
