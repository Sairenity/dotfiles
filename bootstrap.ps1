if($(Get-ExecutionPolicy) -eq "Restricted") {
    throw "ExecutionPolicy is set to Restricted, which means we cannot install. Change this with ' Set-ExecutionPolicy -ExecutionPolicy Unrestricted'"
}

Invoke-WebRequest -URI "https://github.com/Sairenity/dotfiles/archive/refs/heads/master.zip" -OutFile "~/dotfiles.zip" 
Expand-Archive -Path ~/dotfiles.zip -DestinationPath ~/dotfiles
New-Item ~/.dotfiles/ -Force -Type "Directory"
Move-Item ~/dotfiles/dotfiles-master ~/.dotfiles/workdir
Remove-Item ~/dotfiles.zip
Remove-Item ~/dotfiles
Set-Location ~/.dotfiles/workdir
~/.dotfiles/workdir/install.ps1