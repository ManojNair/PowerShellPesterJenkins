function Invoke-BookAPI {

Import-Module AWSPowerShell
Set-DefaultAWSRegion -Region ap-southeast-2
$lm = Invoke-LMFunction -FunctionName getbooksv1 -Payload 10 -InvocationType RequestResponse
$sr = [System.IO.StreamReader]::new($lm.Payload)
return $sr.ReadToEnd() | ConvertFrom-Json | ConvertTo-Json

}
