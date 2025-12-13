#!/bin/bash
set -e  # Detener ejecución si hay error

echo "=== Script Linux en ejecución ==="

# Variables de entorno
echo "Usuario: $USER"
echo "Directorio de trabajo: $PWD"

# Crear archivo
echo "Hola desde Linux" > archivo_salida.txt

# Cambiar permisos
chmod 644 archivo_salida.txt
ls -l archivo_salida.txt

# Crear proceso en segundo plano
sleep 5 &
PID=$!
echo "Proceso en segundo plano creado con PID $PID"

# Esperar proceso
wait $PID

echo "Script Linux finalizado correctamente"
