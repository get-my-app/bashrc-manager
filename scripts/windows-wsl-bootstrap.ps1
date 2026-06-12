# Run PowerShell as Administrator.
# This installs WSL if missing, then Ubuntu. After reboot, run scripts/bootstrap-ubuntu.sh inside WSL.
wsl --status
if ($LASTEXITCODE -ne 0) {
  wsl --install -d Ubuntu
} else {
  wsl --list --verbose
}
