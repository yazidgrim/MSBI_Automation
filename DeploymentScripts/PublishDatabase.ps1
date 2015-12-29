<# Build the sqlproj #>
& 'C:\Program Files (x86)\MSBuild\12.0\Bin\MSBuild.exe' /t:publish /p:SqlPublishProfilePath="G:\Workspace\MSBI_Automation\BIProject\SampleDB\SampleDB\deployDB.publish.xml" 'G:\Workspace\MSBI_Automation\BIProject\SampleDB\SampleDB\SampleDB.sqlproj'

<# Deploy to database server#>
& 'C:\Program Files (x86)\Microsoft SQL Server\110\DAC\bin\SqlPackage.exe' /pr:"G:\Workspace\MSBI_Automation\BIProject\SampleDB\SampleDB\deployDB.publish.xml" /sf:"G:\Workspace\MSBI_Automation\BIProject\SampleDB\SampleDB\bin\output\SampleDB.dacpac" /a:Publish