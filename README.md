# GetRandomDogImage
A convenient PowerShell function to get started with PowerShell and random dog images!

Looking for a daily dose of smiles?
Here's a fun and simple trick: customize your #PowerShell `$profile` to surprise yourself and your friends with a random dog image every day! 🐶✨

![RandomDogImageOutput](https://github.com/user-attachments/assets/d25ddd61-e6f1-4477-9e47-884b74b4d71e)

# Setup Instructions
Give it a try, it is this easy to get started today!

First, edit your PowerShell `$profile` with this PS command:

`notepad $PROFILE`

Second, copy and paste the function (.ps1) contents then save `CTRL + S` the changes and close Notepad.

```
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
```

Finally, load your new `$profile` to apply the changes without restarting PowerShell, like so:

`. $PROFILE`

Now whenever you open a new PowerShell session within a terminal, you can easily call random dogs to display, brightening your day and profit!!🚀💸💲

`randomdog
dog
Get-RandomDogImage`

Now embrace the joy of unexpected doggy moments with this delightful PowerShell hack.
