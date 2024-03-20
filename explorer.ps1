param(
    [string]$type
)

$response = Invoke-WebRequest -Uri "https://app.terraform.io/api/v2/organizations/$env:orgName/explorer/export/csv?type=${{ github.event.inputs.name }}" -Headers @{ "Authorization" = "Bearer $env:token" }
$content = $response.Content
$content | Set-Content -Path "output.csv"
