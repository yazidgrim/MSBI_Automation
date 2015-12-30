<#Validating the packages before generating the ispac#>
<#using the .\ instruction to force the usage of dtexec 2012 64 bits - in case there are multiple instances of dtexec#>
Get-ChildItem "G:\Workspace\MSBI_Automation\BIProject\SampleETL\SampleETL\" -Filter *.dtsx |
ForEach-Object {
    $name = $_.FullName
    cd 'C:\Program Files\Microsoft SQL Server\110\DTS\Binn'
    .\DTExec.exe /f "$name" /va
}
Write-Host 'Validation finished'
<#Generating the ISPAC by building the solution#>
& 'C:\Program Files (x86)\Microsoft Visual Studio 10.0\Common7\IDE\devenv.exe' G:\Workspace\MSBI_Automation\BIProject\SampleETL\SampleETL\SampleETL.dtproj /build
Write-Host 'ISPAC Generated'
<#Deploying the SSIS solution into the SSISCatalog#>
& 'C:\Program Files\Microsoft SQL Server\110\DTS\Binn\ISDeploymentWizard.exe' /S /SP:"G:\Workspace\MSBI_Automation\BIProject\SampleETL\SampleETL\bin\Development\SampleETL.ispac" /DS:"." /DP:"/SSISDB/SampleETL/SampleETL"
Write-Host 'Deployment Completed'