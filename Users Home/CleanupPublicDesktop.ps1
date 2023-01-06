Get-ChildItem $env:PUBLIC\Desktop | ForEach-Object { Remove-Item $_.FullName -Recurse -Force }
