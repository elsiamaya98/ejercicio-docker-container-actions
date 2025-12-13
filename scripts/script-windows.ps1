# scripts/script-windows.ps1
try {
    Write-Host "=== Script Windows en ejecución ==="

    # Información del usuario y directorio
    $currentUser = whoami
    $workingDir = Get-Location
    Write-Host "Usuario: $currentUser"
    Write-Host "Directorio de trabajo: $workingDir"

    # Crear carpeta de logs si no existe
    if (!(Test-Path -Path logs)) {
        New-Item -ItemType Directory -Path logs
    }

    # Ejemplo de creación de archivo
    "Archivo de prueba creado el $(Get-Date)" | Out-File logs\archivo.txt

    # Ejemplo de manejo de permisos (solo si es necesario)
    # icacls logs /grant Everyone:(R,W)

    # Ejemplo de proceso en segundo plano seguro
    if ($null -ne (Get-Command notepad.exe -ErrorAction SilentlyContinue)) {
        Start-Process notepad.exe -WindowStyle Hidden
        Write-Host "Proceso en segundo plano iniciado"
    } else {
        Write-Host "No se encontró notepad.exe, se omite proceso en background"
    }

    Write-Host "Script Windows finalizado correctamente"
    exit 0
}
catch {
    Write-Host "Ocurrió un error: $_"
    exit 1
}
