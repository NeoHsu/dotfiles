# Get week number
alias week='date +%V'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias ip-local="ipconfig getifaddr en0"

# Show active network interfaces
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'

# Download file and save it with filename of remote file
alias get="curl -O -L"

# Recursively delete `.DS_Store` files
alias clean-ds="find . -name '*.DS_Store' -type f -ls -delete"

# vim
alias vim='nvim'
