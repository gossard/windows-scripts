param (
    [Parameter(Mandatory=$true)]
    [ValidateScript({Test-Path $_})]
    [string]$UsersHomePath
)
$desktops = Get-ChildItem -Path $UsersHomePath -Directory | Get-ChildItem -Directory | Where-Object {$_.Name -eq "Desktop"}

$desktops | ForEach-Object {
   Get-ChildItem $_.FullName | Remove-Item -Recurse -Force
}
