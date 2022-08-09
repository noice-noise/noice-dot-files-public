
# Prompt
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/noicenoise.omp.json" | Invoke-Expression

# Aliases
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr

# Icons
Import-Module Terminal-Icons

# PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineOption -BellStyle None

# Fzf
Import-Module PSFzf
Set-PsFzfOption -PSReadlineChortProvider 'Ctrl+f' -PSReadlineChordReverseHistory 'Ctrl+r'