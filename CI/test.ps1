write-output $erroractionpreference
$erroractionpreference = 'stop'

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$scriptPath = $scriptPath + '\'

$testPath = $scriptPath + '..\Test\Test\bin\Release\'
$testExe = $testPath + 'Test.exe'


&$testExe $args
if($LASTEXITCODE -ne 0)
{
	write-output $_##teamcity[buildStatus status='FAILURE' text='It Died.']
	exit 1
}

exit 0
