param(
    [string]$type
)

$response = Invoke-WebRequest -Uri "https://app.terraform.io/api/v2/organizations/$env:orgName/explorer/export/csv?type=$type" -Headers @{ "Authorization" = "Bearer $env:token" }
$content = $response.Content
$content | Set-Content -Path "output.csv"
