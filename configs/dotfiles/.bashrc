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
    echo -n $output_str | xsel -ib # Save to clipboard
}

# insert UTC time to clipboard
iu2cb() {
    local input_str=$1
    local utc_date=$(date -u +%Y-%m-%dT%H-%M-%SZ)
    local output_str="${utc_date}_${input_str}"
    echo -n $output_str | xsel -ib # Save to clipboard
}

# Modify clipboard to the "st", subtopic standard
mc2st() {
    local input_str
    input_str=$(xsel -bo)
    cleaned_string="${input_str//:/}" # Remove ":"
    cleaned_string="${cleaned_string// /-}" # Replace " " with "-"
    # Convert to lowercase
    lowercase_string=$(echo "$cleaned_string" | tr '[:upper:]' '[:lower:]')
    output_str="st-$lowercase_string" # Prefix with "st-"
    echo -n $output_str | xsel -ib # Save to clipboard
}
###############################################################################
