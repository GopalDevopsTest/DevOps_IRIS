Class DV.DevOps.DB.Deployment Extends (%Persistent, %JSON.Adaptor)
{

Property BuildId As %String(MAXLEN = 100);

Property Description As %String(MAXLEN = 500);

Property InitiateUser As %String(MAXLEN = 20);

Property StartDateTime As %String;

Property EndDateTime As %String;

Property Status As %Boolean;

Index BuildIdx On BuildId [ IdKey, Unique ];

Storage Default
{
<Data name="DeploymentDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Description</Value>
</Value>
<Value name="3">
<Value>InitiateUser</Value>
</Value>
<Value name="4">
<Value>StartDateTime</Value>
</Value>
<Value name="5">
<Value>EndDateTime</Value>
</Value>
<Value name="6">
<Value>Status</Value>
</Value>
</Data>
<DataLocation>^DV.DevOps.DB.DeploymentD</DataLocation>
<DefaultData>DeploymentDefaultData</DefaultData>
<IdLocation>^DV.DevOps.DB.DeploymentD</IdLocation>
<IndexLocation>^DV.DevOps.DB.DeploymentI</IndexLocation>
<StreamLocation>^DV.DevOps.DB.DeploymentS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
