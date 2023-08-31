# Powershell
## Scripts
### au2cb (Append UTC time To ClipBoard)
This command appends the UTC timestamp (Zulu time) to the clipboard content in a computer & program friendly format.  
```powershell
$timestamp = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH-mm-ssZ")
$clipboardContent = Get-Clipboard
$newClipboardContent = $clipboardContent + "_" + $timestamp
Set-Clipboard -Value $newClipboardContent
```
