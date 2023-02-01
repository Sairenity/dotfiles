#section install oh-my-posh
Push-Location oh-my-posh
.\install.ps1
Pop-Location

if(!(Test-Path $PROFILE -PathType Leaf)){
    New-Item -Path $PROFILE -Force
} 
echo 'set-alias docker podman' >> $PROFILE

