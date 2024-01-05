wsl --install
# chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$packages = @(
    # general soft
    "googlechrome",
    "winrar",
    # dev soft
    "vscode",
    "visualstudio2022community",
    "git",
    "docker-desktop",
    "xampp",
    "github-desktop",
    # communication soft
    "discord",
    "telegram",
    # game soft
    "steam",
    "epicgameslauncher",
    "osu",
    # other
    "spotify",
    "drawio",
    "flameshot",

)

foreach ($package in $packages) {
    choco install $package -y
}

restart-computer
