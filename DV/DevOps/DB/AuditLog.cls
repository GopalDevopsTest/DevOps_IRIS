Class DV.DevOps.DB.AuditLog Extends (%Persistent, %JSON.Adaptor)
{

Property User As %String;

Storage Default
{
<Data name="AuditLogDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>User</Value>
</Value>
</Data>
<DataLocation>^DV.DevOps.DB.AuditLogD</DataLocation>
<DefaultData>AuditLogDefaultData</DefaultData>
<IdLocation>^DV.DevOps.DB.AuditLogD</IdLocation>
<IndexLocation>^DV.DevOps.DB.AuditLogI</IndexLocation>
<StreamLocation>^DV.DevOps.DB.AuditLogS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
