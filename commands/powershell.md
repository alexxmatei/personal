# PowerShell
## Setup guide
1. Create a folder in your user space where the commands will be stored as .ps1 files (for example au2cb.ps1)
2. Add that folder to the path in your environment variables
3. You should be able to run the commands from PowerShell by calling the file name, no extension (ex: au2cb)
### Scripts
#### au2cb (Append UTC time To ClipBoard)
This command appends the UTC timestamp (Zulu time) to the clipboard content in a computer & program friendly format.  
```powershell
$timestamp = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH-mm-ssZ")
$clipboardContent = Get-Clipboard
$newClipboardContent = $clipboardContent + "_" + $timestamp
Set-Clipboard -Value $newClipboardContent
```
#### d2h (Decimal to hexadecimal, or hex for short)
This commmand takes a decimal (base 10) value as input and outputs the equivalent hexadecimal (base16) value.  
```powershell
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
```
