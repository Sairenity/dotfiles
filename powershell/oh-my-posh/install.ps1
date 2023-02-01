winget install JanDeDobbeleer.OhMyPosh -s winget
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")
cp .\theme\powerline-fby.omp.json $env:localappdata\Programs\oh-my-posh\themes\powerline-fby.omp.json
if(!(Test-Path $PROFILE -PathType Leaf)){
    New-Item -Path $PROFILE -Force
} 
echo 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerline-fby.omp.json" | Invoke-Expression' >> $PROFILE