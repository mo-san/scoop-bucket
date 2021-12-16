param(
    # overwrite upstream param
    [String]$upstream = "mo-san/scoop-bucket:main"
)

if(!$env:SCOOP_HOME) { $env:SCOOP_HOME = Resolve-Path (scoop prefix scoop) }
$autopr = "./auto-pr_mod.ps1"
$dir = "$psscriptroot/../bucket" # checks the parent dir
Invoke-Expression -command "& '$autopr' -dir '$dir' -upstream $upstream $($args | ForEach-Object { "$_ " })"
