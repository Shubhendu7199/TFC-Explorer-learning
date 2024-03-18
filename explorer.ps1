$response = Invoke-WebRequest -Uri "https://app.terraform.io/api/v2/organizations/$orgName/explorer?type=providers" -Headers @{ "Authorization" = "Bearer $token" }
 
$content = $response.Content
$content | Set-Content -Path "output.csv"
