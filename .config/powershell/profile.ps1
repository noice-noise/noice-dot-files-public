# Prompt

oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/noicenoise.omp.json" | Invoke-Expression


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


# ------------
# Aliases
# ------------

Set-Alias ll ls
Set-Alias grep findstr


# Package Managers

Set-Alias pn pnpm

Function pnrd() {
  pnpm run dev
}


# Git Aliases

Set-Alias g git

Function gb () {
  git branch
}

Function gco () {
  Param([Parameter(Mandatory=$True,Position=0)] [String]$Command)
  git checkout $Command
}

Function gst () {
  git status
}

Function gss () {
  git status -s
}

Function gsb () {
  git status -sb
}

Function ga () {
  Param([Parameter(Mandatory=$True,Position=0)] [String]$Command)
  git add $Command
}

Function gaa () {
  git add --all
}

Function gcmsg{
  Param([Parameter(Mandatory=$True,Position=0)] [String]$Command)
  git commit -m $Command
}

Function gca {
  git commit -v -a
}

Function gpull () {
  git pull
}

Function gpush () {
  git push
}

Function gsta () {
  git stash push
}

Function gstp () {
  git stash pop
}

Function gstall () {
  git stash --all
}

Function gstu () {
  git stash --include-untracked
}

Function glog () {
  git log --graph --decorate --all
}