# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/dev_environments/rust.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install rust
choco install rustup.install

# reload powershell to get environment running
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

rustup self update
rustup component add rustfmt
rustup component add clippy

cinst intellijidea

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/approvals/ApprovalTests.js.StarterProject.git C:\Code\ApprovalTests.js.StarterProject

# Run tests via the command line (you may have to reload the terminal after installation before trying this):
# cargo test
