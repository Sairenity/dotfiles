# Dotfiles
Configures a fresh windows install to my likings.

## Usage
1. Make sure `winget` is available by running `winget` in a PowerShell prompt
2. In an elevated PowerShell prompt, run:
```pwsh
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
iex $(irm https://raw.githubusercontent.com/Sairenity/dotfiles/master/bootstrap.ps1)
```