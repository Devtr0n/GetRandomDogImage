function Get-RandomDogImage {
    $url = "https://dog.ceo/api/breeds/image/random"
    try {

        # Get a dog image
        $response = Invoke-RestMethod -Uri $url -Method Get
        $imageUrl = $response.message
        Write-Host "Random Dog Image URL: $imageUrl"
        
        # Open the dog image in Google Chrome
        Start-Process "chrome.exe" $imageUrl
    } catch {
        Write-Host "An error occurred: $_"
    }
}
set-alias randomdog Get-RandomDogImage
set-alias dog randomdog