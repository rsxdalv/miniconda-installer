# Save stdout and stderr to a file
# $logFile = "output.log"
# save log in the same directory as the script
$logFile = Join-Path -Path $PSScriptRoot -ChildPath "output.log"
Start-Transcript -Path $logFile

& "conda/scripts/windows/install_conda.ps1"

# Stop saving stdout and stderr
Stop-Transcript

# Pause the script (equivalent to pause in batch)
Write-Host "Press any key to continue..."
$x = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
