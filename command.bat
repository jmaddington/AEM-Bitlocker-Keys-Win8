$bitlockerKeys=(Get-BitLockerVolume).KeyProtector
$registryPath="HKLM:\SOFTWARE\CentraStage\" 
$registryKey="Custom8"

IF(!(Test-Path $registryPath))

  {
  New-Item -Path $registryPath -Force | Out-Null
  New-ItemProperty -Path $registryPath -Name $registryKey -Value $bitlockerKeys -Force | Out-Null}

 ELSE {
 New-ItemProperty -Path $registryPath -Name $registryKey -Value $bitlockerKeys | Out-Null}

echo "Bitlocker Information:"
echo (Get-BitLockerVolume)
echo (Get-BitLockerVolume).KeyProtector
