if($(Get-ExecutionPolicy) -eq "Restricted") {
    throw "ExecutionPolicy is set to Restricted, which means we cannot install. Change this with ' Set-ExecutionPolicy -ExecutionPolicy Unrestricted'"
}

Invoke-WebRequest -URI "https://github.com/Sairenity/dotfiles/archive/refs/heads/master.zip" -OutFile "~/dotfiles.zip" 
Expand-Archive -Path ~/dotfiles.zip -DestinationPath ~/dotfiles
Move-Item ~/dotfiles/dotfiles-master ~/.dotfiles
Remove-Item ~/dotfiles.zip
Remove-Item ~/dotfiles
Set-Location ~/.dotfiles
~/.dotfiles/install.ps1