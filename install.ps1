#section - apply registry tweaks
Push-Location registry-tweaks
.\install.ps1
Pop-Location

#section - setup powershell
Push-Location powershell
.\install.ps1
Pop-Location

#section - install software
Push-Location Programs
.\install.ps1
Pop-Location