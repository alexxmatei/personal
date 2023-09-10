# Decimal To Hexadecimal

$user_param_input = $args[0] # Take user input through a parameter
# Define a regular expression pattern to match a decimal number
$pattern = "^\d+(\.\d+)?$"

if ($user_param_input -match $pattern) {
    # Conver the decimal user input to the equivalent hexadecimal value
    $output_decimal_to_hex = '0x{0:X}' -f $user_param_input
    echo $output_decimal_to_hex
} else {
    Write-Host "Error: Invalid input. Please enter a valid decimal number."
}
