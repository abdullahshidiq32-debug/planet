# cek-vercel.ps1
# Script untuk generate daftar link file di Vercel dari folder lokal

# Ganti baseUrl sesuai URL project Vercel kamu
$baseUrl = "https://poto-kinan-dx8seypxn-abdullahshidiq32-debugs-projects.vercel.app"

Write-Output "Daftar file yang sudah ter-upload ke Vercel:`n"

# Loop semua file di folder ini
Get-ChildItem -File | ForEach-Object {
    $url = "$baseUrl/$($_.Name)"
    Write-Output $url
}
