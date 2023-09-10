$timestamp = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH-mm-ssZ")
$clipboardContent = Get-Clipboard
$newClipboardContent = $clipboardContent + "_" + $timestamp
Set-Clipboard -Value $newClipboardContent