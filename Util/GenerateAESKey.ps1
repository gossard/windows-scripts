param(
    [Parameter(Mandatory=$true)]
    [ValidateScript({Test-Path $_ -PathType Container})]
    [string]$Path,
    [Parameter(Mandatory=$true)]
    [ValidateNotNullOrEmpty()]
    [string]$Name,
    [Parameter(Mandatory=$true)]
    [ValidateSet(16, 32)]
    [int]$Size
)
[byte[]]$bytes = New-Object byte[] -ArgumentList $Size
[System.Security.Cryptography.RNGCryptoServiceProvider]::Create().GetBytes($bytes)
$bytes | Out-File (Join-Path -Path $Path -ChildPath $Name)
