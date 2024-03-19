Class DV.DevOps.Utility Extends %RegisteredObject
{
    
ClassMethod GetAllDeploymentDetails()
{
	&SQL(SELECT JSON_ARRAYAGG(
					JSON_OBJECT(
						'id':DeploymentId,
						'description':Description,
						'initiateUser':InitiateUser,
						'startDateTime':$ZDT(StartDateTime,3),
						'endDateTime':$ZDT(EndDateTime),
						'status':status
					)
				) INTO :deploymentDetails
		FROM DV_DevOps_DB.DeploymentDetails
		)
	return deploymentDetails
}

ClassMethod GetAllDeploymentById(id As %String) As %String
{
	set obj = ##class(DV.DevOps.DB.DeploymentDetails).%OpenId(id)
	do obj.%JSONExportToString(.string)
	return string
}

}
