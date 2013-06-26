trap
{
    write-output $_
    ##teamcity[buildStatus status='FAILURE' ]
    exit 1
}

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$scriptPath = $scriptPath + '\'

$testPath = $scriptPath + '..\Test\Test\bin\Release\'
$testExe = $testPath + 'Test.exe'


&$testExe $args