wsl --install
# chocolatey install
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

$packages = @(
    # dev soft
    "vscode",
    "visualstudio2022community",
    "git",
    "docker-desktop",
    "sql-server-management-studio"
    "github-desktop",

    # communication soft
    "discord",
    "telegram",
    "chatterino",

    # game soft
    "steam",
    "epicgameslauncher",
    "osu",

    # other
    "spotify",
    "drawio",
    "flameshot",
    "opera-gx"
    "googlechrome",
    "winrar",
)

foreach ($package in $packages) {
    choco install $package -y
}

restart-computer
