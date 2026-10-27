$hosts = "$env:windir\System32\drivers\etc\hosts"
$entry = "127.0.0.1 appy.test.net"

if (-not (Select-String -Path $hosts -Pattern '^\s*127\.0\.0\.1\s+appy\.test\.net\s*$' -Quiet)) {
    Add-Content -Path $hosts -Value $entry
}

ipconfig /flushdns