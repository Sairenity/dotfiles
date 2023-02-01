winget install JanDeDobbeleer.OhMyPosh -s winget
cp .\theme\powerline-fby.omp.json $env:POSH_THEMES_PATH/powerline-fby.omp.json
echo 'oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/powerline-fby.omp.json" | Invoke-Expression' >> $PROFILE