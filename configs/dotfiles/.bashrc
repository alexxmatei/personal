alias py=python3
export PS1='\[\033[1;92m\]\u\[\033[0m\]:\[\033[1;94m\]\w\[\033[0m\]:\[\033[1;95m\]\t\[\033[0m\] \$ '

############################ Scripts ##########################################
# casing upper to lower to clipboard
function cu2l2cb() {
  echo "$1" | tr '[:upper:]' '[:lower:]' | xsel -ib
}

# append UTC time to clipboard
au2cb() {
    local input_str=$1
    local utc_date=$(date -u +%Y-%m-%dT%H-%M-%SZ)
    local output_str="${input_str}_${utc_date}"
    echo -n $output_str | xsel -ib
}

# insert UTC time to clipboard
iu2cb() {
    local input_str=$1
    local utc_date=$(date -u +%Y-%m-%dT%H-%M-%SZ)
    local output_str="${utc_date}_${input_str}"
    echo -n $output_str | xsel -ib
}
###############################################################################
