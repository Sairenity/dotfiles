#section - apply explorer tweaks
Push-Location explorer-tweaks
.\install.ps1
Pop-Location

#section - move wallpapers and icons
Push-Location images
.\install.ps1
Pop-Location

#section - setup powershell
Push-Location powershell
.\install.ps1
Pop-Location

#section - install software
Push-Location programs
.\install.ps1
Pop-Location

