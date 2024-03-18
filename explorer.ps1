Write-Host "ORG_NAME: $orgName"
Write-Host "TOKEN: $token"


$response = Invoke-WebRequest -Uri "https://app.terraform.io/api/v2/organizations/$env:orgName/explorer/export/csv?type=workspaces" -Headers @{ "Authorization" = "Bearer $env:token" }
 
$content = $response.Content
$content | Set-Content -Path "output.csv"
