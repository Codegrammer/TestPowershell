write-output $erroractionpreference
$erroractionpreference = 'stop'

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$scriptPath = $scriptPath + '\'

$testPath = $scriptPath + '..\Test\Test\bin\Release\'
$testExe = $testPath + 'Test.exe'


$state = &$testExe $args
write-output $state

exit 1