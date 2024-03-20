Include DV.DevOps

Class DV.DevOps.Base Extends %RegisteredObject
{

ClassMethod lastProdCommitId() As %String [ CodeMode = expression ]
{
$$$LCDEVOP($$$ENV,"LCI")
}

ClassMethod SetLastCommitId(commitId As %String = "") As %Status
{
	return:commitId=""
    set $$$LCDEVOP($$$ENV,"LCI") = $LB(commitId,$ZDT($Now(),3))
    return $$$OK
}

/// will untar the file located in the specified folder to the foler that is the filename
/// <li>sFolder: the folder where the tar file resides
/// <li>sFile  : the file in that folder
/// <p> this will use the sFile as the base of the output
ClassMethod untar(sFolder = "", sFile = "", ByRef sOutFolder As %String) As %Status
{
   
    Set sc = $$$OK
    
    set oldPath=$SYSTEM.Process.CurrentDirectory(sFolder)

    set dstFold = $P(sFile,".",1)
    set sOutFolder = dstFold
    set tSC = ##class(%File).CreateDirectory(dstFold)

    set tSC = $ZF(-100,"/SHELL","tar","-xvf",sFile, "-C", dstFold)

    //allow all to see these files
    set tSC = $ZF(-100,"/SHELL","chmod","-R","ugo+rwx",dstFold)

    // return to the old Folder
    do $SYSTEM.Process.CurrentDirectory(oldPath)
    Return sc
}

ClassMethod DeployBegin() As %Status
{
    return $$$OK
}

}
