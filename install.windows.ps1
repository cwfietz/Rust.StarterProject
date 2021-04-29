# How to run this file:
#  PS> iwr -useb https://raw.githubusercontent.com/cwfietz/Rust.StarterProject/main/install.windows.ps1 | iex

iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install rust
choco install rustup.install

# reload powershell to get environment running
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine")

rustup self update
rustup component add rustfmt
rustup component add clippy

cinst intellijidea

# Add VS Code extentions
@(
    'rust-lang.rust',
    'formulahendry.code-runner',
    'bungcip.better-toml'
) | % { & "C:\Program Files\Microsoft VS Code\bin\code.cmd" --install-extension $_ }

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/cwfietz/Rust.StarterProject.git C:\Code\Rust.StarterProject

# Run tests via the command line (you may have to reload the terminal after installation before trying this):
# cargo test
