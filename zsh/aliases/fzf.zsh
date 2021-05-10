alias fgcob='git checkout $(git branch --all | fzf --cycle --border --ansi)'
alias fgco="git diff --name-only | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview=\"git diff --color {+1}\" | xargs git checkout"
alias fgustg='git diff --name-only --cached | fzf --multi --color=dark --cycle --border --ansi --preview-window=up:70% --preview="git diff --color --staged {+1}" | xargs git reset HEAD'
alias fgbrd="git branch --color=always | fzf --multi --color=dark --cycle --border --ansi | sed 's/*//' | awk '{print \$1}' | xargs git branch -d"