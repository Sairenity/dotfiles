Copy-Item .\icons ~\.dotfiles\ -Force -Recurse

#check if ~\source\repos exists, if not, make it and set folder icon
$src = "~\source\repos"
if(!(Test-Path $src)){
    New-Item "$src\" -Force -Type "Directory"
    $iniPath = "$src\desktop.ini"
    $srcIniContent = @"
        [.ShellClassInfo]
        IconResource=$(Resolve-Path ~\.dotfiles)\icons\repos.ico,0
"@
    $srcDir = Get-Item $src -Force
    $srcDir.Attributes = @($srcDir.Attributes, "ReadOnly")
    echo $srcIniContent >> $iniPath
    $iniFile = Get-Item $iniPath -Force
    $iniFile.Attributes = @($iniFile.Attributes, "Hidden", "System")
} else {
    echo "$src already exists - skipping setting of icon"
}

#set folder icon for ~
$homeDir = $(Get-Item ~ -Force)
$homeDir.Attributes = @($homeDir.Attributes, "ReadOnly")
$homeDirIniContent = @"
        [.ShellClassInfo]
        IconResource=C:\Windows\System32\imageres.dll,208
"@
$homeDirIniPath = "$homeDir\desktop.ini"
echo $homeDirIniContent >> $homeDirIniPath
$homeDirIniFile = Get-Item $homeDirIniPath -Force
$homeDirIniFile.Attributes = @($homeDirIniFile.Attributes, "Hidden", "System")

$shell = new-object -com shell.application
$shell.Namespace("$homeDir").Self.InvokeVerb("pintohome")
$shell.Namespace("$(Get-Item $src -Force)").Self.InvokeVerb("pintohome")

taskkill /f /im explorer.exe
start explorer.exe