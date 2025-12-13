# Detener si hay errores
$ErrorActionPreference = "Stop"

Write-Host "=== Script Windows en ejecución ==="

# Variables de entorno
Write-Host "Usuario: $env:USERNAME"
Write-Host "Directorio de trabajo: $PWD"

# Crear archivo
"Hola desde Windows" | Out-File -FilePath archivo_salida.txt

# Gestionar permisos (full control al usuario actual)
icacls archivo_salida.txt /grant "$env:USERNAME:F"
Get-Acl archivo_salida.txt | Format-List

# Crear proceso en segundo plano
Start-Process -NoNewWindow -FilePath "powershell.exe" -ArgumentList "-Command", "Start-Sleep 5"
Write-Host "Proceso en segundo plano iniciado"

Write-Host "Script Windows finalizado correctamente"
